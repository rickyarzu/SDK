unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, unimDBEdit,
  uniDBNavigator, unimDBNavigator, uniCheckBox, uniDBCheckBox, unimDBCheckBox,
  uniDateTimePicker, uniDBDateTimePicker, unimDBDatePicker, unimToggle,
  unimDBToggle, uniGUIBaseClasses, uniEdit, uniDBEdit, DB,
  DBClient, uniGUImJSForm;

type
  TMainmForm = class(TUnimForm)
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
    DataSource1: TDataSource;
    UnimDBNavigator1: TUnimDBNavigator;
    UnimContainerPanel1: TUnimContainerPanel;
    UnimDBNumberEdit1: TUnimDBNumberEdit;
    UnimDBCheckBox1: TUnimDBCheckBox;
    UnimDBDatePicker1: TUnimDBDatePicker;
    UnimDBToggle1: TUnimDBToggle;
    UnimDBEdit1: TUnimDBEdit;
    UnimDBSpinner1: TUnimDBSpinner;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
