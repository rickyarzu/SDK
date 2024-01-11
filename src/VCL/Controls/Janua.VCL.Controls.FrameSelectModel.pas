unit Janua.VCL.Controls.FrameSelectModel;

interface

uses
  /// RTL
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // Janua
  Janua.Controls.Select.Intf, Janua.Bindings.Intf, Janua.Core.Classes.Intf, Janua.Controls.Forms.Intf,
  uJanuaVCLFrame, Janua.Orm.Intf,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.ExtCtrls;

type
  TframSelectModel = class(TJanuaVCLFrameModel, IJanuaContainer, IJanuaBindable, IJanuaSelect)
    lbDisplayText: TLabel;
    pnlFrameSelector: TPanel;
  private
    FDisplayLabel: string;
    FActive: Boolean;
    function GetDisplayLabel: string;
    procedure SetDisplayLabel(const Value: string);
  strict protected
    FJanuaField: IJanuaField;
    FActivate: TProc;
    procedure SetLabelText; virtual;
    procedure GetActivate; virtual;
    procedure InternalSetField; virtual;
  protected
    function GetActive: Boolean;
    procedure SetActive(const Value: Boolean);
    function GetJanuaField: IJanuaField;
    procedure SetJanuaField(const Value: IJanuaField);
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  public
    { Public declarations }
    property JanuaField: IJanuaField read GetJanuaField write SetJanuaField;
    property Active: Boolean read GetActive write SetActive;
    property DisplayLabel: string read FDisplayLabel write SetDisplayLabel;
  end;

  TframSelectModelClass = class of TframSelectModel;

implementation

uses Janua.Application.Framework;

{$R *.dfm}
{ TframSelectModel }

constructor TframSelectModel.Create(AOwner: TComponent);
begin
  inherited;
  FActive := False
end;

procedure TframSelectModel.GetActivate;
begin
  FActivate := nil
end;

function TframSelectModel.GetActive: Boolean;
begin
  Result := FActive
end;

function TframSelectModel.GetDisplayLabel: string;
begin
  Result := FDisplayLabel;
end;

function TframSelectModel.GetJanuaField: IJanuaField;
begin
  Result := FJanuaField
end;

procedure TframSelectModel.InternalSetField;
begin
  SetDisplayLabel(FJanuaField.Title);
  FJanuaField.Bind('Title', self, 'DisplayLabel');
end;

procedure TframSelectModel.SetActive(const Value: Boolean);
begin
  if Value <> FActive then
  begin
    FActive := Value;
    if FActive then
      try
        GetActivate;
        if Assigned(FActivate) then
          try
            FActivate
          finally
            FActivate := nil
          end;
      except
        on e: exception do
          RaiseException('SetActivate', e, self);
      end;
  end;
end;

procedure TframSelectModel.SetDisplayLabel(const Value: string);
begin
  if FDisplayLabel <> Value then
  begin
    FDisplayLabel := Value;
    lbDisplayText.Caption := FDisplayLabel;
    Notify('DisplayLabel');
  end;
end;

procedure TframSelectModel.SetJanuaField(const Value: IJanuaField);
begin
  if Value <> FJanuaField then
  begin
    FJanuaField := Value;
    InternalSetField;
  end;
end;

procedure TframSelectModel.SetLabelText;
begin
  lbDisplayText.Caption := FDisplayLabel;
end;

end.
