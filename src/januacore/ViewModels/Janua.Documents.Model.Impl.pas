unit Janua.Documents.Model.Impl;

interface

uses
  // RTL
  System.SysUtils, Data.DB, Janua.Core.Classes,
  // Interfaces
  Janua.ViewModels.Intf, Janua.Documents.ViewModel.Intf, Janua.Orm.Intf, Janua.Core.Classes.Intf,
  // JOrm
  JOrm.Shipping.Intf, JOrm.Documents.Intf,JOrm.Anagraph.Intf, JOrm.Items.Intf ,
  // Januaproject
  Janua.Models.Templates;

type
  TJanuaCustomDocumentDataModule = class(TJanuaDataModuleTemplate, IJanuaDocumentsDataModule)
  private
    FjdsDocHeads: IJanuaDBDataset;
    FjdsDocRows: IJanuaDBDataset;
    FjdsDocAttachments: IJanuaDBDataset;
    FjdsDocTypes: IJanuaDBDataset;
    FjdsVatAmounts: IJanuaDBDataset;
    FjdsDocCharges: IJanuaDBDataset;
  protected
    function GetjdsDocCharges: IJanuaDBDataset;
    procedure SetjdsDocCharges(const Value: IJanuaDBDataset);
    function GetjdsVatAmounts: IJanuaDBDataset;
    procedure SetjdsVatAmounts(Value: IJanuaDBDataset);
    function GetjdsDocTypes: IJanuaDBDataset;
    procedure SetjdsDocTypes(Value: IJanuaDBDataset);
    function GetjdsDocHeads: IJanuaDBDataset;
    procedure SetjdsDocHeads(Value: IJanuaDBDataset);
    function GetjdsDocRows: IJanuaDBDataset;
    procedure SetjdsDocRows(Value: IJanuaDBDataset);
    function GetjdsDocAttachments: IJanuaDBDataset;
    procedure SetjdsDocAttachments(Value: IJanuaDBDataset);
  public
    property jdsVatAmounts: IJanuaDBDataset read GetjdsVatAmounts write SetjdsVatAmounts;
    property jdsDocAttachments: IJanuaDBDataset read GetjdsDocAttachments write SetjdsDocAttachments;
    property jdsDocCharges: IJanuaDBDataset read GetjdsDocCharges write SetjdsDocCharges;
    property jdsDocRows: IJanuaDBDataset read GetjdsDocRows write SetjdsDocRows;
    property jdsDocHeads: IJanuaDBDataset read GetjdsDocHeads write SetjdsDocHeads;
    property jdsDocTypes: IJanuaDBDataset read GetjdsDocTypes write SetjdsDocTypes;
  public
    Destructor Destroy; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
  end;

  TJanuaRSDocRows = class(TJanuaModelRecordSetTemplate, IJanuaModel, IJanuaRecordSetModel, IJanuaRSRows)
  private
    [weak]
    FDocRows: IDocRowsView;
  protected
    function GetRows: IDocRowsView;
    procedure SetRows(const Value: IDocRowsView);
    function GetRow: IDocRowView;
  public
    property Rows: IDocRowsView read GetRows write SetRows;
    property Row: IDocRowView read GetRow;
  public
    /// <summary> CallBack Procedures for Item's Supplier or Document Rows
    procedure CallBackAnagraph(const aAnagraph: IAnagraph; aRecordCount: Integer = 1); // Warehouse
    procedure CAllBackItem(const aItem: IItemDefinition; aRecordCount: Integer = 1); // Row Item
    constructor Create(aRecordSet: IJanuaRecordSet); override;
  end;

  TJanuaRSDocCharges = class(TJanuaRSDocRows, IJanuaRecordSetModel, IJanuaRSRows, IJanuaRSDocCharges)
  private
    [weak]
    FCharges: IDocChargesView;
  strict protected
    function InternalActivate: Boolean; override;
  protected
    function GetCharges: IDocChargesView;
    procedure SetCharges(const Value: IDocChargesView);
  public
    property Charges: IDocChargesView read GetCharges write SetCharges;
    constructor Create(aRecordSet: IJanuaRecordSet); override;
  end;

  TJanuaRSDocAttachments = class(TJanuaModelRecordSetTemplate, IJanuaModel, IJanuaRecordSetModel,
    IJanuaRSDocAttachments)
  private
    [weak]
    FAttachments: IDocAttachmentsView;
  strict protected
    function InternalActivate: Boolean; override;
  protected
    function GetAttachments: IDocAttachmentsView;
    procedure SetAttachments(const Value: IDocAttachmentsView);
    function GetAttachment: IDocAttachmentView;
  public
    property Attachments: IDocAttachmentsView read GetAttachments write SetAttachments;
    property Attachment: IDocAttachmentView read GetAttachment;
  public
    procedure AfterConstruction; override;
    constructor Create; override;
    Constructor Create(aRecordSet: IJanuaRecordSet); override;
    procedure OpenRecordFile;
    procedure CopyFile(const aFileName: TFileName);
  end;

  TJanuaDBDocumentsModel = class(TJanuaModelDBTemplate, IJanuaDBDocumentsModel, IJanuaModel)
  strict private
    FDocHeadRecord: IDocHeadView;
    FDocumentsDataModule: IJanuaDocumentsDataModule;
    FSearchText: string;
    FDocID: Int64;
  private
    function GetjdsVatAmounts: IJanuaDBDataset;
    function GetDocHeadRecord: IDocHeadView;
    function GetjdsDocHeads: IJanuaDBDataset;
    procedure SetjdsDocHeads(Value: IJanuaDBDataset);
    function GetjdsDocRows: IJanuaDBDataset;
    procedure SetjdsDocRows(Value: IJanuaDBDataset);
    procedure DefaultParams;
    function GetjdsDocTypes: IJanuaDBDataset;
    procedure SetjdsDocTypes(Value: IJanuaDBDataset);
    function GetDocID: Int64;
    procedure SetDocID(const Value: Int64);
    function GetjdsDocAttachments: IJanuaDBDataset;
    procedure SetjdsDocAttachments(Value: IJanuaDBDataset);
    function GetjdsDocCharges: IJanuaDBDataset;
    procedure SetjdsDocCharges(const Value: IJanuaDBDataset);
  strict protected
    function FactoryCreateDataModule: IJanuaDocumentsDataModule; virtual;
    procedure InternalSetParams; override;
    procedure vtDocumentsAfterScroll(DataSet: TDataSet);
    function InternalActivate: Boolean; override;
  protected
    property jdsDocCharges: IJanuaDBDataset read GetjdsDocCharges write SetjdsDocCharges;
    property jdsDocHeads: IJanuaDBDataset read GetjdsDocHeads write SetjdsDocHeads;
    property jdsDocAttachments: IJanuaDBDataset read GetjdsDocAttachments write SetjdsDocAttachments;
    property DocHeadRecord: IDocHeadView read GetDocHeadRecord;
    property jdsDocRows: IJanuaDBDataset read GetjdsDocRows write SetjdsDocRows;
    property jdsDocTypes: IJanuaDBDataset read GetjdsDocTypes write SetjdsDocTypes;
  public
    procedure StartSearch; override;
    procedure CallBackHolder(const aAnagraph: IAnagraph; aRecordCount: Integer = 1); // shipper
    procedure CallBackCarrier(const aAnagraph: IAnagraph; aRecordCount: Integer = 1);
    procedure CAllBackLocation(const aAnagraph: IAnagraph; aRecordCount: Integer = 1);
    procedure CallBackAnagraph(const aAnagraph: IAnagraph; aRecordCount: Integer = 1); // Warehouse
    procedure CAllBackItem(const aItem: IItemDefinition; aRecordCount: Integer = 1); // Row Item
    procedure CAllBackVessel(const aVessel: IVessel; aRecordCount: Integer = 1); // Vessel Target
    // *********** Sub Detail Management *********************************************************************************
  private
    FDocumentRows: IJanuaRSRows;
    FDocCharges: IJanuaRSDocCharges;
    FDocAttachments: IJanuaRSDocAttachments;
  protected
    function GetDocAttachments: IJanuaRSDocAttachments;
    procedure SetDocAttachments(const Value: IJanuaRSDocAttachments);
    function GetDocumentRows: IJanuaRSRows;
    procedure SetDocumentRows(const Value: IJanuaRSRows);
    function GetDocCharges: IJanuaRSDocCharges;
    procedure SetDocCharges(const Value: IJanuaRSDocCharges);
  strict protected
    procedure ActivateDetails; override;
  public
    procedure AddNewRecord; override;
    procedure RemoveSubModels; override;
    /// <summary> IJanuaRSRows: Main Document Rows RecordSet Model </summary>
    property DocumentRows: IJanuaRSRows read GetDocumentRows write SetDocumentRows;
    property DocAttachments: IJanuaRSDocAttachments read GetDocAttachments write SetDocAttachments;
    // ********* end Sub Detail Management *******************************************************************************
  public
    constructor Create; override;
    procedure AfterConstruction; override;
    destructor Destroy; override;
    procedure BeforeDestruction; override;

  public // properties exposed for binding framework
    property DocID: Int64 read GetDocID write SetDocID;
  end;

implementation

uses System.IOUtils, System.Classes, System.StrUtils, Spring, Janua.Core.Functions,
  Janua.Application.Framework,
  JOrm.Documents.Impl, Janua.Orm.Types;

const
  sl = sLineBreak;

  { TJanuaDBDocumentsModel }

procedure TJanuaDBDocumentsModel.ActivateDetails;
begin
  inherited;
  FDocumentRows := TJanuaRSDocRows.Create(FDocHeadRecord.Rows);
  FDocAttachments := TJanuaRSDocAttachments.Create(FDocHeadRecord.Attachments);
  FDocCharges := TJanuaRSDocCharges.Create(FDocHeadRecord.Charges);
  AddDetailModel(FDocCharges);
  AddDetailModel(FDocumentRows);
  AddDetailModel(FDocAttachments);
end;

procedure TJanuaDBDocumentsModel.AddNewRecord;
begin
  inherited;
  FDocHeadRecord.UserInsert.AsInteger := TJanuaApplication.UserSessionVM.CurrentRecord.Db_user_id.AsInteger;
  FDocHeadRecord.TypeId.AsInteger := GroupID;
  FDocHeadRecord.DiscountRate.AsFloat := 0.0;
  FDocHeadRecord.DocState.AsInteger := 1;
  FDocHeadRecord.InsertDate.AsDateTime := DAte();
  FDocHeadRecord.CarrierExpenses.AsFloat := 0.0;
  FDocHeadRecord.CarrierExpensesCurrencyId.AsInteger := 1;
end;

procedure TJanuaDBDocumentsModel.AfterConstruction;
begin
  inherited;
  jdsDocHeads.ParamByName('p_db_schema_id').AsInteger := TJanuaApplication.DBSchemaID;
  jdsDocTypes.ParamByName('p_db_schema_id').AsInteger := TJanuaApplication.DBSchemaID;
  // check that index field name is correct
  OrderByFields.AddField('ID', TOrderbyEnum.jobDESC);
end;

procedure TJanuaDBDocumentsModel.BeforeDestruction;
begin
  inherited;

end;

procedure TJanuaDBDocumentsModel.CallBackAnagraph(const aAnagraph: IAnagraph; aRecordCount: Integer = 1);
begin
  FDocHeadRecord.DestName.AsString := aAnagraph.AnLastName.AsString;
  FDocHeadRecord.AnagraphId.AsInteger := aAnagraph.AnagraphId.AsInteger;
end;

procedure TJanuaDBDocumentsModel.CallBackCarrier(const aAnagraph: IAnagraph; aRecordCount: Integer = 1);
begin
  FDocHeadRecord.CarrierName.AsString := aAnagraph.AnLastName.AsString;
  FDocHeadRecord.CarrierId.AsInteger := aAnagraph.AnagraphId.AsInteger;
end;

procedure TJanuaDBDocumentsModel.CallBackHolder(const aAnagraph: IAnagraph; aRecordCount: Integer = 1);
begin
  FDocHeadRecord.HolderName.AsString := aAnagraph.AnLastName.AsString;
  FDocHeadRecord.HolderId.AsInteger := aAnagraph.AnagraphId.AsInteger;
  FDocHeadRecord.HolderAddress.AsString := aAnagraph.AnAddress.AsString;
  FDocHeadRecord.HolderPostalCode.AsString := aAnagraph.AnPostalCode.AsString;
  FDocHeadRecord.HolderTown.AsString := aAnagraph.AnTown.AsString;
end;

procedure TJanuaDBDocumentsModel.CAllBackItem(const aItem: IItemDefinition; aRecordCount: Integer = 1);
begin

end;

procedure TJanuaDBDocumentsModel.CAllBackLocation(const aAnagraph: IAnagraph; aRecordCount: Integer = 1);
begin
  { property LocationCode: IJanuaField read GetLocationCode write SetLocationCode; }
  FDocHeadRecord.LocationName.AsString := aAnagraph.AnLastName.AsString;
  FDocHeadRecord.GetWarehouseLocationId.AsInteger := aAnagraph.AnagraphId.AsInteger;
  FDocHeadRecord.LocationCode.AsString := aAnagraph.AnCode.AsString;
end;

procedure TJanuaDBDocumentsModel.CAllBackVessel(const aVessel: IVessel; aRecordCount: Integer);
begin
  {
    property VesselID: IJanuaField read GetVesselID write SetVesselID;
    property VesselName: IJanuaField read GetVesselName write SetVesselName;
    property VesselCode: IJanuaField read GetVesselCode write SetVesselCode;
  }

  FDocHeadRecord.VesselName. AsString := aVessel.Name.AsString;
  FDocHeadRecord.VesselID.AsInteger := aVessel.VesselId.AsInteger;
  FDocHeadRecord.VesselCode.AsString := aVessel.Code.AsString;
end;

constructor TJanuaDBDocumentsModel.Create;
begin
  inherited;
  try
    FDocumentsDataModule := FactoryCreateDataModule;
    SetInternalDataModule(FDocumentsDataModule as IJanuaDataModuleContainer);
    FDocumentsDataModule.Activate;
    // record creation and Assignement must be put BEFORE Dataset Assignments to avoid Error on Scroll Event
    FDocHeadRecord := TDocHeadView.Create;
{$IFDEF  DEBUG}
    Guard.CheckNotNull(FDocHeadRecord, 'FDocHeadRecord');
    Guard.CheckNotNull(FDocumentsDataModule.jdsDocHeads, 'jdsDocHeads');
    Guard.CheckNotNull(FDocumentsDataModule.jdsDocRows, 'jdsDocRows');
    Guard.CheckNotNull(FDocumentsDataModule.jdsDocAttachments, 'jdsDocAttachments');
    Guard.CheckNotNull(FDocumentsDataModule.jdsDocTypes, 'jdsDocTypes');
    Guard.CheckNotNull(FDocumentsDataModule.jdsDocCharges, 'jdsDocCharges');
    Guard.CheckNotNull(FDocumentsDataModule.jdsVatAmounts, 'jdsVatAmounts');
{$ENDIF}
    FDocHeadRecord.StoreDataset := FDocumentsDataModule.jdsDocHeads;
    FDocHeadRecord.Rows.StoreDataset := FDocumentsDataModule.jdsDocRows;
    FDocHeadRecord.Attachments.StoreDataset := FDocumentsDataModule.jdsDocAttachments;
    FDocHeadRecord.Charges.StoreDataset := FDocumentsDataModule.jdsDocCharges;

    SetInternalRecord(FDocHeadRecord);

    jdsMaster := FDocumentsDataModule.jdsDocHeads;
    jdsDocAttachments := FDocumentsDataModule.jdsDocAttachments;
    jdsDetail := FDocumentsDataModule.jdsDocRows;
{$IFDEF  DEBUG}
    Guard.CheckNotNull(FDocumentsDataModule.jdsDocHeads.ParamByName('p_db_schema_id'), 'DocHeads.schema');
    Guard.CheckNotNull(FDocumentsDataModule.jdsDocTypes.ParamByName('p_db_schema_id'), 'DocTypes.schema');
{$ENDIF}
  except
    on e: Exception do
      RaiseException('Create', e, Self);
  end;

end;

procedure TJanuaDBDocumentsModel.DefaultParams;
begin
  try
    Guard.CheckNotNull(FDocumentsDataModule.jdsDocHeads.ParamByName('p_group_id'), 'DocHeads.p_group_id');
    jdsDocHeads.ParamByName('p_group_id').AsInteger := GroupID;
    jdsDocHeads.ParamByName('p_search_name').AsString :=
      '%' + IfThen(FSearchText <> '', FSearchText + '%', '');
  except
    on e: Exception do
      RaiseException('DefaultParams', e, Self);
  end;
end;

destructor TJanuaDBDocumentsModel.Destroy;
begin
  jdsMaster.DataSet.AfterScroll := nil;
  FDocHeadRecord := nil;
  FDocumentsDataModule := nil;
  inherited;
end;

function TJanuaDBDocumentsModel.FactoryCreateDataModule: IJanuaDocumentsDataModule;
begin
  try
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaDocumentsDataModule, Result) then
      raise Exception.Create('IJanuaDocumentsDataModule not set');
  except
    on e: Exception do
      RaiseException('FactoryCreateDataModule', e, Self);
  end;
end;

function TJanuaDBDocumentsModel.GetDocAttachments: IJanuaRSDocAttachments;
begin
  Result := FDocAttachments
end;

function TJanuaDBDocumentsModel.GetDocCharges: IJanuaRSDocCharges;
begin
  Result := FDocCharges;
end;

function TJanuaDBDocumentsModel.GetDocHeadRecord: IDocHeadView;
begin
  Result := FDocHeadRecord;
end;

function TJanuaDBDocumentsModel.GetDocID: Int64;
begin
  Result := FDocID
end;

function TJanuaDBDocumentsModel.GetDocumentRows: IJanuaRSRows;
begin
  Result := FDocumentRows;
end;

function TJanuaDBDocumentsModel.GetjdsDocHeads: IJanuaDBDataset;
begin
  Result := FDocumentsDataModule.jdsDocHeads
end;

function TJanuaDBDocumentsModel.GetjdsDocAttachments: IJanuaDBDataset;
begin
  Result := FDocumentsDataModule.jdsDocAttachments
end;

function TJanuaDBDocumentsModel.GetjdsDocCharges: IJanuaDBDataset;
begin
  Result := FDocumentsDataModule.jdsDocCharges;
end;

function TJanuaDBDocumentsModel.GetjdsDocRows: IJanuaDBDataset;
begin
  Result := FDocumentsDataModule.jdsDocRows;
end;

function TJanuaDBDocumentsModel.GetjdsDocTypes: IJanuaDBDataset;
begin
  Result := FDocumentsDataModule.jdsDocTypes;
end;

function TJanuaDBDocumentsModel.GetjdsVatAmounts: IJanuaDBDataset;
begin
  Result := FDocumentsDataModule.jdsVatAmounts;
end;

// 2020-11-30 GetSearchText and SetSearchText are now replaced by MainSearchText Getters and Setters
(*
  function TJanuaDBDocumentsModel.GetSearchText: string;
  begin
  Result := FSearchText
  end;
*)

function TJanuaDBDocumentsModel.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        FDocHeadRecord.MapToDataset := True;
        FDocHeadRecord.LoadFromDataset;
        jdsMaster.DataSet.AfterScroll := vtDocumentsAfterScroll;
      end;
    except
      on e: Exception do
        RaiseException('InternalActivate', e, Self);
    end;
end;

procedure TJanuaDBDocumentsModel.InternalSetParams;
begin
  inherited;
  try
{$IFDEF DEBUG}
    Assert(Assigned(FDocumentsDataModule), 'FDocumentsDataModule');
    Assert(Assigned(FDocumentsDataModule.jdsDocHeads), 'FDocumentsDataModule.jdsDocHeads');
{$ENDIF}
    jdsDocHeads.ParamByName('p_db_schema_id').AsInteger := TJanuaApplication.DBSchemaID;
    jdsDocHeads.ParamByName('p_search_name').AsString := '%';
    if (StripString(MainSearchText) <> '') and (MainSearchText <> '%') and (MainSearchText.Length > 2) then
      jdsDocHeads.ParamByName('p_search_name').AsString := '%' + StripString(MainSearchText, '%') + '%';
    jdsDocHeads.ParamByName('p_doc_id').AsInteger := FDocID;
  except
    on e: Exception do
      RaiseException('InternalSetParams', e, Self);
  end;
end;

procedure TJanuaDBDocumentsModel.RemoveSubModels;
begin
  inherited;
  SetDocumentRows(nil);
end;

procedure TJanuaDBDocumentsModel.SetDocAttachments(const Value: IJanuaRSDocAttachments);
begin
  FDocAttachments := Value;
end;

procedure TJanuaDBDocumentsModel.SetDocCharges(const Value: IJanuaRSDocCharges);
begin
  FDocCharges := Value
end;

procedure TJanuaDBDocumentsModel.SetDocID(const Value: Int64);
begin
  if FDocID <> Value then
    try
      FDocID := Value;
      BindManager.Notify('DocID');
      if Assigned(FDocumentsDataModule) then
        FDocumentsDataModule.jdsDocHeads.ParamByName('p_doc_id').AsInteger := FDocID;
    except
      on e: Exception do
        RaiseException('SetDocID', e, Self);
    end;
end;

procedure TJanuaDBDocumentsModel.SetDocumentRows(const Value: IJanuaRSRows);
begin
  FDocumentRows := Value;
end;

procedure TJanuaDBDocumentsModel.SetjdsDocHeads(Value: IJanuaDBDataset);
begin
  FDocumentsDataModule.jdsDocHeads := Value
end;

procedure TJanuaDBDocumentsModel.SetjdsDocAttachments(Value: IJanuaDBDataset);
begin
  FDocumentsDataModule.jdsDocAttachments := Value
end;

procedure TJanuaDBDocumentsModel.SetjdsDocCharges(const Value: IJanuaDBDataset);
begin

end;

procedure TJanuaDBDocumentsModel.SetjdsDocRows(Value: IJanuaDBDataset);
begin
  FDocumentsDataModule.jdsDocRows := Value
end;

procedure TJanuaDBDocumentsModel.SetjdsDocTypes(Value: IJanuaDBDataset);
begin
  FDocumentsDataModule.jdsDocTypes := Value
end;

// 2020-11-30 GetSearchText and SetSearchText are now replaced by MainSearchText Getters and Setters
(*
  procedure TJanuaDBDocumentsModel.SetSearchText(const Value: string);
  begin
  if FSearchText <> Value then
  begin
  FSearchText := Value;
  BindManager.Notify('SearchText');
  FDocumentsDataModule.jdsDocHeads.ParamByName('p_search_name').AsString := '%' + Value + '%';
  end;
  end;
*)

procedure TJanuaDBDocumentsModel.StartSearch;
begin
  { TODO Check if OK FDocumentsDataModule.jdsDocHeads.Open; }
  inherited;
end;

procedure TJanuaDBDocumentsModel.vtDocumentsAfterScroll(DataSet: TDataSet);
{$IFDEF DEBUG}var
  i: Integer; {$ENDIF}
begin
  try
    { if Assigned(FDocumentsDataModule) and not jdsDocRows.Active then
      begin
      jdsDocRows.Close;
      jdsDocRows.ParamByName('id').AsInteger := jdsDocHeads.FieldByName('id').AsInteger;
      jdsDocRows.Open;
      end;
    }
    if not LazyLoading and Assigned(FDocHeadRecord) then
      FDocHeadRecord.LoadFromDataset;
{$IFDEF DEBUG}
    i := jdsDocRows.DataSet.RecordCount;
    if i > 0 then
      i := FDocHeadRecord.Rows.RecordCount;
    if i > 0 then
      i := FDocHeadRecord.Rows.Id.AsInteger;
{$ENDIF}
  except
    on e: Exception do
      RaiseException('vtDocumentsAfterScroll', e, Self);
  end;

end;

{ TJanuaCustomDocumentDataModule }

procedure TJanuaCustomDocumentDataModule.AfterConstruction;
begin
  inherited;

end;

procedure TJanuaCustomDocumentDataModule.BeforeDestruction;
begin
  inherited;

end;

destructor TJanuaCustomDocumentDataModule.Destroy;
begin
  FjdsDocHeads := nil;
  FjdsDocRows := nil;
  FjdsDocAttachments := nil;
  FjdsDocTypes := nil;
  inherited;
end;

function TJanuaCustomDocumentDataModule.GetjdsDocAttachments: IJanuaDBDataset;
begin
  Result := FjdsDocAttachments
end;

function TJanuaCustomDocumentDataModule.GetjdsDocCharges: IJanuaDBDataset;
begin
  Result := FjdsDocCharges
end;

function TJanuaCustomDocumentDataModule.GetjdsDocHeads: IJanuaDBDataset;
begin
  Result := FjdsDocHeads
end;

function TJanuaCustomDocumentDataModule.GetjdsDocRows: IJanuaDBDataset;
begin
  Result := FjdsDocRows
end;

function TJanuaCustomDocumentDataModule.GetjdsDocTypes: IJanuaDBDataset;
begin
  Result := FjdsDocTypes
end;

function TJanuaCustomDocumentDataModule.GetjdsVatAmounts: IJanuaDBDataset;
begin
  Result := FjdsVatAmounts;
end;

procedure TJanuaCustomDocumentDataModule.SetjdsDocAttachments(Value: IJanuaDBDataset);
begin
  FjdsDocAttachments := Value
end;

procedure TJanuaCustomDocumentDataModule.SetjdsDocCharges(const Value: IJanuaDBDataset);
begin
  FjdsDocCharges := Value;
end;

procedure TJanuaCustomDocumentDataModule.SetjdsDocHeads(Value: IJanuaDBDataset);
begin
  FjdsDocHeads := Value;
  SetMainDataset(FjdsDocHeads);
end;

procedure TJanuaCustomDocumentDataModule.SetjdsDocRows(Value: IJanuaDBDataset);
begin
  FjdsDocRows := Value
end;

procedure TJanuaCustomDocumentDataModule.SetjdsDocTypes(Value: IJanuaDBDataset);
begin
  FjdsDocTypes := Value
end;

procedure TJanuaCustomDocumentDataModule.SetjdsVatAmounts(Value: IJanuaDBDataset);
begin
  FjdsVatAmounts := Value
end;

{ TJanuaRSDocRows }

procedure TJanuaRSDocRows.CallBackAnagraph(const aAnagraph: IAnagraph; aRecordCount: Integer);
begin
  Row.SupplierId.AsInteger := aAnagraph.AnagraphId.AsInteger;
  Row.SupplierName.AsString := aAnagraph.AnLastName.AsString;
end;

procedure TJanuaRSDocRows.CAllBackItem(const aItem: IItemDefinition; aRecordCount: Integer);
begin

end;

constructor TJanuaRSDocRows.Create(aRecordSet: IJanuaRecordSet);
begin
  inherited;
  SetRows(aRecordSet as IDocRowsView);
end;

function TJanuaRSDocRows.GetRow: IDocRowView;
begin
  Result := FDocRows.Row
end;

function TJanuaRSDocRows.GetRows: IDocRowsView;
begin
  Result := FDocRows;
end;

procedure TJanuaRSDocRows.SetRows(const Value: IDocRowsView);
begin
  FDocRows := Value;
  SetRecordSet(FDocRows);
end;

{ TJanuaRSDocAttachments }

procedure TJanuaRSDocAttachments.AfterConstruction;
begin
  inherited;

end;

procedure TJanuaRSDocAttachments.CopyFile(const aFileName: TFileName);
var
  lSystemDir, lFileName, lDestDir: TFileName;
begin
  if FileExists(aFileName) then
  begin
    FAttachments.Filename.AsString := TPath.GetFileName(aFileName);
    FAttachments.Extension.AsString := TPath.GetExtension(aFileName);
    // TJanuaApplication.ServerAddress :=
    // TJanuaApplication.ServerAddress);
    lSystemDir := TJanuaCoreOS.ReadRegistry(False, 'gdrive_dir', 'system', 'G:\Il mio Drive\TMapp\Cloud\');
    lDestDir := tpl(lSystemDir) + tpl(StringReplace(FAttachments.DirectoryPath.AsString, '/', '\',
      [rfReplaceAll, rfIgnoreCase]));

    if not DirectoryExists(lDestDir { FAttachments.DirectoryPath.AsString } ) then
      CreateDir(lDestDir { FAttachments.DirectoryPath.AsString } );

    lFileName := lDestDir + FAttachments.Attachment.GUIDString + FAttachments.Extension.AsString;
    TFile.Copy(aFileName, lFileName, True);
  end;
end;

constructor TJanuaRSDocAttachments.Create(aRecordSet: IJanuaRecordSet);
begin
  inherited;
  Attachments := aRecordSet as IDocAttachmentsView;
end;

constructor TJanuaRSDocAttachments.Create;
begin
  inherited;
end;

function TJanuaRSDocAttachments.GetAttachment: IDocAttachmentView;
begin
  Result := FAttachments.Attachment;
end;

function TJanuaRSDocAttachments.GetAttachments: IDocAttachmentsView;
begin
  Result := FAttachments;
end;

function TJanuaRSDocAttachments.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
{$IFDEF DEBUG} Guard.CheckNotNull(jdsDataset, 'jdsDataset'); {$ENDIF}
{$IFDEF DEBUG} Guard.CheckNotNull(jdsDataset.FieldByName('blob_id'), 'blob_id'); {$ENDIF}
        jdsDataset.AddGridColumn(jdsDataset.FieldByName('blob_id'), 8, 'ID');
{$IFDEF DEBUG} Guard.CheckNotNull(jdsDataset.FieldByName('filename'), 'filename'); {$ENDIF}
        jdsDataset.AddGridColumn(jdsDataset.FieldByName('filename'), 60, 'File Name');
        (*
          {$IFDEF DEBUG} Guard.CheckNotNull(jdsDataset.FieldByName('insert_date'), 'insert_date'); {$ENDIF}
          {jdsDataset.AddGridColumn(jdsDataset.FieldByName('insert_date'), 20, 'Creation Date');}
          // directory_path
        *)
{$IFDEF DEBUG} Guard.CheckNotNull(jdsDataset.FieldByName('directory_path'), 'directory_path'); {$ENDIF}
        jdsDataset.AddGridColumn(jdsDataset.FieldByName('directory_path'), 30, 'Directory Path');
{$IFDEF DEBUG} Guard.CheckNotNull(jdsDataset.FieldByName('deleted'), 'deleted'); {$ENDIF}
        jdsDataset.AddGridColumn(jdsDataset.FieldByName('deleted'), 20, 'Creation Date');
      end;
    except
      on e: Exception do
        RaiseException('InternalActivate', e, Self);
    end;

end;

procedure TJanuaRSDocAttachments.OpenRecordFile;
var
  lFileName: TFileName;
begin
  lFileName := tpl('G:\Il mio Drive\TMapp\Cloud\') +
    tpl(StringReplace(FAttachments.DirectoryPath.AsString, '/', '\', [rfReplaceAll, rfIgnoreCase])) +
    FAttachments.Attachment.GUIDString + FAttachments.Extension.AsString;
  if not FileExists(lFileName) then
    raise Exception.Create('File not Found ' + FAttachments.Filename.AsString);
  TJanuaCoreOS.InternalExec(lFileName, '');
end;

procedure TJanuaRSDocAttachments.SetAttachments(const Value: IDocAttachmentsView);
begin
  FAttachments := Value;
end;

{ TJanuaRSDocCharges }

constructor TJanuaRSDocCharges.Create(aRecordSet: IJanuaRecordSet);
begin
  inherited;
  SetCharges(aRecordSet as IDocChargesView)
end;

function TJanuaRSDocCharges.GetCharges: IDocChargesView;
begin
  Result := FCharges
end;

function TJanuaRSDocCharges.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
{$IFDEF DEBUG} Guard.CheckNotNull(jdsDataset, 'jdsDataset'); {$ENDIF}
{$IFDEF DEBUG} Guard.CheckNotNull(jdsDataset.FieldByName('item_id'), 'item_id'); {$ENDIF}
        jdsDataset.AddGridColumn(jdsDataset.FieldByName('item_id'), 8, 'ID');
{$IFDEF DEBUG} Guard.CheckNotNull(jdsDataset.FieldByName('model'), 'model'); {$ENDIF}
        jdsDataset.AddGridColumn(jdsDataset.FieldByName('model'), 50, 'Charge/Fee Definition');
{$IFDEF DEBUG} Guard.CheckNotNull(jdsDataset.FieldByName('price'), 'price'); {$ENDIF}
        jdsDataset.AddGridColumn(jdsDataset.FieldByName('price'), 10, 'Price');
{$IFDEF DEBUG} Guard.CheckNotNull(jdsDataset.FieldByName('quantity'), 'quantity'); {$ENDIF}
        jdsDataset.AddGridColumn(jdsDataset.FieldByName('quantity'), 6, 'Qty.');
{$IFDEF DEBUG} Guard.CheckNotNull(jdsDataset.FieldByName('calc_net_amount'), 'calc_net_amount'); {$ENDIF}
        TNumericField(jdsDataset.FieldByName('calc_net_amount')).DisplayFormat := '#.##0.00';
        jdsDataset.AddGridColumn(jdsDataset.FieldByName('calc_net_amount'), 10, 'Net. Amount');
{$IFDEF DEBUG} Guard.CheckNotNull(jdsDataset.FieldByName('vat_rate'), 'vat_rate'); {$ENDIF}
        jdsDataset.AddGridColumn(jdsDataset.FieldByName('vat_rate'), 6, 'Vat %');
{$IFDEF DEBUG} Guard.CheckNotNull(jdsDataset.FieldByName('calc_vat_amount'), 'calc_vat_amount'); {$ENDIF}
        jdsDataset.AddGridColumn(jdsDataset.FieldByName('calc_vat_amount'), 8, 'VAT');
{$IFDEF DEBUG} Guard.CheckNotNull(jdsDataset.FieldByName('calc_amount'), 'calc_amount'); {$ENDIF}
        TNumericField(jdsDataset.FieldByName('calc_amount')).DisplayFormat := '#.##0.00';
        jdsDataset.AddGridColumn(jdsDataset.FieldByName('calc_amount'), 12, 'Amount');
      end;
    except
      on e: Exception do
        RaiseException('InternalActivate', e, Self);
    end;
end;

procedure TJanuaRSDocCharges.SetCharges(const Value: IDocChargesView);
begin
  FCharges := Value;
  if Assigned(FCharges) then
    SetRows(Value as IDocRowsView)
  else
    SetRows(nil);
end;

initialization

finalization

end.
