//DBGrid Editor = DBGrid
unit DBGridDBGridEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, DBClient, uniBasicGrid,
  uniDBGrid, unimDBListGrid, unimDBGrid, uniGUIBaseClasses, uniGUImJSForm,
  uniDBNavigator, unimDBNavigator, ServerModule, MainModule;

type
  TUniDBGridDBGridEditor = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimDBGrid1: TUnimDBGrid;
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
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniDBGridDBGridEditor.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1, 'Employer.cds');

  //ClientDataSet1.IndexDefs.Add('EmpNoIndex', 'EmpNo', []);
end;

initialization
  RegisterClass(TUniDBGridDBGridEditor);

end.
