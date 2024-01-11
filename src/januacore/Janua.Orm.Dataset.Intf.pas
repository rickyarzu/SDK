unit Janua.Orm.Dataset.Intf;

interface

uses System.Classes, Data.DB, Janua.Core.Classes.Intf, {FireDAC.Comp.Client,} Janua.Orm.Intf;

type
  IJanuaDatasetSerialization = interface(IJanuaInterface)
    ['{8CE2117F-9115-4472-8AFB-E5EEF0D757D3}']
    // 1234567890123456789012345678901234567
    function GetRecordset: IJanuaRecordSet;
    procedure SetRecordSet(const Value: IJanuaRecordSet);
    function GetDataset: IJanuaVirtualDBDataset;
    procedure SetDataset(const Value: IJanuaVirtualDBDataset);
    function GetDataSource: TDataSource;
    procedure SetDataSource(const Value: TDataSource);
    function GetOnBeforeScroll: TNotifyEvent;
    procedure setOnBeforeScroll(const Value: TNotifyEvent);
    // Notify Events Manager ................................
    /// <summary>
    /// OnRecordSetScroll Event is triggered when The Recordset changes the record
    /// (usually identified by a GUID). This events triggers the observers'
    /// list if some observer is
    /// </summary>
    procedure OnRecordSetScroll(Sender: TObject);
    /// <summary>
    /// This procedure is Public and Must be called by the Master only if its
    /// RecordID changes. RecordID is the number in the Record List of Master
    /// Record. We can user also GUID for the master Record.
    /// </summary>
    procedure MasterChange;
    /// <summary>
    /// Observer Pattern to Register a new Detail Dataset to the Master
    /// Dataset.
    /// </summary>
    procedure RegisterObserver(Observer: IJanuaDatasetSerialization);
    /// <summary>
    /// Observer Pattern to Un-Register a new Detail Dataset to the Master
    /// Dataset.
    /// </summary>
    procedure UnregisterObserver(Observer: IJanuaDatasetSerialization);

    /// <summary>
    /// Master DatasetSerialization management.
    /// </summary>
    function GetMaster: IJanuaDatasetSerialization;
    procedure SetMaster(const Value: IJanuaDatasetSerialization);
    // Events
    procedure AfterScroll(Dataset: IJanuaDBDataset);
    procedure BeforeCancel(Dataset: IJanuaDBDataset);
    procedure CalcFields(Dataset: IJanuaDBDataset);
    procedure BeforeInsert(Dataset: IJanuaDBDataset);
    procedure BeforeDelete(Dataset: IJanuaDBDataset);
    procedure BeforePost(Dataset: IJanuaDBDataset);
    procedure NewRecord(Dataset: IJanuaDBDataset);
    /// <summary>
    /// This procedure becomes fundamental to check if the Record has been
    /// modified and if so it should trigger an Event Should Stop to Post
    /// record on local or remote Storage.
    /// </summary>
    procedure BeforeScroll(Dataset: IJanuaDBDataset);
    // procedures
    function Activate: Boolean;
    procedure SetupDataset;
    procedure FetchRecord;
    procedure SaveRecord;
    procedure FetchRecordSet;
    procedure SaveRecordSet;
    procedure RefreshRecordSet;
    procedure ClearDataSet;
    procedure UpdateData(Sender: TObject);
    procedure DataChange(Sender: TObject; Field: TField);
    // properties
    property RecordSet: IJanuaRecordSet read GetRecordset write SetRecordSet;
    property Dataset: IJanuaVirtualDBDataset read GetDataset Write SetDataset;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    property Master: IJanuaDatasetSerialization read GetMaster write SetMaster;
    // Notify Events
    property OnBeforeScroll: TNotifyEvent read GetOnBeforeScroll write setOnBeforeScroll;
  end;

implementation

end.
