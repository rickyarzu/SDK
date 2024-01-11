unit Janua.FMX.Forms;

interface

uses
  // System Librarire
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // Janua Libraries
  Janua.Core.Classes,
  // FMX Components
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Memo, FMX.Edit, FMX.Layouts, FMX.ListBox,
  FMX.Objects, FMX.Controls.Presentation, FMX.ScrollBox;

type
  TJanuaParentType = (Form, Frame, Control);

type
  TFMXControlClassHelper = class helper for TControl
  public
    procedure SelectNext(CurControl: TControl; GoFoward: Boolean);
  end;

type
  TJanuaFMXFormManager = class(TJanuaCoreComponent)
  private
    FForm: TForm;
    FFrame: TFRame;
    FControl: TControl;
    function GetParentObject: TFMXOBject;
    function GetClientHeight: integer;
    procedure SetFormEvents;
  private
    FKBBounds: TRectF;
    FNeedOffset: Boolean;
    FVertScrollBox: TVertScrollBox;
    FMainLayout: TLayout;
    FAutoShowKeyBoard: Boolean;
    procedure RestorePosition;
    procedure UpdateKBBounds;
    procedure SetVertScrollBox(const Value: TVertScrollBox);
    procedure SetMainLayout(const Value: TLayout);
    procedure SetForm(const Value: TForm);
    procedure SetAutoShowKeyBoard(const Value: Boolean);
  protected
    function InternalActivate: Boolean; override;
  public // procedure that catch Form Events procedure
    procedure FormVirtualKeyboardHidden(Sender: TObject; KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardShown(Sender: TObject; KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormFocusChanged(Sender: TObject);
    // procedurea Form Key Down collagata al gestore di Tabulazioni se impostato ....................................
    // procedure FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    // procedura che calcola ed imposta i limiti per la scrollBox in modo da utilizzare il massimo spazio disponibile.
    procedure CalcContentBoundsProc(Sender: TObject; var ContentBounds: TRectF);
  public
    constructor Create(AOwner: TComponent); override;
  published
    property VertScrollBox: TVertScrollBox read FVertScrollBox write SetVertScrollBox;
    property ParentObject: TFMXOBject read GetParentObject;
    property ClientHeight: integer read GetClientHeight;
    property MainLayout: TLayout read FMainLayout write SetMainLayout;
    property Form: TForm read FForm write SetForm;
    property AutoShowKeyBoard: Boolean read FAutoShowKeyBoard write SetAutoShowKeyBoard;
  end;

implementation

uses Janua.Core.Functions, System.Math;

procedure TFMXControlClassHelper.SelectNext(CurControl: TControl; GoFoward: Boolean);
var
  tablist: ITabList;
  next: IControl;
  parente, controle: TControl;
begin
  controle := CurControl;
  parente := controle.ParentControl;
  repeat
    tablist := parente.GetTabList;
    next := tablist.FindNextTabStop(controle, GoFoward, True);
    if (not Assigned(next)) or (TControl(next) = controle) then
    begin
      controle := parente;
      parente := parente.ParentControl;
    end
    else
      Break;
  until parente = nil;

  if (Assigned(next)) then
    controle := TControl(next)
  else
    controle := nil;

  if (Assigned(controle)) then
    controle.SetFocus;
end;

{ Form KeyDown Overwriting implementation ...........................................................................

  procedure TForm.FormCreate(Sender: TObject);
  begin
  Self.JanuaFMXFormManager1.Activate;
  end;

  procedure TForm.FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
  var
  control: TStyledControl;
  begin
  if (Self.GetFocused is TStyledControl) then
  begin
  control := (Self.GetFocused as TStyledControl);
  case Key of
  vkReturn:
  TControl(Self).SelectNext(control, True);
  vkTab:
  TControl(Self).SelectNext(control, (not(ssShift in Shift)));
  end;
  end;
  end;

}

{ TJanuaFMXFormManager }

procedure TJanuaFMXFormManager.CalcContentBoundsProc(Sender: TObject; var ContentBounds: TRectF);
var
  vBottom: Single;
begin
  if not(csDesigning in self.ComponentState) and self.Active and FNeedOffset and (FKBBounds.Top > 0) then
  begin
    {
      vBottom := Max(ContentBounds.Bottom, 2 * GetClientHeight - FKBBounds.Top);
      if Assigned(self.FMainLayout) then
      vBottom := Max(vBottom, self.FMainLayout.Height);
      ContentBounds.Bottom := vBottom
    }
    ContentBounds.Bottom := Max(ContentBounds.Bottom, 2 * GetClientHeight - FKBBounds.Top);
  end;
end;

constructor TJanuaFMXFormManager.Create(AOwner: TComponent);
begin
  inherited;
  // if the owners is a TForm Component then all methods are set by default
  if Assigned(AOwner) and (AOwner is TForm) then
    self.SetForm(AOwner as TForm)
end;

procedure TJanuaFMXFormManager.SetFormEvents;
begin
  if not(csDesigning in self.ComponentState) and Assigned(FForm) and self.Active then
  begin
    self.FForm.OnVirtualKeyboardHidden := self.FormVirtualKeyboardHidden;
    self.FForm.OnVirtualKeyboardShown := self.FormVirtualKeyboardShown;
    self.FForm.OnFocusChanged := self.FormFocusChanged;
  end;
end;

procedure TJanuaFMXFormManager.FormFocusChanged(Sender: TObject);
begin
  UpdateKBBounds;
end;

procedure TJanuaFMXFormManager.FormVirtualKeyboardHidden(Sender: TObject; KeyboardVisible: Boolean;
  const Bounds: TRect);
begin
  FKBBounds.Create(0, 0, 0, 0);
  FNeedOffset := False;
  RestorePosition;
end;

procedure TJanuaFMXFormManager.FormVirtualKeyboardShown(Sender: TObject; KeyboardVisible: Boolean;
  const Bounds: TRect);
begin
  FKBBounds := TRectF.Create(Bounds);
  if Assigned(self.FForm) then
  begin
    FKBBounds.TopLeft := self.FForm.ScreenToClient(FKBBounds.TopLeft);
    FKBBounds.BottomRight := self.FForm.ScreenToClient(FKBBounds.BottomRight);
  end;
  UpdateKBBounds;
end;

function TJanuaFMXFormManager.GetClientHeight: integer;
begin
  if Assigned(self.FForm) then
    result := self.FForm.ClientHeight
  else
    result := -1;

  {
    if self.GetParentObject is TForm then
    result := (self.GetParentObject as TForm).ClientHeight
    else if self.GetParentObject is TFRame then
    result := Trunc((self.GetParentObject as TFRame).Height)
    else if self.GetParentObject is TControl then
    result := Trunc((self.GetParentObject as TControl).Height)
  }
end;

function TJanuaFMXFormManager.GetParentObject: TFMXOBject;
begin
  result := nil;
  if Assigned(self.FForm) then
    result := self.FForm
  else if Assigned(self.FVertScrollBox) then
    result := self.FVertScrollBox.Parent;

end;

function TJanuaFMXFormManager.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      result := inherited and notDesigning and Assigned(FForm);
      if result then
      begin
        SetFormEvents;
      end;
    except
      on e: exception do
          RaiseLocalException('InternalActivate', e);
    end;
end;

procedure TJanuaFMXFormManager.RestorePosition;
begin
  if not Assigned(FMainLayout) then
    raise exception.Create('RestorePosition MainLayout not set');
  if not Assigned(FVertScrollBox) then
    raise exception.Create('RestorePosition VertScrollBox not set');

  if self.Active and not(csDesigning in self.ComponentState) and Assigned(FMainLayout) and
    Assigned(FVertScrollBox) then
  begin
    FVertScrollBox.ViewportPosition := PointF(FVertScrollBox.ViewportPosition.X, 0);
    // FMainLayout.Align := TAlignLayout.Client;
    FVertScrollBox.RealignContent;
  end;
end;

procedure TJanuaFMXFormManager.SetAutoShowKeyBoard(const Value: Boolean);
begin
  // Specification 2017-09-03.01 Vertical Show Keyboard
  FAutoShowKeyBoard := Value;
  if FAutoShowKeyBoard then
    VKAutoShowMode := TVKAutoShowMode.Always
  else
    VKAutoShowMode := TVKAutoShowMode.DefinedBySystem
end;

procedure TJanuaFMXFormManager.SetForm(const Value: TForm);
begin
  FForm := Value;
  if Assigned(FForm) and self.Active then
    SetFormEvents;
end;

procedure TJanuaFMXFormManager.SetMainLayout(const Value: TLayout);
begin
  FMainLayout := Value;
end;

procedure TJanuaFMXFormManager.SetVertScrollBox(const Value: TVertScrollBox);
begin
  // nel momento in cui 'sgancio' una dropbox annullo l'evento   Assigned(self.FVertScrollBox)

  if not Assigned(self.FVertScrollBox) or (Value <> self.VertScrollBox) then
  begin

    if not(csDesigning in self.ComponentState) and not(FVertScrollBox = nil) then
    begin
      if (Value = nil) or (Value <> self.VertScrollBox) then
        self.FVertScrollBox.OnCalcContentBounds := nil
    end;

    // l'assegnazione la faccio comunque
    FVertScrollBox := Value;

    if not(csDesigning in self.ComponentState) and Assigned(self.FVertScrollBox) then
      self.FVertScrollBox.OnCalcContentBounds := CalcContentBoundsProc;
  end;
end;

procedure TJanuaFMXFormManager.UpdateKBBounds;
var
  LFocused: TControl;
  LFocusRect: TRectF;
begin
  try
    if not Assigned(FMainLayout) then
      raise exception.Create('UpdateKBBounds MainLayout not set');
    if not Assigned(FVertScrollBox) then
      raise exception.Create('UpdateKBBounds VertScrollBox not set');
    if not Assigned(FForm) then
      raise exception.Create('UpdateKBBounds Form not set');

    FNeedOffset := False;
    if Assigned(self.FForm) and Assigned(self.FForm.Focused) then
    begin
      LFocused := TControl(self.FForm.Focused.GetObject);
      LFocusRect := LFocused.AbsoluteRect;
      LFocusRect.Offset(FVertScrollBox.ViewportPosition);
      if (LFocusRect.IntersectsWith(TRectF.Create(FKBBounds))) and (LFocusRect.Bottom > FKBBounds.Top) then
      begin
        FNeedOffset := True;
        FMainLayout.Align := TAlignLayout.Horizontal;
        FVertScrollBox.RealignContent;
        Application.ProcessMessages;
        FVertScrollBox.ViewportPosition := PointF(FVertScrollBox.ViewportPosition.X,
          LFocusRect.Bottom - FKBBounds.Top);
      end;
    end;
    if not FNeedOffset then
      RestorePosition;
  except
    on e: exception do
    begin
      self.WriteError('Error on TJanuaFMXFormManager.UpdateKBBound', e, False);
      raise
    end;

  end;

end;

end.
