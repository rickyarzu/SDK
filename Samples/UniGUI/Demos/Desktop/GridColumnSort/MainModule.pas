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
    procedure SortColumn(const FieldName: string; Dir: Boolean);
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

procedure TUniMainModule.SortColumn(const FieldName: string; Dir: Boolean);
begin
  if Dir then
    ClientDataSet1.IndexName := FieldName+'_index_asc'
  else
    ClientDataSet1.IndexName := FieldName+'_index_des';
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
var
  I: Integer;
  IndexnameAsc : string;
  IndexnameDes : string;
begin
  with ClientDataSet1 do
  begin
    for I := 0 to FieldCount-1 do
    begin
      IndexnameAsc := Fields[I].FieldName+'_index_asc';
      IndexnameDes := Fields[I].FieldName+'_index_des';
      IndexDefs.Add(IndexnameAsc, Fields[I].FieldName, []);
      IndexDefs.Add(IndexnameDes, Fields[I].FieldName, [ixDescending]);
    end;

  end;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
