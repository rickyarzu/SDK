unit Janua.Search.ViewModels.Intf;

interface

uses Janua.Core.Classes.Intf, Janua.Controls.Forms.Intf, Janua.Orm.Intf, Data.DB, JOrm.Documents.Intf,
  Janua.ViewModels.Intf, System.SysUtils;

type
  /// <summary>
  /// Defines the Interface for Search on Dataset/Recordset Model. It defines the dataset to search
  /// and triggers a search thread when text changes (live binding via ViewModel)
  /// </summary>
  ISearchModel = interface(IJanuaInterface)
    ['{DD687DB0-164A-4AEC-AC59-E982698A9545}']
    function GetCurrentRecord: IJanuaRecord;
    function GetjdsSearch: IJanuaDBDataset;
    function GetSearchText: string;
    procedure SetCurrentRecord(const Value: IJanuaRecord);
    procedure SetjdsSearch(Value: IJanuaDBDataset);
    procedure SetSearchText(const Value: string);
    /// <summary> Search resuld shoul be accessed directly through jdsSearh but it is usually mapped
    ///  on a specific record supporting the record Interface.
    /// </summary>
    property CurrentRecord: IJanuaRecord read GetCurrentRecord write SetCurrentRecord;
    property jdsSearch: IJanuaDBDataset read GetjdsSearch write SetjdsSearch;
    /// <summary>connected to live bindings triggers start search on changing event (threaded) </summary>
    property SearchText: string read GetSearchText write SetSearchText;
    /// <summary> Start a Search and returns the number of Recors Found </summary>
    function Search: Integer;
    procedure EnterSearch;
    /// <summary> Start a Search (if aCallBackSearch is set is executed on rec found) </summary>
    /// <param name="aCallBackSearch"> custom procedure to be called after the search </param>
    procedure StartSearch(aCallBackSearch: TProc<Integer> = nil);
    procedure SetCallBackSearch(const Value: TProc<Integer>);
    function GetCallBackSearch: TProc<Integer>;
    /// <summary> External Procedure to be executed after an update in search </summary>
    property CallBackSearch: TProc<Integer> read GetCallBackSearch write SetCallBackSearch;
    function GetGroupGUID: TGUID;
    function GetGroupID: Integer;
    procedure SetGroupGUID(const Value: TGUID);
    procedure SetGroupID(const Value: Integer);
    /// <summary>
    ///   Search or Lookup records can be 'grouped' in Sets of Records identified by a GroupUID
    /// </summary>
    /// <remarks>
    ///   Group GUID is used on distributed DB just to keep data sync
    /// </remarks>
    property GroupGUID: TGUID read GetGroupGUID write SetGroupGUID;
    /// <summary>
    ///   Used to generate Search Dataset. When data to search is grouped by  type
    /// </summary>
    /// <remarks>
    ///   ID is a variant because the group field can be either an uuid, char, integer or smallint field
    /// </remarks>
    property GroupID: Integer read GetGroupID write SetGroupID;
    procedure IncrementalSearch;
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
    /// <summary>
    /// Enabled activates the Dataset and retrieves data from the datasource
    /// </summary>
    property Enabled: Boolean read GetEnabled write SetEnabled;

    function GetIDField: string;
    /// <summary> String: a unique identifier Field can be used for Lookups/Find by Locate method </summary>
    property IDField: string read GetIDField;
    /// <summary> Boolean: Returns true if a record based on GUID is found. </summary>
    function FindByJguid(const aGuid: TGUID): Boolean;
    /// <summary> Boolean: Returns true if a record based on ID is found; IDField must be set before. </summary>
    function FindByID(const aID: Variant): Boolean;
    /// <summary> String: Returns a Lookup Value based on an ID Serch on a Dictionary </summary>
    function LookupValue(const aID: Variant): string;
  end;

  ISearchForm = interface;

  ISearchViewModel = interface(IJanuaBindableObject)
    ['{CFEFC991-460C-4B8C-BCA7-58AA7475A96B}']
    function GetCurrentRecord: IJanuaRecord;
    function GetjdsSearch: IJanuaDBDataset;
    function GetSearchText: string;
    procedure SetCurrentRecord(const Value: IJanuaRecord);
    procedure SetjdsSearch(Value: IJanuaDBDataset);
    procedure SetSearchText(const Value: string);
    property CurrentRecord: IJanuaRecord read GetCurrentRecord write SetCurrentRecord;
    property jdsSearch: IJanuaDBDataset read GetjdsSearch write SetjdsSearch;
    property SearchText: string read GetSearchText write SetSearchText;
    procedure SetdsSearch(const Value: TDataSource);
    function GetdsSearch: TDataSource;
    property dsSearch: TDataSource read GetdsSearch write SetdsSearch;
    function GetSearchForm: ISearchForm;
    procedure SetSearchForm(const Value: ISearchForm);
    property SearchForm: ISearchForm read GetSearchForm write SetSearchForm;
    /// <summary> Sets a Lock on search Objects if multi threaded search is active </summary>
    procedure EnterSearch;
    /// <summary>   Starts the search procedure and shows the form if more than onerecord is found </summary>
    /// <param name="aCallBackSearch"> to be set to call a custom call back procedure for serch </param>
    procedure StartSearch(aCallBackSearch: TProc<Integer> = nil);
    /// <summary>  Start Search returns true if 1 record is found or form (Modalresult = OK).</summary>
    function Search: Boolean;
    function GetGroupGUID: TGUID;
    function GetGroupID: Integer;
    procedure SetGroupGUID(const Value: TGUID);
    procedure SetGroupID(const Value: Integer);
    property GroupGUID: TGUID read GetGroupGUID write SetGroupGUID;
    property GroupID: Integer read GetGroupID write SetGroupID;
    procedure SetCallBackSearch(const Value: TProc<Integer>);
    function GetCallBackSearch: TProc<Integer>;
    property CallBackSearch: TProc<Integer> read GetCallBackSearch write SetCallBackSearch;
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
    property Enabled: Boolean read GetEnabled write SetEnabled;

    function GetIDField: string;
    /// <summary> String: a unique identifier Field can be used for Lookups/Find by Locate method </summary>
    property IDField: string read GetIDField;
    /// <summary> Boolean: Returns true if a record based on GUID is found. </summary>
    function FindByJguid(const aGuid: TGUID): Boolean;
    /// <summary> Boolean: Returns true if a record based on ID is found; IDField must be set before. </summary>
    function FindByID(const aID: Variant): Boolean;
    /// <summary> String: Returns a Lookup Value based on an ID Serch on a Dictionary </summary>
    function LookupValue(const aID: Variant): string;
  end;

  IJanuaSearchVMContainer = interface(IJanuaSearchContainer)
    ['{4A40DFC3-E67D-447F-B98E-886624EBFA0B}']
    function GetSearchViewModel: ISearchViewModel;
    procedure SetSearchViewModel(const Value: ISearchViewModel);
    /// <summary>IJanuaSearchVMContainer.SearchViewModel Extends Containers for ViewModel Support </summary>
    /// type:ISearchViewModel
    property SearchViewModel: ISearchViewModel read GetSearchViewModel write SetSearchViewModel;
  end;

  ILookupModel = interface(IJanuaInterface)
    ['{941A0B81-3A8E-4F87-835D-F4D2E9C7E184}']
    function GetjdsLookup: IJanuaDBDataset;
    function GetIndexField: TField;
    function GetDisplayField: TField;
    function GetRecordSet: IJanuaRecord;
    function GetCurrentRecord: IJanuaRecord;

    procedure SetCallBackSearch(const Value: TProc<Integer>);
    function GetCallBackSearch: TProc<Integer>;

    function GetSelectedItem: string;
    procedure SetSelectedItem(const Value: string);

    function GetGroupID: Integer;
    procedure SetGroupID(const Value: Integer);

    property SelectedItem: string read GetSelectedItem write SetSelectedItem;
    property CallBackSearch: TProc<Integer> read GetCallBackSearch write SetCallBackSearch;
    property CurrentRecord: IJanuaRecord read GetCurrentRecord;
    property RecordSet: IJanuaRecord read GetRecordSet;
    property DisplayField: TField read GetDisplayField;
    property jdsLookup: IJanuaDBDataset read GetjdsLookup;
    property IndexField: TField read GetIndexField;
    property GroupID: Integer read GetGroupID write SetGroupID;

    function GetKeyFieldName: string;
    procedure SetKeyFieldName(const Value: string);
    function GetDisplayFieldName: string;
    procedure SetDisplayFieldName(const Value: string);

    property KeyFieldName: string read GetKeyFieldName write SetKeyFieldName;
    property DisplayFieldName: string read GetDisplayFieldName write SetDisplayFieldName;

    function GetKeyFieldValue: string;
    function GetDisplayFieldValue: string;
    property KeyFieldValue: string read GetKeyFieldValue;
    property DisplayFieldValue: string read GetDisplayFieldValue;

  end;

  ILookupViewModel = interface(IJanuaInterface)
    ['{DBDF946F-E61B-4CE5-809F-C2D0451D8BBA}']
    function GetjdsLookup: IJanuaDBDataset;
    property jdsLookup: IJanuaDBDataset read GetjdsLookup;

    function GetLookupSource: TDataSource;
    property LookupSource: TDataSource read GetLookupSource;

    function GetIndexField: TField;
    function GetDisplayField: TField;

    procedure OnChangeValue(Sender: TObject);

    function GetRecordSet: IJanuaRecord;
    property RecordSet: IJanuaRecord read GetRecordSet;

    function GetCurrentRecord: IJanuaRecord;
    property CurrentRecord: IJanuaRecord read GetCurrentRecord;

    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
    property Enabled: Boolean read GetEnabled write SetEnabled;

    function GetGroupID: Integer;
    procedure SetGroupID(const Value: Integer);
    property GroupID: Integer read GetGroupID write SetGroupID;
  end;

  ISearchForm = interface(IJanuaForm)
    ['{80A1EACD-190F-4412-9D0E-9B55E5D263E3}']
    function GetViewModel: ISearchViewModel;
    procedure SetViewModel(const Value: ISearchViewModel);
    property ViewModel: ISearchViewModel read GetViewModel write SetViewModel;
  end;

implementation

end.
