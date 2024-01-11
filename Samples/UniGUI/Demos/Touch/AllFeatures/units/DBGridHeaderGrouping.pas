//Header Grouping = DBGrid
unit DBGridHeaderGrouping;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniGUImJSForm, DB,
  DBClient, uniDBNavigator, unimDBNavigator, uniBasicGrid, uniDBGrid,
  unimDBListGrid, unimDBGrid, ServerModule, MainModule;

type
  TUniDBGridHeaderGrouping = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimContainerPanel2: TUnimContainerPanel;
    UnimDBGrid1: TUnimDBGrid;
    UnimDBNavigator1: TUnimDBNavigator;
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
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


procedure TUniDBGridHeaderGrouping.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1, 'Employer.cds');
 
  //ClientDataSet1.IndexDefs.Add('EmpNoIndex', 'EmpNo', []);
end;

initialization
  RegisterClass(TUniDBGridHeaderGrouping);
end.
