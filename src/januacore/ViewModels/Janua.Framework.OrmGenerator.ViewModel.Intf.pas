unit Janua.Framework.OrmGenerator.ViewModel.Intf;

interface

uses System.Classes, System.UITypes, System.SysUtils,
  Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, Janua.Core.Classes.Intf,
  Janua.Bindings.Intf, JOrm.Items.Intf, Janua.ViewModels.Intf, Data.DB;

type
  IJanuaOrmGeneratorDataModule = interface(IJanuaDataModuleContainer)
    ['{EC5F4BDA-31B4-4F62-9F74-409D53433992}']
    function GetjdsGuidGenerator: IJanuaDBDataset;
    procedure SetjdsGuidGenerator(Value: IJanuaDBDataset);
    // vtGuidGenerator: TVirtualTable;
    property jdsGuidGenerator: IJanuaDBDataset read GetjdsGuidGenerator write SetjdsGuidGenerator;

    // qryColumns: TUniQuery;
    function GetjdsColumns: IJanuaDBDataset;
    procedure SetjdsColumns(Value: IJanuaDBDataset);
    property jdsColumns: IJanuaDBDataset read GetjdsColumns write SetjdsColumns;

    // qrySchemas: TUniQuery;
    function GetjdsSchemas: IJanuaDBDataset;
    procedure SetjdsSchemas(Value: IJanuaDBDataset);
    property jdsSchemas: IJanuaDBDataset read GetjdsSchemas write SetjdsSchemas;

    // vtAnalysis: TVirtualTable;
    function GetjdsAnalysis: IJanuaDBDataset;
    procedure SetjdsAnalysis(Value: IJanuaDBDataset);
    property jdsAnalysis: IJanuaDBDataset read GetjdsAnalysis write SetjdsAnalysis;

    // qryAnalisi: TUniQuery;
    function GetjdsAnalisi: IJanuaDBDataset;
    procedure SetjdsAnalisi(Value: IJanuaDBDataset);
    property jdsAnalisi: IJanuaDBDataset read GetjdsAnalisi write SetjdsAnalisi;

    // qryIndexFields: TUniQuery;
    function GetjdsIndexFields: IJanuaDBDataset;
    procedure SetjdsIndexFields(Value: IJanuaDBDataset);
    property jdsIndexFields: IJanuaDBDataset read GetjdsIndexFields write SetjdsIndexFields;

    // qrySchemaTables: TUniQuery;
    function GetjdsSchemaTables: IJanuaDBDataset;
    procedure SetjdsSchemaTables(Value: IJanuaDBDataset);
    property jdsSchemaTables: IJanuaDBDataset read GetjdsSchemaTables write SetjdsSchemaTables;

    // qryTriggers: TUniQuery;
    function GetjdsTriggers: IJanuaDBDataset;
    procedure SetjdsTriggers(Value: IJanuaDBDataset);
    property jdsTriggers: IJanuaDBDataset read GetjdsTriggers write SetjdsTriggers;

    // qrySchemaViews: TUniQuery;
    function GetjdsSchemaViews: IJanuaDBDataset;
    procedure SetjdsSchemaViews(Value: IJanuaDBDataset);
    property jdsSchemaViews: IJanuaDBDataset read GetjdsSchemaViews write SetjdsSchemaViews;

    // qryCheckJguid: TUniQuery;
    function GetjdsCheckJguid: IJanuaDBDataset;
    procedure SetjdsCheckJguid(Value: IJanuaDBDataset);
    property jdsCheckJguid: IJanuaDBDataset read GetjdsCheckJguid write SetjdsCheckJguid;

    // PgDDLColumnsTable: TUniTable;
    function GetjdsDDLColumnsTable: IJanuaDBDataset;
    procedure SetjdsDDLColumnsTable(Value: IJanuaDBDataset);
    property jdsDDLColumnsTable: IJanuaDBDataset read GetjdsDDLColumnsTable write SetjdsDDLColumnsTable;

  end;

  IJanuaOrmGeneratorDBModel = interface(IJanuaDBModel)
    ['{19957E2D-9D5C-450C-AC7D-3F36970289CB}']
    function GetjdsGuidGenerator: IJanuaDBDataset;
    procedure SetjdsGuidGenerator(Value: IJanuaDBDataset);
    // vtGuidGenerator: TVirtualTable;
    property jdsGuidGenerator: IJanuaDBDataset read GetjdsGuidGenerator write SetjdsGuidGenerator;

    // qryColumns: TUniQuery;
    function GetjdsColumns: IJanuaDBDataset;
    procedure SetjdsColumns(Value: IJanuaDBDataset);
    property jdsColumns: IJanuaDBDataset read GetjdsColumns write SetjdsColumns;

    // qrySchemas: TUniQuery;
    function GetjdsSchemas: IJanuaDBDataset;
    procedure SetjdsSchemas(Value: IJanuaDBDataset);
    property jdsSchemas: IJanuaDBDataset read GetjdsSchemas write SetjdsSchemas;

    // vtAnalysis: TVirtualTable;
    function GetjdsAnalysis: IJanuaDBDataset;
    procedure SetjdsAnalysis(Value: IJanuaDBDataset);
    property jdsAnalysis: IJanuaDBDataset read GetjdsAnalysis write SetjdsAnalysis;

    // qryAnalisi: TUniQuery;
    function GetjdsAnalisi: IJanuaDBDataset;
    procedure SetjdsAnalisi(Value: IJanuaDBDataset);
    property jdsAnalisi: IJanuaDBDataset read GetjdsAnalisi write SetjdsAnalisi;

    // qryIndexFields: TUniQuery;
    function GetjdsIndexFields: IJanuaDBDataset;
    procedure SetjdsIndexFields(Value: IJanuaDBDataset);
    property jdsIndexFields: IJanuaDBDataset read GetjdsIndexFields write SetjdsIndexFields;

    // qrySchemaTables: TUniQuery;
    function GetjdsSchemaTables: IJanuaDBDataset;
    procedure SetjdsSchemaTables(Value: IJanuaDBDataset);
    property jdsSchemaTables: IJanuaDBDataset read GetjdsSchemaTables write SetjdsSchemaTables;

    // qryTriggers: TUniQuery;
    function GetjdsTriggers: IJanuaDBDataset;
    procedure SetjdsTriggers(Value: IJanuaDBDataset);
    property jdsTriggers: IJanuaDBDataset read GetjdsTriggers write SetjdsTriggers;

    // qrySchemaViews: TUniQuery;
    function GetjdsSchemaViews: IJanuaDBDataset;
    procedure SetjdsSchemaViews(Value: IJanuaDBDataset);
    property jdsSchemaViews: IJanuaDBDataset read GetjdsSchemaViews write SetjdsSchemaViews;

    // qryCheckJguid: TUniQuery;
    function GetjdsCheckJguid: IJanuaDBDataset;
    procedure SetjdsCheckJguid(Value: IJanuaDBDataset);
    property jdsCheckJguid: IJanuaDBDataset read GetjdsCheckJguid write SetjdsCheckJguid;

    // PgDDLColumnsTable: TUniTable;
    function GetjdsDDLColumnsTable: IJanuaDBDataset;
    procedure SetjdsDDLColumnsTable(Value: IJanuaDBDataset);
    property jdsDDLColumnsTable: IJanuaDBDataset read GetjdsDDLColumnsTable write SetjdsDDLColumnsTable;

    // --------------------------------------------------------------------------------------------------------

    function GetTableName: string;
    function GetAbbreviation: string;
    function GetKeys: string;
    function GetSQLText: string;
    function GetTableSchema: string;
    function GetPrefix: string;
    function GetSourceImpl: string;
    function GetSourceIntf: string;
    function GetSrvImpl: string;
    function GetSrvIntf: string;
    function GetAfterAnalytics: TNotifyEvent;
    procedure SetAbbreviation(const Value: string);
    procedure SetKeys(const Value: string);
    procedure SetTableName(const Value: string);
    procedure SetSQLText(const Value: string);
    procedure SetTableSchema(const Value: string);
    procedure SetPrefix(const Value: string);
    procedure SetSourceImpl(const Value: string);
    procedure SetSourceIntf(const Value: string);
    procedure SetSrvImpl(const Value: string);
    procedure SetSrvIntf(const Value: string);
    procedure SetAfterAnalytics(const Value: TNotifyEvent);
    // public
    procedure RefreshDetails;
    procedure SaveVTDFile;
    procedure GenerateTriggers;
    procedure ExecuteSQL;
    procedure Trigger;
    procedure GenerateJorm;
    procedure Clear;
    procedure SchemaAnalytics;
    procedure Analytics;
    // Properties
    property TableName: string read GetTableName write SetTableName;
    property Abbreviation: string read GetAbbreviation write SetAbbreviation;
    property Keys: string read GetKeys write SetKeys;
    property SQLText: string read GetSQLText write SetSQLText;
    property TableSchema: string read GetTableSchema write SetTableSchema;
    property Prefix: string read GetPrefix write SetPrefix;
    property SourceIntf: string read GetSourceIntf write SetSourceIntf;
    property SourceImpl: string read GetSourceImpl write SetSourceImpl;
    property SrvIntf: string read GetSrvIntf write SetSrvIntf;
    property SrvImpl: string read GetSrvImpl write SetSrvImpl;
    property AfterAnalytics: TNotifyEvent read GetAfterAnalytics write SetAfterAnalytics;
  end;

  IJanuaOrmGeneratorViewModel = interface(IJanuaDBViewModel)
    ['{BAD2FCD0-B7AE-4687-902A-B37F3C3FF044}']
    function GetjdsGuidGenerator: IJanuaDBDataset;
    procedure SetjdsGuidGenerator(Value: IJanuaDBDataset);
    // vtGuidGenerator: TVirtualTable;
    property jdsGuidGenerator: IJanuaDBDataset read GetjdsGuidGenerator write SetjdsGuidGenerator;

    // qryColumns: TUniQuery;
    function GetjdsColumns: IJanuaDBDataset;
    procedure SetjdsColumns(Value: IJanuaDBDataset);
    property jdsColumns: IJanuaDBDataset read GetjdsColumns write SetjdsColumns;

    // qrySchemas: TUniQuery;
    function GetjdsSchemas: IJanuaDBDataset;
    procedure SetjdsSchemas(Value: IJanuaDBDataset);
    property jdsSchemas: IJanuaDBDataset read GetjdsSchemas write SetjdsSchemas;

    // vtAnalysis: TVirtualTable;
    function GetjdsAnalysis: IJanuaDBDataset;
    procedure SetjdsAnalysis(Value: IJanuaDBDataset);
    property jdsAnalysis: IJanuaDBDataset read GetjdsAnalysis write SetjdsAnalysis;

    // qryAnalisi: TUniQuery;
    function GetjdsAnalisi: IJanuaDBDataset;
    procedure SetjdsAnalisi(Value: IJanuaDBDataset);
    property jdsAnalisi: IJanuaDBDataset read GetjdsAnalisi write SetjdsAnalisi;

    // qryIndexFields: TUniQuery;
    function GetjdsIndexFields: IJanuaDBDataset;
    procedure SetjdsIndexFields(Value: IJanuaDBDataset);
    property jdsIndexFields: IJanuaDBDataset read GetjdsIndexFields write SetjdsIndexFields;

    // qrySchemaTables: TUniQuery;
    function GetjdsSchemaTables: IJanuaDBDataset;
    procedure SetjdsSchemaTables(Value: IJanuaDBDataset);
    property jdsSchemaTables: IJanuaDBDataset read GetjdsSchemaTables write SetjdsSchemaTables;

    // qryTriggers: TUniQuery;
    function GetjdsTriggers: IJanuaDBDataset;
    procedure SetjdsTriggers(Value: IJanuaDBDataset);
    property jdsTriggers: IJanuaDBDataset read GetjdsTriggers write SetjdsTriggers;

    // qrySchemaViews: TUniQuery;
    function GetjdsSchemaViews: IJanuaDBDataset;
    procedure SetjdsSchemaViews(Value: IJanuaDBDataset);
    property jdsSchemaViews: IJanuaDBDataset read GetjdsSchemaViews write SetjdsSchemaViews;

    // qryCheckJguid: TUniQuery;
    function GetjdsCheckJguid: IJanuaDBDataset;
    procedure SetjdsCheckJguid(Value: IJanuaDBDataset);
    property jdsCheckJguid: IJanuaDBDataset read GetjdsCheckJguid write SetjdsCheckJguid;

    // PgDDLColumnsTable: TUniTable;
    function GetjdsDDLColumnsTable: IJanuaDBDataset;
    procedure SetjdsDDLColumnsTable(Value: IJanuaDBDataset);
    property jdsDDLColumnsTable: IJanuaDBDataset read GetjdsDDLColumnsTable write SetjdsDDLColumnsTable;

    //----------------------------------------------------------------------------------------------

    function GetTableName: string;
    function GetAbbreviation: string;
    function GetKeys: string;
    function GetSQLText: string;
    function GetTableSchema: string;
    function GetPrefix: string;
    function GetSourceImpl: string;
    function GetSourceIntf: string;
    function GetSrvImpl: string;
    function GetSrvIntf: string;
    function GetAfterAnalytics: TNotifyEvent;
    procedure SetAbbreviation(const Value: string);
    procedure SetKeys(const Value: string);
    procedure SetTableName(const Value: string);
    procedure SetSQLText(const Value: string);
    procedure SetTableSchema(const Value: string);
    procedure SetPrefix(const Value: string);
    procedure SetSourceImpl(const Value: string);
    procedure SetSourceIntf(const Value: string);
    procedure SetSrvImpl(const Value: string);
    procedure SetSrvIntf(const Value: string);
    procedure SetAfterAnalytics(const Value: TNotifyEvent);
    // Properties
    property TableName: string read GetTableName write SetTableName;
    property Abbreviation: string read GetAbbreviation write SetAbbreviation;
    property Keys: string read GetKeys write SetKeys;
    property SQLText: string read GetSQLText write SetSQLText;
    property TableSchema: string read GetTableSchema write SetTableSchema;
    property Prefix: string read GetPrefix write SetPrefix;
    property SourceIntf: string read GetSourceIntf write SetSourceIntf;
    property SourceImpl: string read GetSourceImpl write SetSourceImpl;
    property SrvIntf: string read GetSrvIntf write SetSrvIntf;
    property SrvImpl: string read GetSrvImpl write SetSrvImpl;
    property AfterAnalytics: TNotifyEvent read GetAfterAnalytics write SetAfterAnalytics;

    procedure GenerateScriptsClick(Sender: TObject);
    procedure SchemaClick(Sender: TObject);
    procedure SaveGUIDGeneratorVTDClick(Sender: TObject);
    procedure TriggerClick(Sender: TObject);
    procedure TriggersClick(Sender: TObject);
    procedure GenerateJormClick(Sender: TObject);
    procedure ClearClick(Sender: TObject);
    procedure SchemaAnalyticsClick(Sender: TObject);
    procedure AnalyticsClick(Sender: TObject);
    procedure ExecuteSqlClick(Sender: TObject);
    function GetSChemaTable: string;
  end;

implementation

end.
