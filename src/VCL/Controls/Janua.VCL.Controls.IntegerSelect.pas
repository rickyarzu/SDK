unit Janua.VCL.Controls.IntegerSelect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, Janua.VCL.Controls.FrameSelectModel, VCL.StdCtrls, VCL.Samples.Spin,
  Janua.VCL.Interposers, VCL.ExtCtrls;

type
  TframeSelectInteger = class(TframSelectModel)
    seInteger: TSpinEdit;
    procedure seIntegerChange(Sender: TObject);
  protected
    procedure SetLabelText; override;
    procedure GetActivate; override;
    procedure InternalSetField; override;
  private
    function GetSelectedValue: Integer;
    procedure SetSelectedValue(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property SelectedValue: Integer read GetSelectedValue write SetSelectedValue;
  end;

var
  frameSelectInteger: TframeSelectInteger;

implementation

{$R *.dfm}
{ TframSelectModel2 }

procedure TframeSelectInteger.GetActivate;
begin
  inherited;
  FActivate := procedure
    begin
       seInteger.Value := 0;
    end;
end;

function TframeSelectInteger.GetSelectedValue: Integer;
begin
  Result := seInteger.Value
end;

procedure TframeSelectInteger.InternalSetField;
begin
  inherited;
  if Assigned(FJanuaField) then
  begin
    SetSelectedValue(FJanuaField.AsInteger);
    FJanuaField.Bind('AsInteger', self, 'SelectedValue');
  end;
end;

procedure TframeSelectInteger.seIntegerChange(Sender: TObject);
begin
  if Assigned(FJanuaField) and (FJanuaField.AsInteger <> seInteger.Value) then
    FJanuaField.AsInteger := seInteger.Value;
  Notify('SelectedValue');
end;

procedure TframeSelectInteger.SetLabelText;
begin
  inherited;

end;

procedure TframeSelectInteger.SetSelectedValue(const Value: Integer);
begin
  if seInteger.Value <> Value then
    seInteger.Value := Value;
end;

end.
