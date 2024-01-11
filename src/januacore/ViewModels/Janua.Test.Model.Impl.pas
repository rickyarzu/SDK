unit Janua.Test.Model.Impl;

interface

uses Janua.ViewModels.Intf, Janua.Models.Templates, Janua.Test.ViewModel.Intf, Janua.Orm.Intf,
  // Types
  Janua.Http.Types, Janua.Core.DB.Types, Janua.Core.Types,
  Janua.Orm.Test.Intf, Data.DB, Janua.Core.Classes, Janua.Core.Classes.Intf;

type

  TJanuaVirtualTestDatamodule = class(TJanuaDataModuleTemplate, IJanuaTestDataModule)
  strict protected
    FjdsTestDetail: IJanuaDBDataset;
    FjdsTestMaster: IJanuaDBDataset;
    FjdsTestDetail2: IJanuaDBDataset;
    FjdsTestDataset: IJanuaDBDataset;
  protected
    function GetjdsTestMaster: IJanuaDBDataset;
    procedure SetjdsTestMaster(Value: IJanuaDBDataset);
    function GetjdsTestDetail: IJanuaDBDataset;
    procedure SetjdsTestDetail(Value: IJanuaDBDataset);
    function GetjdsTestDetail2: IJanuaDBDataset;
    function GetjdsTestDataset: IJanuaDBDataset;
  public
    /// <summary> This dataset is used for jdsDataset Search Teststs </summary>
    property jdsTestDataset: IJanuaDBDataset read GetjdsTestDataset;
    /// <summary>Test Detail Dataset Interface Wrapper </summary>
    property jdsTestDetail: IJanuaDBDataset read GetjdsTestDetail write SetjdsTestDetail;
    /// <summary> Test Master Dataset Interface Wrapper </summary>
    property jdsTestMaster: IJanuaDBDataset read GetjdsTestMaster write SetjdsTestMaster;
    /// <summary>Test Detail2 Dataset Interface Wrapper </summary>
    property jdsTestDetail2: IJanuaDBDataset read GetjdsTestDetail2;
  end;

  TJanuaRSTestModel = class(TJanuaModelRecordSetTemplate, IJanuaModel, IJanuaRecordSetModel,
    IJanuaRSTestModel)
  private
    FSubRecordSet: IJanuaTestSubRecordSet;
  protected
    function GetSubRecordSet: IJanuaTestSubRecordSet;
    procedure SetSubRecordSet(const Value: IJanuaTestSubRecordSet);
    function GetSubRecord: IJanuaTestSubRecord;
  public
    property SubRecordSet: IJanuaTestSubRecordSet read GetSubRecordSet write SetSubRecordSet;
    property TestSubRecord: IJanuaTestSubRecord read GetSubRecord;
  public
    constructor Create; override;
    Constructor Create(aSubRecordset: IJanuaTestSubRecordSet); overload;
  end;

  TJanuaRestTestModel = class(TJanuaRESTModelTemplate, IJanuaRemoteTestModel)
  public
    constructor Create; override;
    destructor Destroy; override;
  strict private
    FTestNestedRecord: IJanuaTestNestedRecord;
    FAnagraphDataModule: IJanuaTestDataModule;
    FGroupID: Integer;
  private
    function GetTestNestedRecord: IJanuaTestNestedRecord;
    procedure SetTestNestedRecord(const Value: IJanuaTestNestedRecord);
    // ************** Detail Model Management Sample **********************************************************************
  private
    FDetailModel1: IJanuaRSTestModel;
    FDetailModel2: IJanuaRSTestModel;
  protected
    // SubModel Generator
    function GetDetailModel1: IJanuaRSTestModel;
    procedure SetDetailModel1(const Value: IJanuaRSTestModel);
    function GetDetailModel2: IJanuaRSTestModel;
    procedure SetDetailModel2(const Value: IJanuaRSTestModel);
  public
    property DetailModel1: IJanuaRSTestModel read GetDetailModel1 write SetDetailModel1;
    property DetailModel2: IJanuaRSTestModel read GetDetailModel2 write SetDetailModel2;
  strict protected
    procedure ActivateDetails; override;
  public
    procedure RemoveSubModels; override;
    // *********** End Detail Model Sample ******************************************************************************
  strict protected
    function InternalActivate: boolean; override;
    property TestNestedRecord: IJanuaTestNestedRecord read GetTestNestedRecord write SetTestNestedRecord;
  public
    procedure StartSearch; override;
  end;

  TJanuaDBServerTestModel = class(TJanuaModelDBTemplate, IJanuaServerTestModel, IJanuaDBModel, IJanuaModel)
  public
    constructor Create; override;
    destructor Destroy; override;
  strict private
    FDM: IJanuaTestDataModule;
    FTestNestedRecord: IJanuaTestNestedRecord;
    FAnagraphDataModule: IJanuaTestDataModule;
    FGroupID: Integer;
    FjdsTestMaster: IJanuaDBDataset;
    FjdsTestDetail: IJanuaDBDataset;
    FjdsTestDetail2: IJanuaDBDataset;
  private
    function GetTestNestedRecord: IJanuaTestNestedRecord;
    procedure SetTestNestedRecord(const Value: IJanuaTestNestedRecord);
    function GetjdsTestMaster: IJanuaDBDataset;
    procedure SetjdsTestMaster(Value: IJanuaDBDataset);
    function GetjdsTestDetail: IJanuaDBDataset;
    procedure SetjdsTestDetail(Value: IJanuaDBDataset);
    function GetjdsTestDetail2: IJanuaDBDataset;
    procedure SetjdsTestDetail2(Value: IJanuaDBDataset);
    procedure DefaultParams;
  strict protected
    function InternalActivate: boolean; override;
  strict protected
    property jdsTestMaster: IJanuaDBDataset read GetjdsTestMaster write SetjdsTestMaster;
    property jdsTestDetail: IJanuaDBDataset read GetjdsTestDetail write SetjdsTestDetail;
    property jdsTestDetail2: IJanuaDBDataset read GetjdsTestDetail2 write SetjdsTestDetail2;
    property TestNestedRecord: IJanuaTestNestedRecord read GetTestNestedRecord write SetTestNestedRecord;
  public
    procedure StartSearch; override;
  end;

  TJanuaDBTestModel = class(TJanuaDBServerTestModel, IJanuaDBTestModel, IJanuaDBModel, IJanuaModel)
    // ************** Detail Model Management Sample **********************************************************************
  private
    FDetailModel1: IJanuaRSTestModel;
    FDetailModel2: IJanuaRSTestModel;
  protected
    // SubModel Generator
    function GetDetailModel1: IJanuaRSTestModel;
    procedure SetDetailModel1(const Value: IJanuaRSTestModel);
    function GetDetailModel2: IJanuaRSTestModel;
    procedure SetDetailModel2(const Value: IJanuaRSTestModel);
  public
    property DetailModel1: IJanuaRSTestModel read GetDetailModel1 write SetDetailModel1;
    property DetailModel2: IJanuaRSTestModel read GetDetailModel2 write SetDetailModel2;
  strict protected
    procedure ActivateDetails; override;
  public
    procedure RemoveSubModels; override;
    // *********** End Detail Model Sample ******************************************************************************
  end;

implementation

uses Spring, Janua.Application.Framework, System.SysUtils, Janua.Orm.Types, Janua.Core.Functions,
  Janua.Orm.Impl, Janua.Orm.Dataset.Impl;

{ TJanuaDBTestModel }

procedure TJanuaDBTestModel.ActivateDetails;
begin
  inherited;
  DetailModel1 := TJanuaRSTestModel.Create(TestNestedRecord.GetSubRecordSet);
  DetailModel2 := TJanuaRSTestModel.Create(TestNestedRecord.GetSubRecordSet2);
  AddDetailModel(DetailModel1);
  AddDetailModel(DetailModel2);
end;

constructor TJanuaDBServerTestModel.Create;
begin
  inherited;
  try
    // FDM: IJanuaTestDataModule Prima di tutto 'richiedo il Test DataModule'
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaTestDataModule, FDM) then
      raise Exception.Create('IJanuaTestDataModule not set');
    SetInternalDataModule(FDM as IJanuaDataModuleContainer);
    // Current Record va Creato immediatamente prima di 'collegare' i Dataset:
    // FTestNestedRecord: IJanuaTestNestedRecord;
    if not TJanuaOrmFactory.TryGetRecordIntf(IJanuaTestNestedRecord, FTestNestedRecord, 'test') then
      raise Exception.Create('TJanuaDBServerTestModel.Create IJanuaTestNestedRecord not set');

    Guard.CheckNotNull(FDM.jdsTestMaster, 'jdsTestMaster');
    Guard.CheckNotNull(FDM.jdsTestDetail, 'jdsTestDetail');
    SetjdsTestMaster(FDM.jdsTestMaster);
    SetjdsTestDetail(FDM.jdsTestDetail);
    SetjdsTestDetail2(FDM.jdsTestDetail2);

    FTestNestedRecord.SetupDataset(FDM.jdsTestMaster, [FDM.jdsTestDetail]);
    SetTestNestedRecord(FTestNestedRecord);
    FTestNestedRecord.LoadFromDataset;

    Self.AddSearchTextParam('P_Int', 'Integer Param');
    Self.AddSearchTextParam('P_String', 'Text Param');
    Self.AddSearchTextParam('P_Memo', 'Memo Param');

    jdsTestMaster.FilterParams.AddParam('search_index', TJanuaFieldType.jptString, '%').ParamOperator :=
      TJanuaOperator.LikeStrippedLower;
    jdsTestMaster.FilterParams.Activate;
  except
    on e: Exception do
      RaiseException('Crete', e, Self)
  end;
end;

procedure TJanuaDBServerTestModel.DefaultParams;
begin
  // Mock Procedure
end;

destructor TJanuaDBServerTestModel.Destroy;
begin

  inherited;
end;

function TJanuaDBServerTestModel.GetTestNestedRecord: IJanuaTestNestedRecord;
begin
  Result := FTestNestedRecord
end;

function TJanuaDBTestModel.GetDetailModel1: IJanuaRSTestModel;
begin
  Result := FDetailModel1
end;

function TJanuaDBTestModel.GetDetailModel2: IJanuaRSTestModel;
begin
  Result := FDetailModel2
end;

function TJanuaDBServerTestModel.GetjdsTestDetail: IJanuaDBDataset;
begin
  Result := FjdsTestDetail
end;

function TJanuaDBServerTestModel.GetjdsTestDetail2: IJanuaDBDataset;
begin
  Result := FjdsTestDetail2
end;

function TJanuaDBServerTestModel.GetjdsTestMaster: IJanuaDBDataset;
begin
  Result := FDM.GetjdsTestMaster
end;

function TJanuaDBServerTestModel.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        DoAfterScroll(FDM.GetjdsTestMaster);
      end;
    except
      on e: Exception do
        RaiseException('InternalActivate', e, Self);
    end;
end;

procedure TJanuaDBTestModel.RemoveSubModels;
begin
  inherited;
  SetDetailModel1(nil);
  SetDetailModel2(nil);
end;

procedure TJanuaDBServerTestModel.SetTestNestedRecord(const Value: IJanuaTestNestedRecord);
begin
  FTestNestedRecord := Value;
  SetInternalRecord(FTestNestedRecord);
end;

procedure TJanuaDBTestModel.SetDetailModel1(const Value: IJanuaRSTestModel);
begin
  FDetailModel1 := Value
end;

procedure TJanuaDBTestModel.SetDetailModel2(const Value: IJanuaRSTestModel);
begin
  FDetailModel2 := Value
end;

procedure TJanuaDBServerTestModel.SetjdsTestDetail(Value: IJanuaDBDataset);
begin
  FjdsTestDetail := Value;
  SetjdsDetail(FjdsTestDetail);
end;

procedure TJanuaDBServerTestModel.SetjdsTestDetail2(Value: IJanuaDBDataset);
begin
  FjdsTestDetail2 := Value;

end;

procedure TJanuaDBServerTestModel.SetjdsTestMaster(Value: IJanuaDBDataset);
begin
  FjdsTestMaster := Value;
  SetjdsMaster(FjdsTestMaster);
end;

procedure TJanuaDBServerTestModel.StartSearch;
begin
  // Mock procedure for Testing purposes ..
  if not FjdsTestMaster.Active then
    FjdsTestMaster.Open;;
  if not FjdsTestMaster.Active then
    FjdsTestDetail.Open;
end;

{ TJanuaVirtualTestDatamodule }

procedure TJanuaVirtualTestDatamodule.SetjdsTestDetail(Value: IJanuaDBDataset);
begin
  FjdsTestDetail := Value;
end;

procedure TJanuaVirtualTestDatamodule.SetjdsTestMaster(Value: IJanuaDBDataset);
begin
  FjdsTestMaster := Value;
end;

function TJanuaVirtualTestDatamodule.GetjdsTestDataset: IJanuaDBDataset;
begin
 Result := FjdsTestDataset
end;

function TJanuaVirtualTestDatamodule.GetjdsTestDetail: IJanuaDBDataset;
begin
  Result := Self.FjdsTestDetail
end;

function TJanuaVirtualTestDatamodule.GetjdsTestDetail2: IJanuaDBDataset;
begin
  Result := Self.FjdsTestDetail2
end;

function TJanuaVirtualTestDatamodule.GetjdsTestMaster: IJanuaDBDataset;
begin
  Result := FjdsTestMaster;
end;

{ TJanuaRSTestModel }

constructor TJanuaRSTestModel.Create;
begin
  inherited
end;

constructor TJanuaRSTestModel.Create(aSubRecordset: IJanuaTestSubRecordSet);
begin
  Create;
  Guard.CheckNotNull(aSubRecordset, 'TJanuaRSTestModel.Create aSubrecordset');
  SetSubRecordSet(aSubRecordset);
end;

function TJanuaRSTestModel.GetSubRecord: IJanuaTestSubRecord;
begin
  Result := FSubRecordSet.TestSubRecord
end;

function TJanuaRSTestModel.GetSubRecordSet: IJanuaTestSubRecordSet;
begin
  Result := FSubRecordSet
end;

procedure TJanuaRSTestModel.SetSubRecordSet(const Value: IJanuaTestSubRecordSet);
begin
  FSubRecordSet := Value;
  SetRecordSet(FSubRecordSet);
end;

{ TJanuaRestTestModel }

procedure TJanuaRestTestModel.ActivateDetails;
begin
  inherited;

end;

constructor TJanuaRestTestModel.Create;
begin
  inherited;
  FjdsDataset := TOrmDatasetFactory.CreateVirtualDataset([]);
  RESTDBClient.SetMimeType(TJanuaMimeType.jmtApplicationJson);
  RESTDBClient.DataFormat := TRestFormat.rfJson;
end;

destructor TJanuaRestTestModel.Destroy;
begin

  inherited;
end;

function TJanuaRestTestModel.GetDetailModel1: IJanuaRSTestModel;
begin
  Result := FDetailModel1
end;

function TJanuaRestTestModel.GetDetailModel2: IJanuaRSTestModel;
begin
  Result := FDetailModel2
end;

function TJanuaRestTestModel.GetTestNestedRecord: IJanuaTestNestedRecord;
begin
  Result := FTestNestedRecord
end;

function TJanuaRestTestModel.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        DoAfterScroll(GetjdsDataset);
      end;
    except
      on e: Exception do
        RaiseException('InternalActivate', e, Self);
    end;
end;

procedure TJanuaRestTestModel.RemoveSubModels;
begin
  inherited;

end;

procedure TJanuaRestTestModel.SetDetailModel1(const Value: IJanuaRSTestModel);
begin

end;

procedure TJanuaRestTestModel.SetDetailModel2(const Value: IJanuaRSTestModel);
begin

end;

procedure TJanuaRestTestModel.SetTestNestedRecord(const Value: IJanuaTestNestedRecord);
begin

end;

procedure TJanuaRestTestModel.StartSearch;
begin
  inherited;

end;

end.
