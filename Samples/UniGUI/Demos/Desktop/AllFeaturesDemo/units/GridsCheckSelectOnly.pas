// Check Select Only = Grids
unit GridsCheckSelectOnly;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniDBNavigator, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, ServerModule, DB, DBClient, MainModule;

type
  TUniGridsCheckSelectOnly = class(TUniFrame)
    ClientDataSet1: TClientDataSet;
    ClientDataSet1EmpNo: TIntegerField;
    ClientDataSet1LastName: TStringField;
    ClientDataSet1FirstName: TStringField;
    ClientDataSet1Shift: TBooleanField;
    ClientDataSet1BoolInt: TSmallintField;
    ClientDataSet1BoolString: TStringField;
    UniContainerPanel1: TUniContainerPanel;
    UniDBNavigator1: TUniDBNavigator;
    DataSource1: TDataSource;
    UniDBGrid1: TUniDBGrid;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  StrUtils;

{$R *.dfm}

procedure TUniGridsCheckSelectOnly.UniFrameCreate(Sender: TObject);
var
  I:Integer;
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1,'CheckGrid.cds');

  with ClientDataSet1 do
  begin
    for I := 1 to 100 do
    begin
      Append;
      FieldByName('EmpNo').AsInteger := I;
      FieldByName('Lastname').AsString := Char(65+Random(28));
      FieldByName('Firstname').AsString := Char(65+Random(28));

      FieldByName('shift').AsBoolean := Random(2)=1;
      FieldByName('BoolInt').AsInteger := Random(2);
      FieldByName('Boolstring').AsString := IfThen(Random(2)=0, 'set', 'unset');
      Post;
    end;
    First;
  end;
end;

initialization
  RegisterClass(TUniGridsCheckSelectOnly);
end.
