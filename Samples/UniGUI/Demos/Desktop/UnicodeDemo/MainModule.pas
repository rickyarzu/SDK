unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, DB, DBClient;

type
  TUniMainModule = class(TUniGUIMainModule)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
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
  UniGUIVars, ServerModule, UniGUIApplication;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
begin
  with ClientDataSet1 do
  begin
    FieldDefs.Add('Fld1', ftWideString, 25);
    FieldDefs.Add('Fld2', ftWideString, 25);
    FieldDefs.Add('Fld3', ftWideString, 25);
    CreateDataSet;

    Append;
    FieldByName('Fld1').AsString:='Hello';
    FieldByName('Fld2').AsString:='你好';
    FieldByName('Fld3').AsString:='سلام';
    Post;

    Append;
    FieldByName('Fld1').AsString:='привет';
    FieldByName('Fld2').AsString:='مرحبا';
    FieldByName('Fld3').AsString:='こんにちは';
    Post;

    Append;
    FieldByName('Fld1').AsString:='안녕하세요';
    FieldByName('Fld2').AsString:='שלום';
    FieldByName('Fld3').AsString:='สวัสดี';
    Post;
  end;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
