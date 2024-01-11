//AllFeatures: Grid,Editors,icon-grid-row-editor
unit Main;
{$I uniCompilers.inc}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniGUIClasses, uniGUIForm, uniPanel, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid, DB, DBClient, uniEdit, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniSpinEdit, uniDBNavigator, MidasLib, uniButton;

type
  TMainForm = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniHiddenPanel1: TUniHiddenPanel;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1EmpNo: TIntegerField;
    ClientDataSet1LastName: TStringField;
    ClientDataSet1FirstName: TStringField;
    ClientDataSet1PhoneExt: TStringField;
    ClientDataSet1HireDate: TDateTimeField;
    ClientDataSet1Salary: TFloatField;
    ClientDataSet1Shift: TBooleanField;
    ClientDataSet1City: TStringField;
    UniEdit1: TUniEdit;
    UniDateTimePicker1: TUniDateTimePicker;
    UniComboBox1: TUniComboBox;
    UniSpinEdit1: TUniSpinEdit;
    ClientDataSet1ShiftStart: TTimeField;
    UniDateTimePicker2: TUniDateTimePicker;
    UniDBNavigator1: TUniDBNavigator;
    UniEdit2: TUniEdit;
    UniFormattedNumberEdit1: TUniFormattedNumberEdit;
    procedure UniDBGrid1DrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniDBGrid1DrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  if Column.FieldName = 'Shift' then
  begin
    if Column.Field.AsBoolean then
      Attribs.Font.Color := clGreen
    else
      Attribs.Font.Color := clRed;
  end;

end;

initialization
  RegisterMainFormClass(TMainForm);

end.
