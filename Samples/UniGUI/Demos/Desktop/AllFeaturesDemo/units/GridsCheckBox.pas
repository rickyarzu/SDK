// Check Box = Grids
unit GridsCheckBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid, MainModule, uniDBNavigator, StrUtils, uniPanel, DBClient, ServerModule;

type
  TUniGridsCheckBox = class(TUniFrame)
    UniDBGrid1: TUniDBGrid;
    DataSource1: TDataSource;
    UniDBNavigator1: TUniDBNavigator;
    UniContainerPanel1: TUniContainerPanel;
    ClientDataSet1: TClientDataSet;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniGridsCheckBox.UniFrameCreate(Sender: TObject);
var
  I: Integer;
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
  RegisterClass(TUniGridsCheckBox);
end.
