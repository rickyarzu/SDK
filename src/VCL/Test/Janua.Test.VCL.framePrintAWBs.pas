unit Janua.Test.VCL.framePrintAWBs;

interface

{$I JANUACORE.INC}

uses
  // Windows / System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Data.DB,
  Spring.Collections, System.Json, System.Types, System.UITypes,
  // Janua
  Janua.Logistic.PgAWBStorage, uJanuaVCLFrame,
  // SDK
  {Janua.Bindings.Impl,} Janua.Bindings.Intf,
  Janua.Controls.Forms.Intf, Janua.Controls.Intf, Janua.Core.Types, Janua.Core.Classes.Intf,
  // VCL
  VCL.StdCtrls, VCL.Controls, VCL.Forms, VCL.Mask, VCL.DBCtrls, VCL.ExtCtrls, VCL.Grids, VCL.DBGrids,
  // Interposers
  Janua.VCL.Interposers, Vcl.Buttons;

type
  TframeTestPrintAWBs = class(TJanuaVCLFrameModel, IJanuaContainer, IJanuaBindable)
    btnStartTest: TButton;
    DBGrid1: TDBGrid;
    grdRows: TDBGrid;
    DBNavigator1: TDBNavigator;
    btnPrint: TButton;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    Edit1: TEdit;
    DBMemo2: TDBMemo;
    DBNavigator2: TDBNavigator;
    btnEditDocument: TButton;
    btnAddDocument: TButton;
    btnDel: TButton;
    DBMemo3: TDBMemo;
    dsHeads: TDataSource;
    dsRows: TDataSource;
    dsSurcharges: TDataSource;
    dsDocumentTypes: TDataSource;
    DBGrid2: TDBGrid;
    procedure btnStartTestClick(Sender: TObject);
  private
    FdmPgAWBStorage: TdmPgAWBsStorage;
    procedure SetdmPgAWBStorage(const Value: TdmPgAWBsStorage);
    { Private declarations }
  public
    { Public declarations }
    property dmPgAWBStorage: TdmPgAWBsStorage read FdmPgAWBStorage write SetdmPgAWBStorage;
  end;

implementation

uses System.Strutils, System.Math,
  // Janua
  Janua.Core.AsyncTask, Janua.VCL.Framework, Janua.Orm.UniDac, Janua.Orm.Types,
  Janua.Application.Framework,
  uqrpInvoice, uqrpTMWarehouseReceipt;

{$R *.dfm}

procedure TframeTestPrintAWBs.btnStartTestClick(Sender: TObject);
begin
  FdmPgAWBStorage := TdmPgAWBsStorage.Create(self);
  TJanuaApplication.DBSchemaID := 33;
  dsHeads.DataSet := FdmPgAWBStorage.qryAWBs;
  dsRows.DataSet := FdmPgAWBStorage.qryAWBRows;
  dsSurcharges.DataSet := FdmPgAWBStorage.qryAWBSurcharges;
  dsDocumentTypes.DataSet := FdmPgAWBStorage.qryLkpAWBCodes;
  (*
    FdmPgAWBStorage.MainSearchText := '';
    FdmPgAWBStorage.qryDocHeads.Open;
  *)
  btnPrint.Images := TJanuaVCLApplication.FontVCLIcons24;
  btnPrint.imageIndex := 6;
  btnPrint.Enabled := True;
  btnDel.Images := TJanuaVCLApplication.FontVCLIcons24;
  btnDel.imageIndex := 5;
  btnDel.Enabled := True;
  btnEditDocument.Images := TJanuaVCLApplication.FontVCLIcons24;
  btnEditDocument.imageIndex := 1;
  btnEditDocument.Enabled := True;
  btnAddDocument.Images := TJanuaVCLApplication.FontVCLIcons24;
  btnAddDocument.imageIndex := 0;
  btnAddDocument.Enabled := True;
  FdmPgAWBStorage.qryAWBs.Open;
  FdmPgAWBStorage.qryAWBRows.Open;
  FdmPgAWBStorage.qryAWBSurcharges.Open;
  Edit1.Enabled := True;
end;

procedure TframeTestPrintAWBs.SetdmPgAWBStorage(const Value: TdmPgAWBsStorage);
begin
  FdmPgAWBStorage := Value;
end;

end.
