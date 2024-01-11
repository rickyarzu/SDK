// VerticalTreeGrid = Grids

unit GridsVerticalTreeGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, DBClient, uniEdit, uniSpinEdit,
  uniMultiItem, uniComboBox, uniDateTimePicker, uniPanel, uniBasicGrid,
  uniDBGrid, uniDBVerticalGrid, uniDBVerticalTreeGrid, uniDBNavigator,
  uniGUIBaseClasses;

type
  TUniGridsVerticalTreeGrid = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniDBNavigator1: TUniDBNavigator;
    UniDBVerticalTreeGrid1: TUniDBVerticalTreeGrid;
    UniHiddenPanel2: TUniHiddenPanel;
    UniEdit3: TUniEdit;
    UniDateTimePicker3: TUniDateTimePicker;
    UniComboBox2: TUniComboBox;
    UniSpinEdit2: TUniSpinEdit;
    UniDateTimePicker4: TUniDateTimePicker;
    UniEdit4: TUniEdit;
    UniFormattedNumberEdit2: TUniFormattedNumberEdit;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



initialization
  RegisterClass(TUniGridsVerticalTreeGrid);
end.
