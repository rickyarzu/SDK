unit Janua.Workflows.Model.Impl;

interface

uses
  // cxClasses
  Data.DB, Janua.Core.Classes, Janua.Models.Templates,
  // JOrm
  Janua.Orm.Intf, JOrm.Items.Intf, JOrm.Logistic.Locations.Intf, JOrm.Anagraph.Intf,
  // Janua.VCL.dlgViewModelSearch
  Janua.ViewModels.Intf, Janua.Workflows.ViewModel.Intf;

type
  TJanuaWorkflowsDataModule = class(TJanuaDataModuleTemplate, IJanuaWorkFlowsDataModule)
  private
    FjdsWorkTypes: IJanuaDBDataset;
    FjdsWorks: IJanuaDBDataset;
    FjdsWorkAttachments: IJanuaDBDataset;
    FjdsWorkLevels: IJanuaDBDataset;
  protected
    function GetjdsWorkTypes: IJanuaDBDataset;
    procedure SetjdsWorkTypes(Value: IJanuaDBDataset);
    function GetjdsWorks: IJanuaDBDataset;
    procedure SetjdsWorks(Value: IJanuaDBDataset);
    function GetjdsWorkAttachments: IJanuaDBDataset;
    procedure SetjdsWorkAttachments(Value: IJanuaDBDataset);
    function GetjdsWorkLevels: IJanuaDBDataset;
    procedure SetjdsWorkLevels(Value: IJanuaDBDataset);
  public
    property jdsWorkTypes: IJanuaDBDataset read GetjdsWorkTypes write SetjdsWorkTypes;
    property jdsWorks: IJanuaDBDataset read GetjdsWorks write SetjdsWorks;
    property jdsWorkAttachments: IJanuaDBDataset read GetjdsWorkAttachments write SetjdsWorkAttachments;
    property jdsWorkLevels: IJanuaDBDataset read GetjdsWorkLevels write SetjdsWorkLevels;
  public
    constructor Create; override;
  end;

implementation

{ TJanuaWorkflowsDataModule }

constructor TJanuaWorkflowsDataModule.Create;
begin
  inherited;

end;

function TJanuaWorkflowsDataModule.GetjdsWorkAttachments: IJanuaDBDataset;
begin
  Result := FjdsWorkAttachments
end;

function TJanuaWorkflowsDataModule.GetjdsWorkLevels: IJanuaDBDataset;
begin
   Result := FjdsWorkLevels;
end;

function TJanuaWorkflowsDataModule.GetjdsWorks: IJanuaDBDataset;
begin
  Result := FjdsWorks
end;

function TJanuaWorkflowsDataModule.GetjdsWorkTypes: IJanuaDBDataset;
begin
  Result := FjdsWorkTypes
end;

procedure TJanuaWorkflowsDataModule.SetjdsWorkAttachments(Value: IJanuaDBDataset);
begin
  FjdsWorkAttachments := Value
end;

procedure TJanuaWorkflowsDataModule.SetjdsWorkLevels(Value: IJanuaDBDataset);
begin
  FjdsWorkLevels := Value
end;

procedure TJanuaWorkflowsDataModule.SetjdsWorks(Value: IJanuaDBDataset);
begin
  FjdsWorks := Value
end;

procedure TJanuaWorkflowsDataModule.SetjdsWorkTypes(Value: IJanuaDBDataset);
begin
  FjdsWorkTypes := Value
end;

end.
