//AllFeatures: Grid,Editors - Row Editor,icon-grid-row-editor
unit Main;
{$I uniCompilers.inc}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniPanel, uniGUIBaseClasses,
  uniBasicGrid, uniDBGrid, DB, DBClient, uniEdit, uniDateTimePicker, uniMultiItem,
  uniComboBox, uniSpinEdit, uniDBNavigator, MidasLib, uniButton, uniDBEdit;

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
    ClientDataSet1City: TStringField;
    UniEdit1: TUniEdit;
    UniDateTimePicker1: TUniDateTimePicker;
    UniComboBox1: TUniComboBox;
    UniSpinEdit1: TUniSpinEdit;
    ClientDataSet1ShiftStart: TTimeField;
    UniDateTimePicker2: TUniDateTimePicker;
    UniDBNavigator1: TUniDBNavigator;
    UniEdit2: TUniEdit;
    ClientDataSet1Shift: TBooleanField;
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  with PFmtSettings^ do
  begin
    DateSeparator := '/';
    CurrencyFormat := 0;
    CurrencyString := '$';
  end;
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
