unit Janua.Test.UniDAC.Virtual;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  // Januaproject
  // Specific Class
  Janua.Test.ViewModel.Intf,
  // MVVM Framework
  Janua.Core.Classes, Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf, Janua.Test.Model.Impl,
  Janua.Controls.Intf, Janua.Orm.Intf, Janua.Orm.Types, Janua.Core.Components;

type
  TdmUniVirtualTest = class(TDataModule, ITestFunctionsDataset)
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
    DataSource1: TDataSource;
    vtDetail2: TFDMemTable;
    VtDetail2IntegerField: TIntegerField;
    VtDetail2StringField: TStringField;
    VtDetail2Jguid: TGuidField;
    VtDetail2Master_Jguid: TGuidField;
    vtMastersearch_index: TWideStringField;
    FDMemTable1: TFDMemTable;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    BooleanField1: TBooleanField;
    DateTimeField1: TDateTimeField;
    DateField1: TDateField;
    MemoField1: TMemoField;
    GuidField1: TGuidField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure vtDetailBeforePost(DataSet: TDataset);
    procedure vtDetailNewRecord(DataSet: TDataset);
    procedure vtMasterAfterOpen(DataSet: TDataset);
    procedure vtMasterAfterScroll(DataSet: TDataset);
  private
    FGUID: TGUID;
    FjdsVirtualTable1: Janua.Orm.Intf.IJanuaDBDataset;
    FjdsVirtualTable2: Janua.Orm.Intf.IJanuaDBDataset;
    procedure SetjdsVirtualTable1(const Value: Janua.Orm.Intf.IJanuaDBDataset);
    procedure SetjdsVirtualTable2(const Value: Janua.Orm.Intf.IJanuaDBDataset);
    procedure DetailFilter;
  protected
    function GetTable2: TDataset;
    procedure SetTable2(const Value: TDataset);
    function GetTable1: TDataset;
    procedure SetTable1(const Value: TDataset);
  public
    { Public declarations }
    property jdsVirtualTable1: Janua.Orm.Intf.IJanuaDBDataset read FjdsVirtualTable1 write SetjdsVirtualTable1;
    property jdsVirtualTable2: Janua.Orm.Intf.IJanuaDBDataset read FjdsVirtualTable2 write SetjdsVirtualTable2;
  end;

  ITestDMComponent = interface
    ['{4791BD6E-D13B-4156-BEAD-52C8B42CBBE3}']
    function GetDM: TdmUniVirtualTest;
    procedure SetDM(const Value: TdmUniVirtualTest);
    property DM: TdmUniVirtualTest read GetDM write SetDM;
    procedure Activate;
  end;

  TTestDataModuleComponent = class(TComponent, ITestDMComponent)
  private
    FDM: TdmUniVirtualTest;
  protected
    function GetDM: TdmUniVirtualTest;
    procedure SetDM(const Value: TdmUniVirtualTest);
  public
    procedure Activate;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

  TJanuaVirtualTest = class(TJanuaVirtualTestDatamodule, IJanuaTestDataModule)
  private
    { Private declarations }
    FDM: TdmUniVirtualTest;
  strict protected
    procedure GetInternalCreate; override;
    function InternalActivate: boolean; override;
  public
    destructor Destroy; override;
    constructor Create; override;
  end;

var
  dmUniVirtualTest: TdmUniVirtualTest;

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
      FDM := TdmUniVirtualTest.Create(nil);
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

procedure TdmUniVirtualTest.DataModuleCreate(Sender: TObject);
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
end;

procedure TdmUniVirtualTest.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  // IF Assigned(Field) and (Field =  vtMasterjguid) then
  self.DetailFilter
end;

procedure TdmUniVirtualTest.SetjdsVirtualTable1(const Value: Janua.Orm.Intf.IJanuaDBDataset);
begin
  FjdsVirtualTable1 := Value;
end;

procedure TdmUniVirtualTest.SetjdsVirtualTable2(const Value: Janua.Orm.Intf.IJanuaDBDataset);
begin
  FjdsVirtualTable2 := Value;
end;

{ TdmTestFunctionsDataset }

function TdmUniVirtualTest.GetTable1: TDataset;
begin
  Result := vtMaster;
end;

function TdmUniVirtualTest.GetTable2: TDataset;
begin
  Result := vtDetail
end;

procedure TdmUniVirtualTest.SetTable1(const Value: TDataset);
begin
  vtMaster := Value as TFDMemTable
end;

procedure TdmUniVirtualTest.DetailFilter;
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

procedure TdmUniVirtualTest.SetTable2(const Value: TDataset);
begin
  vtDetail := Value as TFDMemTable
end;

procedure TdmUniVirtualTest.vtDetailBeforePost(DataSet: TDataset);
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

procedure TdmUniVirtualTest.vtDetailNewRecord(DataSet: TDataset);
begin
  vtDetailjguid.aSguid := GUID_NULL;
  vtDetailmaster_jguid.aSguid := vtMasterjguid.aSguid;
end;

procedure TdmUniVirtualTest.vtMasterAfterOpen(DataSet: TDataset);
begin
  DetailFilter;
  // {22079A92-0E30-45B9-AB71-D4DC97269E88}'
end;

procedure TdmUniVirtualTest.vtMasterAfterScroll(DataSet: TDataset);
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
  FDM := TdmUniVirtualTest.Create(self);
end;

destructor TTestDataModuleComponent.Destroy;
begin
  if Assigned(FDM) then
    FreeAndNil(FDM);
  inherited;
end;

function TTestDataModuleComponent.GetDM: TdmUniVirtualTest;
begin
  Result := FDM;
end;

procedure TTestDataModuleComponent.SetDM(const Value: TdmUniVirtualTest);
begin
  FDM := Value
end;

end.
