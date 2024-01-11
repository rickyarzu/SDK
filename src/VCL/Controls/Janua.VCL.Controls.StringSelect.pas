unit Janua.VCL.Controls.StringSelect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics, VCL.Controls,
  VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.Samples.Spin, VCL.ExtCtrls, VCL.Mask, JvExMask, JvToolEdit, JvBaseEdits,
  // Janua
  Janua.Controls.Select.Intf, Janua.Bindings.Intf, Janua.Core.Classes.Intf, Janua.Controls.Forms.Intf,
  uJanuaVCLFrame, Janua.Orm.Intf,
  // Interposers
  Janua.VCL.Controls.FrameSelectModel, Janua.VCL.Interposers;

type
  TframeSelectString = class(TframSelectModel, IJanuaContainer, IJanuaBindable, IJanuaSelect)
    edtSearch: TEdit;
    procedure edtSearchChange(Sender: TObject);
  protected
    procedure SetLabelText; override;
    procedure GetActivate; override;
    procedure InternalSetField; override;
  private
    function GetSelectedValue: String;
    procedure SetSelectedValue(const Value: String);
    { Private declarations }
  public
    { Public declarations }
    property SelectedValue: String read GetSelectedValue write SetSelectedValue;
  end;

implementation

{$R *.dfm}

procedure TframeSelectString.edtSearchChange(Sender: TObject);
begin
  inherited;
  Notify('SelectedValue');
  FJanuaField.AsString := edtSearch.Text;
end;

{ TframeSelectString }

procedure TframeSelectString.GetActivate;
begin
  inherited;
  FActivate := procedure
    begin
      edtSearch.Text := '';
    end;
end;

function TframeSelectString.GetSelectedValue: String;
begin
  Result := edtSearch.Text
end;

procedure TframeSelectString.InternalSetField;
begin
  inherited;
  if Assigned(FJanuaField) then
  begin
    SetSelectedValue(FJanuaField.AsString);
    FJanuaField.Bind('AsString', self, 'SelectedValue');
  end;
end;

procedure TframeSelectString.SetLabelText;
begin
  inherited;

end;

procedure TframeSelectString.SetSelectedValue(const Value: String);
begin
  if edtSearch.Text <> Value then
  begin
    edtSearch.Text := Value;
    Notify('SelectedValue');
  end;
end;

end.
