unit Janua.VCL.Controls.Forms.Impl;

interface

uses System.Classes, Spring.Collections,
  VCL.Forms, VCL.ComCtrls, VCL.Controls, VCL.Graphics, VCL.Dialogs, VCL.StdCtrls, VCL.ExtCtrls, VCL.Themes,
  uJanuaVCLForm, Janua.Controls.Forms.Impl, Janua.Controls.Forms.Intf, Janua.Core.Classes, Janua.Core.Types;

type
  TJanuaVCLPageController = class(TJanuaCustomPageController)
  private
    FPageControl: TPageControl;
    FForms: IDictionary<string, TTabSheet>;
    procedure SetPageControl(const Value: TPageControl);
  public
    procedure btnAdvBarClick(aRecord: TJanuaFormRecord); override;
    constructor Create(AOwner: TComponent); override;
  published
    property PageControl: TPageControl read FPageControl write SetPageControl;
  end;

type
  TJanuaVCLMDIController = class(TJanuaCustomPageController)
  private
    FPageControl: TPageControl;
    FForms: IDictionary<string, TForm>;
  public
    procedure btnAdvBarClick(aRecord: TJanuaFormRecord); override;
    constructor Create(AOwner: TComponent); override;
  end;

type
  TJanuaVCLStyleManager = class(TJanuaInterfacedObject, IJanuaStyleManager)
  private
    FStyleName: string;
    FStyleList: TStrings;
    function TrySetStyle(const AStyleName: string): Boolean;
    procedure WriteStyleLocal;
  protected
    function GetStyleName: string;
    procedure SetStyleName(const Value: string);
    function GetScreenFontName: string;
    function GetStyleList: TStrings;
    function GetScreenFontHeight: integer;
  public
    function InternalActivate: Boolean; override;
    procedure ShowSelectThemStyler;
{$IFNDEF AUTOREFCOUNT}
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
{$ENDIF}
  public
    constructor Create; override;
  end;

  TJanuaWindowsManager = class(TJanuaInterfacedObject, IJanuaWindowsManager)
  private
    FOverlayForms: IStack<TForm>;
    FAnimation: TForm;
    FAniTimer: TTimer;
  public
    procedure ShowOverlay(aAnimations: Boolean = False);
    procedure HideOverlay;
    procedure IncTimer(Sender: ToBject);
    procedure ShowAnimation;
    constructor Create; override;
  end;

implementation

uses System.SysUtils, Winapi.Windows, Winapi.Messages, System.Variants, Janua.Core.Functions,
  FVCLThemeSelector, Janua.VCL.Framework, Janua.Application.Framework, Janua.VCL.frmOverlayAnimation;

{ TJanuaCustomPageController }

procedure TJanuaVCLPageController.btnAdvBarClick(aRecord: TJanuaFormRecord);
var
  lForm: TForm;
  lIForm: IJanuaForm;
  lCmp: TComponent;
  lSheet: TTabSheet;
begin
  if FForms.TryGetValue(aRecord.Title, lSheet) then
  begin
    FPageControl.ActivePage := lSheet;
  end
  else
  begin
    lCmp := aRecord.CreateForm(self).Component;
    if lCmp is TForm then
      try
        lForm := lCmp as TForm;
        // create a tabsheet within the page control
        lSheet := TTabSheet.Create(FPageControl);
        lSheet.PageControl := FPageControl;
        lForm.BorderStyle := bsNone;
        lForm.Align := alClient;
        lForm.Parent := lSheet;
        lForm.Caption := aRecord.Title;

        if Supports(lCmp, IJanuaForm, lIForm) then
        begin
          lIForm.Params := aRecord.Params;
          lIForm.Activate;
        end;

        lForm.Visible := True;
        // activate and set title
        FPageControl.ActivePage := lSheet;
        lSheet.Caption := lForm.Caption;
        lSheet.ImageIndex := aRecord.IconIndex;

      finally
        FForms.Add(aRecord.Title, lSheet);
      end
  end;
end;

constructor TJanuaVCLPageController.Create(AOwner: TComponent);
begin
  inherited;
  FForms := TCollections.CreateDictionary<string, TTabSheet>;
end;

procedure TJanuaVCLPageController.SetPageControl(const Value: TPageControl);
begin
  FPageControl := Value;
  if Assigned(FPageControl) then
    FPageControl.Images := TJanuaVCLApplication.ImgListVCLIcons24;
end;

{ TJanuaVCLStyleManager }

procedure TJanuaVCLStyleManager.AfterConstruction;
begin
  inherited;

end;

procedure TJanuaVCLStyleManager.BeforeDestruction;
begin
  inherited;
  FStyleList.Free
end;

constructor TJanuaVCLStyleManager.Create;
begin
  inherited;
  FStyleList := TStringList.Create;
end;

procedure TJanuaVCLStyleManager.WriteStyleLocal;
begin
  TJanuaApplication.WriteParamString('APPLICATION', 'Style', FStyleName);
end;

function TJanuaVCLStyleManager.GetScreenFontHeight: integer;
begin
  // If you want to use system font Height:
  Result := Muldiv(Screen.IconFont.Height, 96, Screen.IconFont.PixelsPerInch);
end;

function TJanuaVCLStyleManager.GetScreenFontName: string;
begin
  // Acquire system font and size (eg. for windows 10 Segoe UI and 14 at 96 DPI)
  // but without using Assign!
  Result := Screen.IconFont.Name;
end;

function TJanuaVCLStyleManager.GetStyleList: TStrings;
begin
  Result := FStyleList
end;

function TJanuaVCLStyleManager.GetStyleName: string;
begin
  Result := FStyleName
end;

function TJanuaVCLStyleManager.InternalActivate: Boolean;
var
  I: integer;
begin
  Result := Active;
  if not Result then
  begin
    Result := inherited InternalActivate;
    // Read Style stored into Registry
    FStyleName := TJanuaApplication.ReadParamString('APPLICATION', 'Style', FStyleName);
    // ReadAppStyleFromReg('Januaproject', TJanuaApplication.AppName);
    if FStyleName = '' then
    begin
      FStyleName := TStyleManager.ActiveStyle.Name;
      WriteStyleLocal;
      // WriteAppStyleToReg('Januaproject', TJanuaApplication.AppName, FStyleName);
    end;
    FStyleList.Clear;
    for I := 0 to High(TStyleManager.StyleNames) do
      FStyleList.Add(TStyleManager.StyleNames[I]);
    TStringList(FStyleList).Sort;
    if TStringList(FStyleList).IndexOf(FStyleName) > 0 then
      TStyleManager.TrySetStyle(FStyleName);

    // FStyleList.ItemIndex := FStyleList.Items.IndexOf({$IFDEF D10_1+}'Windows10'{$ELSE}'Windows'{$ENDIF});
  end;
end;

procedure TJanuaVCLStyleManager.SetStyleName(const Value: string);
begin
  if (Value <> FStyleName) and (FStyleList.IndexOf(Value) > -1) then
    TrySetStyle(Value)
end;

procedure TJanuaVCLStyleManager.ShowSelectThemStyler;
var
  LStyleName: string;
begin
  if ShowVCLThemeSelector(LStyleName, True, 9, 4) then
    TrySetStyle(LStyleName);
end;

function TJanuaVCLStyleManager.TrySetStyle(const AStyleName: string): Boolean;
begin
  Result := False;
  try
    TStyleManager.SetStyle(AStyleName);
    FStyleName := AStyleName;
    WriteStyleLocal;
    Result := True;
  except
    Result := False; // ignore
  end;
end;

{ TJanuaWindowsManager }

constructor TJanuaWindowsManager.Create;
begin
  inherited;
  FOverlayForms := TCollections.CreateStack<TForm>;
end;

procedure TJanuaWindowsManager.HideOverlay;
var
  lOverlayForm: TForm;
begin
  if Assigned(FAnimation) then
  begin
    FAnimation.Free;
    FAnimation := nil;
  end;
  if FOverlayForms.TryExtract(lOverlayForm) then
    lOverlayForm.Free;
end;

procedure TJanuaWindowsManager.IncTimer(Sender: ToBject);
begin
  { if (FAnimation.Position < 100) then
    begin
    FAnimation.Position := FAnimation.Position + 1;
    Application.ProcessMessages;
    end
    else
    FAnimation.Position := 0; }
end;

procedure TJanuaWindowsManager.ShowAnimation;
begin
  FAnimation := TfrmVCLOverlayAnimation.Create(nil);
  FAnimation.FormStyle := fsStayOnTop;
  FAnimation.Show;
end;

procedure TJanuaWindowsManager.ShowOverlay(aAnimations: Boolean);
var
  lOverlayForm: TForm;
begin
  try
    lOverlayForm := TForm.Create(nil);
    lOverlayForm.Color := clBlack;
    lOverlayForm.StyleElements := [];
    lOverlayForm.StyleName := 'Win10IDE_Dark';
    lOverlayForm.BorderIcons := [];
    lOverlayForm.AlphaBlend := True;
    lOverlayForm.AlphaBlendValue := 200;
    lOverlayForm.WindowState := wsMaximized;

    lOverlayForm.Show;
    FOverlayForms.Push(lOverlayForm);
    { begin
      FAnimation := TProgressBar.Create(FOverlayForm);
      FAnimation.Width := 200;
      FAnimation.Left := Trunc((FOverlayForm.Width - 200) / 2);
      FAniTimer := TTimer.Create(FOverlayForm);
      FAnimation.Parent := FOverlayForm;
      FAnimation.Visible := True;
      FAniTimer.OnTimer := IncTimer;
      FAniTimer.Interval := 200;
      FAniTimer.Enabled := True;
      Windows.ProcessMessages;
      end; }
  except
    on e: exception do
      raiseexception('ShowOverlay', e, self);
  end;
end;

{ TJanuaVCLMDIController }

procedure TJanuaVCLMDIController.btnAdvBarClick(aRecord: TJanuaFormRecord);
var
  lForm: TForm;
  lIForm: IJanuaForm;
  lCmp: TComponent;
begin
  lForm := nil;
  if FForms.TryGetValue(aRecord.Title, lForm) then
  begin
    lForm.Show;
  end
  else
  begin
    lCmp := aRecord.CreateForm(self).Component;
    if lCmp is TForm then
      try
        lForm := lCmp as TForm;
        lForm.Align := alClient;
        lForm.WindowState := wsMaximized;
        lForm.FormStyle := fsMDIChild;
        lForm.Caption := aRecord.Title;

        if Supports(lCmp, IJanuaForm, lIForm) then
        begin
          lIForm.Params := aRecord.Params;
          lIForm.Activate;
        end;

        lForm.Show;

      finally
        FForms.Add(aRecord.Title, lForm);
      end
  end;
end;

constructor TJanuaVCLMDIController.Create(AOwner: TComponent);
begin
  inherited;
  FForms := TCollections.CreateDictionary<string, TForm>;
end;

end.

