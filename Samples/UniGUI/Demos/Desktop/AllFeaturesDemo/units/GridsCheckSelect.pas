// Check Select = Grids
unit GridsCheckSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, uniDBNavigator,
  uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniPanel, ServerModule,
  uniRadioButton, uniButton, DBClient, MainModule;

type
  TUniGridsCheckSelect = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniDBNavigator1: TUniDBNavigator;
    ClientDataSet3: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet3EmpNo: TIntegerField;
    ClientDataSet3LastName: TStringField;
    ClientDataSet3FirstName: TStringField;
    ClientDataSet3Shift: TBooleanField;
    ClientDataSet3BoolInt: TSmallintField;
    ClientDataSet3BoolString: TStringField;
    ClientDataSet1: TClientDataSet;
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



procedure TUniGridsCheckSelect.UniFrameCreate(Sender: TObject);
var
  I:Integer;
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1, 'CheckGrid.cds');

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
  RegisterClass(TUniGridsCheckSelect);
end.
