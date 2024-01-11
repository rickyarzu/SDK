unit Janua.Controls.Select.Intf;

interface

uses System.Classes, Janua.Core.Classes.Intf, Janua.Controls.Forms.Intf, Janua.Bindings.Intf, Janua.Orm.Intf;

type

  /// <summary>  Basic Interface for Param Editors (selectors) based on frame containing  just a label</summary>
  IJanuaSelect = interface(IJanuaFrame)
    function GetDisplayLabel: string;
    procedure SetDisplayLabel(const Value: string);
    property DisplayLabel: string read GetDisplayLabel write SetDisplayLabel;

    function GetJanuaField: IJanuaField;
    procedure SetJanuaField(const Value: IJanuaField);
    property JanuaField: IJanuaField read GetJanuaField write SetJanuaField;

    procedure SetActive(const Value: Boolean);
    function GetActive: Boolean;
    property Active: Boolean read GetActive write SetActive;
  end;

  ITextSelect = interface(IJanuaSelect)
    procedure SetText(const aText: string);
    function GetText: string;
    property Text: string read GetText write SetText;
  end;

  IComboSelect = interface(ITextSelect)
    function GetItems: TStrings;
    function GetValues: TStrings;
    property Items: TStrings read GetItems;
    property Values: TStrings read GetValues;
  end;

  IGroupSelect = interface(IComboSelect)

  end;

  ILookupSelect = interface(ITextSelect)
    function GetDisplayField: string;
    function GetIndexField: string;
    procedure SetDisplayField(const Value: string);
    procedure SetIndexField(const Value: string);
    property DisplayField: string read GetDisplayField write SetDisplayField;
    property IndexField: string read GetIndexField write SetIndexField;
  end;

  IDatasetLookupSelect = interface(ILookupSelect)
    function GetLookupDataset: IJanuaDBDataset;
    procedure SetLookupDataset(Value: IJanuaDBDataset);
    property LookupDataset: IJanuaDBDataset read GetLookupDataset write SetLookupDataset;
  end;

  IRecordSetLookupSelect = interface(ILookupSelect)
    function GetLookupDataset: IJanuaDBDataset;
    procedure SetLookupDataset(Value: IJanuaDBDataset);
    property LookupDataset: IJanuaDBDataset read GetLookupDataset write SetLookupDataset;
  end;

  ITextSearchSelect = interface(ITextSelect)
    function GetGUID: TGUID;
    property GUID: TGUID read GetGUID;
  end;

  IDateSelect = interface(IJanuaSelect)
    function GetDate: TDate;
    function GetChecked: Boolean;
    procedure SetChecked(const Value: Boolean);
    procedure SetDate(const Value: TDate);
    property Checked: Boolean read GetChecked write SetChecked;
    property Date: TDate read GetDate write SetDate;
  end;

  IDateSpinSelect = interface(IDateSelect)

  end;


implementation

end.
