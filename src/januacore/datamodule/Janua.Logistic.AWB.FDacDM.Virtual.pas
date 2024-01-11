unit Janua.Logistic.AWB.FDacDM.Virtual;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  Janua.Core.DataModule, Janua.Core.Classes, Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf,
  Janua.Bindings.Intf, Janua.Controls.Intf, Janua.Orm.Intf, Janua.Orm.Types,
  // Class Januaprject
  Janua.Logistic.AWB.Model.Impl, Janua.Logistic.AWB.ViewModel.Intf,
  Janua.Search.ViewModels.Intf, Janua.Search.ViewModels.Engines.Impl, Janua.Anagraph.Model.Impl,
  Janua.Search.ViewModels.Engines.Intf, Janua.Anagraph.ViewModel.Intf, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Stan.StorageBin;

type
  TdmVirtualAWB = class(TJanuaCoreDataModule, IJanuaDataModule, IJanuaBindable)
    dsAWBSurcharges: TDataSource;
    dsAWBCodes: TDataSource;
    dsAWBRows: TDataSource;
    dsVtAWBs: TDataSource;
    fdmAWBRows: TFDMemTable;
    fdmAWBRowsid: TLargeintField;
    fdmAWBRowsawb_id: TLargeintField;
    fdmAWBRowsrow_pos: TSmallintField;
    fdmAWBRowsfield19a: TIntegerField;
    fdmAWBRowsfield20a: TFloatField;
    fdmAWBRowsfield21: TWideStringField;
    fdmAWBRowsfield22: TWideStringField;
    fdmAWBRowsfield23: TWideStringField;
    fdmAWBRowsfield24: TCurrencyField;
    fdmAWBRowsfield25: TCurrencyField;
    fdmAWBRowsfield26a: TCurrencyField;
    fdmAWBRowsfield27: TWideStringField;
    fdmAWBRowsjguid: TGuidField;
    fdmAWBRowsdb_schema_id: TIntegerField;
    fdmAWBRowsdeleted: TBooleanField;
    fdmAWBSurcharges: TFDMemTable;
    fdmAWBSurchargesawb_id: TLargeintField;
    fdmAWBSurchargesjguid: TGuidField;
    fdmAWBSurchargescode: TWideStringField;
    fdmAWBSurchargesposition: TSmallintField;
    fdmAWBSurchargesamount: TCurrencyField;
    fdmAWBCodes: TFDMemTable;
    fdmAWBCodescode: TWideStringField;
    fdmAWBCodestype: TWideStringField;
    fdmAWBCodesamount: TFloatField;
    fdmAWBCodesdescription: TWideStringField;
    fdmAWBCodeshouse: TBooleanField;
    fdmAWBCodesjguid: TGuidField;
    fdmAWBs: TFDMemTable;
    fdmAWBsyear: TWideStringField;
    fdmAWBsoffice_id: TIntegerField;
    fdmAWBsid: TLargeintField;
    fdmAWBscode: TWideStringField;
    fdmAWBsdb_schema_id: TIntegerField;
    fdmAWBsfield1a: TWideStringField;
    fdmAWBsfield1b: TWideStringField;
    fdmAWBsfield1c: TWideStringField;
    fdmAWBscin: TFloatField;
    fdmAWBsfield2: TWideStringField;
    fdmAWBsfield21: TWideStringField;
    fdmAWBsfield22: TWideStringField;
    fdmAWBsfield23: TWideStringField;
    fdmAWBsfield3: TWideStringField;
    fdmAWBsfield31: TWideStringField;
    fdmAWBsfield32: TWideStringField;
    fdmAWBsfield33: TWideStringField;
    fdmAWBsfield4a: TWideStringField;
    fdmAWBsfield4b: TWideStringField;
    fdmAWBsfield4c: TWideStringField;
    fdmAWBsfield4c2: TWideStringField;
    fdmAWBsfield4c3: TWideStringField;
    fdmAWBsfield5: TWideStringField;
    fdmAWBsfield6: TWideMemoField;
    fdmAWBsfield7: TWideMemoField;
    fdmAWBsfield8: TWideStringField;
    fdmAWBsfield8a: TWideStringField;
    fdmAWBsfield8b: TWideStringField;
    fdmAWBsfield8c: TWideStringField;
    fdmAWBsfield8d: TWideStringField;
    fdmAWBsfield8c1: TWideStringField;
    fdmAWBsfield8d1: TWideStringField;
    fdmAWBsfield8e: TWideStringField;
    fdmAWBsfield8f: TWideStringField;
    fdmAWBsfield8f1: TSQLTimeStampField;
    fdmAWBsfield9: TWideStringField;
    fdmAWBsfield10: TWideStringField;
    fdmAWBsfield11: TWideStringField;
    fdmAWBsfield12: TWideStringField;
    fdmAWBsfield13: TWideStringField;
    fdmAWBsfield14: TWideStringField;
    fdmAWBsfield15: TWideStringField;
    fdmAWBsfield16: TWideStringField;
    fdmAWBsfield17: TWideStringField;
    fdmAWBsfield28a: TFloatField;
    fdmAWBsfield28b: TFloatField;
    fdmAWBsfield29a: TFloatField;
    fdmAWBsfield29b: TFloatField;
    fdmAWBsfield30a: TFloatField;
    fdmAWBsfield30b: TFloatField;
    fdmAWBsfield31a: TFloatField;
    fdmAWBsfield31b: TFloatField;
    fdmAWBsfield32a: TFloatField;
    fdmAWBsfield32b: TFloatField;
    fdmAWBsfield33a: TFloatField;
    fdmAWBsfield33b: TFloatField;
    fdmAWBsfield34: TWideStringField;
    fdmAWBsfield35: TWideStringField;
    fdmAWBsfield36: TWideStringField;
    fdmAWBsfield37: TWideStringField;
    fdmAWBsfield38: TWideStringField;
    fdmAWBshi1: TWideStringField;
    fdmAWBshi2: TWideStringField;
    fdmAWBshi3: TWideStringField;
    fdmAWBscodother1: TWideStringField;
    fdmAWBscodother2: TWideStringField;
    fdmAWBscodother3: TWideStringField;
    fdmAWBscodother4: TWideStringField;
    fdmAWBscodother5: TWideStringField;
    fdmAWBscodother6: TWideStringField;
    fdmAWBscodother7: TWideStringField;
    fdmAWBscodother8: TWideStringField;
    fdmAWBscodother9: TWideStringField;
    fdmAWBsamountother9: TFloatField;
    fdmAWBsamountother8: TFloatField;
    fdmAWBsamountother7: TFloatField;
    fdmAWBsamountother6: TFloatField;
    fdmAWBsamountother5: TFloatField;
    fdmAWBsamountother4: TFloatField;
    fdmAWBsamountother3: TFloatField;
    fdmAWBsamountother2: TFloatField;
    fdmAWBsamountother1: TFloatField;
    fdmAWBsfieldhead: TWideStringField;
    fdmAWBspartialmaster: TIntegerField;
    fdmAWBspartialmasteryear: TWideStringField;
    fdmAWBscurrency_id: TSmallintField;
    fdmAWBsawb_type_id: TSmallintField;
    fdmAWBsjguid: TGuidField;
    fdmAWBsnetamount: TFloatField;
    fdmAWBsprogressive: TFloatField;
    fdmAWBsmawbcosts: TFloatField;
    fdmAWBsmawbothcosts: TFloatField;
    fdmAWBstaxableweight: TFloatField;
    fdmAWBsmasterdate: TSQLTimeStampField;
    fdmAWBsestimateflight: TWideStringField;
    fdmAWBseffectiveflight: TWideStringField;
    fdmAWBsetdestimate: TSQLTimeStampField;
    fdmAWBsetdeffective: TSQLTimeStampField;
    fdmAWBsetaestimate: TSQLTimeStampField;
    fdmAWBsetaeffective: TSQLTimeStampField;
    fdmAWBstransportcost: TFloatField;
    fdmAWBscontainerseals: TWideStringField;
    fdmAWBsmasternotes: TWideStringField;
    fdmAWBsawb_type: TWideStringField;
    fdmAWBsorder_id: TLargeintField;
    fdmAWBscustoms_doc_type: TWideStringField;
    fdmAWBspalletcost: TFloatField;
    fdmAWBsyear_number: TSmallintField;
    fdmAWBsfield19a: TWideStringField;
    fdmAWBsbranchlog: TWideStringField;
    fdmAWBsdeleted: TBooleanField;
    fdmAWBscarrier_id: TIntegerField;
    fdmAWBscarrier_name: TWideStringField;
    fdmAWBscarrier_code: TWideStringField;
    fdmAWBsshipper_id: TIntegerField;
    fdmAWBsshipper_code: TWideStringField;
    fdmAWBsshipper_name: TWideStringField;
    fdmAWBsconsignee_id: TIntegerField;
    fdmAWBsconsignee_name: TWideStringField;
    fdmAWBsconsignee_code: TWideStringField;
    fdmAWBsiata_agent_id: TIntegerField;
    fdmAWBsiata_agent_code: TIntegerField;
    fdmAWBsiata_agent_name: TWideStringField;
    fdmAWBsfield2_shipper_id: TIntegerField;
    fdmAWBsissuer_id: TIntegerField;
    fdmAWBsissuer_code: TWideStringField;
    fdmAWBsissuer_name: TWideStringField;
    fdmAWBsissuer_address: TWideStringField;
    fdmAWBsissuer_town_postal_code: TWideStringField;
    fdmAWBsissuer_vat_code: TWideStringField;
    fdmAWBsfield1b_airport_name: TWideStringField;
    fdmAWBshandling_information: TWideMemoField;
    fdmAWBsfield1b_location_name: TWideStringField;
    fdmAWBsfield8_location_name: TWideStringField;
    fdmAWBsfield8e_location_name: TWideStringField;
    fdmAWBsfield8a_location_name: TWideStringField;
    fdmAWBsfield8c_location_name: TWideStringField;
    fdmAWBsfield8c1_location_name: TWideStringField;
    fdmAWBssearch_index: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshDetails; override;
  end;

  TJanuaFDacMemAWBsDataModule = class(TJanuaCustomLogisticAWBDataModule, IJanuaLogisticAWBsDataModule)
  private
    { Private declarations }
    FDM: TdmVirtualAWB;
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
  dmVirtualAWB: TdmVirtualAWB;

implementation

uses Janua.Orm.Firedac, Janua.Core.Functions, Janua.Application.Framework;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TJanuaFDacMemAWBsDataModule }

constructor TJanuaFDacMemAWBsDataModule.Create;
begin
  inherited;

end;

destructor TJanuaFDacMemAWBsDataModule.Destroy;
begin

  inherited;
end;

procedure TJanuaFDacMemAWBsDataModule.GetInternalCreate;
begin
  FInternalCreate := procedure
    begin
      try
        FDM := TdmVirtualAWB.Create(nil);
        SetMainDataModule(FDM);
        jdsAWBs := TJanuaVtDataset.Create(FDM.fdmAWBs, [TJanuaEntity.DocHeads]);
        jdsAWBRows := TJanuaVtDataset.Create(FDM.fdmAWBRows, [TJanuaEntity.DocRows]);
        jdsAWBCodes := TJanuaVtDataset.Create(FDM.fdmAWBCodes, [TJanuaEntity.AnagraphAnagraphs]);
      except
        on e: Exception do
          RaiseException('FInternalCreate', e, self);
      end;
    end;
end;

{ TdmVirtualAWB }

procedure TdmVirtualAWB.RefreshDetails;
begin
  inherited;

end;

end.
