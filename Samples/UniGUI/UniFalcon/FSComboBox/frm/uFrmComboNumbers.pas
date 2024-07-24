unit uFrmComboNumbers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIForm, uniButton,
  uniBitBtn, uniGUIBaseClasses, uniMultiItem, uniComboBox, UniFSCombobox;

type
  TfrmComboNumbers = class(TUniForm)
    cmb1: TUniFSComboBox;
    btnGetValue: TUniBitBtn;
    btnSetValue: TUniBitBtn;
    btnLoadCombo: TUniBitBtn;
    procedure btnLoadComboClick(Sender: TObject);
    procedure btnGetValueClick(Sender: TObject);
    procedure btnSetValueClick(Sender: TObject);
  private
  public
  end;

function frmComboNumbers: TfrmComboNumbers;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmComboNumbers: TfrmComboNumbers;
begin
  Result := TfrmComboNumbers(UniMainModule.GetFormInstance(TfrmComboNumbers));
end;

procedure TfrmComboNumbers.btnGetValueClick(Sender: TObject);
begin
  ShowMessage(cmb1.Value);
end;

procedure TfrmComboNumbers.btnLoadComboClick(Sender: TObject);
var
  vI: Integer;
begin
  cmb1.ClearAll;
  for vI := 1 to 12 do
  begin
    cmb1.ValueList.Add(vI.ToString);
    cmb1.Items.Add('Teste'+ vI.ToString);
  end;
end;

procedure TfrmComboNumbers.btnSetValueClick(Sender: TObject);
begin
  cmb1.Value := '12';
end;

end.
