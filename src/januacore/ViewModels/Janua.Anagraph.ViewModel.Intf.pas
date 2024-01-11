unit Janua.Anagraph.ViewModel.Intf;

interface

uses
  // System
  System.Types, System.UITypes, System.SysUtils, Spring.Collections,
  // JanuaProject
  Janua.Core.Classes.Intf, Janua.Controls.Forms.Intf, Janua.Orm.Intf, Data.DB, JOrm.Anagraph.Intf,
  Janua.Bindings.Intf, Janua.ViewModels.Intf, Janua.Reporting.Intf;

type
  IJanuaAnagraphDataModule = interface(IJanuaDataModuleContainer)
    ['{BF5C0F5E-02A4-4F45-9545-FD682DE05A7B}']
    function GetjdsAnagraphs: IJanuaDBDataset;
    procedure SetjdsAnagraphs(Value: IJanuaDBDataset);
    /// <summary> Connection with Anagraphs Dataset. Table of all the entities in the DB. </summary>
    property jdsAnagraphs: IJanuaDBDataset read GetjdsAnagraphs write SetjdsAnagraphs;

    function GetjdsGroups: IJanuaDBDataset;
    procedure SetjdsGroups(Value: IJanuaDBDataset);
    /// <summary> An anagraph entity can membership to many different groups (a customer can be a supplier)that define different identities </summary>
    property jdsGroups: IJanuaDBDataset read GetjdsGroups write SetjdsGroups;

    function GetjdsBranches: IJanuaDBDataset;
    procedure SetjdsBranches(Value: IJanuaDBDataset);
    /// <summary> Locations are phisical places (address or GIS coordinates) connected with an Anagraph Identity </summary>
    property jdsBranches: IJanuaDBDataset read GetjdsBranches write SetjdsBranches;

    function GetjdsIdentities: IJanuaDBDataset;
    procedure SetjdsIdentities(Value: IJanuaDBDataset);
    /// <summary> An identity is the relationship anagraph-group with its specific features </summary>
    property jdsIdentities: IJanuaDBDataset read GetjdsIdentities write SetjdsIdentities;

    // Single Anagraph: While jdsAnagraphs will be use solely as an index Anagraph will be the engin
    function GetjdsSingleAnagraph: IJanuaDBDataset;
    procedure SetjdsSingleAnagraph(Value: IJanuaDBDataset);
    /// <summary> Main Dataset connected with IAnagraphView Record  </summary>
    property jdsSingleAnagraph: IJanuaDBDataset read GetjdsSingleAnagraph write SetjdsSingleAnagraph;

    function GetjdsMainAddress: IJanuaDBDataset;
    /// <summary> Anagraph main Address  </summary>
    property jdsMainAddress: IJanuaDBDataset read GetjdsMainAddress;

    function GetjdsAddresses: IJanuaDBDataset;
    /// <summary> List of all Addresses including the Main Address note: addresses can be exchanged </summary>
    property jdsAddresses: IJanuaDBDataset read GetjdsAddresses;
  end;

  IJanuaAnagraphModel = interface(IJanuaDBModel)
    ['{36BF3092-7B06-414A-98DA-85D98C651033}']
    function GetjdsAnagraphs: IJanuaDBDataset;
    procedure SetjdsAnagraphs(Value: IJanuaDBDataset);
    property jdsAnagraphs: IJanuaDBDataset read GetjdsAnagraphs write SetjdsAnagraphs;
    function GetjdsGroups: IJanuaDBDataset;
    procedure SetjdsGroups(Value: IJanuaDBDataset);
    property jdsGroups: IJanuaDBDataset read GetjdsGroups write SetjdsGroups;
    /// <summary>  Integer: Create a new record in anagraph DB According to Group and Logical Record Received </summary>
    /// <param name="aAnagraph">  The Anagraph record to be inserted </param>
    /// <example>   ID := FAnagraphModel.AddNewAnagraph(myAnagraph); </example>
    function AddNewAnagraph(const aAnagraph: IAnagraphView): Integer;
    /// <summary>  Boolean: Updates a record in anagraph DB According to Group and Logical Record Received </summary>
    /// <param name="aAnagraph">  The Anagraph record to be inserted </param>
    /// <example>   ID := FAnagraphModel.AddNewAnagraph(myAnagraph); </example>
    function UpdateAnagraph(const aAnagraph: IAnagraphView): Boolean;
    /// <summary>  Boolean: Updates a record in anagraph DB According to Group and Logical Record Received </summary>
    /// <param name="aAnagraph">  The Anagraph record to be inserted </param>
    /// <example>   ID := FAnagraphModel.AddNewAnagraph(myAnagraph); </example>
    function TryGetAnagraphByID(out aAnagraph: IAnagraphView; const aID: Integer): Boolean;
    function TryGetAnagraphByGUID(out aAnagraph: IAnagraphView; const aGUID: TGUID): Boolean;
  end;

  IJanuaDBAnagraphModel = interface(IJanuaAnagraphModel)
    ['{6112A801-AB31-480F-AADB-5DC217DE7559}']
    function GetjdsAddresses: IJanuaDBDataset;
    property jdsAddresses: IJanuaDBDataset read GetjdsAddresses;
    function GetAnagraphRecord: IAnagraphView;
    procedure SetAnagraphRecord(const Value: IAnagraphView);
    function GetjdsMainAddress: IJanuaDBDataset;
    /// <summary> Anagraph main Address has pos = 1 can be exchanged with another address  </summary>
    property jdsMainAddress: IJanuaDBDataset read GetjdsMainAddress;
    /// <summary>IAnagraphView: Selected Anagraph Record   </summary>
    property AnagraphRecord: IAnagraphView read GetAnagraphRecord write SetAnagraphRecord;
    function GetAnagraphID: Integer;
    procedure SetAnagraphID(const Value: Integer);
    property AnagraphID: Integer read GetAnagraphID write SetAnagraphID;
    procedure StartSearch;
    procedure OpenAllGroups;
  end;

  IJanuaAnagraphViewModel = interface(IJanuaBindable)
    ['{AC454306-5AD5-4845-A755-61189CA64E03}']
    function GetCurrentRecord: IAnagraphView;
    procedure SetCurrentRecord(const Value: IAnagraphView);
    /// <summary>
    /// IAnagraphView Record. Contains the current Anagraph Record can be binded
    /// to FMX or VCL controls and manages updates on DB (or Cloud)
    /// </summary>
    property CurrentRecord: IAnagraphView read GetCurrentRecord write SetCurrentRecord;
    /// <summary>
    /// Integer: Create a new record in anagraph DB According to Group and Logical Record Received
    /// </summary>
    /// <param name="aAnagraph">
    /// The Anagraph record to be inserted
    /// </param>
    /// <example>
    /// ID := FAnagraphModel.AddNewAnagraph(myAnagraph);
    /// </example>
    function AddNewAnagraph(const aAnagraph: IAnagraphView): Integer;
    /// <summary>  Boolean: Updates a record in anagraph DB According to Group and Logical Record Received </summary>
    /// <param name="aAnagraph">  The Anagraph record to be inserted </param>
    /// <example>   ID := FAnagraphModel.AddNewAnagraph(myAnagraph); </example>
    function UpdateAnagraph(const aAnagraph: IAnagraphView): Boolean;
  end;

  IJanuaDBAnagraphViewModel = interface(IJanuaDBViewModel)
    ['{2AB5C136-8A2F-46E8-BFCE-8514B4178E81}']
    function GetjdsAnagraphs: IJanuaDBDataset;
    property jdsAnagraphs: IJanuaDBDataset read GetjdsAnagraphs;
    function GetjdsGroups: IJanuaDBDataset;
    procedure SetjdsGroups(Value: IJanuaDBDataset);
    property jdsGroups: IJanuaDBDataset read GetjdsGroups;
    function GetjdsAddresses: IJanuaDBDataset;
    property jdsAddresses: IJanuaDBDataset read GetjdsAddresses;
    function GetdsAnagraphs: TDataSource;
    property dsAnagraphs: TDataSource read GetdsAnagraphs;
    function GetdsGroups: TDataSource;
    property dsGroups: TDataSource read GetdsGroups;
    function GetDBAnagraphModel: IJanuaDBAnagraphModel;
    procedure SetDBAnagraphModel(const Value: IJanuaDBAnagraphModel);
    property DBAnagraphModel: IJanuaDBAnagraphModel read GetDBAnagraphModel write SetDBAnagraphModel;
    // IAnagraph
    function GetAnagraphRecord: IAnagraphView;
    property AnagraphRecord: IAnagraphView read GetAnagraphRecord;
    // AnagraphID
    function GetAnagraphID: Integer;
    procedure SetAnagraphID(const Value: Integer);
    property AnagraphID: Integer read GetAnagraphID write SetAnagraphID;
    // Public Procedures
    procedure CopyToBillingAddress;
    procedure CopyToShipmentAddress;
    /// <summary>
    /// Integer: Create a new record in anagraph DB According to Group and Logical Record Received
    /// </summary>
    /// <param name="aAnagraph">
    /// The Anagraph record to be inserted
    /// </param>
    /// <example>
    /// ID := FAnagraphModel.AddNewAnagraph(myAnagraph);
    /// </example>
    function AddNewAnagraph(const aAnagraph: IAnagraphView): Integer;
    /// <summary>  Boolean: Updates a record in anagraph DB According to Group and Logical Record Received </summary>
    /// <param name="aAnagraph">  The Anagraph record to be inserted </param>
    /// <example>   ID := FAnagraphModel.AddNewAnagraph(myAnagraph); </example>
    function UpdateAnagraph(const aAnagraph: IAnagraphView): Boolean;

  end;

  IJanuaAnagraphForm = interface(IJanuaRecordEditDialog)
    ['{E6EB73B7-15D9-4D4C-9811-E3F88DC710A4}']
    function GetAnagraphViewModel: IJanuaDBAnagraphViewModel;
    procedure SetAnagraphViewModel(const Value: IJanuaDBAnagraphViewModel);
    property AnagraphViewModel: IJanuaDBAnagraphViewModel read GetAnagraphViewModel
      write SetAnagraphViewModel;
  end;

  IJanuaAnagraphReporter = interface(IJanuaReporter)
    ['{8BBEADD1-94F5-4AED-963B-F2F7F67FD769}']
    function GetAnagraphViewModel: IJanuaDBAnagraphViewModel;
    procedure SetAnagraphViewModel(const Value: IJanuaDBAnagraphViewModel);
    property AnagraphViewModel: IJanuaDBAnagraphViewModel read GetAnagraphViewModel
      write SetAnagraphViewModel;
  end;

  IJanuaAnagraphLabelsReporter = interface(IJanuaAnagraphReporter)
    ['{3164048E-BC18-4C2C-830E-0233EFC1E858}']
  end;

  IJanuaAnagraphReceiptsReporter = interface(IJanuaAnagraphReporter)
    ['{CF668F0F-D726-455E-A2A9-04BD853A6820}']
  end;

  IJanuaAnagraphReportingList = interface(IJanuaReportingList)
    ['{F41DB436-42AE-4BF6-A024-055ADED2057A}']
  end;

implementation

end.
