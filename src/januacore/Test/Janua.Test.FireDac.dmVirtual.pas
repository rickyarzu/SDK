unit Janua.Test.FireDac.dmVirtual;

interface

uses
  System.SysUtils, System.Classes, FireDac.Stan.Intf, FireDac.Stan.Option, FireDac.Stan.Param,
  FireDac.Stan.Error, FireDac.DatS, FireDac.Phys.Intf, FireDac.DApt.Intf, FireDac.Stan.StorageBin,
  Data.DB, FireDac.Comp.DataSet, FireDac.Comp.Client,
  // Januaproject
  Janua.Core.DataModule,
  // Specific Class
  Janua.Test.ViewModel.Intf,
  // MVVM Framework
  Janua.Core.Classes, Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf, Janua.Test.Model.Impl,
  Janua.Controls.Intf, Janua.Orm.Intf, Janua.Orm.Types, Janua.Core.Components;

type
  TdmFDacVirtualTest = class(TJanuaCoreDataModule, ITestFunctionsDataset)
    vtMaster: TFDMemTable;
    vtMasterStringField: TStringField;
    vtMasterIntField: TIntegerField;
    vtMasterFloatField: TFloatField;
    vtMasterBoolField: TBooleanField;
    vtMasterDateTimeField: TDateTimeField;
    vtMasterDateField: TDateField;
    vtMasterMemoField: TMemoField;
    vtDetail: TFDMemTable;
    vtDetailIntField: TIntegerField;
    vtDetailStringField: TStringField;
    vtMasterjguid: TGuidField;
    vtDetailjguid: TGuidField;
    vtDetailmaster_jguid: TGuidField;
    dsMaster: TDataSource;
    vtDetail2: TFDMemTable;
    VtDetail2IntegerField: TIntegerField;
    VtDetail2StringField: TStringField;
    VtDetail2Jguid: TGuidField;
    VtDetail2Master_Jguid: TGuidField;
    vtMastersearch_index: TWideStringField;
    fdTargetTable: TFDMemTable;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    BooleanField1: TBooleanField;
    DateTimeField1: TDateTimeField;
    DateField1: TDateField;
    MemoField1: TMemoField;
    GuidField1: TGuidField;
    fdmParams: TFDMemTable;
    fldParamskey: TStringField;
    fldParamsValue: TStringField;
    dsParams: TDataSource;
    FDMemTable2: TFDMemTable;
    StringField2: TStringField;
    IntegerField2: TIntegerField;
    FloatField2: TFloatField;
    BooleanField2: TBooleanField;
    DateTimeField2: TDateTimeField;
    DateField2: TDateField;
    MemoField2: TMemoField;
    GuidField2: TGuidField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dsMasterDataChange(Sender: TObject; Field: TField);
    procedure vtDetailBeforePost(DataSet: TDataset);
    procedure vtDetailNewRecord(DataSet: TDataset);
    procedure vtMasterAfterOpen(DataSet: TDataset);
    procedure vtMasterAfterScroll(DataSet: TDataset);
  private
    FGUID: TGUID;
    FjdsVirtualTable1: Janua.Orm.Intf.IJanuaDBDataset;
    FjdsVirtualTable2: Janua.Orm.Intf.IJanuaDBDataset;
    FjdsOrigin: Janua.Orm.Intf.IJanuaDBDataset;
    FjdsTarget: Janua.Orm.Intf.IJanuaDBDataset;
    procedure SetjdsVirtualTable1(const Value: Janua.Orm.Intf.IJanuaDBDataset);
    procedure SetjdsVirtualTable2(const Value: Janua.Orm.Intf.IJanuaDBDataset);
    procedure DetailFilter;
    procedure SetjdsOrigini(const Value: Janua.Orm.Intf.IJanuaDBDataset);
    procedure SetjdsTarget(const Value: Janua.Orm.Intf.IJanuaDBDataset);
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

    property jdsOrigin: Janua.Orm.Intf.IJanuaDBDataset read FjdsOrigin
      write SetjdsOrigini;
    property jdsTarget: Janua.Orm.Intf.IJanuaDBDataset read FjdsTarget
      write SetjdsTarget;
  end;

  ITestDMComponent = interface
    ['{4791BD6E-D13B-4156-BEAD-52C8B42CBBE3}']
    function GetDM: TdmFDacVirtualTest;
    procedure SetDM(const Value: TdmFDacVirtualTest);
    property DM: TdmFDacVirtualTest read GetDM write SetDM;
    function GetMemDataset: IJanuaDBDataset;
    property MemDataset: IJanuaDBDataset read GetMemDataset;
    procedure Activate;
    function GetTargetDataset: IJanuaDBDataset;
    property TargetDataset: IJanuaDBDataset read GetTargetDataset;
  end;

  TTestDataModuleComponent = class(TComponent, ITestDMComponent)
  private
    FDM: TdmFDacVirtualTest;
    FTargetDataset: IJanuaDBDataset;
    FMemDataset: IJanuaDBDataset;
  protected
    function GetDM: TdmFDacVirtualTest;
    procedure SetDM(const Value: TdmFDacVirtualTest);
    function GetMemDataset: IJanuaDBDataset;
    function GetTargetDataset: IJanuaDBDataset;
  public
    property MemDataset: IJanuaDBDataset read GetMemDataset;
    property TargetDataset: IJanuaDBDataset read GetTargetDataset;
  public
    procedure Activate;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

  TJanuaVirtualTest = class(TJanuaVirtualTestDatamodule, IJanuaTestDataModule)
  private
    { Private declarations }
    FDM: TdmFDacVirtualTest;
  strict protected
    procedure GetInternalCreate; override;
    function InternalActivate: boolean; override;
  public
    destructor Destroy; override;
    constructor Create; override;
  end;

var
  dmFDacVirtualTest: TdmFDacVirtualTest;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses Spring, System.Types, Janua.Application.Framework, Janua.Orm.Impl, Janua.Orm.Firedac,
  Janua.Core.Types;
{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

constructor TJanuaVirtualTest.Create;
begin
  inherited;
end;

destructor TJanuaVirtualTest.Destroy;
begin
  FDM.Free;
  inherited;
end;

procedure TJanuaVirtualTest.GetInternalCreate;
begin
  FInternalCreate := procedure
    begin
      FDM := TdmFDacVirtualTest.Create(nil);
      try
        SetMainDataModule(FDM);
        FjdsTestMaster := TJanuaVtDataset.Create(FDM.vtMaster, [TJanuaEntity.TestMaster]);
        Guard.CheckNotNull(FjdsTestMaster.DataSet, 'FjdsTestMaster');
        FjdsTestDetail := TJanuaVtDataset.Create(FDM.vtDetail, [TJanuaEntity.TestDetail]);
        Guard.CheckNotNull(FjdsTestDetail.DataSet, 'FjdsTestDetail');
        FjdsTestMaster.AddDataset(FjdsTestDetail);
        FjdsTestDetail2 := TJanuaVtDataset.Create(FDM.vtDetail2, [TJanuaEntity.TestDetail]);
        Guard.CheckNotNull(FjdsTestDetail.DataSet, 'FjdsTestDetail2');
        MainDataset := FjdsTestMaster;
        // FjdsTestDataset
        FjdsTestDataset := TJanuaVtDataset.Create(FDM.FDMemTable2, [TJanuaEntity.TestMaster]);
        Guard.CheckNotNull(FjdsTestDataset.DataSet, 'FjdsTestDataset');
      except
        on e: exception do
        begin
          FDM.Free;
          raise exception.Create('TJanuaVirtualTest.Create ' + e.Message);
        end;
      end;
    end;
end;

function TJanuaVirtualTest.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        Guard.CheckNotNull(FjdsTestMaster, 'FjdsTestMaster');
        if not FjdsTestMaster.Active then
          FjdsTestMaster.Open;
      end;
    except
      on e: exception do
        RaiseException('InternalActivate', e, self);
    end;
end;

procedure TdmFDacVirtualTest.DataModuleCreate(Sender: TObject);
begin
  vtMaster.First;
  vtMaster.Edit;
  vtMasterMemoField.Text := 'This is The Road';
  vtMaster.Post;
  vtMaster.Next;
  vtMaster.Edit;;
  vtMasterMemoField.Text := 'To Hell';
  vtMaster.Post;;
  vtMaster.First;
  jdsVirtualTable1 := TJanuaVtDataset.Create(vtMaster, [TestMaster]);
  jdsVirtualTable2 := TJanuaVtDataset.Create(vtDetail, [TestDetail]);
  jdsOrigin := TJanuaVtDataset.Create(FDMemTable2, [TestMaster]);
  jdsTarget := TJanuaVtDataset.Create(fdTargetTable, [TestMaster]);
end;

procedure TdmFDacVirtualTest.dsMasterDataChange(Sender: TObject; Field: TField);
begin
  // IF Assigned(Field) and (Field =  vtMasterjguid) then
  self.DetailFilter
end;

procedure TdmFDacVirtualTest.SetjdsOrigini(const Value: Janua.Orm.Intf.IJanuaDBDataset);
begin
  FjdsOrigin := Value;
end;

procedure TdmFDacVirtualTest.SetjdsTarget(const Value: Janua.Orm.Intf.IJanuaDBDataset);
begin
  FjdsTarget := Value;
end;

procedure TdmFDacVirtualTest.SetjdsVirtualTable1(const Value: Janua.Orm.Intf.IJanuaDBDataset);
begin
  FjdsVirtualTable1 := Value;
end;

procedure TdmFDacVirtualTest.SetjdsVirtualTable2(const Value: Janua.Orm.Intf.IJanuaDBDataset);
begin
  FjdsVirtualTable2 := Value;
end;

{ TdmTestFunctionsDataset }
function TdmFDacVirtualTest.GetTable1: TDataset;
begin
  Result := vtMaster;
end;

function TdmFDacVirtualTest.GetTable2: TDataset;
begin
  Result := vtDetail
end;

procedure TdmFDacVirtualTest.SetTable1(const Value: TDataset);
begin
  vtMaster := Value as TFDMemTable
end;

procedure TdmFDacVirtualTest.DetailFilter;
var
  Filter: string;
begin
  Guard.CheckNotNull(vtMasterjguid, 'vtMasterjguid');
  if FGUID <> vtMasterjguid.aSguid then
  BEGIN
    FGUID := vtMasterjguid.aSguid;
    Filter := 'master_jguid = ' + QuotedStr(vtMasterjguid.AsString);
    vtDetail.Filter := Filter;
    vtDetail.Filtered := True;
    vtDetail2.Filter := Filter;
    vtDetail2.Filtered := True;
  END;
end;

procedure TdmFDacVirtualTest.SetTable2(const Value: TDataset);
begin
  vtDetail := Value as TFDMemTable
end;

procedure TdmFDacVirtualTest.vtDetailBeforePost(DataSet: TDataset);
var
  MyGuid1: TGUID;
begin
  if (vtDetailmaster_jguid.Value = '') or (vtDetailmaster_jguid.aSguid = GUID_NULL) then
    vtDetailmaster_jguid.aSguid := vtMasterjguid.aSguid;
  if vtDetailjguid.aSguid = GUID_NULL then
  begin
    CreateGUID(MyGuid1);
    vtDetailjguid.aSguid := MyGuid1;
  end;
end;

procedure TdmFDacVirtualTest.vtDetailNewRecord(DataSet: TDataset);
begin
  vtDetailjguid.aSguid := GUID_NULL;
  vtDetailmaster_jguid.aSguid := vtMasterjguid.aSguid;
end;

procedure TdmFDacVirtualTest.vtMasterAfterOpen(DataSet: TDataset);
begin
  DetailFilter;
  // {22079A92-0E30-45B9-AB71-D4DC97269E88}'
end;

procedure TdmFDacVirtualTest.vtMasterAfterScroll(DataSet: TDataset);
begin
  DetailFilter
end;

{ TTestDataModuleComponent }
procedure TTestDataModuleComponent.Activate;
begin
end;

constructor TTestDataModuleComponent.Create(AOwner: TComponent);
begin
  inherited;
  FDM := TdmFDacVirtualTest.Create(self);
  // FjdsTestDataset
  FMemDataset := TJanuaVtDataset.Create(FDM.FDMemTable2, [TJanuaEntity.TestMaster]);
  Guard.CheckNotNull(FMemDataset.DataSet, 'FMemDataset');
  // FjdsTestDataset
  FTargetDataset := TJanuaVtDataset.Create(FDM.fdTargetTable, [TJanuaEntity.TestMaster]);
  Guard.CheckNotNull(FTargetDataset.DataSet, 'fdTargetTable');
end;

destructor TTestDataModuleComponent.Destroy;
begin
  if Assigned(FDM) then
    FreeAndNil(FDM);
  inherited;
end;

function TTestDataModuleComponent.GetDM: TdmFDacVirtualTest;
begin
  Result := FDM;
end;

function TTestDataModuleComponent.GetMemDataset: IJanuaDBDataset;
begin
  if not Assigned(FMemDataset) then
    FMemDataset := TJanuaVtDataset.Create(FDM.FDMemTable2, [TJanuaEntity.TestMaster]);
  Result := FMemDataset;
end;

function TTestDataModuleComponent.GetTargetDataset: IJanuaDBDataset;
begin
  if not Assigned(FTargetDataset) then
    FTargetDataset := TJanuaVtDataset.Create(FDM.fdTargetTable, [TJanuaEntity.TestMaster]);
  Result := FTargetDataset;
end;

procedure TTestDataModuleComponent.SetDM(const Value: TdmFDacVirtualTest);
begin
  FDM := Value
end;

end.
