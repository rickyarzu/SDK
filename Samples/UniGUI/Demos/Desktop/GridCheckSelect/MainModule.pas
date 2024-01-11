unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, DB, DBClient, StrUtils;

type
  TUniMainModule = class(TUniGUIMainModule)
    ClientDataSet1: TClientDataSet;
    ClientDataSet1EmpNo: TIntegerField;
    ClientDataSet1LastName: TStringField;
    ClientDataSet1FirstName: TStringField;
    ClientDataSet1Shift: TBooleanField;
    ClientDataSet1BoolInt: TSmallintField;
    ClientDataSet1BoolString: TStringField;
    procedure UniGUIMainModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
var
  I:Integer;
begin
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
  RegisterMainModuleClass(TUniMainModule);
end.
