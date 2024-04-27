unit Janua.Oracle.dmVisualCall;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.Oracle, FireDAC.Phys.OracleDef, FireDAC.VCLUI.Wait, VirtualTable, FireDAC.Comp.Client, Data.DB,
  MemDS, DBAccess, Uni, UniProvider, OracleUniProvider;

type
  TdmOracleVisualCall = class(TDataModule)
    UniConnection1: TUniConnection;
    OracleUniProvider1: TOracleUniProvider;
    qrySchemas: TUniQuery;
    qrySchemasSCHEMA_NAME: TWideStringField;
    FDConnection1: TFDConnection;
    FDPhysOracleDriverLink1: TFDPhysOracleDriverLink;
    vtSchemas: TVirtualTable;
    qryScripts: TUniQuery;
    qryScriptsMODULEIDQ: TWideStringField;
    qryScriptsPROGQ: TSmallintField;
    qryScriptsDESCQ: TWideStringField;
    qryScriptsDYQUERY: TWideMemoField;
    qryScriptsID_OPERATORE: TWideStringField;
    qryScriptsID_TIMESTAMP_INIZIO_VAL: TLargeintField;
    qryScriptsID_FUNZIONE: TWideStringField;
    qryScriptsID_OPERAZIONE: TWideStringField;
    qryScriptsID_STATO_ELAB: TWideStringField;
    qryScriptsID_LOCK: TLargeintField;
    qryScriptsID_COMMENTO: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmOracleVisualCall: TdmOracleVisualCall;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
