//DB Controls = Database
unit DatabaseDBControls;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, DBClient, unimDBEdit,
  uniDateTimePicker, uniDBDateTimePicker, unimDBDatePicker, uniCheckBox,
  uniDBCheckBox, unimDBCheckBox, unimToggle, unimDBToggle, uniEdit, uniDBEdit,
  uniGUImJSForm, uniGUIBaseClasses, uniDBNavigator, unimDBNavigator, ServerModule, MainModule;

type
  TUniDatabaseDBControls = class(TUniFrame)
    UnimDBNavigator1: TUnimDBNavigator;
    UnimContainerPanel1: TUnimContainerPanel;
    UnimDBEdit1: TUnimDBEdit;
    UnimDBNumberEdit1: TUnimDBNumberEdit;
    UnimDBToggle1: TUnimDBToggle;
    UnimDBCheckBox1: TUnimDBCheckBox;
    UnimDBDatePicker1: TUnimDBDatePicker;
    UnimDBSpinner1: TUnimDBSpinner;
    DataSource1: TDataSource;
    ClientDataSetSalary: TClientDataSet;
    ClientDataSetSalaryEmpNo: TIntegerField;
    ClientDataSetSalaryLastName: TStringField;
    ClientDataSetSalaryFirstName: TStringField;
    ClientDataSetSalaryPhoneExt: TStringField;
    ClientDataSetSalaryHireDate: TDateTimeField;
    ClientDataSetSalarySalary: TFloatField;
    ClientDataSetSalaryShift: TBooleanField;
    ClientDataSetSalaryShiftStart: TTimeField;
    ClientDataSetSalaryCity: TStringField;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniDatabaseDBControls.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSetSalary, 'Salary.cds');

 // ClientDataSetSalary.IndexDefs.Add('EmpNoIndex', 'EmpNo', []);
end;

initialization
  RegisterClass(TUniDatabaseDBControls);

end.
