unit JOrm.Anagraph.Groups.Intf;

interface

uses Janua.Orm.Intf;

type

  IGroups = interface(IJanuaRecord)
  ['{19DDF0A2-AAB5-4B39-A0CB-245928EB960B}']
    function GetDb_schema_id: IJanuaField;
    procedure SetDb_schema_id(const Value: IJanuaField);
    property Db_schema_id: IJanuaField read GetDb_schema_id write SetDb_schema_id;
    function GetAn_group_id: IJanuaField;
    procedure SetAn_group_id(const Value: IJanuaField);
    property An_group_id: IJanuaField read GetAn_group_id write SetAn_group_id;
    function GetGroup_des: IJanuaField;
    procedure SetGroup_des(const Value: IJanuaField);
    property Group_des: IJanuaField read GetGroup_des write SetGroup_des;
    function GetContact_group: IJanuaField;
    procedure SetContact_group(const Value: IJanuaField);
    property Contact_group: IJanuaField read GetContact_group write SetContact_group;
    function GetSub_group: IJanuaField;
    procedure SetSub_group(const Value: IJanuaField);
    property Sub_group: IJanuaField read GetSub_group write SetSub_group;
    function GetSub_group_des: IJanuaField;
    procedure SetSub_group_des(const Value: IJanuaField);
    property Sub_group_des: IJanuaField read GetSub_group_des write SetSub_group_des;
    function GetSettings: IJanuaField;
    procedure SetSettings(const Value: IJanuaField);
    property Settings: IJanuaField read GetSettings write SetSettings;
    function GetPosition: IJanuaField;
    procedure SetPosition(const Value: IJanuaField);
    property Position: IJanuaField read GetPosition write SetPosition;
    function GetAccounting: IJanuaField;
    procedure SetAccounting(const Value: IJanuaField);
    property Accounting: IJanuaField read GetAccounting write SetAccounting;
    function GetCod_account: IJanuaField;
    procedure SetCod_account(const Value: IJanuaField);
    property Cod_account: IJanuaField read GetCod_account write SetCod_account;
    function GetLocal: IJanuaField;
    procedure SetLocal(const Value: IJanuaField);
    property Local: IJanuaField read GetLocal write SetLocal;
    function GetGroup_cod: IJanuaField;
    procedure SetGroup_cod(const Value: IJanuaField);
    property Group_cod: IJanuaField read GetGroup_cod write SetGroup_cod;
    function GetLedger_cod: IJanuaField;
    procedure SetLedger_cod(const Value: IJanuaField);
    property Ledger_cod: IJanuaField read GetLedger_cod write SetLedger_cod;
    function GetSubledger_cod: IJanuaField;
    procedure SetSubledger_cod(const Value: IJanuaField);
    property Subledger_cod: IJanuaField read GetSubledger_cod write SetSubledger_cod;
    function GetGrouping: IJanuaField;
    procedure SetGrouping(const Value: IJanuaField);
    property Grouping: IJanuaField read GetGrouping write SetGrouping;
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    property Description: IJanuaField read GetDescription write SetDescription;
    function GetMaster_group_id: IJanuaField;
    procedure SetMaster_group_id(const Value: IJanuaField);
    property Master_group_id: IJanuaField read GetMaster_group_id write SetMaster_group_id;
    function GetAngr_jguid: IJanuaField;
    procedure SetAngr_jguid(const Value: IJanuaField);
    property Angr_jguid: IJanuaField read GetAngr_jguid write SetAngr_jguid;
    function GetAngr_deleted: IJanuaField;
    procedure SetAngr_deleted(const Value: IJanuaField);
    property Angr_deleted: IJanuaField read GetAngr_deleted write SetAngr_deleted;
  end;

  IGroupss = interface(IJanuaRecordSet)
  ['{99186AB6-2AE8-49DC-A072-5D042D58FF68}']
    function GetDb_schema_id: IJanuaField;
    procedure SetDb_schema_id(const Value: IJanuaField);
    property Db_schema_id: IJanuaField read GetDb_schema_id write SetDb_schema_id;
    function GetAn_group_id: IJanuaField;
    procedure SetAn_group_id(const Value: IJanuaField);
    property An_group_id: IJanuaField read GetAn_group_id write SetAn_group_id;
    function GetGroup_des: IJanuaField;
    procedure SetGroup_des(const Value: IJanuaField);
    property Group_des: IJanuaField read GetGroup_des write SetGroup_des;
    function GetContact_group: IJanuaField;
    procedure SetContact_group(const Value: IJanuaField);
    property Contact_group: IJanuaField read GetContact_group write SetContact_group;
    function GetSub_group: IJanuaField;
    procedure SetSub_group(const Value: IJanuaField);
    property Sub_group: IJanuaField read GetSub_group write SetSub_group;
    function GetSub_group_des: IJanuaField;
    procedure SetSub_group_des(const Value: IJanuaField);
    property Sub_group_des: IJanuaField read GetSub_group_des write SetSub_group_des;
    function GetSettings: IJanuaField;
    procedure SetSettings(const Value: IJanuaField);
    property Settings: IJanuaField read GetSettings write SetSettings;
    function GetPosition: IJanuaField;
    procedure SetPosition(const Value: IJanuaField);
    property Position: IJanuaField read GetPosition write SetPosition;
    function GetAccounting: IJanuaField;
    procedure SetAccounting(const Value: IJanuaField);
    property Accounting: IJanuaField read GetAccounting write SetAccounting;
    function GetCod_account: IJanuaField;
    procedure SetCod_account(const Value: IJanuaField);
    property Cod_account: IJanuaField read GetCod_account write SetCod_account;
    function GetLocal: IJanuaField;
    procedure SetLocal(const Value: IJanuaField);
    property Local: IJanuaField read GetLocal write SetLocal;
    function GetGroup_cod: IJanuaField;
    procedure SetGroup_cod(const Value: IJanuaField);
    property Group_cod: IJanuaField read GetGroup_cod write SetGroup_cod;
    function GetLedger_cod: IJanuaField;
    procedure SetLedger_cod(const Value: IJanuaField);
    property Ledger_cod: IJanuaField read GetLedger_cod write SetLedger_cod;
    function GetSubledger_cod: IJanuaField;
    procedure SetSubledger_cod(const Value: IJanuaField);
    property Subledger_cod: IJanuaField read GetSubledger_cod write SetSubledger_cod;
    function GetGrouping: IJanuaField;
    procedure SetGrouping(const Value: IJanuaField);
    property Grouping: IJanuaField read GetGrouping write SetGrouping;
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    property Description: IJanuaField read GetDescription write SetDescription;
    function GetMaster_group_id: IJanuaField;
    procedure SetMaster_group_id(const Value: IJanuaField);
    property Master_group_id: IJanuaField read GetMaster_group_id write SetMaster_group_id;
    function GetAngr_jguid: IJanuaField;
    procedure SetAngr_jguid(const Value: IJanuaField);
    property Angr_jguid: IJanuaField read GetAngr_jguid write SetAngr_jguid;
    function GetAngr_deleted: IJanuaField;
    procedure SetAngr_deleted(const Value: IJanuaField);
    property Angr_deleted: IJanuaField read GetAngr_deleted write SetAngr_deleted;
    function GetGroups: IGroups;
    procedure SetGroups(const Value: IGroups);
    property Groups:IGroups read GetGroups write SetGroups;

  end;

implementation

end.

