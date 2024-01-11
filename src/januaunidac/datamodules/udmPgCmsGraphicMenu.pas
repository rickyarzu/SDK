unit udmPgCmsGraphicMenu;

interface

uses
  System.SysUtils, System.Classes, udmJanuaPostgresModel, Data.DB, Uni, MemDS, DBAccess, Datasnap.Provider,
  Datasnap.DBClient, Janua.Core.Classes, Janua.Core.Exceptions, UniProvider, PostgreSQLUniProvider;

type
  TdmPgCmsGraphicMenu = class(TdmJanuaPostgresModel)
    qryGMenus: TUniQuery;
    dsGMenus: TUniDataSource;
    qryGMenuGroups: TUniQuery;
    dsGMenuGroups: TUniDataSource;
    qryGMenuRows: TUniQuery;
    dsGMenuRows: TUniDataSource;
    qryGMenusid: TIntegerField;
    qryGMenustitle: TWideStringField;
    qryGMenusdb_schema_id: TIntegerField;
    qryGMenusimg_url: TWideStringField;
    qryGMenusimg_id: TLargeintField;
    qryGMenustemplate: TWideMemoField;
    qryGMenusrow_template: TWideMemoField;
    qryGMenusgroup_template: TWideMemoField;
    qryGMenuGroupsid: TIntegerField;
    qryGMenuGroupstitle: TWideStringField;
    qryGMenuGroupscss_class: TWideStringField;
    qryGMenuGroupscss_color: TWideStringField;
    qryGMenuGroupsmenu_id: TIntegerField;
    qryGMenuRowsid: TLargeintField;
    qryGMenuRowsgroup_id: TIntegerField;
    qryGMenuRowsimg_url: TWideStringField;
    qryGMenuRowsimg_id: TLargeintField;
    qryGMenuscss_template: TWideMemoField;
    qryGMenuRowstitle: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    function OpenMenu(aID: integer): boolean;
  end;

var
  dmPgCmsGraphicMenu: TdmPgCmsGraphicMenu;

implementation

{$R *.dfm}
{ TdmPgCmsGraphicMenu }

function TdmPgCmsGraphicMenu.OpenMenu(aID: integer): boolean;
begin
  self.qryGMenus.ParamByName('id').AsInteger := aID;
  GetCustomServerFunctions.OpenDataset(qryGMenus);
  GetCustomServerFunctions.OpenDataset(qryGMenuGroups);
  GetCustomServerFunctions.OpenDataset(qryGMenuRows);

  Result := qryGMenus.RecordCount > 0
end;

end.
