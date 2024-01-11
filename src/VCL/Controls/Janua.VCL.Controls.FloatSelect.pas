unit Janua.VCL.Controls.FloatSelect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics, VCL.Controls,
  VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.Samples.Spin, VCL.ExtCtrls, VCL.Mask, JvExMask, JvToolEdit, JvBaseEdits,
  // Janua
  Janua.VCL.Controls.FrameSelectModel, Janua.VCL.Interposers;

type
  TframeSelectFloat = class(TframSelectModel)
    edFloat: TJvCalcEdit;
    procedure edFloatChange(Sender: TObject);
  protected
    procedure SetLabelText; override;
    procedure GetActivate; override;
    procedure InternalSetField; override;
  private
    function GetSelectedValue: Extended;
    procedure SetSelectedValue(const Value: Extended);
    { Private declarations }
  public
    { Public declarations }
    property SelectedValue: Extended read GetSelectedValue write SetSelectedValue;
  end;

implementation

{$R *.dfm}

procedure TframeSelectFloat.edFloatChange(Sender: TObject);
begin
  inherited;
  Notify('SelectedValue');
  FJanuaField.AsFloat := edFloat.Value;
end;

{ TframeSelectFloat }

procedure TframeSelectFloat.GetActivate;
begin
  inherited;
  FActivate := procedure
    begin
      edFloat.Value := 0;
    end;
end;

function TframeSelectFloat.GetSelectedValue: Extended;
begin
  Result := edFloat.Value
end;

procedure TframeSelectFloat.InternalSetField;
begin
  inherited;
  if Assigned(FJanuaField) then
  begin
    SetSelectedValue(FJanuaField.AsFloat);
    FJanuaField.Bind('AsFloat', self, 'SelectedValue');
  end;
end;

procedure TframeSelectFloat.SetLabelText;
begin
  inherited;

end;

procedure TframeSelectFloat.SetSelectedValue(const Value: Extended);
begin
  if edFloat.Value <> Value then
  begin
    edFloat.Value := Value;
    Notify('SelectedValue');
  end;
end;

end.
