//Column Resize = DBGrid
unit DBGridColumnResize;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, DBClient, uniDBNavigator,
  unimDBNavigator, uniBasicGrid, uniDBGrid, unimDBListGrid, unimDBGrid,
  uniGUIBaseClasses, uniGUImJSForm, ServerModule, uniLabel, unimLabel, MainModule;

type
  TUniDBGridColumnResize = class(TUniFrame)
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
    procedure UnimDBGrid1ColumnResize(Sender: TUniBaseDBGridColumn;
      NewSize: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniDBGridColumnResize.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1,'Employer.cds');
end;

procedure TUniDBGridColumnResize.UnimDBGrid1ColumnResize(
  Sender: TUniBaseDBGridColumn; NewSize: Integer);
begin
  ShowMessage(Sender.FieldName + ' New Size: '+ IntToStr(NewSize));
end;

initialization
  RegisterClass(TUniDBGridColumnResize);
end.
