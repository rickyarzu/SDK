unit Janua.System.Settings.ViewModel.Intf;

interface

uses System.SysUtils, Spring.Collections, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Controls.Forms.Intf, JOrm.System.Settings.Intf, Janua.Core.DB.Intf, Janua.ViewModels.Intf;

type

  IJanuaSettingsModel = interface; // forward declaration to IJanuaSettingsModel passed as 'owner' to Setting

  /// <summary> Base Interface for Setting Section (representing one logical view) </summary>
  IJanuaSettingModel = interface(IJanuaInterface)
    function GetDisplayName: string;
    function GetIconID: integer;
    /// <summary>icon for diplay and Search to be Exposed for interface </summary>
    property IconID: integer read GetIconID;
    /// <summary>the name for diplay and Search to be Exposed for interface </summary>
    property DisplayName: string read GetDisplayName;
    function GetSection: string;
    /// <summary>The Section code inside Settings Tree </summary>
    property Section: string read GetSection;
    function GetMasterSettings: IJanuaSettingsModel;
    procedure SetMasterSettings(const Value: IJanuaSettingsModel);
    /// <summary>The Settings Container (Owner) of this Section used for messaging and callbacks </summary>
    property MasterSettings: IJanuaSettingsModel read GetMasterSettings write SetMasterSettings;
    function GetSettings: ISetting;
    /// <summary>Janua Orm RecordSet 'section' of the Global Settings, a List of Key-Values </summary>
    property Settings: ISetting read GetSettings;
    /// <summary>Invoked by the Creator (or just the Owner) to read Settings from local file or DB </summary>
    procedure LoadSettings(aSettings: ISetting);
    procedure SetItems(Index: String; const Value: IJanuaField);
    function GetItems(Index: String): IJanuaField;
    /// <summary>Gets a Field according to its Key Value (an uppercase string) </summary>
    property Items[Index: String]: IJanuaField read GetItems write SetItems; default;
    function GetState: TJanuaModelState;
    /// <summary> Default when Created Empty, New when inserted, Saved after posting and Modified when edited </summary>
    property State: TJanuaModelState read GetState;
    /// <summary> saves all modified Settings to Master. If aStore is True then Stores them on DB or File</summary>
    procedure Save(const aStore: boolean = False);
  end;

  /// <summary> Base Interface for a Collection of Setting Sections </summary>
  IJanuaSettingsModel = interface(IJanuaInterface)
    function GetModels: IList<IJanuaSettingModel>;
    /// <summary> List of the Models Included in the main SettingModel </summary>
    property Models: IList<IJanuaSettingModel> read GetModels;
    /// <summary> Adds a 'Setting Model' to the List. Catching it from the 'enabled' features </summary>
    procedure AddModel(const aModel: IJanuaSettingModel); overload;
    /// <summary> Having registered a List of Models/ViewModels we can handle a List in a DB </summary>
    procedure AddModel(const aModelGUID: TGUID); overload;
    /// <summary> saves all modified Settings locally or remotely </summary>
    procedure SaveSettings;
    /// <summary>Invoked by the Creator (or just the Owner) to read Settings from local file or DB </summary>
    procedure LoadSettings(aSettings: ISettings);
    /// <summary> Stores a Setting from a Model </summary>
    procedure SaveSetting(const aModel: IJanuaSettingModel);
  end;

  IJanuaSettingsViewModel = interface;

  IJanuaSettingViewModel = interface(IJanuaInterface)
    function GetDisplayName: string;
    function GetIconID: integer;
    /// <summary>icon for diplay and Search to be Exposed for interface </summary>
    property IconID: integer read GetIconID;
    /// <summary>the name for diplay and Search to be Exposed for interface </summary>
    property DisplayName: string read GetDisplayName;
    function GetMasterViewModel: IJanuaSettingsViewModel;
    procedure SetMasterViewModel(const Value: IJanuaSettingsViewModel);
    /// <summary>The ViewModel Container (Owner) of this Section used for messaging and callbacks </summary>
    property MasterViewModel: IJanuaSettingsViewModel read GetMasterViewModel write SetMasterViewModel;
    function GetFrameIntf: TGUID;
    /// <summary>This property is used to connect a  Section (App) to its Frame using an Intf</summary>
    property FrameIntf: TGUID read GetFrameIntf;

    function GetActionEdit: IJanuaAction;
    /// <summary> Action Edit can Launch an Edit-Form can be triggered (also) by Double click. </summary>
    property ActionEdit: IJanuaAction read GetActionEdit;

    function GetActionUndo: IJanuaAction;
    /// <summary> Action Undo can Launch an Undo-Form can be triggered (also) by Double click. </summary>
    property ActionUndo: IJanuaAction read GetActionUndo;

    function GetActionSave: IJanuaAction;
    /// <summary> Action Save can Launch an Save-Form can be triggered (also) by Double click. </summary>
    property ActionSave: IJanuaAction read GetActionSave;

  end;

  IJanuaSettingsViewModel = interface(IJanuaInterface)
    function GetViewModels: IList<IJanuaSettingViewModel>;
    /// <summary> List of the ViewModels Included in the main SettingViewModel </summary>
    property ViewModels: IList<IJanuaSettingViewModel> read GetViewModels;
    /// <summary> Adds a 'Setting ViewModel' to the List. Catching it from the 'enabled' features </summary>
    procedure AddViewModel(const aViewModel: IJanuaSettingViewModel); overload;
    /// <summary> Having registered a List of ViewModels/ViewViewModels we can handle a List in a DB </summary>
    procedure AddViewModel(const aViewModelGUID: TGUID); overload;
    /// <summary> Adds a 'Setting ViewModel' to the List. Catching it from the 'enabled' features </summary>

    function GetActionEdit: IJanuaAction;
    /// <summary> Action Edit can Launch an Edit-Form can be triggered (also) by Double click. </summary>
    property ActionEdit: IJanuaAction read GetActionEdit;

    function GetActionUndo: IJanuaAction;
    /// <summary> Action Undo can Launch an Undo-Form can be triggered (also) by Double click. </summary>
    property ActionUndo: IJanuaAction read GetActionUndo;

    function GetActionSave: IJanuaAction;
    /// <summary> Action Save can Launch an Save-Form can be triggered (also) by Double click. </summary>
    property ActionSave: IJanuaAction read GetActionSave;

    function GetMainActionList: IJanuaActionList;
    /// <summary> Is a Collection of Actions to be Shown in a Toolbar, ButtonBar, Menu and so on ... </summary>
    property MainActionList: IJanuaActionList read GetMainActionList;
  end;

  /// <summary> Base Interface for Local Settings Section (according to a logical view) </summary>
  IJanuaLocalSettingModel = interface(IJanuaSettingModel)

  end;

  IJanuaLocalSettingsModel = interface(IJanuaInterface)

  end;

implementation

end.
