unit U_MaskEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniBitBtn, uniEdit, uniGUIBaseClasses,
  uniRadioButton, UniFSMaskEdit, uniRadioGroup, uniCheckBox, uniLabel;

type
  TfrmMask = class(TUniFrame)
    btnResult: TUniBitBtn;
    edtResult: TUniFSMaskEdit;
    grpMask: TUniRadioGroup;
    chkMskUnMask: TUniCheckBox;
    edtMask: TUniEdit;
    lbl1: TUniLabel;
    procedure grpMaskClick(Sender: TObject);
    procedure btnResultClick(Sender: TObject);
    procedure chkMskUnMaskClick(Sender: TObject);
    procedure edtMaskChangeValue(Sender: TObject);
    procedure edtMaskChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfrmMask.btnResultClick(Sender: TObject);
begin
  ShowMessage(edtResult.Text);
end;

procedure TfrmMask.chkMskUnMaskClick(Sender: TObject);
begin
  edtResult.MaskUnMask := TUniCheckBox(Sender).Checked;
end;

procedure TfrmMask.edtMaskChange(Sender: TObject);
begin
  edtResult.Mask := edtMask.Text;
end;

procedure TfrmMask.edtMaskChangeValue(Sender: TObject);
begin
  edtResult.Mask := edtMask.Text;
end;

procedure TfrmMask.grpMaskClick(Sender: TObject);
begin
  if grpMask.ItemIndex = 0 then
    edtMask.Text  := '999.999.999-99';
  if grpMask.ItemIndex = 1 then
    edtMask.Text  := '99.999.999/9999-99';
  if grpMask.ItemIndex = 2 then
    edtMask.Text  := '99999-999';
  if grpMask.ItemIndex = 3 then
    edtMask.Text  := '[9]{1,3}.[9]{1,3}.[9]{1,3}.[9]{1,3}';
  if grpMask.ItemIndex = 4 then
    edtMask.Text  := '';


end;

initialization
  RegisterClass(TfrmMask)

end.
