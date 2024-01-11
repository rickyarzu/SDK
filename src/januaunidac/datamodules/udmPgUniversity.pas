unit udmPgUniversity;

interface

uses
  System.SysUtils, System.Variants,
  System.Classes,
  udmJanuaPostgresModel, Data.DB, Uni, MemDS, DBAccess, Datasnap.DBClient,
  Datasnap.Provider,
  Janua.Core.Classes,
  UniProvider, PostgreSQLUniProvider, FireDAC.Comp.Client;

type
  TdmPgUniversity = class(TdmJanuaPostgresModel)
    qryUniversities: TUniQuery;
    qryUniversitiesuni_id: TSmallintField;
    qryUniversitiesname: TWideStringField;
    qryUniversitiescountry_id: TSmallintField;
    qryUniversitiesregion_id: TSmallintField;
    qryUniversitiestown_id: TIntegerField;
    qryUniversitieslogo_image_id: TLargeintField;
    dsUniversities: TDataSource;
    qryFaculties: TUniQuery;
    qryFacultiesfaculty_id: TSmallintField;
    qryFacultiesfaculty_name: TWideMemoField;
    qryFacultiesuni_id: TSmallintField;
    qryFacultiestown_id: TIntegerField;
    dsFaculties: TDataSource;
    qryModules: TUniQuery;
    qryModulesmodule_id: TSmallintField;
    qryModulesfaculty_id: TSmallintField;
    qryModulesmodule_name: TWideStringField;
    qryModulestown_id: TIntegerField;
    dsModules: TDataSource;
    dspUniversities: TDataSetProvider;
    cdsUniversities: TClientDataSet;
    cdsUniversitiesuni_id: TSmallintField;
    cdsUniversitiesname: TWideStringField;
    cdsUniversitiescountry_id: TSmallintField;
    cdsUniversitiesregion_id: TSmallintField;
    cdsUniversitiestown_id: TIntegerField;
    cdsUniversitieslogo_image_id: TLargeintField;
    cdsUniversitiesqryFaculties: TDataSetField;
    cdsFaculties: TClientDataSet;
    cdsFacultiesfaculty_id: TSmallintField;
    cdsFacultiesfaculty_name: TWideMemoField;
    cdsFacultiesuni_id: TSmallintField;
    cdsFacultiestown_id: TIntegerField;
    cdsFacultiesqryModules: TDataSetField;
    cdsModules: TClientDataSet;
    cdsModulesmodule_id: TSmallintField;
    cdsModulesfaculty_id: TSmallintField;
    cdsModulesmodule_name: TWideStringField;
    cdsModulestown_id: TIntegerField;
  private
    FModuleName: string;
    FUniversityName: string;
    FFacultyName: string;
    { Private declarations }
    function GetUniversitiesList: TStringList;
    function GetFacultiesList: TStringList;
    function GetModulesList: TStringList;
    procedure SetFacultyName(const Value: string);
    procedure SetModuleName(const Value: string);
    procedure SetUniversityName(const Value: string);

  public
    { Public declarations }
    function OpenUniversities: boolean;
    procedure CloneUniversities(var aTarget: TFDMemTable);
    property UniversitiesList: TStringList read GetUniversitiesList;
    property FacultiesList: TStringList read GetFacultiesList;
    property ModulesList: TStringList read GetModulesList;
    property UniversityName: string read FUniversityName write SetUniversityName;
    property FacultyName: string read FFacultyName write SetFacultyName;
    property ModuleName: string read FModuleName write SetModuleName;
  end;

var
  dmPgUniversity: TdmPgUniversity;

implementation

uses Janua.Core.Functions;

{$R *.dfm}
{ TdmPgUniversity }

procedure TdmPgUniversity.CloneUniversities(var aTarget: TFDMemTable);
begin
    self.OpenUniversities;
    Janua.Core.Functions.CloneDataset(cdsUniversities, aTarget);
end;

function TdmPgUniversity.GetFacultiesList: TStringList;
begin
  Result := TStringList.Create;
  cdsFaculties.First;
  while not cdsFaculties.Eof do
  begin
    Result.Add(cdsFacultiesfaculty_name.AsWideString);
    cdsFaculties.Next;
  end;
end;

function TdmPgUniversity.GetModulesList: TStringList;
begin
  Result := TStringList.Create;
  cdsModules.First;

  while not cdsModules.Eof do
  begin
    Result.Add(cdsModulesmodule_name.AsWideString);
    cdsModules.Next;
  end;
end;

function TdmPgUniversity.GetUniversitiesList: TStringList;
begin
  Result := TStringList.Create;
end;

function TdmPgUniversity.OpenUniversities: boolean;
begin
  if not self.cdsUniversities.Active then
    self.ServerFunctions.OpenDataset(cdsUniversities);

  Result := self.cdsUniversities.Active;

end;

procedure TdmPgUniversity.SetFacultyName(const Value: string);
begin
  FFacultyName := Value;
  cdsFaculties.Locate('faculty_name', Value, []);
end;

procedure TdmPgUniversity.SetModuleName(const Value: string);
begin
  FModuleName := Value;
  cdsModules.Locate('module_name', Value, []);
end;

procedure TdmPgUniversity.SetUniversityName(const Value: string);
begin
  FUniversityName := Value;
  cdsUniversities.Locate('name', Value, []);

end;

end.
