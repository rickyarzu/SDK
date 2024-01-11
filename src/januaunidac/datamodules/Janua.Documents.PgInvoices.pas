unit Janua.Documents.PgInvoices;

interface

uses
  System.SysUtils, System.Classes,
  // DB UniDAC
  Data.DB, DBAccess, Uni, MemDS, UniProvider, PostgreSQLUniProvider,
  // Januaproject
  Janua.Documents.Invoices.ViewModel.intf,
  udmJanuaPgDocumentsStorage, Janua.Core.Classes, Janua.Controls.Forms.intf, Janua.Core.Classes.intf,
  Janua.Bindings.intf, Janua.Controls.intf, Janua.Orm.intf, Janua.Orm.Types, Janua.Core.Types,
  Janua.Documents.Model.Impl, Janua.Documents.ViewModel.intf, FireDAC.Stan.intf, Janua.Unidac.Connection;

type
  TdmPgInvoicesStorage = class(TdmJanuaPgDocumentsStorage, IJanuaDataModule, IJanuaBindable)
    qryDocHeadscustomer_name: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshDetails; override;
  end;

  TJanuaPgInvoicesDataModule = class(TJanuaCustomDocumentDataModule, IJanuaInvoicesDataModule,
    IJanuaDocumentsDataModule)
  private
    { Private declarations }
    FDM: TdmPgInvoicesStorage;
  protected
    procedure GetInternalCreate; override;
    { Private declarations }
  public
    { Public declarations }
  public
    destructor Destroy; override;
    constructor Create; override;
  end;

var
  dmPgInvoicesStorage: TdmPgInvoicesStorage;

implementation

uses System.StrUtils, Janua.Orm.UniDac, Janua.Application.Framework, Janua.Uni.Virtual;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TJanuaPgInvoicesDataModule }

constructor TJanuaPgInvoicesDataModule.Create;
begin
  inherited;

end;

destructor TJanuaPgInvoicesDataModule.Destroy;
begin
  if Assigned(self.FDM) then
    FreeAndNil(FDM);
  inherited;
end;

procedure TJanuaPgInvoicesDataModule.GetInternalCreate;
begin
  FInternalCreate := procedure
    begin
      FDM := TdmPgInvoicesStorage.Create(nil);
      try
        SetMainDataModule(FDM);
        jdsDocCharges := TJanuaPgDataset.Create(FDM.qryDocCharges, [TJanuaEntity.DocHeads]);
        jdsDocHeads := TJanuaPgDataset.Create(FDM.qryDocHeads, [TJanuaEntity.DocHeads]);
        jdsDocRows := TJanuaPgDataset.Create(FDM.qryDocRows, [TJanuaEntity.DocRows]);
        jdsDocTypes := TJanuaPgDataset.Create(FDM.qryDocType, [TJanuaEntity.DocTypes]);
        jdsVatAmounts := TJanuaPgDataset.Create(FDM.qryVatAmounts, [TJanuaEntity.DocVatAmounts]);
        jdsDocAttachments := TJanuaPgDataset.Create(FDM.qryDocAttachments, [TJanuaEntity.DocAttachments]);
      except
        on e: exception do
          RaiseException('FInternalCreate', e, self);
      end;
    end;
end;

{ TdmPgInvoicesStorage }

procedure TdmPgInvoicesStorage.RefreshDetails;
begin
  inherited;

end;

end.
