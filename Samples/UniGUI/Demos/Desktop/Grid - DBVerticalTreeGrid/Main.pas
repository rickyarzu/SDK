//AllFeatures: Grid,DBVerticalTreeGrid,icon-layout-vertical-box
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid, uniDBVerticalGrid, uniDBNavigator, DB, DBClient,
  uniEdit, uniSpinEdit, uniMultiItem, uniComboBox, uniDateTimePicker, uniPanel,
  uniDBEdit, uniDBVerticalTreeGrid, uniDBTreeGrid, uniImageList;

type
  TMainForm = class(TUniForm)
    UniDBNavigator1: TUniDBNavigator;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1EmpNo: TIntegerField;
    ClientDataSet1LastName: TStringField;
    ClientDataSet1FirstName: TStringField;
    ClientDataSet1PhoneExt: TStringField;
    ClientDataSet1HireDate: TDateTimeField;
    ClientDataSet1Salary: TFloatField;
    ClientDataSet1Shift: TBooleanField;
    ClientDataSet1ShiftStart: TTimeField;
    ClientDataSet1City: TStringField;
    UniDBVerticalTreeGrid1: TUniDBVerticalTreeGrid;
    UniHiddenPanel2: TUniHiddenPanel;
    UniEdit3: TUniEdit;
    UniDateTimePicker3: TUniDateTimePicker;
    UniComboBox2: TUniComboBox;
    UniSpinEdit2: TUniSpinEdit;
    UniDateTimePicker4: TUniDateTimePicker;
    UniEdit4: TUniEdit;
    UniFormattedNumberEdit2: TUniFormattedNumberEdit;
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

initialization
  RegisterAppFormClass(TMainForm);

end.
