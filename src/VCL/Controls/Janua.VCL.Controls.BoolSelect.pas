unit Janua.VCL.Controls.BoolSelect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics, VCL.Controls,
  VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.Samples.Spin, VCL.ExtCtrls, VCL.Mask, JvExMask, JvToolEdit, JvBaseEdits,
  // Janua
  Janua.VCL.Controls.FrameSelectModel, Janua.VCL.Interposers;

type
  TframeSelectBool = class(TframSelectModel)
    chkCheckBox: TCheckBox;
    procedure chkCheckBoxClick(Sender: TObject);
  protected
    procedure SetLabelText; override;
    procedure GetActivate; override;
    procedure InternalSetField; override;
  private
    function GetSelectedValue: Boolean;
    procedure SetSelectedValue(const Value: Boolean);
    { Private declarations }
  public
    { Public declarations }
    property SelectedValue: Boolean read GetSelectedValue write SetSelectedValue;
  end;

implementation

{$R *.dfm}

procedure TframeSelectBool.chkCheckBoxClick(Sender: TObject);
begin
  Notify('SelectedValue');
  FJanuaField.AsBoolean := chkCheckBox.Checked;
end;

{ TframeSelectBool }

procedure TframeSelectBool.GetActivate;
begin
  inherited;
  FActivate := procedure
    begin
      chkCheckBox.Checked := False;
    end;
end;

function TframeSelectBool.GetSelectedValue: Boolean;
begin
   Result := chkCheckBox.Checked;
end;

procedure TframeSelectBool.InternalSetField;
begin
  inherited;
  if Assigned(FJanuaField) then
  begin
    SetSelectedValue(FJanuaField.AsBoolean);
    FJanuaField.Bind('AsBoolean', self, 'SelectedValue');
  end;
end;

procedure TframeSelectBool.SetLabelText;
begin
  inherited;

end;

procedure TframeSelectBool.SetSelectedValue(const Value: Boolean);
begin
  if chkCheckBox.Checked <> Value then
  begin
    chkCheckBox.Checked := Value;
    Notify('SelectedValue');
  end;
end;

end.
