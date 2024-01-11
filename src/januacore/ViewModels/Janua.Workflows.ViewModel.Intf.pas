unit Janua.Workflows.ViewModel.Intf;

interface

uses Janua.Core.Classes.Intf, Janua.Controls.Forms.Intf, Janua.Orm.Intf, Data.DB,
  JOrm.Logistic.Shipments.Intf, Janua.ViewModels.Intf, JOrm.Anagraph.Intf,
  Janua.Search.ViewModels.Engines.Intf;

type
  /// <summary> WorkFlows Data Module </summary>
  /// <remarks> This DM contains Master/House WorkFlows with rows and complement Tables </remarks>
  IJanuaWorkFlowsDataModule = interface(IJanuaDataModuleContainer)
    ['{037DF659-41FA-4CF4-A647-617B4715DD0A}']
    function GetjdsWorkTypes: IJanuaDBDataset;
    procedure SetjdsWorkTypes(Value: IJanuaDBDataset);
    /// <summary>
    /// List of WorkFlow Types identified in the company. They can identify contract-route-transportation
    /// </summary>
    property jdsWorkTypes: IJanuaDBDataset read GetjdsWorkTypes write SetjdsWorkTypes;

    function GetjdsWorks: IJanuaDBDataset;
    procedure SetjdsWorks(Value: IJanuaDBDataset);
    /// <summary> List of Workflows  </summary>
    property jdsWorks: IJanuaDBDataset read GetjdsWorks write SetjdsWorks;

    function GetjdsWorkAttachments: IJanuaDBDataset;
    procedure SetjdsWorkAttachments(Value: IJanuaDBDataset);
    /// <summary> Works Attachments </summary>
    property jdsWorkAttachments: IJanuaDBDataset read GetjdsWorkAttachments write SetjdsWorkAttachments;

    function GetjdsWorkLevels: IJanuaDBDataset;
    procedure SetjdsWorkLevels(Value: IJanuaDBDataset);
    /// <summary> Works Levels </summary>
    property jdsWorkLevels: IJanuaDBDataset read GetjdsWorkLevels write SetjdsWorkLevels;

  end;

implementation

end.
