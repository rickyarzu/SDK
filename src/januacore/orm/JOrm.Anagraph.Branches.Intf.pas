unit JOrm.Anagraph.Branches.Intf;

interface

uses Janua.Orm.Intf;

type

  IBranches = interface(IJanuaRecord)
    ['{F7C21933-EA16-4EC8-AF6C-485973AF0F32}']
    function GetDb_schema_id: IJanuaField;
    procedure SetDb_schema_id(const Value: IJanuaField);
    property Db_schema_id: IJanuaField read GetDb_schema_id write SetDb_schema_id;
    function GetAnagraph_id: IJanuaField;
    procedure SetAnagraph_id(const Value: IJanuaField);
    property Anagraph_id: IJanuaField read GetAnagraph_id write SetAnagraph_id;
    function GetAn_branch_id: IJanuaField;
    procedure SetAn_branch_id(const Value: IJanuaField);
    property An_branch_id: IJanuaField read GetAn_branch_id write SetAn_branch_id;
    function GetAn_branch_name: IJanuaField;
    procedure SetAn_branch_name(const Value: IJanuaField);
    property An_branch_name: IJanuaField read GetAn_branch_name write SetAn_branch_name;
    function GetAn_branch_postal_code: IJanuaField;
    procedure SetAn_branch_postal_code(const Value: IJanuaField);
    property An_branch_postal_code: IJanuaField read GetAn_branch_postal_code write SetAn_branch_postal_code;
    function GetAn_branch_town_name: IJanuaField;
    procedure SetAn_branch_town_name(const Value: IJanuaField);
    property An_branch_town_name: IJanuaField read GetAn_branch_town_name write SetAn_branch_town_name;
    function GetAn_branch_town_code: IJanuaField;
    procedure SetAn_branch_town_code(const Value: IJanuaField);
    property An_branch_town_code: IJanuaField read GetAn_branch_town_code write SetAn_branch_town_code;
    function GetAn_branch_address: IJanuaField;
    procedure SetAn_branch_address(const Value: IJanuaField);
    property An_branch_address: IJanuaField read GetAn_branch_address write SetAn_branch_address;
    function GetAn_insert_date: IJanuaField;
    procedure SetAn_insert_date(const Value: IJanuaField);
    property An_insert_date: IJanuaField read GetAn_insert_date write SetAn_insert_date;
    function GetAn_update_date: IJanuaField;
    procedure SetAn_update_date(const Value: IJanuaField);
    property An_update_date: IJanuaField read GetAn_update_date write SetAn_update_date;
    function GetAn_upd_id: IJanuaField;
    procedure SetAn_upd_id(const Value: IJanuaField);
    property An_upd_id: IJanuaField read GetAn_upd_id write SetAn_upd_id;
    function GetAn_ins_id: IJanuaField;
    procedure SetAn_ins_id(const Value: IJanuaField);
    property An_ins_id: IJanuaField read GetAn_ins_id write SetAn_ins_id;
    function GetAn_user_insert: IJanuaField;
    procedure SetAn_user_insert(const Value: IJanuaField);
    property An_user_insert: IJanuaField read GetAn_user_insert write SetAn_user_insert;
    function GetAn_user_update: IJanuaField;
    procedure SetAn_user_update(const Value: IJanuaField);
    property An_user_update: IJanuaField read GetAn_user_update write SetAn_user_update;
    function GetAn_local: IJanuaField;
    procedure SetAn_local(const Value: IJanuaField);
    property An_local: IJanuaField read GetAn_local write SetAn_local;
    function GetAbrn_jguid: IJanuaField;
    procedure SetAbrn_jguid(const Value: IJanuaField);
    property Abrn_jguid: IJanuaField read GetAbrn_jguid write SetAbrn_jguid;
    function GetAbrn_deleted: IJanuaField;
    procedure SetAbrn_deleted(const Value: IJanuaField);
    property Abrn_deleted: IJanuaField read GetAbrn_deleted write SetAbrn_deleted;
  end;

  IBranchess = interface(IJanuaRecordSet)
    ['{E13060BA-2774-4809-9150-F212A7BFC9A0}']
    function GetDb_schema_id: IJanuaField;
    procedure SetDb_schema_id(const Value: IJanuaField);
    property Db_schema_id: IJanuaField read GetDb_schema_id write SetDb_schema_id;
    function GetAnagraph_id: IJanuaField;
    procedure SetAnagraph_id(const Value: IJanuaField);
    property Anagraph_id: IJanuaField read GetAnagraph_id write SetAnagraph_id;
    function GetAn_branch_id: IJanuaField;
    procedure SetAn_branch_id(const Value: IJanuaField);
    property An_branch_id: IJanuaField read GetAn_branch_id write SetAn_branch_id;
    function GetAn_branch_name: IJanuaField;
    procedure SetAn_branch_name(const Value: IJanuaField);
    property An_branch_name: IJanuaField read GetAn_branch_name write SetAn_branch_name;
    function GetAn_branch_postal_code: IJanuaField;
    procedure SetAn_branch_postal_code(const Value: IJanuaField);
    property An_branch_postal_code: IJanuaField read GetAn_branch_postal_code write SetAn_branch_postal_code;
    function GetAn_branch_town_name: IJanuaField;
    procedure SetAn_branch_town_name(const Value: IJanuaField);
    property An_branch_town_name: IJanuaField read GetAn_branch_town_name write SetAn_branch_town_name;
    function GetAn_branch_town_code: IJanuaField;
    procedure SetAn_branch_town_code(const Value: IJanuaField);
    property An_branch_town_code: IJanuaField read GetAn_branch_town_code write SetAn_branch_town_code;
    function GetAn_branch_address: IJanuaField;
    procedure SetAn_branch_address(const Value: IJanuaField);
    property An_branch_address: IJanuaField read GetAn_branch_address write SetAn_branch_address;
    function GetAn_insert_date: IJanuaField;
    procedure SetAn_insert_date(const Value: IJanuaField);
    property An_insert_date: IJanuaField read GetAn_insert_date write SetAn_insert_date;
    function GetAn_update_date: IJanuaField;
    procedure SetAn_update_date(const Value: IJanuaField);
    property An_update_date: IJanuaField read GetAn_update_date write SetAn_update_date;
    function GetAn_upd_id: IJanuaField;
    procedure SetAn_upd_id(const Value: IJanuaField);
    property An_upd_id: IJanuaField read GetAn_upd_id write SetAn_upd_id;
    function GetAn_ins_id: IJanuaField;
    procedure SetAn_ins_id(const Value: IJanuaField);
    property An_ins_id: IJanuaField read GetAn_ins_id write SetAn_ins_id;
    function GetAn_user_insert: IJanuaField;
    procedure SetAn_user_insert(const Value: IJanuaField);
    property An_user_insert: IJanuaField read GetAn_user_insert write SetAn_user_insert;
    function GetAn_user_update: IJanuaField;
    procedure SetAn_user_update(const Value: IJanuaField);
    property An_user_update: IJanuaField read GetAn_user_update write SetAn_user_update;
    function GetAn_local: IJanuaField;
    procedure SetAn_local(const Value: IJanuaField);
    property An_local: IJanuaField read GetAn_local write SetAn_local;
    function GetAbrn_jguid: IJanuaField;
    procedure SetAbrn_jguid(const Value: IJanuaField);
    property Abrn_jguid: IJanuaField read GetAbrn_jguid write SetAbrn_jguid;
    function GetAbrn_deleted: IJanuaField;
    procedure SetAbrn_deleted(const Value: IJanuaField);
    property Abrn_deleted: IJanuaField read GetAbrn_deleted write SetAbrn_deleted;
    function GetBranches: IBranches;
    procedure SetBranches(const Value: IBranches);
    property Branches: IBranches read GetBranches write SetBranches;

  end;

implementation

end.
