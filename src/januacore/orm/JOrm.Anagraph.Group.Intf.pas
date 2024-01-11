unit JOrm.Anagraph.Group.Intf;

interface

uses Janua.Orm.Intf;

type

  IAnagGroup = interface(IJanuaRecord)
    ['{CCAF10B6-4952-4BA8-B372-EA1B16183E8B}']
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetAnGroupId: IJanuaField;
    procedure SetAnGroupId(const Value: IJanuaField);
    property AnGroupId: IJanuaField read GetAnGroupId write SetAnGroupId;
    function GetGroupDes: IJanuaField;
    procedure SetGroupDes(const Value: IJanuaField);
    property GroupDes: IJanuaField read GetGroupDes write SetGroupDes;
    function GetContactGroup: IJanuaField;
    procedure SetContactGroup(const Value: IJanuaField);
    property ContactGroup: IJanuaField read GetContactGroup write SetContactGroup;
    function GetSubGroup: IJanuaField;
    procedure SetSubGroup(const Value: IJanuaField);
    property SubGroup: IJanuaField read GetSubGroup write SetSubGroup;
    function GetSubGroupDes: IJanuaField;
    procedure SetSubGroupDes(const Value: IJanuaField);
    property SubGroupDes: IJanuaField read GetSubGroupDes write SetSubGroupDes;
    function GetSettings: IJanuaField;
    procedure SetSettings(const Value: IJanuaField);
    property Settings: IJanuaField read GetSettings write SetSettings;
    function GetPosition: IJanuaField;
    procedure SetPosition(const Value: IJanuaField);
    property Position: IJanuaField read GetPosition write SetPosition;
    function GetAccounting: IJanuaField;
    procedure SetAccounting(const Value: IJanuaField);
    property Accounting: IJanuaField read GetAccounting write SetAccounting;
    function GetCodAccount: IJanuaField;
    procedure SetCodAccount(const Value: IJanuaField);
    property CodAccount: IJanuaField read GetCodAccount write SetCodAccount;
    function GetLocal: IJanuaField;
    procedure SetLocal(const Value: IJanuaField);
    property Local: IJanuaField read GetLocal write SetLocal;
    function GetGroupCod: IJanuaField;
    procedure SetGroupCod(const Value: IJanuaField);
    property GroupCod: IJanuaField read GetGroupCod write SetGroupCod;
    function GetLedgerCod: IJanuaField;
    procedure SetLedgerCod(const Value: IJanuaField);
    property LedgerCod: IJanuaField read GetLedgerCod write SetLedgerCod;
    function GetSubledgerCod: IJanuaField;
    procedure SetSubledgerCod(const Value: IJanuaField);
    property SubledgerCod: IJanuaField read GetSubledgerCod write SetSubledgerCod;
    function GetGrouping: IJanuaField;
    procedure SetGrouping(const Value: IJanuaField);
    property Grouping: IJanuaField read GetGrouping write SetGrouping;
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    property Description: IJanuaField read GetDescription write SetDescription;
    function GetIconId: IJanuaField;
    procedure SetIconId(const Value: IJanuaField);
    property IconId: IJanuaField read GetIconId write SetIconId;
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    property Jguid: IJanuaField read GetJguid write SetJguid;
  end;

  IAnagGroups = interface(IJanuaRecordSet)
    ['{2DCB860C-9CDD-4927-A0A8-D0EBE35C569A}']
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetAnGroupId: IJanuaField;
    procedure SetAnGroupId(const Value: IJanuaField);
    property AnGroupId: IJanuaField read GetAnGroupId write SetAnGroupId;
    function GetGroupDes: IJanuaField;
    procedure SetGroupDes(const Value: IJanuaField);
    property GroupDes: IJanuaField read GetGroupDes write SetGroupDes;
    function GetContactGroup: IJanuaField;
    procedure SetContactGroup(const Value: IJanuaField);
    property ContactGroup: IJanuaField read GetContactGroup write SetContactGroup;
    function GetSubGroup: IJanuaField;
    procedure SetSubGroup(const Value: IJanuaField);
    property SubGroup: IJanuaField read GetSubGroup write SetSubGroup;
    function GetSubGroupDes: IJanuaField;
    procedure SetSubGroupDes(const Value: IJanuaField);
    property SubGroupDes: IJanuaField read GetSubGroupDes write SetSubGroupDes;
    function GetSettings: IJanuaField;
    procedure SetSettings(const Value: IJanuaField);
    property Settings: IJanuaField read GetSettings write SetSettings;
    function GetPosition: IJanuaField;
    procedure SetPosition(const Value: IJanuaField);
    property Position: IJanuaField read GetPosition write SetPosition;
    function GetAccounting: IJanuaField;
    procedure SetAccounting(const Value: IJanuaField);
    property Accounting: IJanuaField read GetAccounting write SetAccounting;
    function GetCodAccount: IJanuaField;
    procedure SetCodAccount(const Value: IJanuaField);
    property CodAccount: IJanuaField read GetCodAccount write SetCodAccount;
    function GetLocal: IJanuaField;
    procedure SetLocal(const Value: IJanuaField);
    property Local: IJanuaField read GetLocal write SetLocal;
    function GetGroupCod: IJanuaField;
    procedure SetGroupCod(const Value: IJanuaField);
    property GroupCod: IJanuaField read GetGroupCod write SetGroupCod;
    function GetLedgerCod: IJanuaField;
    procedure SetLedgerCod(const Value: IJanuaField);
    property LedgerCod: IJanuaField read GetLedgerCod write SetLedgerCod;
    function GetSubledgerCod: IJanuaField;
    procedure SetSubledgerCod(const Value: IJanuaField);
    property SubledgerCod: IJanuaField read GetSubledgerCod write SetSubledgerCod;
    function GetGrouping: IJanuaField;
    procedure SetGrouping(const Value: IJanuaField);
    property Grouping: IJanuaField read GetGrouping write SetGrouping;
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    property Description: IJanuaField read GetDescription write SetDescription;
    function GetIconId: IJanuaField;
    procedure SetIconId(const Value: IJanuaField);
    property IconId: IJanuaField read GetIconId write SetIconId;
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    property Jguid: IJanuaField read GetJguid write SetJguid;
    function GetAnagGroup: IAnagGroup;
    procedure SetAnagGroup(const Value: IAnagGroup);
    property AnagGroup: IAnagGroup read GetAnagGroup write SetAnagGroup;

  end;

implementation

end.
