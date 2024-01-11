unit JOrm.Anagraph.Identities.Intf;

interface

uses Janua.Orm.Intf;

type

  IIdentities = interface(IJanuaRecord)
  ['{D604CDF8-6DFD-4FF9-A036-AD403A411A39}']
    function GetDb_schema_id: IJanuaField;
    procedure SetDb_schema_id(const Value: IJanuaField);
    property Db_schema_id: IJanuaField read GetDb_schema_id write SetDb_schema_id;
    function GetAnagraph_id: IJanuaField;
    procedure SetAnagraph_id(const Value: IJanuaField);
    property Anagraph_id: IJanuaField read GetAnagraph_id write SetAnagraph_id;
    function GetAn_group_id: IJanuaField;
    procedure SetAn_group_id(const Value: IJanuaField);
    property An_group_id: IJanuaField read GetAn_group_id write SetAn_group_id;
    function GetAn_agent_id: IJanuaField;
    procedure SetAn_agent_id(const Value: IJanuaField);
    property An_agent_id: IJanuaField read GetAn_agent_id write SetAn_agent_id;
    function GetAn_agent_group_id: IJanuaField;
    procedure SetAn_agent_group_id(const Value: IJanuaField);
    property An_agent_group_id: IJanuaField read GetAn_agent_group_id write SetAn_agent_group_id;
    function GetAn_credit_limit: IJanuaField;
    procedure SetAn_credit_limit(const Value: IJanuaField);
    property An_credit_limit: IJanuaField read GetAn_credit_limit write SetAn_credit_limit;
    function GetAn_credit_days: IJanuaField;
    procedure SetAn_credit_days(const Value: IJanuaField);
    property An_credit_days: IJanuaField read GetAn_credit_days write SetAn_credit_days;
    function GetAn_credit: IJanuaField;
    procedure SetAn_credit(const Value: IJanuaField);
    property An_credit: IJanuaField read GetAn_credit write SetAn_credit;
    function GetAn_credit_notes: IJanuaField;
    procedure SetAn_credit_notes(const Value: IJanuaField);
    property An_credit_notes: IJanuaField read GetAn_credit_notes write SetAn_credit_notes;
    function GetAn_credit_used: IJanuaField;
    procedure SetAn_credit_used(const Value: IJanuaField);
    property An_credit_used: IJanuaField read GetAn_credit_used write SetAn_credit_used;
    function GetAn_overdue_credit: IJanuaField;
    procedure SetAn_overdue_credit(const Value: IJanuaField);
    property An_overdue_credit: IJanuaField read GetAn_overdue_credit write SetAn_overdue_credit;
    function GetAdnt_jguid: IJanuaField;
    procedure SetAdnt_jguid(const Value: IJanuaField);
    property Adnt_jguid: IJanuaField read GetAdnt_jguid write SetAdnt_jguid;
    function GetAdnt_deleted: IJanuaField;
    procedure SetAdnt_deleted(const Value: IJanuaField);
    property Adnt_deleted: IJanuaField read GetAdnt_deleted write SetAdnt_deleted;
  end;

  IIdentitiess = interface(IJanuaRecordSet)
  ['{177B8555-B9DE-46F5-99D4-52AC7A36D733}']
    function GetDb_schema_id: IJanuaField;
    procedure SetDb_schema_id(const Value: IJanuaField);
    property Db_schema_id: IJanuaField read GetDb_schema_id write SetDb_schema_id;
    function GetAnagraph_id: IJanuaField;
    procedure SetAnagraph_id(const Value: IJanuaField);
    property Anagraph_id: IJanuaField read GetAnagraph_id write SetAnagraph_id;
    function GetAn_group_id: IJanuaField;
    procedure SetAn_group_id(const Value: IJanuaField);
    property An_group_id: IJanuaField read GetAn_group_id write SetAn_group_id;
    function GetAn_agent_id: IJanuaField;
    procedure SetAn_agent_id(const Value: IJanuaField);
    property An_agent_id: IJanuaField read GetAn_agent_id write SetAn_agent_id;
    function GetAn_agent_group_id: IJanuaField;
    procedure SetAn_agent_group_id(const Value: IJanuaField);
    property An_agent_group_id: IJanuaField read GetAn_agent_group_id write SetAn_agent_group_id;
    function GetAn_credit_limit: IJanuaField;
    procedure SetAn_credit_limit(const Value: IJanuaField);
    property An_credit_limit: IJanuaField read GetAn_credit_limit write SetAn_credit_limit;
    function GetAn_credit_days: IJanuaField;
    procedure SetAn_credit_days(const Value: IJanuaField);
    property An_credit_days: IJanuaField read GetAn_credit_days write SetAn_credit_days;
    function GetAn_credit: IJanuaField;
    procedure SetAn_credit(const Value: IJanuaField);
    property An_credit: IJanuaField read GetAn_credit write SetAn_credit;
    function GetAn_credit_notes: IJanuaField;
    procedure SetAn_credit_notes(const Value: IJanuaField);
    property An_credit_notes: IJanuaField read GetAn_credit_notes write SetAn_credit_notes;
    function GetAn_credit_used: IJanuaField;
    procedure SetAn_credit_used(const Value: IJanuaField);
    property An_credit_used: IJanuaField read GetAn_credit_used write SetAn_credit_used;
    function GetAn_overdue_credit: IJanuaField;
    procedure SetAn_overdue_credit(const Value: IJanuaField);
    property An_overdue_credit: IJanuaField read GetAn_overdue_credit write SetAn_overdue_credit;
    function GetAdnt_jguid: IJanuaField;
    procedure SetAdnt_jguid(const Value: IJanuaField);
    property Adnt_jguid: IJanuaField read GetAdnt_jguid write SetAdnt_jguid;
    function GetAdnt_deleted: IJanuaField;
    procedure SetAdnt_deleted(const Value: IJanuaField);
    property Adnt_deleted: IJanuaField read GetAdnt_deleted write SetAdnt_deleted;
    function GetIdentities: IIdentities;
    procedure SetIdentities(const Value: IIdentities);
    property Identities:IIdentities read GetIdentities write SetIdentities;

  end;

implementation

end.

