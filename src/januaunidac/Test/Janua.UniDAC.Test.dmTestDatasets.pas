unit Janua.UniDAC.Test.dmTestDatasets;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  // Devart.
  MemDS, DBAccess, Uni,
  // FireDac
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Intf, FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  // Janua
  Janua.Core.Functions, Janua.Core.Classes, Janua.Core.System, udmJanuaPostgresModel,
  Janua.Core.Exceptions, UniProvider, PostgreSQLUniProvider, Janua.UniDAC.Connection, VirtualTable;

type
  TdmUniPgTestDatasets = class(TdmJanuaPostgresModel)
    VirtualTable1: TVirtualTable;
    VirtualTable1StringField: TStringField;
    VirtualTable1IntField: TIntegerField;
    VirtualTable1FloatField: TFloatField;
    VirtualTable1BoolField: TBooleanField;
    VirtualTable1DateTimeField: TDateTimeField;
    VirtualTable1DateField: TDateField;
    VirtualTable1MemoField: TMemoField;
    VirtualTable1jguid: TGuidField;
    VirtualTable1search_index: TWideStringField;
    VirtualTable2: TVirtualTable;
    VirtualTable3: TVirtualTable;
    FDMemTable1: TFDMemTable;
    FDMemTable2: TFDMemTable;
    FDMemTable1StringField: TStringField;
    FDMemTable1IntField: TIntegerField;
    FDMemTable1FloatField: TFloatField;
    FDMemTable1BoolField: TBooleanField;
    FDMemTable1DateTimeField: TDateTimeField;
    FDMemTable1DateField: TDateField;
    FDMemTable1MemoField: TMemoField;
    FDMemTable1jguid: TGuidField;
    FDMemTable1search_index: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmUniPgTestDatasets: TdmUniPgTestDatasets;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

end.
