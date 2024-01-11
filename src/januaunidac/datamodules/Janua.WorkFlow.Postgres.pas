unit Janua.WorkFlow.Postgres;

interface

uses
  System.SysUtils, System.Classes,
  // UniDAC
  UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni, MemDS, VirtualTable,
  // Januaproject
  udmPgStorage,
  // WorkFlow
  Janua.Workflows.Model.Impl, Janua.Workflows.ViewModel.Intf;

type
  TdmPgWorkFlow = class(TdmPgStorage)
    qryWorkTypes: TUniQuery;
    qryWorkTypesid: TSmallintField;
    qryWorkTypesjguid: TGuidField;
    qryWorkTypesname: TWideStringField;
    qryWorkTypesicon_id: TSmallintField;
    qryWorkFlows: TUniQuery;
    qryWorkAttachments: TUniQuery;
    qryWorkAttachmentswork_id: TLargeintField;
    qryWorkAttachmentsblob_id: TLargeintField;
    qryWorkAttachmentsblob_jguid: TGuidField;
    qryWorkAttachmentslocation: TWideStringField;
    qryWorkAttachmentsfilename: TWideStringField;
    qryWorkAttachmentsdescription: TWideMemoField;
    qryWorkAttachmentscontext: TWideMemoField;
    qryWorkAttachmentsextension: TWideStringField;
    qryWorkLevels: TUniQuery;
    qryWorkLevelsid: TSmallintField;
    qryWorkLevelsdescription: TWideStringField;
    qryWorkLevelsicon: TSmallintField;
    qryWorkLevelscolor: TIntegerField;
    qryWorkLevelsjguid: TGuidField;
    qryWorkLevelsdb_schema_id: TIntegerField;
    qryWorkFlowsid: TLargeintField;
    qryWorkFlowsjguid: TGuidField;
    qryWorkFlowsworkdate: TDateTimeField;
    qryWorkFlowscode: TWideStringField;
    qryWorkFlowsoffice_id: TIntegerField;
    qryWorkFlowscustomer_id: TIntegerField;
    qryWorkFlowsyear: TSmallintField;
    qryWorkFlowstype_id: TSmallintField;
    qryWorkFlowsdeleted: TBooleanField;
    qryWorkFlowsdb_schema_id: TIntegerField;
    qryWorkFlowslevel_id: TSmallintField;
    lkpWorkFlows: TUniQuery;
    LargeintField1: TLargeintField;
    GuidField1: TGuidField;
    SQLTimeStampField1: TDateTimeField;
    WideStringField1: TWideStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    BooleanField1: TBooleanField;
    IntegerField3: TIntegerField;
    SmallintField3: TSmallintField;
    procedure qryWorkTypesBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshDetails; override;
  end;

  TJanuaPgWorkflowsDataModule = class(TJanuaWorkflowsDataModule, IJanuaWorkFlowsDataModule)
  private
    { Private declarations }
    FDM: TdmPgWorkFlow;
  strict protected
    procedure GetInternalCreate; override;
    { Private declarations }
  public
    { Public declarations }
  public
    destructor Destroy; override;
    constructor Create; override;
  end;

var
  dmPgWorkFlow: TdmPgWorkFlow;

implementation

uses Janua.Core.Functions, System.Types, Janua.Orm.UniDac, Janua.Core.Types, Janua.Orm.Types,
  Janua.Application.Framework;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

procedure TdmPgWorkFlow.qryWorkTypesBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryWorkTypesjguid.AsGuid = GUID_NULL then
    qryWorkTypesjguid.AsGuid := GenerateGUID;
end;

{ TJanuaPgWorkflowsDataModule }

constructor TJanuaPgWorkflowsDataModule.Create;
begin
  inherited;

end;

destructor TJanuaPgWorkflowsDataModule.Destroy;
begin
  if Assigned(self.FDM) then
    FreeAndNil(FDM);
  inherited;
end;

procedure TJanuaPgWorkflowsDataModule.GetInternalCreate;
begin
  inherited;
  FInternalCreate := procedure
    begin
      FDM := TdmPgWorkFlow.Create(nil);
      try
        SetMainDataModule(FDM);
        jdsWorkTypes := TJanuaPgDataset.Create(FDM.qryWorkTypes, [TJanuaEntity.WorkTypes]);
        jdsWorks := TJanuaPgDataset.Create(FDM.qryWorkFlows, [TJanuaEntity.Workflows]);
        jdsWorkAttachments := TJanuaPgDataset.Create(FDM.qryWorkAttachments, [TJanuaEntity.WorkAttachments]);
        jdsWorkLevels := TJanuaPgDataset.Create(FDM.qryWorkAttachments, [TJanuaEntity.WorkAttachments]);
      except
        on e: exception do
          RaiseException('FInternalCreate', e, self);
      end;
    end;
end;

procedure TdmPgWorkFlow.RefreshDetails;
begin
  inherited;
  { TODO: Implementing TdmPgWorkFlow.RefreshDetails }
end;

end.
