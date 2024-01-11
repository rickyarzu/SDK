unit Janua.Documents.PgWHReceipts;

interface

uses
  System.SysUtils, System.Classes,
  // DB UniDAC
  Data.DB, DBAccess, Uni, MemDS, UniProvider, PostgreSQLUniProvider,
  // Januaproject
  Janua.Documents.WarehouseReceipts.ViewModel.intf,
  udmJanuaPgDocumentsStorage, Janua.Core.Classes, Janua.Controls.Forms.intf, Janua.Core.Classes.intf,
  Janua.Bindings.intf, Janua.Controls.intf, Janua.Orm.intf, Janua.Orm.Types, Janua.Core.Types,
  Janua.Documents.Model.Impl, Janua.Documents.ViewModel.intf;

type
  TdmJanuaPgWHReceiptsStorage = class(TdmJanuaPgDocumentsStorage, IJanuaDataModule, IJanuaBindable)
    procedure qryDocHeadsAfterScroll(DataSet: TDataSet);
    procedure qryDocHeadsBeforePost(DataSet: TDataSet);
    procedure qryDocRowsBeforePost(DataSet: TDataSet);
    procedure qryDocChargesBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshDetails; override;
  end;

  TJanuaPgWHReceiptsDataModule = class(TJanuaCustomDocumentDataModule, IJanuaWHReceiptsDataModule,
    IJanuaDocumentsDataModule)
  private
    { Private declarations }
    FDM: TdmJanuaPgWHReceiptsStorage;
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
  dmJanuaPgWHReceiptsStorage: TdmJanuaPgWHReceiptsStorage;

implementation

uses System.StrUtils, Janua.Orm.UniDac, Janua.Application.Framework, Janua.Uni.Virtual;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TJanuaPgWHReceiptsDataModule }

constructor TJanuaPgWHReceiptsDataModule.Create;
begin
  inherited;

end;

destructor TJanuaPgWHReceiptsDataModule.Destroy;
begin
  if Assigned(self.FDM) then
    FreeAndNil(FDM);
  inherited;
end;

procedure TJanuaPgWHReceiptsDataModule.GetInternalCreate;
begin
  FInternalCreate := procedure
    begin
      try
        FDM := TdmJanuaPgWHReceiptsStorage.Create(nil);
        SetMainDataModule(FDM);
        jdsDocHeads := TJanuaPgDataset.Create(FDM.qryDocHeads, [TJanuaEntity.DocHeads]);
        jdsDocRows := TJanuaPgDataset.Create(FDM.qryDocRows, [TJanuaEntity.DocRows]);
        jdsDocTypes := TJanuaPgDataset.Create(FDM.qryDocType, [TJanuaEntity.DocTypes]);
        jdsDocAttachments := TJanuaPgDataset.Create(FDM.qryDocAttachments, [TJanuaEntity.DocAttachments]);
        jdsDocCharges := TJanuaPgDataset.Create(FDM.qryDocCharges, [TJanuaEntity.DocHeads]);
        jdsVatAmounts := TJanuaPgDataset.Create(FDM.qryVatAmounts, [TJanuaEntity.DocVatAmounts]);
      except
        on e: exception do
          RaiseException('FInternalCreate', e, self);
      end;
    end;
end;


procedure TdmJanuaPgWHReceiptsStorage.qryDocHeadsAfterScroll(DataSet: TDataSet);
begin
  // At first inherited then should be extended
  inherited;
end;

procedure TdmJanuaPgWHReceiptsStorage.qryDocChargesBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryDocChargestype_id.AsInteger = 0 then
    qryDocChargestype_id.AsInteger := 4;
end;


procedure TdmJanuaPgWHReceiptsStorage.qryDocHeadsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryDocHeadsinventory.IsNull then
    qryDocHeadsinventory.AsBoolean := True;
end;

procedure TdmJanuaPgWHReceiptsStorage.qryDocRowsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryDocRowsitem_id.IsNull or (qryDocRowsitem_id.AsInteger = 0) then
    qryDocRowsitem_id.AsInteger := 3;
  if qryDocRowstype_id.IsNull or (qryDocRowstype_id.AsInteger = 0) then
    qryDocRowstype_id.AsInteger := 2;
end;

procedure TdmJanuaPgWHReceiptsStorage.RefreshDetails;
begin
  inherited;

end;

end.
