unit udmTMMigration;

interface

uses
  // System
  System.SysUtils, System.Classes,
  // Janua
  Janua.Core.Types, Janua.Core.TMLogistic.Types,
  // UniDAC
  UniProvider, SQLServerUniProvider, DBAccess, Uni, MemDS, PostgreSQLUniProvider, Data.DB,
  Janua.Unidac.Connection;

type
  TdmTMMigration = class(TDataModule)
    TailorMagazzino: TJanuaUniConnection;
    SQLServerUniProvider1: TSQLServerUniProvider;
    SQLSrvMagazzinoServer: TJanuaUniConnection;
    tbMagazzini: TUniTable;
    spMagazzini: TUniStoredProc;
    ErgoConnection: TJanuaUniConnection;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    tbPgMagazzini: TUniTable;
    tbMagazziniCodice: TStringField;
    tbMagazziniDescrizione: TStringField;
    tbMagazziniDataInserimento: TDateTimeField;
    tbMagazziniCodUtente: TStringField;
    tbMagazziniUtenteUltimaModifica: TStringField;
    tbMagazziniDataUltimaModifica: TDateTimeField;
    tbMagazziniLocalita: TStringField;
    tbPgMagazzinicodice: TStringField;
    tbPgMagazzinidescrizione: TStringField;
    tbPgMagazzinidatainserimento: TDateTimeField;
    tbPgMagazzinicodutente: TStringField;
    tbPgMagazziniutenteultimamodifica: TStringField;
    tbPgMagazzinidataultimamodifica: TDateTimeField;
    tbPgMagazzinilocalita: TStringField;
    tbPgMagazzinijguid: TGuidField;
    SqlServerPratiche: TJanuaUniConnection;
    TailorPratiche: TJanuaUniConnection;
    qryAttachmentsEntrate: TUniQuery;
    qryAttachmentsPratiche: TUniQuery;
    qryAttachmentsEntrateid: TLargeintField;
    qryAttachmentsEntrateanno: TIntegerField;
    qryAttachmentsEntratenum_entrata: TIntegerField;
    qryAttachmentsEntratepg: TIntegerField;
    qryAttachmentsEntratecontatore: TIntegerField;
    qryAttachmentsEntratedataacquisizione: TDateTimeField;
    qryAttachmentsEntratenumero: TIntegerField;
    qryAttachmentsEntratetipodoc: TWideStringField;
    qryAttachmentsEntratecodcompagnia: TWideStringField;
    qryAttachmentsEntratecodfornitore: TWideStringField;
    qryAttachmentsEntratecodaltro: TIntegerField;
    qryAttachmentsEntratecodcliente: TWideStringField;
    qryAttachmentsEntratenote: TWideMemoField;
    qryAttachmentsEntratepath: TWideStringField;
    qryAttachmentsEntratenomefile: TWideStringField;
    qryAttachmentsEntratedataarchiviazione: TDateTimeField;
    qryAttachmentsEntratecodutente: TWideStringField;
    qryAttachmentsEntratetipo: TWideStringField;
    qryAttachmentsEntratenomefileoriginale: TWideStringField;
    qryAttachmentsEntratepathfile: TWideStringField;
    qryAttachmentsEntratenomefilearchiviato: TWideStringField;
    qryAttachmentsEntrateflgvisibile: TWideStringField;
    qryAttachmentsEntratejguid: TGuidField;
    tbWorkFlowAttachments: TUniTable;
    tbDocumentsAttachments: TUniTable;
    qryBlobFile: TUniQuery;
    qryBlobFileblob_id: TLargeintField;
    qryBlobFileblob_file: TBlobField;
    qryBlobFileblob_size: TLargeintField;
    qryBlobFiledb_schema_id: TIntegerField;
    qryBlobFileblob_key: TWideStringField;
    qryBlobFiledb_user_id: TIntegerField;
    qryBlobFileispublic: TBooleanField;
    qryBlobFilecblb_jguid: TWideStringField;
    qryBlobFilecblb_deleted: TBooleanField;
    qryBlobFilefile_ext: TWideStringField;
    qryBlobFilefilename: TWideStringField;
    qryBlobFileisresource: TBooleanField;
    qryBlobFileis_external: TBooleanField;
    qryBlobFileex_location: TWideStringField;
    qryBlobFilejguid: TGuidField;
    tbWorkFlowAttachmentswork_id: TLargeintField;
    tbWorkFlowAttachmentsblob_id: TLargeintField;
    tbWorkFlowAttachmentsblob_jguid: TGuidField;
    tbWorkFlowAttachmentslocation: TWideStringField;
    tbWorkFlowAttachmentsfilename: TWideStringField;
    tbWorkFlowAttachmentsdescription: TWideMemoField;
    tbWorkFlowAttachmentscontext: TWideMemoField;
    tbWorkFlowAttachmentsextension: TWideStringField;
    qryBlobSequence: TUniQuery;
    qryBlobSequencenextval: TLargeintField;
    tbDocumentsAttachmentsdoc_id: TLargeintField;
    tbDocumentsAttachmentsblob_id: TLargeintField;
    tbDocumentsAttachmentsblob_jguid: TGuidField;
    tbDocumentsAttachmentslocation: TWideStringField;
    tbDocumentsAttachmentsfilename: TWideStringField;
    tbDocumentsAttachmentsdescription: TWideMemoField;
    tbDocumentsAttachmentscontext: TWideMemoField;
    tbDocumentsAttachmentsextension: TWideStringField;
    sqlUpdatePratiche: TUniSQL;
    sqlUpdateEntrate: TUniSQL;
    qryDocHeads: TUniQuery;
    qryDocHeadsid: TLargeintField;
    qryDocHeadstype_id: TSmallintField;
    qryDocHeadsin_out: TSmallintField;
    qryDocHeadsdoc_date: TDateField;
    qryDocHeadsdoc_number: TWideStringField;
    qryDocHeadsreason: TSmallintField;
    qryDocHeadsdest_address: TWideStringField;
    qryDocHeadsdest_postal_code: TWideStringField;
    qryDocHeadsdest_town: TWideStringField;
    qryDocHeadsdest_state_province: TWideStringField;
    qryDocHeadsdest_country_iso: TWideStringField;
    qryDocHeadsdeparture_date: TDateField;
    qryDocHeadsdelivery_methos: TWideStringField;
    qryDocHeadsgoods_description: TWideStringField;
    qryDocHeadspackages_number: TSmallintField;
    qryDocHeadstotal_weight: TFloatField;
    qryDocHeadsincoterms: TWideStringField;
    qryDocHeadsdelivery_charges: TFloatField;
    qryDocHeadsdiscount_rate: TFloatField;
    qryDocHeadsanagraph_id: TIntegerField;
    qryDocHeadscarrier_id: TIntegerField;
    qryDocHeadsdest_state_province_id: TIntegerField;
    qryDocHeadsdest_region_id: TIntegerField;
    qryDocHeadsdest_town_id: TIntegerField;
    qryDocHeadscurrency_id: TSmallintField;
    qryDocHeadspayment_terms_id: TSmallintField;
    qryDocHeadspayment_terms_des: TWideStringField;
    qryDocHeadspackage_description: TWideStringField;
    qryDocHeadspayment_term_code: TWideStringField;
    qryDocHeadsfolder_id: TLargeintField;
    qryDocHeadsdoc_state: TSmallintField;
    qryDocHeadsholder_name: TWideStringField;
    qryDocHeadsholder_id: TIntegerField;
    qryDocHeadsholder_vat_id: TWideStringField;
    qryDocHeadsholder_address: TWideStringField;
    qryDocHeadsholder_postal_code: TWideStringField;
    qryDocHeadsholder_town: TWideStringField;
    qryDocHeadsholder_state_province: TWideStringField;
    qryDocHeadsholder_country_iso: TWideStringField;
    qryDocHeadsdelivery_rate_expense: TFloatField;
    qryDocHeadsholder_group_id: TSmallintField;
    qryDocHeadsamount: TFloatField;
    qryDocHeadsnet_amount: TFloatField;
    qryDocHeadsfinancial_year: TWideStringField;
    qryDocHeadsdoc_origin_id: TFloatField;
    qryDocHeadsdelivery_vat_id: TSmallintField;
    qryDocHeadsdelivery_vat_rate: TFloatField;
    qryDocHeadsaccounted: TBooleanField;
    qryDocHeadsinsert_date: TDateField;
    qryDocHeadsupdate_date: TDateField;
    qryDocHeadsdelivery_due_date: TDateField;
    qryDocHeadssent: TBooleanField;
    qryDocHeadsarrival_date: TDateField;
    qryDocHeadspayment_due_date: TDateField;
    qryDocHeadsduties: TFloatField;
    qryDocHeadspaid: TBooleanField;
    qryDocHeadsdoc_fine: TFloatField;
    qryDocHeadsuser_insert: TIntegerField;
    qryDocHeadsuser_update: TIntegerField;
    qryDocHeadsdoc_year: TFloatField;
    qryDocHeadspo_number_id: TLargeintField;
    qryDocHeadspo_number: TWideStringField;
    qryDocHeadsprinted: TBooleanField;
    qryDocHeadscontact_name: TWideStringField;
    qryDocHeadscontact_email: TWideStringField;
    qryDocHeadscontact_phone: TWideStringField;
    qryDocHeadsoffice_id: TIntegerField;
    qryDocHeadswarehouse_location_id: TIntegerField;
    qryDocHeadsjguid: TGuidField;
    qryDocHeadsnotes1: TWideMemoField;
    qryDocHeadsnotes2: TWideMemoField;
    qryDocHeadsnotes3: TWideMemoField;
    qryDocHeadsdb_schema_id: TIntegerField;
    qryDocHeadspurchase_order_number: TWideStringField;
    qryDocHeadscustom_field_1: TWideStringField;
    qryDocHeadscustom_field_2: TWideStringField;
    qryDocHeadscustom_field_3: TWideStringField;
    qryDocHeadscustom_int_1: TIntegerField;
    qryDocHeadscustom_int_2: TIntegerField;
    qryDocHeadscustom_int_3: TIntegerField;
    qryDocHeadsdoc_ref_code: TWideStringField;
    qryDocHeadscarrier_expenses: TFloatField;
    qryDocHeadsregistry_code: TWideStringField;
    qryDocHeadscarrier_tracking_number: TWideStringField;
    qryDocHeadscarrier_expenses_currency_id: TSmallintField;
    qryDocHeadssearch_index: TWideStringField;
    qryDocHeadsdest_name: TWideStringField;
    qryDocHeadscarrier_name: TWideStringField;
    qryDocHeadslocation_name: TWideStringField;
    qryDocHeadsgoods_type_id: TSmallintField;
    qryDocHeadsimportexport: TSmallintField;
    qryDocHeadscalc_number: TStringField;
    qryDocHeadsdest_town_postalcode: TStringField;
    qryDocHeadscarrier_invoice_number: TWideStringField;
    qryDocHeadscarrier_invoice_date: TDateField;
    qryDocHeadsworkflow_id: TLargeintField;
    qryDocHeadsvessel_department_id: TSmallintField;
    qryDocHeadspayment_term_id: TSmallintField;
    qryDocHeadsan_code: TWideStringField;
    qryDocHeadsref_date: TDateField;
    qryDocHeadsref_code: TWideStringField;
    qryDocHeadsstamp_duty: TCurrencyField;
    qryDocHeadsexchange_rate: TFloatField;
    qryDocHeadsconversion_date: TDateField;
    qryDocHeadswork_code: TWideStringField;
    qryDocHeadswork_date: TDateField;
    qryDocHeadsdeleted: TBooleanField;
    qryDocHeadsdest_vat_number: TWideStringField;
    qryDocHeadsholder_vat_number: TWideStringField;
    qryDocHeadscurrency_code: TWideStringField;
    qryDocHeadscurrency_description: TWideMemoField;
    qryDocHeadstaxable_amount: TCurrencyField;
    qryDocHeadsvat_taxes: TCurrencyField;
    qryDocHeadscalc_desc_full_Address: TWideStringField;
    qryDocHeadscalc_holder_full_address: TWideStringField;
    qryDocHeadsHolder_town_postalcode: TWideStringField;
    qryDocHeadsindex_guid: TStringField;
    dsDocuments: TUniDataSource;
    qryDocAttachments: TUniQuery;
    qryDocAttachmentsdoc_id: TLargeintField;
    qryDocAttachmentsblob_id: TLargeintField;
    qryDocAttachmentsblob_jguid: TGuidField;
    qryDocAttachmentslocation: TWideStringField;
    qryDocAttachmentsfilename: TWideStringField;
    qryDocAttachmentsdescription: TWideMemoField;
    qryDocAttachmentscontext: TWideMemoField;
    qryDocAttachmentsextension: TWideStringField;
    qryDocAttachmentsdb_schema_id: TIntegerField;
    qryDocAttachmentscblb_jguid: TWideStringField;
    qryDocAttachmentsfile_ext: TWideStringField;
    qryDocAttachmentsblob_filename: TWideStringField;
    qryWorks: TUniQuery;
    dsWorks: TUniDataSource;
    qryWorksid: TLargeintField;
    qryWorksjguid: TGuidField;
    qryWorksworkdate: TDateTimeField;
    qryWorkscode: TWideStringField;
    qryWorksoffice_id: TIntegerField;
    qryWorkscustomer_id: TIntegerField;
    qryWorksyear: TSmallintField;
    qryWorkstype_id: TSmallintField;
    qryWorksdeleted: TBooleanField;
    qryWorksdb_schema_id: TIntegerField;
    qryWorkslevel_id: TSmallintField;
    qryWorkAttachments: TUniQuery;
    qryWorkAttachmentswork_id: TLargeintField;
    qryWorkAttachmentsblob_id: TLargeintField;
    qryWorkAttachmentsblob_jguid: TGuidField;
    qryWorkAttachmentslocation: TWideStringField;
    qryWorkAttachmentsfilename: TWideStringField;
    qryWorkAttachmentsdescription: TWideMemoField;
    qryWorkAttachmentscontext: TWideMemoField;
    qryWorkAttachmentsextension: TWideStringField;
    qryWorkAttachmentscblb_jguid: TWideStringField;
    qryWorkAttachmentsfile_ext: TWideStringField;
    qryWorkAttachmentsblob_filename: TWideStringField;
    qryAttachmentsEntratedoc_date: TDateField;
    qryAttachmentsEntratedoc_year: TFloatField;
    qryAttachmentsPraticheid: TLargeintField;
    qryAttachmentsPraticheworkdate: TDateTimeField;
    qryAttachmentsPraticheyear: TFloatField;
    qryAttachmentsPratichemonth: TStringField;
    qryAttachmentsPraticheanno: TWideStringField;
    qryAttachmentsPraticheprogressivo: TIntegerField;
    qryAttachmentsPraticheprogressivopraticagroupage: TSmallintField;
    qryAttachmentsPratichecodattivita: TWideStringField;
    qryAttachmentsPratichecodfiliale: TWideStringField;
    qryAttachmentsPratichecontatore: TIntegerField;
    qryAttachmentsPratichedataacquisizione: TDateTimeField;
    qryAttachmentsPratichetipodoc: TWideStringField;
    qryAttachmentsPratichecodcompagnia: TWideStringField;
    qryAttachmentsPratichecodfornitore: TWideStringField;
    qryAttachmentsPratichecodaltro: TIntegerField;
    qryAttachmentsPratichecodcliente: TWideStringField;
    qryAttachmentsPratichenote: TWideStringField;
    qryAttachmentsPratichepath: TWideStringField;
    qryAttachmentsPratichenomefile: TWideStringField;
    qryAttachmentsPratichecodutente: TWideStringField;
    qryAttachmentsPraticheflgvisibile: TWideStringField;
    qryAttachmentsPratichejguid: TGuidField;
    qryDocAttachmentsFileMove: TUniQuery;
    qryDocAttachmentsFileMovedestination: TWideMemoField;
    qryDocAttachmentsFileMoveorigin: TWideMemoField;
    qryDocAttachmentsFileMoveblob_id: TLargeintField;
    qryDocAttachmentsFileMoveblob_file: TBlobField;
    qryDocAttachmentsFileMoveblob_size: TLargeintField;
    qryDocAttachmentsFileMovedb_schema_id: TIntegerField;
    qryDocAttachmentsFileMoveblob_key: TWideStringField;
    qryDocAttachmentsFileMovedb_user_id: TIntegerField;
    qryDocAttachmentsFileMoveispublic: TBooleanField;
    qryDocAttachmentsFileMovecblb_jguid: TWideStringField;
    qryDocAttachmentsFileMovecblb_deleted: TBooleanField;
    qryDocAttachmentsFileMovefile_ext: TWideStringField;
    qryDocAttachmentsFileMovefilename: TWideStringField;
    qryDocAttachmentsFileMoveisresource: TBooleanField;
    qryDocAttachmentsFileMoveis_external: TBooleanField;
    qryDocAttachmentsFileMoveex_location: TWideStringField;
    qryDocAttachmentsFileMovejguid: TGuidField;
    qryDocAttachmentsFileMoveinsert_date: TDateTimeField;
    qryDocAttachmentsFileMovedescription: TWideStringField;
    qryDocAttachmentsFileMoveflg_stored: TBooleanField;
    qryDocAttachmentsFileMovedirectory_id: TLargeintField;
    procedure qryBlobFileNewRecord(DataSet: TDataSet);
    procedure qryDocHeadsAfterOpen(DataSet: TDataSet);
    procedure qryDocHeadsAfterScroll(DataSet: TDataSet);
    procedure qryWorksAfterOpen(DataSet: TDataSet);
    procedure qryWorksAfterScroll(DataSet: TDataSet);
  private
    procedure RefreshAttachments;
    procedure RefreshWorks;
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TTMLogisticUniMigration = class
  private
    class var FdmTMMagazzino: TdmTMMigration;
  private
    class function getMigration: TdmTMMigration; static;
  public
    class property dmMigration: TdmTMMigration read getMigration;
  end;

var
  dmTMMigration: TdmTMMigration;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TTMLogisticUniMigration }

class function TTMLogisticUniMigration.getMigration: TdmTMMigration;
begin
  if not Assigned(FdmTMMagazzino) then
    FdmTMMagazzino := TdmTMMigration.Create(nil);
  Result := FdmTMMagazzino;
end;

procedure TdmTMMigration.qryBlobFileNewRecord(DataSet: TDataSet);
begin
  qryBlobSequence.Close;
  qryBlobSequence.Open;
  qryBlobFileblob_id.AsLargeInt := qryBlobSequencenextval.AsLargeInt;
  qryBlobFilejguid.AsGuid := TGUID.NewGuid;
  qryBlobFilecblb_jguid.AsGuid := qryBlobFilejguid.AsGuid;
end;

procedure TdmTMMigration.qryDocHeadsAfterOpen(DataSet: TDataSet);
begin
  RefreshAttachments;
end;

procedure TdmTMMigration.qryDocHeadsAfterScroll(DataSet: TDataSet);
begin
  RefreshAttachments;
end;

procedure TdmTMMigration.qryWorksAfterOpen(DataSet: TDataSet);
begin
  RefreshWorks
end;

procedure TdmTMMigration.qryWorksAfterScroll(DataSet: TDataSet);
begin
  RefreshWorks
end;

procedure TdmTMMigration.RefreshAttachments;
begin
  qryDocAttachments.Close;
  qryDocAttachments.ParambyName('id').AsInteger := qryDocHeadsid.AsInteger;
  qryDocAttachments.Open;
end;

procedure TdmTMMigration.RefreshWorks;
begin
  qryWorkAttachments.Close;
  qryWorkAttachments.ParambyName('id').AsInteger := qryDocHeadsid.AsInteger;
  qryWorkAttachments.Open;
end;

initialization

finalization

end.
