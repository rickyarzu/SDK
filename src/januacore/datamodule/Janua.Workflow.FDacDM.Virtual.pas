unit Janua.Workflow.FDacDM.Virtual;

interface

uses
  System.SysUtils, System.Classes,
  // UniDAC
  Data.DB,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Intf,
  // Januaproject
  Janua.Core.DataModule, Janua.Core.Classes, Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf,
  Janua.Bindings.Intf, Janua.Controls.Intf, Janua.Orm.Intf, Janua.Orm.Types,
  // WorkFlow
  Janua.Workflows.Model.Impl, Janua.Workflows.ViewModel.Intf;

type
  TdmWorkFlowFiredac = class(TJanuaCoreDataModule, IJanuaDataModule, IJanuaBindable)
    vtWorkTypes: TFDMemTable;
    vtWorkTypesid: TSmallintField;
    vtWorkTypesjguid: TGuidField;
    vtWorkTypesname: TWideStringField;
    vtWorkTypesicon_id: TSmallintField;
    vtWorkAttachments: TFDMemTable;
    vtWorkAttachmentswork_id: TLargeintField;
    vtWorkAttachmentsblob_id: TLargeintField;
    vtWorkAttachmentsblob_jguid: TGuidField;
    vtWorkAttachmentslocation: TWideStringField;
    vtWorkAttachmentsfilename: TWideStringField;
    vtWorkAttachmentsdescription: TWideMemoField;
    vtWorkAttachmentscontext: TWideMemoField;
    vtWorkAttachmentsextension: TWideStringField;
    vtWorkFlows: TFDMemTable;
    vtWorkLevels: TFDMemTable;
    vtWorkLevelsid: TSmallintField;
    vtWorkLevelsdescription: TWideStringField;
    vtWorkLevelsicon: TSmallintField;
    vtWorkLevelscolor: TIntegerField;
    vtWorkLevelsjguid: TGuidField;
    vtWorkLevelsdb_schema_id: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshDetails; override;
  end;

  TJanuaFDacWorkflowsDataModule = class(TJanuaWorkflowsDataModule, IJanuaWorkFlowsDataModule)
  private
    { Private declarations }
    FDM: TdmWorkFlowFiredac;
  strict protected
    procedure GetInternalCreate; override;
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshDetails; override;
  public
    destructor Destroy; override;
    constructor Create; override;
  end;

var
  dmWorkFlowFiredac: TdmWorkFlowFiredac;

implementation

uses Janua.Application.Framework, Janua.Orm.Impl, Janua.Orm.Firedac, Janua.Core.Types;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TJanuaFDacWorkflowsDataModule }

constructor TJanuaFDacWorkflowsDataModule.Create;
begin
  inherited;

end;

destructor TJanuaFDacWorkflowsDataModule.Destroy;
begin
  if Assigned(FDM) then
    FDM.Free;
  FDM := nil;
  inherited;
end;

procedure TJanuaFDacWorkflowsDataModule.GetInternalCreate;
begin
  inherited;
  FInternalCreate := procedure
    begin
      FDM := TdmWorkFlowFiredac.Create(nil);
      SetMainDataModule(FDM);
      jdsWorkTypes := TJanuaVtDataset.Create(FDM.vtWorkTypes, [TJanuaEntity.WorkTypes]);
      jdsWorks := TJanuaVtDataset.Create(FDM.vtWorkFlows, [TJanuaEntity.Workflows]);
      jdsWorkAttachments := TJanuaVtDataset.Create(FDM.vtWorkAttachments, [TJanuaEntity.WorkAttachments]);
      jdsWorkLevels := TJanuaVtDataset.Create(FDM.vtWorkAttachments, [TJanuaEntity.WorkAttachments]);
    end;
end;

procedure TJanuaFDacWorkflowsDataModule.RefreshDetails;
begin
  inherited;

end;

{ TdmWorkFlowFiredac }

procedure TdmWorkFlowFiredac.RefreshDetails;
begin
  inherited;

end;

end.
