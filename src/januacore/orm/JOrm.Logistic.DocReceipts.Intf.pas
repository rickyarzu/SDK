unit JOrm.Logistic.DocReceipts.Intf;

interface

uses Janua.Orm.Intf, JOrm.Documents.Intf;

type
  /// <summary> Whareouse Receipt Record Object Definition </summary>
  IWHReceipt = interface(IDocHead)
    ['{3E4D26F5-BD1F-4E93-8220-B9CE17306539}']
    function GetCosts: IDocRows;
    procedure SetCosts(const Value: IDocRows);
    property Costs: IDocRows read GetCosts write SetCosts;
    function GetCharges: IDocRows;
    procedure SetCharges(const Value: IDocRows);
    property Charges: IDocRows read GetCharges write SetCharges;
  end;

  /// <summary> Whareouse Receipts RecordSet Object Definition </summary>
  IWHReceipts = interface(IDocHeads)
    ['{43C35662-9EE6-4BB4-BF72-27FB7A1BBF65}']
    function GetWHReceiptHead: IWHReceipt;
    procedure SetWHReceiptHead(const Value: IWHReceipt);
    property WHReceiptHead: IWHReceipt read GetWHReceiptHead write SetWHReceiptHead;
  end;

implementation

end.
