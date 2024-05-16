unit Janua.Application.Intf;

interface

uses Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Core.Types;

type
  /// <summary>Data Module Containing a Dictionary List of all ORM Datasets with their definitions an properties</summary>
  IJanuaJormDictionaryDataModule = interface(IJanuaInterface)
    ['{2B19E14B-0757-4CA6-9852-45757A7C9F67}']
    function GetjdsjdsSchemas: IJanuaDBDataset;
    procedure SetjdsjdsSchemas(Value: IJanuaDBDataset);
    /// <summary>Dataset Containing all ORMs and their definitions (Dictionary) </summary>
    /// type:IJanuaDBDataset
    property jdsjdsSchemas: IJanuaDBDataset read GetjdsjdsSchemas write SetjdsjdsSchemas;

    function GetjdsJOrms: IJanuaDBDataset;
    procedure SetjdsJOrms(Value: IJanuaDBDataset);
    /// <summary>Dataset Containing all ORMs and their definitions (Dictionary) </summary>
    /// type:IJanuaDBDataset
    property jdsJOrms: IJanuaDBDataset read GetjdsJOrms write SetjdsJOrms;
  end;

  IJanuaApplicationLogOutput = interface
    ['{42A71D05-92AE-451C-81FC-3E26DA67BE7B}']
    // TMessageLogProc = TProc<string { aProcName } , string { aLogMessage } , TObject { aObject } >;
    procedure OutputLog(aProcName: string; aLogMessage: string; aObject: TObject); overload;
    procedure OutputLog(const aLog: string); overload;
    procedure OutputLog(const aLog: TJanuaLogRecord); overload;
  end;

implementation

end.
