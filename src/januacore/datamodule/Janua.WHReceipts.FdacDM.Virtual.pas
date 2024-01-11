unit Janua.WHReceipts.FdacDM.Virtual;

interface

uses
  System.SysUtils, System.Classes,
  // UniDAC
  Data.DB,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  // Januaproject
  Janua.Documents.FdacDM.Virtual, Janua.Documents.WarehouseReceipts.ViewModel.intf,
  Janua.Core.DataModule, Janua.Core.Classes, Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf,
  Janua.Bindings.Intf, Janua.Controls.Intf, Janua.Orm.Intf, Janua.Orm.Types,
  Janua.Documents.Model.Impl, Janua.Documents.ViewModel.Intf, FireDAC.Stan.Intf;

type
  TdmVirtualWHReceipts = class(TdmVirtualDocuments, IJanuaDataModule, IJanuaBindable)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshDetails; override;
  end;

  TJanuaVirtualWHReceiptsDataModule = class(TJanuaCustomDocumentDataModule, IJanuaWHReceiptsDataModule, IJanuaDocumentsDataModule)
  private
    { Private declarations }
    FDM: TdmVirtualWHReceipts;
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
  dmVirtualWHReceipts: TdmVirtualWHReceipts;

implementation

uses Janua.Application.Framework, Janua.Orm.Impl, Janua.Orm.Firedac, Janua.Core.Types;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TJanuaVirtualWHReceiptsDataModule }

constructor TJanuaVirtualWHReceiptsDataModule.Create;
begin
  inherited;

end;

destructor TJanuaVirtualWHReceiptsDataModule.Destroy;
begin

  inherited;
end;

procedure TJanuaVirtualWHReceiptsDataModule.GetInternalCreate;
begin
  FInternalCreate := procedure
    begin
      FDM := nil;
      jdsDocHeads := nil;
      jdsDocRows := nil;
      jdsDocTypes := nil;
      jdsDocAttachments := nil;
      try
        FDM := TdmVirtualWHReceipts.Create(nil);
        SetMainDataModule(FDM);
        jdsDocHeads := TJanuaVtDataset.Create(FDM.vtDocHeads, [TJanuaEntity.DocHeads]);
        jdsDocHeads.AddParam('p_db_schema_id', TJanuaFieldType.jptInteger);
        jdsDocHeads.AddParam('p_search_name', TJanuaFieldType.jptString);
        jdsDocHeads.AddParam('P_group_id', TJanuaFieldType.jptInteger);
        jdsDocHeads.AddParam('p_doc_id', TJanuaFieldType.jptLargeInt);

        jdsDocRows := TJanuaVtDataset.Create(FDM.vtDocRows, [TJanuaEntity.DocRows]);
        jdsDocTypes := TJanuaVtDataset.Create(FDM.vtDocType, [TJanuaEntity.DocTypes]);
        jdsDocTypes.AddParam('p_db_schema_id', TJanuaFieldType.jptInteger);
        jdsDocAttachments := TJanuaVtDataset.Create(FDM.vtDocAttachments, [TJanuaEntity.DocAttachments]);
      except
        on e: Exception do
          RaiseException('FInternalCreate', e, self);
      end;
    end;
end;

{ TdmVirtualWHReceipts }

procedure TdmVirtualWHReceipts.RefreshDetails;
begin
  inherited;

end;

end.
