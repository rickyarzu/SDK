unit JOrm.Documents.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Documents.Heads.Custom.Impl,
  JOrm.Documents.Intf, JOrm.Documents.Rows.Custom.Impl, JOrm.Documents.RowViews.Custom.Impl,
  JOrm.Documents.AttachmentView.Custom.Impl, JOrm.Documents.AttachmentView.Custom.Intf;

// JOrm.Documents.Rows.Custom.Impl
type
  TDocRow = class(TCustomDocRow, IDocRow)
  public
    constructor Create; override;
  end;

  TDocRowView = class(TCustomRowView, IDocRowView)
  strict private
    FAmount: IJanuaField;
    FVatAmount: IJanuaField;
    FNetAmount: IJanuaField;
    procedure CalcVatAMount;
  strict protected
    procedure SetVatAmount(const aAmount: IJanuaField);
    procedure SetAmount(const aAmount: IJanuaField);
    procedure SetNetAmount(const aAmount: IJanuaField);
    procedure InternalDoNewRecord; override;
    procedure InternalAfterLoadRecord; virtual;
  protected
    function GetAmount: IJanuaField;
    function GetNetAmount: IJanuaField;
    function GetVatAmount: IJanuaField;
    procedure InternalCalcFields(const aField: IJanuaField); override;
  public
    property VatAmount: IJanuaField read GetVatAmount;
    property Amount: IJanuaField read GetAmount;
    property NetAmount: IJanuaField read GetNetAmount;
  public
    procedure AfterConstruction; override;
    class Function New(const aName: string): IDocRowView;
    constructor Create; override;
  end;

  // IDocAttachmentView = interface(ICustomAttachmentView)
type
  TDocAttachmentView = class(TCustomAttachmentView, IDocAttachmentView)
  public
    procedure AfterConstruction; override;
    class Function New(const aName: string): IDocAttachmentView;
    constructor Create; override;
  end;

  TDocAttachmentsView = class(TCustomAttachmentsView, IDocAttachmentsView)
  private
    [weak]
    FHead: IDocHeadView;
  protected
    function GetHead: IDocHeadView;
    procedure SetHead(const Value: IDocHeadView);
    function GetAttachment: IDocAttachmentView;
    procedure SetAttachment(const Value: IDocAttachmentView);
    procedure SetMasterRecord(const Value: IJanuaRecord); override;
  public
    procedure Append; override;
    procedure AfterConstruction; override;
    constructor Create; override;
    class function New: IDocAttachmentsView; static;
  public
    property Attachment: IDocAttachmentView read GetAttachment write SetAttachment;
    property Head: IDocHeadView read GetHead write SetHead;
  end;

  TDocRows = class(TCustomDocRows, IJanuaRecordSet, IDocRows)
  protected
    function Getrow: IDocRow;
    procedure Setrow(const Value: IDocRow);
  public
    constructor Create; override;
    procedure AfterConstruction; override;
    class function New: IDocRows; static;
    property Row: IDocRow read Getrow write Setrow;
  end;

  (* IDocRows = interface(ICustomDocRows)
    function Getrow: IDocRow;
    procedure Setrow(const Value: IDocRow);
    property Row: IDocRow read Getrow write Setrow;
    end;
  *)

  TCustomDocRowsView = class(TCustomRowViews, IJanuaRecordSet, IDocRowsView)
  private
    FDefaultItemID: Integer;
    [weak]
    // head is referred for Master/Detail relationship updates
    FHead: IDocHeadView;
    function GetHead: IDocHeadView;
    function GetDefaultItemID: Integer;
    procedure SetDefaultItemID(const Value: Integer);
    procedure SetHead(const Value: IDocHeadView);
  protected
    function Getrow: IDocRowView;
    procedure Setrow(const Value: IDocRowView);
  public
    constructor Create; override;
    procedure AfterConstruction; override;
  public
    procedure Append; override;
    property DefaultItemID: Integer read GetDefaultItemID write SetDefaultItemID;
    property Row: IDocRowView read Getrow write Setrow;
    property Head: IDocHeadView read GetHead write SetHead;
  end;

  TDocRowsView = class(TCustomDocRowsView, IJanuaRecordSet, IDocRowsView)
    class function New: IDocRowsView; static;
  end;

  TDocChargesView = class(TCustomDocRowsView, IJanuaRecordSet, IDocRowsView, IDocChargesView)
    class function New: IDocChargesView; static;
  end;

  TDocRowFactory = class
    class function CreateRecord(const aKey: string): IDocRow; overload;
    class function CreateRecordset(const aName: string;
      const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IDocRows; overload;
  end;

type
  TDocHead = class(TCustomDocHead, IDocHead)
  private
    FRows: IDocRows;
    FDocCharges: IDocChargesView;
    FAttachments: IDocAttachmentsView;
    function GetRows: IDocRows;
    procedure SetRows(const Value: IDocRows);
    function GetAttachments: IDocAttachmentsView;
    procedure SetAttachments(const Value: IDocAttachmentsView);
  strict protected
    procedure InternalDoNewRecord; override;
  public
    procedure LoadFromDataset(const aRecursively: boolean = True); override;
    procedure AfterConstruction; override;
    constructor Create; override;
  public
    property Rows: IDocRows read GetRows write SetRows;
    property Attachments: IDocAttachmentsView read GetAttachments write SetAttachments;
  end;

  TDocHeadView = class(TCustomDocHead, IJanuaRecord, IDocHeadView)
  private
    FRows: IDocRowsView;
    FDocCharges: IDocChargesView;
    FAttachments: IDocAttachmentsView;
    function GetRows: IDocRowsView;
    procedure SetRows(const Value: IDocRowsView);
    function GetAttachments: IDocAttachmentsView;
    procedure SetAttachments(const Value: IDocAttachmentsView);
    function GetCharges: IDocChargesView;
    procedure SetCharges(const Value: IDocChargesView);
  strict protected
    procedure InternalDoNewRecord; override;
  public
    procedure LoadFromDataset(const aRecursively: boolean = True); override;
    procedure AfterConstruction; override;
    constructor Create; override;
    class function New: IDocHeadView;
  public
    property Rows: IDocRowsView read GetRows write SetRows;
    property Charges: IDocChargesView read GetCharges write SetCharges;
    property Attachments: IDocAttachmentsView read GetAttachments write SetAttachments;
  end;

  TDocHeads = class(TCustomDocHeads, IDocHeads)
  protected
    function GetDocHead: IDocHead;
    procedure SetDocHead(const Value: IDocHead);
  public
    procedure Append; override;
    constructor Create; override;
    property DocHead: IDocHead read GetDocHead write SetDocHead;
  end;

  TDocHeadFactory = class
    class function CreateRecord(const aKey: string): IDocHead; overload;
    class function CreateRecordset(const aName: string;
      const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IDocHeads; overload;
  end;

implementation

uses Janua.Cloud.Types, System.SysUtils, Janua.Core.Functions, Janua.Application.Framework;

// ------------------------------------------ Impl TDocRow -------------------------------

{ TDocRow }

constructor TDocRow.Create;
begin
  inherited;
  FPrefix := 'drws';
end;

{ TDocRowFactory }

class function TDocRowFactory.CreateRecord(const aKey: string): IDocRow;
begin
  Result := TDocRow.Create;
end;

class function TDocRowFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IDocRows;
begin
  Result := TDocRows.Create(aName, aLocalStorage, aRemoteStorage);
end;

{ TDocRows }

procedure TDocRows.AfterConstruction;
begin
  inherited;
  ItemId.IsEntityKey := True;
  id.IsEntityKey := True;
  DocId.IsEntityKey := True;
  CurrencyId.IsEntityKey := True;
  VatId.IsEntityKey := True;
  CustomsDocTypeId.IsEntityKey := True;
  SupplierId.IsEntityKey := True;
end;

constructor TDocRows.Create;
begin
  inherited;
  FRecord := TDocRowFactory.CreateRecord('DocRow');
end;

function TDocRows.Getrow: IDocRow;
begin
  Result := FRecord as IDocRow
end;

class function TDocRows.New: IDocRows;
begin
  Result := TDocRows.Create as IDocRows;
end;

procedure TDocRows.Setrow(const Value: IDocRow);
begin
  if Assigned(Value) then
    FRecord := Value as IDocRow
  else
    FRecord := nil;
end;

{ TCustomDocHeadFactory }

class function TDocHeadFactory.CreateRecord(const aKey: string): IDocHead;
begin
  Result := TDocHead.Create(aKey);
end;

class function TDocHeadFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IDocHeads;
begin
  Result := TDocHeads.Create(aName, aLocalStorage, aRemoteStorage);
end;

{ TDocHeads }

procedure TDocHeads.Append;
begin
  inherited;
  UserInsert.AsInteger := TJanuaApplication.UserSessionVM.CurrentRecord.User.DBUserID.AsInteger;
end;

constructor TDocHeads.Create;
begin
  inherited;
  FRecord := TDocHeadFactory.CreateRecord('DocHead');
end;

function TDocHeads.GetDocHead: IDocHead;
begin
  Result := FRecord as IDocHead
end;

procedure TDocHeads.SetDocHead(const Value: IDocHead);
begin
  if Assigned(Value) then
    FRecord := Value as IDocHead
  else
    FRecord := nil;
end;

{ TDocHead }

procedure TDocHead.AfterConstruction;
begin
  inherited;
  // Set Entities Fields
  id.IsEntityKey := True;
  TypeId.IsEntityKey := True;
  AnagraphId.IsEntityKey := True;
  CarrierId.IsEntityKey := True;
  DestStateProvinceId.IsEntityKey := True;
  DestStateProvinceId.IsEntityKey := True;
  DestRegionId.IsEntityKey := True;
  DestTownId.IsEntityKey := True;
  CurrencyId.IsEntityKey := True;
  PaymentTermsId.IsEntityKey := True;
  FolderId.IsEntityKey := True;
  CustomInt1.IsEntityKey := True;
  CustomInt2.IsEntityKey := True;
  CustomInt3.IsEntityKey := True;
  DocYear.IsEntityKey := True;

  // Adds Master Detail ID Field Relationships (if ID Field is set).

  if Assigned(FRows) then
  begin
    FRows.MasterRecord := Self as IDocHead;
    FRows.Row.AddMasterField(id, FRows.DocId);
  end;

  if Assigned(FAttachments) then
  begin
    FAttachments.MasterRecord := Self as IDocHead;
    FAttachments.Attachment.AddMasterField(id, FAttachments.DocId);
  end;

  if Assigned(FDocCharges) then
  begin
    FDocCharges.MasterRecord := Self as IDocHead;
    FDocCharges.Row.AddMasterField(id, FDocCharges.DocId);
  end;
end;

constructor TDocHead.Create;
begin
  inherited;
  FRows := AddRecordSet(TDocRows.Create) as IDocRows;
end;

procedure TDocHead.InternalDoNewRecord;
begin
  inherited;
  DocDate.AsDateTime := Date();
  InOut.AsInteger := -1;
  DocState.AsInteger := 0;
  DocYear.AsInteger := DateYear(Date());
end;

function TDocHead.GetAttachments: IDocAttachmentsView;
begin
  Result := FAttachments;
end;

function TDocHead.GetRows: IDocRows;
begin
  Result := FRows;
end;

procedure TDocHead.LoadFromDataset(const aRecursively: boolean = True);
begin
  inherited;

end;

procedure TDocHead.SetAttachments(const Value: IDocAttachmentsView);
begin
  FAttachments := Value
end;

procedure TDocHead.SetRows(const Value: IDocRows);
begin
  FRows := Value;
end;

{ TDocRowView }

procedure TDocRowView.AfterConstruction;
begin
  inherited;
  ItemId.IsEntityKey := True;
  id.IsEntityKey := True;
  DocId.IsEntityKey := True;
  CurrencyId.IsEntityKey := True;
  VatId.IsEntityKey := True;
  CustomsDocTypeId.IsEntityKey := True;
  SupplierId.IsEntityKey := True;

  VatRate.IsMonitored := True;
  Price.IsMonitored := True;
  VatId.IsMonitored := True;
  AfterLoadRecord := InternalAfterLoadRecord;
end;

procedure TDocRowView.CalcVatAMount;
var
  lAmount, lVatAmount, lNetAmount: Currency;
begin
  lNetAmount := Price.AsFloat * Quantity.AsFloat;
  lVatAmount := (VatRate.AsFloat * lNetAmount) / 100;
  lAmount := lNetAmount + lVatAmount;
  lAmount := FRound(lAmount, 2);
  lNetAmount := FRound(lNetAmount, 2);
  lVatAmount := FRound(lVatAmount, 2);
  VatAmount.AsCurrency := lVatAmount;
  Amount.AsCurrency := lAmount;
  NetAmount.AsCurrency := lNetAmount;
end;

constructor TDocRowView.Create;
begin
  inherited;
  FPrefix := 'drws';
  FVatAmount := AddCreateField(TJanuaFieldType.jptCurrency, 'calc_vat_amount', 'calc_vat_amount');
  FVatAmount.Calculated := True;

  FAmount := AddCreateField(TJanuaFieldType.jptCurrency, 'calc_amount', 'calc_amount');
  FAmount.Calculated := True;

  FNetAmount := AddCreateField(TJanuaFieldType.jptCurrency, 'calc_net_amount', 'calc_net_amount');
  FNetAmount.Calculated := True;
end;

function TDocRowView.GetAmount: IJanuaField;
begin
  Result := FAmount
end;

function TDocRowView.GetNetAmount: IJanuaField;
begin
  Result := FNetAmount
end;

function TDocRowView.GetVatAmount: IJanuaField;
begin
  Result := FVatAmount
end;

procedure TDocRowView.InternalAfterLoadRecord;
begin
   CalcVatAMount;
end;

procedure TDocRowView.InternalCalcFields(const aField: IJanuaField);
begin
  inherited;
  if aField = VatRate then
    CalcVatAMount
  else if aField = Price then
    CalcVatAMount
  else if aField = Quantity then
    CalcVatAMount
end;

procedure TDocRowView.InternalDoNewRecord;
begin
  inherited;
  Price.AsFloat := 0.0;
  Quantity.AsInteger := 0;
  CurrencyId.AsInteger := 1;
  VatId.AsInteger := 2;
  ItemId.AsInteger := 2;
  VatRate.AsFloat := 22.0;
  Self.CalcVatAMount;
end;

class function TDocRowView.New(const aName: string): IDocRowView;
begin
  Result := TDocRowView.Create;
  Result.Name := aName;
end;

procedure TDocRowView.SetAmount(const aAmount: IJanuaField);
begin
  if FAmount <> aAmount then
  begin
    FAmount := aAmount;
    Notify('Amount');
  end;
end;

procedure TDocRowView.SetNetAmount(const aAmount: IJanuaField);
begin
  if FNetAmount <> aAmount then
  begin
    FNetAmount := aAmount;
    Notify('NetAmount');
  end;
end;

procedure TDocRowView.SetVatAmount(const aAmount: IJanuaField);
begin
  if FVatAmount <> aAmount then
  begin
    FVatAmount := aAmount;
    Notify('VatAmount');
  end;
end;

{ TCustomDocRowsView }

procedure TCustomDocRowsView.AfterConstruction;
begin
  inherited;

end;

procedure TCustomDocRowsView.Append;
begin
  inherited;
  if Assigned(FHead) then
    Row.DocId.AsLargeInt := Head.id.AsLargeInt;
  Row.ItemId.AsInteger := FDefaultItemID;
  Row.Position.AsInteger := RecordCount + 1;
end;

constructor TCustomDocRowsView.Create;
begin
  inherited;
  FDefaultItemID := 0;
  FRecord := TDocRowView.New('RowView');
end;

function TCustomDocRowsView.GetDefaultItemID: Integer;
begin
  Result := FDefaultItemID;
end;

function TCustomDocRowsView.GetHead: IDocHeadView;
begin
  Result := FHead
end;

function TCustomDocRowsView.Getrow: IDocRowView;
begin
  Result := FRecord as IDocRowView
end;

procedure TCustomDocRowsView.SetDefaultItemID(const Value: Integer);
begin
  FDefaultItemID := Value;
end;

procedure TCustomDocRowsView.SetHead(const Value: IDocHeadView);
begin
  FHead := Value;
end;

procedure TCustomDocRowsView.Setrow(const Value: IDocRowView);
begin
  if Assigned(Value) then
    FRecord := Value { as IDocRow }
  else
    FRecord := nil;
end;

{ TDocRowsView }

class function TDocRowsView.New: IDocRowsView;
begin
  Result := TCustomDocRowsView.Create
end;

{ TDocHeadView }

procedure TDocHeadView.AfterConstruction;
begin
  inherited;
  id.IsEntityKey := True;
  TypeId.IsEntityKey := True;
  AnagraphId.IsEntityKey := True;
  CarrierId.IsEntityKey := True;
  DestStateProvinceId.IsEntityKey := True;
  DestStateProvinceId.IsEntityKey := True;
  DestRegionId.IsEntityKey := True;
  DestTownId.IsEntityKey := True;
  CurrencyId.IsEntityKey := True;
  PaymentTermsId.IsEntityKey := True;
  FolderId.IsEntityKey := True;
  CustomInt1.IsEntityKey := True;
  CustomInt2.IsEntityKey := True;
  CustomInt3.IsEntityKey := True;
  DocYear.IsEntityKey := True;

  if Assigned(FRows) then
  begin
    FRows.MasterRecord := Self as IJanuaRecord;
    FRows.Row.AddMasterField(id, FRows.DocId);
  end;

  if Assigned(FAttachments) then
  begin
    FAttachments.MasterRecord := Self as IJanuaRecord;
    FAttachments.Attachment.AddMasterField(id, FAttachments.DocId);
  end;

  if Assigned(FDocCharges) then
  begin
    FDocCharges.MasterRecord := Self as IJanuaRecord;
    FDocCharges.Row.AddMasterField(id, FDocCharges.DocId);
  end;
end;

constructor TDocHeadView.Create;
begin
  inherited;
  FRows := TDocRowsView.New;
  AddRecordSet(FRows as IJanuaRecordSet);

  FDocCharges := TDocChargesView.New;
  AddRecordSet(FDocCharges as IJanuaRecordSet);

  FAttachments := TDocAttachmentsView.New;
  AddRecordSet(FAttachments as IJanuaRecordSet)
end;

function TDocHeadView.GetAttachments: IDocAttachmentsView;
begin
  Result := FAttachments;
end;

function TDocHeadView.GetCharges: IDocChargesView;
begin
  Result := FDocCharges;
end;

function TDocHeadView.GetRows: IDocRowsView;
begin
  Result := FRows
end;

procedure TDocHeadView.InternalDoNewRecord;
begin
  inherited;
  DocDate.AsDateTime := Date();
  InOut.AsInteger := -1;
  DocState.AsInteger := 0;
  DocYear.AsInteger := DateYear(Date());
  UserInsert.AsInteger := TJanuaApplication.UserSessionVM.CurrentRecord.User.DBUserID.AsInteger;
end;

procedure TDocHeadView.LoadFromDataset(const aRecursively: boolean = True);
begin
  inherited;

end;

class function TDocHeadView.New: IDocHeadView;
begin
  Result := TDocHeadView.Create('DocHeadView')
end;

procedure TDocHeadView.SetAttachments(const Value: IDocAttachmentsView);
begin
  FAttachments := Value;
end;

procedure TDocHeadView.SetCharges(const Value: IDocChargesView);
begin
  FDocCharges := Value;
end;

procedure TDocHeadView.SetRows(const Value: IDocRowsView);
begin
  FRows := Value
end;

{ TDocAttachmentView }

procedure TDocAttachmentView.AfterConstruction;
begin
  inherited;
  BlobId.IsEntityKey := True;
  DocId.IsEntityKey := True;
  DbSchemaId.IsEntityKey := True;

end;

constructor TDocAttachmentView.Create;
begin
  inherited;
  FPrefix := 'datc';
end;

class function TDocAttachmentView.New(const aName: string): IDocAttachmentView;
begin
  Result := TDocAttachmentView.Create;
  Result.Name := aName;
end;

{ TDocAttachmentsView }

procedure TDocAttachmentsView.AfterConstruction;
begin
  inherited;

end;

procedure TDocAttachmentsView.Append;
begin
  inherited;
  if Assigned(FHead) then
  begin
    Attachment.DocId.AsInteger := FHead.id.AsInteger;
    Attachment.InsertDate.AsDateTime := Now();
    DirectoryPath.AsString := TJanuaCloud.PathFromDate(tcpDocuments, FHead.DocDate.AsDateTime);
  end;
end;

constructor TDocAttachmentsView.Create;
begin
  inherited;
  SetRecord(TDocAttachmentView.New('AttachmentView'));
end;

function TDocAttachmentsView.GetAttachment: IDocAttachmentView;
begin
  Result := FRecord as IDocAttachmentView
end;

function TDocAttachmentsView.GetHead: IDocHeadView;
begin
  Result := FHead
end;

class function TDocAttachmentsView.New: IDocAttachmentsView;
begin
  Result := TDocAttachmentsView.Create
end;

procedure TDocAttachmentsView.SetAttachment(const Value: IDocAttachmentView);
begin
  if Assigned(Value) then
    FRecord := Value as IJanuaRecord
  else
    FRecord := nil;
end;

procedure TDocAttachmentsView.SetHead(const Value: IDocHeadView);
begin
  FHead := Value;
end;

procedure TDocAttachmentsView.SetMasterRecord(const Value: IJanuaRecord);
begin
  inherited;
  if Assigned(Value) then
  begin
    if not Supports(Value, IDocHeadView, FHead) then
      raise Exception.Create('Attachment View master record shoul be Documents Head View')
  end
  // Sets Master Record casting it to FHead: IDocHeadView;
  else
    FHead := nil;
end;

{ TDocChargesView }

class function TDocChargesView.New: IDocChargesView;
begin
  Result := TDocChargesView.Create;
  Result.Name := 'DocCharges';
end;

end.
