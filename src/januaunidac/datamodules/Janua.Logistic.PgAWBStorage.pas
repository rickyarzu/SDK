unit Janua.Logistic.PgAWBStorage;

interface

uses
  System.SysUtils, System.Classes,
  // UniDAC
  UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni, MemDS,
  // Januaproject
  udmPgStorage, Janua.Logistic.AWB.Model.Impl, Janua.Logistic.AWB.ViewModel.Intf, VirtualTable,
  Janua.Unidac.Connection;

type
  /// <summary>
  /// Generic Anagraph Module that contains all anagraphs in one specific
  /// schema in database.
  /// </summary>
  TdmPgAWBsStorage = class(TdmPgStorage)
    qryAWBs: TUniQuery;
    qryAWBRows: TUniQuery;
    qryAWBsyear: TWideStringField;
    qryAWBsoffice_id: TIntegerField;
    qryAWBsid: TLargeintField;
    qryAWBscode: TWideStringField;
    qryAWBsdb_schema_id: TIntegerField;
    qryAWBsfield1a: TWideStringField;
    qryAWBsfield1b: TWideStringField;
    qryAWBsfield1c: TWideStringField;
    qryAWBscin: TFloatField;
    qryAWBsfield2: TWideStringField;
    qryAWBsfield21: TWideStringField;
    qryAWBsfield22: TWideStringField;
    qryAWBsfield23: TWideStringField;
    qryAWBsfield3: TWideStringField;
    qryAWBsfield31: TWideStringField;
    qryAWBsfield32: TWideStringField;
    qryAWBsfield33: TWideStringField;
    qryAWBsfield4a: TWideStringField;
    qryAWBsfield4b: TWideStringField;
    qryAWBsfield4c: TWideStringField;
    qryAWBsfield4c2: TWideStringField;
    qryAWBsfield4c3: TWideStringField;
    qryAWBsfield5: TWideStringField;
    qryAWBsfield6: TWideMemoField;
    qryAWBsfield7: TWideMemoField;
    qryAWBsfield8: TWideStringField;
    qryAWBsfield8a: TWideStringField;
    qryAWBsfield8b: TWideStringField;
    qryAWBsfield8c: TWideStringField;
    qryAWBsfield8d: TWideStringField;
    qryAWBsfield8c1: TWideStringField;
    qryAWBsfield8d1: TWideStringField;
    qryAWBsfield8e: TWideStringField;
    qryAWBsfield8f: TWideStringField;
    qryAWBsfield8f1: TDateTimeField;
    qryAWBsfield9: TWideStringField;
    qryAWBsfield10: TWideStringField;
    qryAWBsfield11: TWideStringField;
    qryAWBsfield12: TWideStringField;
    qryAWBsfield13: TWideStringField;
    qryAWBsfield14: TWideStringField;
    qryAWBsfield15: TWideStringField;
    qryAWBsfield16: TWideStringField;
    qryAWBsfield17: TWideStringField;
    qryAWBsfield28a: TFloatField;
    qryAWBsfield28b: TFloatField;
    qryAWBsfield29a: TFloatField;
    qryAWBsfield29b: TFloatField;
    qryAWBsfield30a: TFloatField;
    qryAWBsfield30b: TFloatField;
    qryAWBsfield31a: TFloatField;
    qryAWBsfield31b: TFloatField;
    qryAWBsfield32a: TFloatField;
    qryAWBsfield32b: TFloatField;
    qryAWBsfield33a: TFloatField;
    qryAWBsfield33b: TFloatField;
    qryAWBsfield34: TWideStringField;
    qryAWBsfield35: TWideStringField;
    qryAWBsfield36: TWideStringField;
    qryAWBsfield37: TWideStringField;
    qryAWBsfield38: TWideStringField;
    qryAWBshi1: TWideStringField;
    qryAWBshi2: TWideStringField;
    qryAWBshi3: TWideStringField;
    qryAWBscodother1: TWideStringField;
    qryAWBscodother2: TWideStringField;
    qryAWBscodother3: TWideStringField;
    qryAWBscodother4: TWideStringField;
    qryAWBscodother5: TWideStringField;
    qryAWBscodother6: TWideStringField;
    qryAWBscodother7: TWideStringField;
    qryAWBscodother8: TWideStringField;
    qryAWBscodother9: TWideStringField;
    qryAWBsamountother9: TFloatField;
    qryAWBsamountother8: TFloatField;
    qryAWBsamountother7: TFloatField;
    qryAWBsamountother6: TFloatField;
    qryAWBsamountother5: TFloatField;
    qryAWBsamountother4: TFloatField;
    qryAWBsamountother3: TFloatField;
    qryAWBsamountother2: TFloatField;
    qryAWBsamountother1: TFloatField;
    qryAWBsfieldhead: TWideStringField;
    qryAWBspartialmaster: TIntegerField;
    qryAWBspartialmasteryear: TWideStringField;
    qryAWBscurrency_id: TSmallintField;
    qryAWBsawb_type_id: TSmallintField;
    qryAWBsjguid: TGuidField;
    qryAWBsnetamount: TFloatField;
    qryAWBsprogressive: TFloatField;
    qryAWBsmawbcosts: TFloatField;
    qryAWBsmawbothcosts: TFloatField;
    qryAWBstaxableweight: TFloatField;
    qryAWBsmasterdate: TDateTimeField;
    qryAWBsestimateflight: TWideStringField;
    qryAWBseffectiveflight: TWideStringField;
    qryAWBsetdestimate: TDateTimeField;
    qryAWBsetdeffective: TDateTimeField;
    qryAWBsetaestimate: TDateTimeField;
    qryAWBsetaeffective: TDateTimeField;
    qryAWBstransportcost: TFloatField;
    qryAWBscontainerseals: TWideStringField;
    qryAWBsmasternotes: TWideStringField;
    qryAWBsawb_type: TWideStringField;
    qryAWBsorder_id: TLargeintField;
    qryAWBscustoms_doc_type: TWideStringField;
    qryAWBspalletcost: TFloatField;
    qryAWBsyear_number: TSmallintField;
    qryAWBsfield19a: TWideStringField;
    qryAWBsbranchlog: TWideStringField;
    qryAWBsdeleted: TBooleanField;
    qryLkpAWBCodes: TUniQuery;
    qryLkpAWBCodescode: TWideStringField;
    qryLkpAWBCodestype: TWideStringField;
    qryLkpAWBCodesamount: TFloatField;
    qryLkpAWBCodesdescription: TWideStringField;
    qryLkpAWBCodeshouse: TBooleanField;
    qryLkpAWBCodesjguid: TGuidField;
    vtAWBCodes: TVirtualTable;
    qryAWBSurcharges: TUniQuery;
    qryAWBSurchargesawb_id: TLargeintField;
    qryAWBSurchargesjguid: TGuidField;
    qryAWBSurchargescode: TWideStringField;
    qryAWBSurchargesposition: TSmallintField;
    qryAWBSurchargesamount: TCurrencyField;
    qryAWBSurchargeslkpAWBSurcharges: TStringField;
    vtAWBSurcharges: TVirtualTable;
    vtAWBSurchargesawb_id: TLargeintField;
    vtAWBSurchargesjguid: TGuidField;
    vtAWBSurchargescode: TWideStringField;
    vtAWBSurchargesposition: TSmallintField;
    vtAWBSurchargesamount: TCurrencyField;
    vtAWBSurchargeslkpAWBSurcharges: TStringField;
    qryAWBRowsid: TLargeintField;
    qryAWBRowsawb_id: TLargeintField;
    qryAWBRowsrow_pos: TSmallintField;
    qryAWBRowsfield19a: TIntegerField;
    qryAWBRowsfield20a: TFloatField;
    qryAWBRowsfield21: TWideStringField;
    qryAWBRowsfield22: TWideStringField;
    qryAWBRowsfield23: TWideStringField;
    qryAWBRowsfield24: TCurrencyField;
    qryAWBRowsfield25: TCurrencyField;
    qryAWBRowsfield26a: TCurrencyField;
    qryAWBRowsfield27: TWideStringField;
    qryAWBRowsjguid: TGuidField;
    qryAWBRowsdb_schema_id: TIntegerField;
    qryAWBRowsdeleted: TBooleanField;
    qryAWBscalc_field2: TWideStringField;
    dsVtAWBs: TDataSource;
    procedure qryAWBsAfterOpen(DataSet: TDataSet);
    procedure qryAWBsCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshDetails; override;
  end;

  TJanuaPgAWBsDataModule = class(TJanuaCustomLogisticAWBDataModule, IJanuaLogisticAWBsDataModule)
  private
    { Private declarations }
    FDM: TdmPgAWBsStorage;
  strict protected
    procedure GetInternalCreate; override;
    { Private declarations }
  public
    { Public declarations }
  public
    destructor Destroy; override;
    constructor Create; override;
  end;

var
  dmPgAWBsStorage: TdmPgAWBsStorage;

implementation

uses Janua.Orm.UniDac, Janua.Core.Types, Janua.Orm.Types, Janua.Application.Framework;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TJanuaPgAWBsDataModule }

constructor TJanuaPgAWBsDataModule.Create;
begin
  inherited;

end;

destructor TJanuaPgAWBsDataModule.Destroy;
begin
  if Assigned(self.FDM) then
    FreeAndNil(FDM);
  inherited;
end;

procedure TJanuaPgAWBsDataModule.GetInternalCreate;
begin
  FInternalCreate := procedure
    begin
      try
        FDM := TdmPgAWBsStorage.Create(nil);
        jdsAWBs := TJanuaPgDataset.Create(FDM.qryAWBs, [TJanuaEntity.DocHeads]);
        jdsAWBRows := TJanuaPgDataset.Create(FDM.qryAWBRows, [TJanuaEntity.DocRows]);
        jdsAWBCodes := TJanuaPgDataset.Create(FDM.qryLkpAWBCodes, [TJanuaEntity.AnagraphAnagraphs]);
      except
        on e: exception do
          RaiseException('FInternalCreate', e, self);
      end;
    end;

end;

procedure TdmPgAWBsStorage.qryAWBsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if not LazyLoading then
    RefreshDetails;
end;

procedure TdmPgAWBsStorage.qryAWBsCalcFields(DataSet: TDataSet);
var
  aBuilder: TStringBuilder;
begin
  inherited;
  aBuilder := TStringBuilder.Create;
  try
    if qryAWBsfield2.AsWideString <> '' then
      aBuilder.AppendLine(qryAWBsfield2.AsWideString);
    if qryAWBsfield21.AsWideString <> '' then
      aBuilder.AppendLine(qryAWBsfield21.AsWideString);
    if qryAWBsfield22.AsWideString <> '' then
      aBuilder.AppendLine(qryAWBsfield22.AsWideString);
    if qryAWBsfield23.AsWideString <> '' then
      aBuilder.AppendLine(qryAWBsfield23.AsWideString);
    qryAWBscalc_field2.Value := aBuilder.ToString;
  finally
    aBuilder.Free;
  end;
end;

procedure TdmPgAWBsStorage.RefreshDetails;
begin
  inherited;
  qryAWBRows.Close;
  qryAWBRows.ParambyName('id').AsLargeInt := qryAWBsid.AsLargeInt;
  qryAWBRows.Open;
  // qryAWBSurcharges
  qryAWBSurcharges.Close;
  qryAWBSurcharges.ParambyName('id').AsLargeInt := qryAWBsid.AsLargeInt;
  qryAWBSurcharges.Open;
end;

end.
