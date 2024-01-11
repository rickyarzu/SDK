unit Janua.ViewModels.Settings.Intf;

interface

uses System.SysUtils,
  JOrm.Anagraph.Group.Intf, Janua.Anagraph.ViewModel.Intf;

type
  IJanuaAnagraphModelsContainer = interface
    ['{A4AFFB29-A0C0-4E63-BFBA-1466550B20F9}']
    /// <summary>
    /// To speed up the creation process the container should contain a cache  for all anagraph Objects by Group
    /// </summary>
    /// <param name="aCallbackProc">  Will be called after all models will be online </param>
    /// <param name="Async">  True by default to execute openings of all models in a separate  Thread </param>
    procedure PrepareAllModels(aCallbackProc: TProc; const Async: Boolean = True);
    function AddSearchModel(const aGroupID: Integer): IJanuaDBAnagraphModel;
    /// <summary>  Returns True if a Model is set   </summary>
    function TryGetModel(const aGroupID: Integer; out aModel: IJanuaDBAnagraphModel): Boolean;
  end;

  IJanuaViewModelSettings = interface
    ['{8E4A7F9E-F4F8-4523-BCA3-3CD53062CB0C}']
    function GetAnagGroups: IAnagGroups;
    procedure SetAnagGroups(const Value: IAnagGroups);
    /// <summary>Anag Groups is used to Create a Custom Anagraph Application Menu </summary>
    property AnagGroups: IAnagGroups read GetAnagGroups write SetAnagGroups;
    function Activate: Boolean;
    function GetAnagraphModelsContainer: IJanuaAnagraphModelsContainer;
    procedure SetAnagraphModelsContainer(const Value: IJanuaAnagraphModelsContainer);
    property AnagraphModelsContainer: IJanuaAnagraphModelsContainer read GetAnagraphModelsContainer
      write SetAnagraphModelsContainer;
  end;

implementation

end.
