unit JOrm.Documents.Intf;

interface

uses Janua.Orm.Intf, JOrm.Documents.RowViews.Custom.Intf, JOrm.Documents.Rows.Custom.Intf,
  JOrm.Documents.Heads.Custom.Intf, JOrm.Documents.AttachmentView.Custom.Intf;

type

  IDocRow = interface(ICustomDocRow)
    ['{6EB1508A-F02C-4887-AB05-A06D4FBA8315}']
  end;

  IDocRowView = interface(IDocRowCustomView)
    ['{55ADBF65-C827-40C1-9EE9-A10956C72364}']
    function GetAmount: IJanuaField;
    function GetVatAmount: IJanuaField;
    procedure InternalCalcFields(const aField: IJanuaField);
    property VatAmount: IJanuaField read GetVatAmount;
    function GetNetAmount: IJanuaField;
    property NetAmount: IJanuaField read GetNetAmount;
    property TotalAmount: IJanuaField read GetAmount;
  end;

  IDocRows = interface(ICustomDocRows)
    ['{6EB1508A-F02C-4887-AB05-A06D4FBA8315}']
    function Getrow: IDocRow;
    procedure Setrow(const Value: IDocRow);
    property Row: IDocRow read Getrow write Setrow;
  end;

  IDocHeadView = interface; // Forward Declaration

  IDocRowsView = interface(IDocRowCustomViews)
    ['{982F1C68-1EFC-460A-AC87-111FC82849F8}']
    function Getrow: IDocRowView;
    procedure Setrow(const Value: IDocRowView);
    property Row: IDocRowView read Getrow write Setrow;
    function GetHead: IDocHeadView;
    procedure SetHead(const Value: IDocHeadView);
    function GetDefaultItemID: Integer;
    procedure SetDefaultItemID(const Value: Integer);
    property DefaultItemID: Integer read GetDefaultItemID write SetDefaultItemID;
  end;

  /// <summary> IDocChargesView Charges are standard DocRows with custom Calculation and creation Rules </summary>
  IDocChargesView = interface(IDocRowsView)
    ['{81FDB004-F313-4C28-884E-2D06DDCAD1F5}']
  end;

  IDocAttachmentView = interface(ICustomAttachmentView)
    ['{E33823EF-2048-44F7-9EB7-2DEC5DF1965B}']
  end;

  IDocAttachmentsView = interface(ICustomAttachmentsView)
    ['{39674296-A2D3-4488-8EC9-E8C890A84FF2}']
    function GetAttachment: IDocAttachmentView;
    procedure SetAttachment(const Value: IDocAttachmentView);
    property Attachment: IDocAttachmentView read GetAttachment write SetAttachment;
    function GetHead: IDocHeadView;
    procedure SetHead(const Value: IDocHeadView);
    property Head: IDocHeadView read GetHead write SetHead;
  end;

  IDocHead = interface(ICustomDocHead)
    ['{6C7856EB-4FEB-4B61-B0B0-1B8DCAC9B59F}']
    function GetRows: IDocRows;
    procedure SetRows(const Value: IDocRows);
    property Rows: IDocRows read GetRows write SetRows;

    function GetAttachments: IDocAttachmentsView;
    procedure SetAttachments(const Value: IDocAttachmentsView);
    property Attchments: IDocAttachmentsView read GetAttachments write SetAttachments;
  end;

  IDocHeadView = interface(ICustomDocHead)
    ['{13CBC02F-B68F-4CFC-B04C-7FB6DC9687AE}']
    function GetRows: IDocRowsView;
    procedure SetRows(const Value: IDocRowsView);
    property Rows: IDocRowsView read GetRows write SetRows;

    // IDocChargesView

    function GetCharges: IDocChargesView;
    procedure SetCharges(const Value: IDocChargesView);
    property Charges: IDocChargesView read GetCharges write SetCharges;

    function GetAttachments: IDocAttachmentsView;
    procedure SetAttachments(const Value: IDocAttachmentsView);
    property Attachments: IDocAttachmentsView read GetAttachments write SetAttachments;
  end;

  IDocHeads = interface(ICustomDocHeads)
    ['{4EBEEC55-E606-414C-83AA-95F034A18D8F}']
    function GetDocHead: IDocHead;
    procedure SetDocHead(const Value: IDocHead);
    property DocHead: IDocHead read GetDocHead write SetDocHead;
  end;

implementation

end.
