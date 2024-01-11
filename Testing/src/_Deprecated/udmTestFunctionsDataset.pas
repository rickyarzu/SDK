unit udmTestFunctionsDataset;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  // Datasnap.Provider,  // Deprecated
  Janua.Orm.Intf, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  ITestFunctionsDataset = interface
    ['{412BE5E3-B9F0-4F44-A063-C37AEDFC0B57}']
    function GetTable2: TDataset;
    procedure SetTable2(const Value: TDataset);
    property Table2: TDataset read GetTable2 write SetTable2;
    function GetTable1: TDataset;
    procedure SetTable1(const Value: TDataset);
    property Table1: TDataset read GetTable1 write SetTable1;
  end;

type
  TdmTestFunctionsDataset = class(TDataModule, ITestFunctionsDataset)
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
    procedure DataModuleCreate(Sender: TObject);
  private
    FjdsVirtualTable1: Janua.Orm.Intf.IJanuaDBDataset;
    FjdsVirtualTable2: Janua.Orm.Intf.IJanuaDBDataset;
    procedure SetjdsVirtualTable1(const Value: Janua.Orm.Intf.IJanuaDBDataset);
    procedure SetjdsVirtualTable2(const Value: Janua.Orm.Intf.IJanuaDBDataset);
    { Private declarations }
  protected
    function GetTable2: TDataset;
    procedure SetTable2(const Value: TDataset);
    function GetTable1: TDataset;
    procedure SetTable1(const Value: TDataset);
  public
    { Public declarations }
    property jdsVirtualTable1: Janua.Orm.Intf.IJanuaDBDataset read FjdsVirtualTable1
      write SetjdsVirtualTable1;
    property jdsVirtualTable2: Janua.Orm.Intf.IJanuaDBDataset read FjdsVirtualTable2
      write SetjdsVirtualTable2;
  end;

  ITestDMComponent = interface
    ['{4791BD6E-D13B-4156-BEAD-52C8B42CBBE3}']
    function GetDM: TdmTestFunctionsDataset;
    procedure SetDM(const Value: TdmTestFunctionsDataset);
    property DM: TdmTestFunctionsDataset read GetDM write SetDM;
    procedure Activate;
  end;

  TTestDataModuleComponent = class(TComponent, ITestDMComponent)
  private
    FDM: TdmTestFunctionsDataset;
  protected
    function GetDM: TdmTestFunctionsDataset;
    procedure SetDM(const Value: TdmTestFunctionsDataset);
  public
    procedure Activate;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  dmTestFunctionsDataset: TdmTestFunctionsDataset;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses
  Janua.Orm.Virtual, Janua.Orm.Types;

{$R *.dfm}
{ TdmTestFunctionsDataset }

procedure TdmTestFunctionsDataset.DataModuleCreate(Sender: TObject);
begin
  jdsVirtualTable1 := Janua.Orm.Virtual.TJanuaVtDataset.Create(VirtualTable1, [TestMaster]);
  jdsVirtualTable2 := Janua.Orm.Virtual.TJanuaVtDataset.Create(VirtualTable2, [TestDetail]);
end;

function TdmTestFunctionsDataset.GetTable1: TDataset;
begin
  Result := self.VirtualTable1;
end;

function TdmTestFunctionsDataset.GetTable2: TDataset;
begin
  Result := self.VirtualTable2
end;

procedure TdmTestFunctionsDataset.SetjdsVirtualTable1(const Value: Janua.Orm.Intf.IJanuaDBDataset);
begin
  FjdsVirtualTable1 := Value;
end;

procedure TdmTestFunctionsDataset.SetjdsVirtualTable2(const Value: Janua.Orm.Intf.IJanuaDBDataset);
begin
  FjdsVirtualTable2 := Value;
end;

procedure TdmTestFunctionsDataset.SetTable1(const Value: TDataset);
begin
  VirtualTable1 := Value as TFDMemTable
end;

procedure TdmTestFunctionsDataset.SetTable2(const Value: TDataset);
begin
  VirtualTable2 := Value  as TFDMemTable
end;

{ TTestDataModuleComponent }

procedure TTestDataModuleComponent.Activate;
begin

end;

constructor TTestDataModuleComponent.Create(AOwner: TComponent);
begin
  inherited;
  FDM := TdmTestFunctionsDataset.Create(self);
end;

destructor TTestDataModuleComponent.Destroy;
begin
  FDM.Free;
  inherited;
end;

function TTestDataModuleComponent.GetDM: TdmTestFunctionsDataset;
begin
  Result := FDM;
end;

procedure TTestDataModuleComponent.SetDM(const Value: TdmTestFunctionsDataset);
begin
  FDM := Value
end;

end.
