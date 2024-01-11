unit udmVirtualTestDataset;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  // Datasnap.Provider,  // Deprecated
  Janua.Orm.Intf, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client;


type
  TdmVirtualTestDataset = class(TDataModule)
    VirtualTable1: TFDMemTable;
    VirtualTable2: TFDMemTable;
    VirtualTable2StringField: TStringField;
    VirtualTable2IntField: TIntegerField;
    VirtualTable1StringField: TStringField;
    VirtualTable1IntField: TIntegerField;
    VirtualTable1FloatField: TFloatField;
    VirtualTable1BoolField: TBooleanField;
    VirtualTable1DateTimeField: TDateTimeField;
    VirtualTable1DateField: TDateField;
    VirtualTable1MemoField: TMemoField;

    { Private declarations }


  end;




var
  dmVirtualTestDataset: TdmVirtualTestDataset;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses
  Janua.Orm.Virtual, Janua.Orm.Types;

{$R *.dfm}




end.
