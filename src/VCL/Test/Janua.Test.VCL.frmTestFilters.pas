unit Janua.Test.VCL.frmTestFilters;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid,
  Janua.Vcl.EnhCRDBGrid, MemDS, VirtualTable, DBAccess, Uni, Vcl.ExtCtrls, Vcl.DBCtrls,
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLForm, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Bindings.Intf, Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf,
  Janua.Vcl.Controls.FrameSelectModel, Janua.Vcl.Controls.SearchSelect, Spring.Collections,
  // Interposers
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, Janua.Search.ViewModels.Engines.Intf,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, Janua.Vcl.EnhDBGrid,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls,
  // Janua.TMS.Interposers
  Janua.Vcl.Interposers, Janua.TMS.Interposers;

type
  TfrmVCLTestFilters = class(TJanuaVCLFormModel, IJanuaForm, IJanuaContainer, IJanuaBindable)
    pgTestsAndDemos: TPageControl;
    tsTestFiredacFilters: TTabSheet;
    pnlFilters: TPanel;
    vtDocHeads: TFDMemTable;
    vtDocHeadsid: TLargeintField;
    vtDocHeadstype_id: TSmallintField;
    vtDocHeadsin_out: TSmallintField;
    vtDocHeadsdoc_date: TDateField;
    vtDocHeadsdoc_number: TWideStringField;
    vtDocHeadsreason: TSmallintField;
    vtDocHeadsdest_address: TWideStringField;
    vtDocHeadsdest_postal_code: TWideStringField;
    vtDocHeadsdest_town: TWideStringField;
    vtDocHeadsdest_state_province: TWideStringField;
    vtDocHeadsdest_country_iso: TWideStringField;
    vtDocHeadsdeparture_date: TDateField;
    vtDocHeadsdelivery_methos: TWideStringField;
    vtDocHeadsgoods_description: TWideStringField;
    vtDocHeadspackages_number: TSmallintField;
    vtDocHeadstotal_weight: TFloatField;
    vtDocHeadsincoterms: TWideStringField;
    vtDocHeadsdelivery_charges: TFloatField;
    vtDocHeadsdiscount_rate: TFloatField;
    vtDocHeadsanagraph_id: TIntegerField;
    vtDocHeadscarrier_id: TIntegerField;
    vtDocHeadsdest_state_province_id: TIntegerField;
    vtDocHeadsdest_region_id: TIntegerField;
    vtDocHeadsdest_town_id: TIntegerField;
    vtDocHeadscurrency_id: TSmallintField;
    vtDocHeadspayment_terms_id: TSmallintField;
    vtDocHeadspayment_terms_des: TWideStringField;
    vtDocHeadspackage_description: TWideStringField;
    vtDocHeadspayment_term_code: TWideStringField;
    vtDocHeadsfolder_id: TLargeintField;
    vtDocHeadsdoc_state: TSmallintField;
    vtDocHeadsholder_name: TWideStringField;
    vtDocHeadsholder_id: TIntegerField;
    vtDocHeadsholder_vat_id: TWideStringField;
    vtDocHeadsholder_address: TWideStringField;
    vtDocHeadsholder_postal_code: TWideStringField;
    vtDocHeadsholder_town: TWideStringField;
    vtDocHeadsholder_state_province: TWideStringField;
    vtDocHeadsholder_country_iso: TWideStringField;
    vtDocHeadsdelivery_rate_expense: TFloatField;
    vtDocHeadsholder_group_id: TSmallintField;
    vtDocHeadsamount: TFloatField;
    vtDocHeadsnet_amount: TFloatField;
    vtDocHeadsfinancial_year: TWideStringField;
    vtDocHeadsdoc_origin_id: TFloatField;
    vtDocHeadsdelivery_vat_id: TSmallintField;
    vtDocHeadsdelivery_vat_rate: TFloatField;
    vtDocHeadsaccounted: TBooleanField;
    vtDocHeadsinsert_date: TDateField;
    vtDocHeadsupdate_date: TDateField;
    vtDocHeadsdelivery_due_date: TDateField;
    vtDocHeadssent: TBooleanField;
    vtDocHeadsarrival_date: TDateField;
    vtDocHeadspayment_due_date: TDateField;
    vtDocHeadsduties: TFloatField;
    vtDocHeadspaid: TBooleanField;
    vtDocHeadsdoc_fine: TFloatField;
    vtDocHeadsuser_insert: TIntegerField;
    vtDocHeadsuser_update: TIntegerField;
    vtDocHeadsdoc_year: TFloatField;
    vtDocHeadspo_number_id: TLargeintField;
    vtDocHeadspo_number: TWideStringField;
    vtDocHeadsprinted: TBooleanField;
    vtDocHeadscontact_name: TWideStringField;
    vtDocHeadscontact_email: TWideStringField;
    vtDocHeadscontact_phone: TWideStringField;
    vtDocHeadsoffice_id: TIntegerField;
    vtDocHeadswarehouse_location_id: TIntegerField;
    vtDocHeadsjguid: TGuidField;
    vtDocHeadsnotes1: TWideMemoField;
    vtDocHeadsnotes2: TWideMemoField;
    vtDocHeadsnotes3: TWideMemoField;
    vtDocHeadsdb_schema_id: TIntegerField;
    vtDocHeadspurchase_order_number: TWideStringField;
    vtDocHeadscustom_field_1: TWideStringField;
    vtDocHeadscustom_field_2: TWideStringField;
    vtDocHeadscustom_field_3: TWideStringField;
    vtDocHeadscustom_int_1: TIntegerField;
    vtDocHeadscustom_int_2: TIntegerField;
    vtDocHeadscustom_int_3: TIntegerField;
    vtDocHeadsdoc_ref_code: TWideStringField;
    vtDocHeadscarrier_expenses: TFloatField;
    vtDocHeadsregistry_code: TWideStringField;
    vtDocHeadscarrier_tracking_number: TWideStringField;
    vtDocHeadscarrier_expenses_currency_id: TSmallintField;
    vtDocHeadssearch_index: TWideStringField;
    vtDocHeadsdest_name: TWideStringField;
    vtDocHeadscarrier_name: TWideStringField;
    vtDocHeadslocation_name: TWideStringField;
    vtDocHeadsgoods_type_id: TSmallintField;
    vtDocHeadsimportexport: TSmallintField;
    vtDocHeadscarrier_invoice_number: TWideStringField;
    vtDocHeadscarrier_invoice_date: TDateField;
    vtDocHeadsworkflow_id: TLargeintField;
    vtDocHeadsvessel_department_id: TSmallintField;
    vtDocHeadspayment_term_id: TSmallintField;
    vtDocHeadsan_code: TWideStringField;
    vtDocHeadsref_date: TDateField;
    vtDocHeadsref_code: TWideStringField;
    vtDocHeadsstamp_duty: TCurrencyField;
    vtDocHeadsexchange_rate: TFloatField;
    vtDocHeadsconversion_date: TDateField;
    vtDocHeadswork_code: TWideStringField;
    vtDocHeadswork_date: TDateField;
    vtDocHeadsdeleted: TBooleanField;
    vtDocHeadsdest_vat_number: TWideStringField;
    vtDocHeadsholder_vat_number: TWideStringField;
    vtDocHeadscurrency_code: TWideStringField;
    vtDocHeadscurrency_description: TWideMemoField;
    vtDocHeadstaxable_amount: TCurrencyField;
    vtDocHeadsvat_taxes: TCurrencyField;
    vtDocHeadsindex_guid: TStringField;
    dsDocHeads: TDataSource;
    grdVtDocHeads: TEnhDBGrid;
    btnTestFiredac: TButton;
    btnFilterFiredac: TButton;
    pnlFireDACFilter: TPanel;
    memFilterFireDAC: TMemo;
    tsFiredacAutoFilters: TTabSheet;
    pnlFiredacAuto: TPanel;
    btnTestFireDacAuto: TButton;
    btn2: TButton;
    EnhDBGrid1: TEnhDBGrid;
    memFireDACAutoFilters: TMemo;
    procedure btnFilterFiredacClick(Sender: TObject);
    procedure btnTestFireDacAutoClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnTestFiredacClick(Sender: TObject);
  private
    { Private declarations }
    FvtDocHeads: IJanuaDBDataset;
    FPanel: TPanel;
    lLeft: integer;
    FFrames: IList<TframSelectModel>;
    procedure AddFrame(const aFrame: TframSelectModel; aField: IJanuaField);
  public
    { Public declarations }
  end;

var
  frmVCLTestFilters: TfrmVCLTestFilters;

implementation

uses Janua.Orm.Firedac, Janua.Orm.Types, Janua.Application.Framework, Janua.Orm.Impl,
  // Testing Frames:
  Janua.Vcl.Controls.DateSelect, Janua.Vcl.Controls.IntegerSelect, Janua.Vcl.Controls.ComboSelect,
  Janua.Vcl.Controls.RadioGroup, Janua.Vcl.Controls.FloatSelect, Janua.Vcl.Controls.BoolSelect,
  Janua.Vcl.Controls.StringSelect;

{$R *.dfm}

procedure TfrmVCLTestFilters.AddFrame(const aFrame: TframSelectModel; aField: IJanuaField);
begin
  if not Assigned(FFrames) then
    FFrames := TCollections.CreateList<TframSelectModel>;
  FFrames.Add(aFrame);
  aFrame.Name := aFrame.ClassName + FFrames.Count.ToString;
  aFrame.Visible := False;
  aFrame.Parent := FPanel;
  aFrame.JanuaField := aField;
  aFrame.Visible := True;
  aFrame.Left := lLeft;
  lLeft := aFrame.Left + aFrame.Width + 2;
  aFrame.Align := alLeft;
end;

procedure TfrmVCLTestFilters.btnFilterFiredacClick(Sender: TObject);
begin
  // if a Filter is Active then we can try to apply the filter to the Dataset
  FvtDocHeads.FilterParams.Activate;
  if FvtDocHeads.FilterParams.Active then
    FvtDocHeads.ApplyFilter;
  memFilterFireDAC.Lines.Add(FvtDocHeads.FilterParams.Text);
  memFilterFireDAC.Lines.Add(FvtDocHeads.DataSet.Filter);
end;

procedure TfrmVCLTestFilters.btnTestFireDacAutoClick(Sender: TObject);
var
  lField: IJanuaField;
  lFrame: TframSelectModel;
  lContainer: IJanuaSearchContainer;
  lAnagraphSearchContainer: IJanuaSearchAnagraphContainer;
  { The Container To be Test }
  lSearchListContainer: IJanuaSearchListContainer;
  lSearchRadioContainer: IJanuaSearchRadioContainer;
begin
  // FvtDocHeads := Janua.Orm.Firedac.TJanuaVtDataset.Create(vtDocHeads, [DocHeads]);
  FPanel := pnlFiredacAuto;
  if Assigned(FvtDocHeads) and (FvtDocHeads.FilterParams.OrderedList.Count > 0) then
    for lField in FvtDocHeads.FilterParams.OrderedList do
    begin
      if Assigned(lField.SearchContainer) then
      begin
        case lField.SearchContainer.ContainerType of
          jscLookupList:
            AddFrame(TframeComboSelect.Create(self), lField);
          jscRadioList:
            AddFrame(TframSelectRadioGroup.Create(self), lField);
          jscLookupDataset:
            ;
          jscSearchModel:
            AddFrame(TframeSearchSelect.Create(self), lField);
          jscStringList:
            ;
          jscRecordset:
            ;
        end
      end
      else
      begin
        case lField.FieldType of
          // TframeSelectFloat
          jptCurrency, jptExtended, jptFloat, jptSingle:
            AddFrame(TframeSelectFloat.Create(self), lField);
          // TframeSelectInteger
          jptCardinal, jptInteger, jptSmallint, jptWord, jptLargeInt, jptAutoInc, jptShortint:
            AddFrame(TframeSelectInteger.Create(self), lField);
          jptDateTime, jptDate:
            AddFrame(TJanuaVCLFrameDateSelect.Create(self), lField);
          jptString: // TframeSelectString
            AddFrame(TframeSelectString.Create(self), lField);
          jptFilename:
            ;
          // TframeSelectBool
          jptBoolean:
            AddFrame(TframeSelectBool.Create(self), lField);
        end;
      end;
    end;
end;

procedure TfrmVCLTestFilters.FormDestroy(Sender: TObject);
var
  aFrame: TframSelectModel;
begin
  aFrame := nil;
  if Assigned(FFrames) then
    FFrames.Clear;
end;

procedure TfrmVCLTestFilters.btnTestFiredacClick(Sender: TObject);
var
  lField: IJanuaField;
  lFrame: TframSelectModel;
  lContainer: IJanuaSearchContainer;
  lAnagraphSearchContainer: IJanuaSearchAnagraphContainer;
  { The Container To be Test }
  lSearchListContainer: IJanuaSearchListContainer;
  lSearchRadioContainer: IJanuaSearchRadioContainer;
begin
  FvtDocHeads := Janua.Orm.Firedac.TJanuaVtDataset.Create(vtDocHeads, [DocHeads]);
  FPanel := pnlFilters;

  // ID Search Equal Sample In this Case 'Key' and 'Field' are the same but Param Key can be different from Field Name
  lField := FvtDocHeads.FilterParams.AddParam('id', TJanuaFieldType.jptInteger, 0);
  lLeft := btnTestFiredac.Left + btnTestFiredac.Width + 2;
  lField.ParamOperator := TJanuaOperator.Equals;
  lField.DefaultValue := 0;
  lField.Title := 'ID Search';
  lField.DBField := 'id';
  lField.Active := False;
  AddFrame(TframeSelectInteger.Create(self), lField);

  lField := FvtDocHeads.FilterParams.AddParam('doc_date_from', TJanuaFieldType.jptDate, 0);
  lField.ParamOperator := TJanuaOperator.MoreThanEquals;
  lField.DefaultValue := Date;
  lField.Title := 'Since';
  lField.DBField := 'doc_date';
  lField.Active := False;

  AddFrame(TJanuaVCLFrameDateSelect.Create(self), lField);

  {
    lField := FvtDocHeads.FilterParams.AddParam('doc_date_to', TJanuaFieldType.jptDate, 0);
    lField.ParamOperator := TJanuaOperator.LessThanEquals;
    lField.DefaultValue := Date;
    lField.Title := 'Until';
    lField.DBField := 'doc_date';
    lField.Active := False;
    AddFrame(TJanuaVCLFrameDateSelect.Create(nil), lField);
  }

  // TframeSearchSelect
  lField := FvtDocHeads.FilterParams.AddParam('anagraph_id', TJanuaFieldType.jptInteger, 0);
  lField.ParamOperator := TJanuaOperator.Equals;
  lField.DefaultValue := 0;
  lField.Title := 'Customer ID';
  lField.DBField := 'anagraph_id';
  lField.Active := False;

  { class function TJanuaOrmFactory.TryGetContainer(const IID: TGUID; const aGroupID: Variant; aField: IJanuaField;
    out Intf): boolean; }
  TJanuaOrmFactory.TryGetContainer(IJanuaSearchAnagraphContainer, 13, lField, lAnagraphSearchContainer);
  // function Supports(const Instance: IInterface; const IID: TGUID; out Intf): Boolean;
  Assert(Supports(lAnagraphSearchContainer, IJanuaSearchContainer, lContainer), 'IJanuaSearchContainer not supported');
  Assert(Assigned(lField.SearchContainer), 'lField.SearchContainer');
  lAnagraphSearchContainer.Activate;
  AddFrame(TframeSearchSelect.Create(self), lField);

  lField := FvtDocHeads.FilterParams.AddParam('dest_town', TJanuaFieldType.jptString, '');
  lField.ParamOperator := TJanuaOperator.LikeUpper;
  lField.DefaultValue := '';
  lField.Title := 'Dest. Town';
  lField.DBField := 'dest_town';
  lField.Active := False;

  AddFrame(TframeSelectString.Create(nil), lField);

  // TframeSearchSelect
  lField := FvtDocHeads.FilterParams.AddParam('payment_term_code', TJanuaFieldType.jptString, 0);
  lField.ParamOperator := TJanuaOperator.Equals;
  lField.DefaultValue := 0;
  lField.Title := 'Payment Term';
  lField.DBField := 'payment_term_code';
  lField.Active := False;

  { class function TJanuaApplicationFactory.TryGetContainer(const IID: TGUID; const aGroupID: Variant; aField: IJanuaField;
    out Intf): boolean; }
  Assert(TJanuaOrmFactory.TryGetContainer(IJanuaSearchListContainer, -1, lField, lSearchListContainer),
    'IJanuaSearchListContainer not set');
  Assert(Assigned(lField.SearchContainer), 'lField.SearchContainer');
  lSearchListContainer.AddKeyValue('0', 'Not Set');
  lSearchListContainer.AddKeyValue('1', 'Rimessa Diretta');
  lSearchListContainer.AddKeyValue('41', 'Bank transfer 30 days End of month');
  lSearchListContainer.AddKeyValue('42', 'Bank transfer 30 days from inv. date');
  lField.SearchContainer.Activate;
  AddFrame(TframeComboSelect.Create(self), lField);

  // TframeSearchSelect
  lField := FvtDocHeads.FilterParams.AddParam('type_id', TJanuaFieldType.jptInteger, 0);
  lField.ParamOperator := TJanuaOperator.Equals;
  lField.DefaultValue := 0;
  lField.Title := 'Document Type';
  lField.DBField := 'type_id';
  lField.Active := False;

  // TJanuaApplicationFactory.RegisterContainer(IJanuaSearchRadioContainer, TJanuaSearchRadioContainer );
  { class function TJanuaApplicationFactory.TryGetContainer(const IID: TGUID; const aGroupID: Variant; aField: IJanuaField;
    out Intf): boolean; }
  Assert(TJanuaOrmFactory.TryGetContainer(IJanuaSearchRadioContainer, -1, lField, lSearchListContainer),
    'IJanuaSearchListContainer not set');
  Assert(Assigned(lField.SearchContainer), 'lField.SearchContainer');
  lSearchListContainer.AddKeyValue('0', 'All Docs');
  lSearchListContainer.AddKeyValue('16', 'Final Invoice');
  lSearchListContainer.AddKeyValue('2', 'Summary Invoice');
  lSearchListContainer.AddKeyValue('3', 'Credit Note');
  lField.SearchContainer.Activate;
  AddFrame(TframSelectRadioGroup.Create(self), lField);

  // ID Search Equal Sample In this Case 'Key' and 'Field' are the same but Param Key can be different from Field Name
  lField := FvtDocHeads.FilterParams.AddParam('amount', TJanuaFieldType.jptFloat, 0);
  lField.ParamOperator := TJanuaOperator.MoreThanEquals;
  lField.DefaultValue := 0.0;
  lField.Title := 'Minimum Amount';
  lField.DBField := 'amount';
  lField.Active := False;
  AddFrame(TframeSelectFloat.Create(self), lField);

  // ID Search Equal Sample In this Case 'Key' and 'Field' are the same but Param Key can be different from Field Name
  lField := FvtDocHeads.FilterParams.AddParam('deleted', TJanuaFieldType.jptBoolean, False);
  lField.ParamOperator := TJanuaOperator.Equals;
  lField.DefaultValue := False;
  lField.Title := 'Deleted';
  lField.DBField := 'deleted';
  lField.Active := False;
  AddFrame(TframeSelectBool.Create(self), lField);

  lField := nil;

  btnTestFiredac.Enabled := False;
end;

end.
