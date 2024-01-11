unit uframePrintWarehouseReceipts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, udmJanuaPgDocumentsStorage, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, JvExControls, JvDBLookup;

type
  TframePrintWarehouseReceipts = class(TFrame)
    btnStartTest: TButton;
    DBGrid1: TDBGrid;
    grdRows: TDBGrid;
    dsHeads: TDataSource;
    dsRows: TDataSource;
    dsVAT: TDataSource;
    DBGrid3: TDBGrid;
    DBNavigator1: TDBNavigator;
    btnPrint: TButton;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    Edit1: TEdit;
    DBNavigator2: TDBNavigator;
    btnEditDocument: TButton;
    btnAddDocument: TButton;
    dsDocumentTypes: TDataSource;
    btnDel: TButton;
    DBMemo3: TDBMemo;
    DBNavigator3: TDBNavigator;
    procedure btnPrintClick(Sender: TObject);
    procedure btnStartTestClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    FdmPgDocumentsStorage: TdmJanuaPgDocumentsStorage;
    procedure SetdmPgDocumentsStorage(const Value: TdmJanuaPgDocumentsStorage);
    procedure PrintInvoice;
    procedure PrintWarehouseReceipt;
  public
    { Public declarations }
    property dmPgDocumentsStorage: TdmJanuaPgDocumentsStorage read FdmPgDocumentsStorage write SetdmPgDocumentsStorage;
  end;

implementation

uses System.Strutils, System.Math,
  // Janua
  Janua.Core.AsyncTask, Janua.Vcl.Framework, Janua.Orm.UniDac, Janua.Core.Types, Janua.Orm.Types,
  Janua.Application.Framework,
  uqrpInvoice, uqrpTMWarehouseReceipt;

{$R *.dfm}

procedure TframePrintWarehouseReceipts.btnPrintClick(Sender: TObject);
begin
  // if FdmPgDocumentsStorage.qryDocHeadstype_id.AsInteger = 20 then
  PrintWarehouseReceipt
  // else
  // PrintInvoice;
end;

procedure TframePrintWarehouseReceipts.btnStartTestClick(Sender: TObject);
begin
  FdmPgDocumentsStorage := TdmJanuaPgDocumentsStorage.Create(self);
  FdmPgDocumentsStorage.DocTypeID := 20;
  TJanuaApplication.DBSchemaID := 33;
  dsHeads.DataSet := FdmPgDocumentsStorage.qryDocHeads;
  dsRows.DataSet := FdmPgDocumentsStorage.qryDocRows;
  dsVAT.DataSet := FdmPgDocumentsStorage.qryVatAmounts;
  dsDocumentTypes.DataSet := FdmPgDocumentsStorage.qryDocType;
  FdmPgDocumentsStorage.MainSearchText := '';
  FdmPgDocumentsStorage.qryDocHeads.Open;
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
  FdmPgDocumentsStorage.qryDocType.Open;
  Edit1.Enabled := True;
end;

procedure TframePrintWarehouseReceipts.Edit1Change(Sender: TObject);
var
  lSearchString: string;
begin
  if Edit1.Enabled then
  begin
    if Length(Edit1.Text) >= 2 then
    begin
      Async.Run<Boolean>(
        function: Boolean
        begin
          if Assigned(self) then
          begin
            // This is the "background" anonymous method. Runs in the
            // background thread, and its result is passed
            // to the "success" callback.
            // In this case the result is a String.
            try
              MonitorEnter(self, 1000);
              try
                lSearchString := QuotedStr('%' + IfThen(Edit1.Text <> '', UpperCase(Edit1.Text) + '%', ''));
                FdmPgDocumentsStorage.qryDocHeads.Filter := ('search_index like' + lSearchString);
                FdmPgDocumentsStorage.qryDocHeads.Filtered := True;
              finally
                System.TMonitor.Exit(self);
              end
            except
              on e: exception do
                RaiseException('Edit1Change', e, self, 'search_index like' + lSearchString);
            end;
          end
        end,
        procedure(const aValue: Boolean)
        begin
          // This is the "success" callback. Runs in the UI thread and
          // gets the result of the "background" anonymous method.
          // TMonitor.Exit(self);
        end,
        procedure(const Ex: exception)
        begin
          // This is the "error" callback.
          // Runs in the UI thread and is called only if the
          // "background" anonymous method raises an exception.
          raise exception.Create('Incremental Search Error. ' + Ex.Message);
        end);
    end
    else
      FdmPgDocumentsStorage.qryDocHeads.Filtered := False;
  end;
end;

procedure TframePrintWarehouseReceipts.PrintInvoice;
var
  dm: TdmJanuaPgDocumentsStorage;
  qr: TqrpInvoice;
begin
  dm := FdmPgDocumentsStorage;
  qr := TqrpInvoice.Create(self);
  try
    qr.Head := dm.qryDocHeads;
    qr.Rows := dm.qryDocRows;
    qr.VatRows := dm.qryVatAmounts;
    qr.rpInvoice.Preview;
  finally
    qr.Free;
  end;

end;

procedure TframePrintWarehouseReceipts.PrintWarehouseReceipt;
var
  dm: TdmJanuaPgDocumentsStorage;
  qr: TqrpTMWarehouseReceipt;
begin
  dm := FdmPgDocumentsStorage;
  qr := TqrpTMWarehouseReceipt.Create(self);
  try
    qr.InternalPrint := MessageDlg('Print Internal Document? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes;
    qr.Head := dm.qryDocHeads;
    qr.Rows := dm.qryDocRows;
    {
      qr.VatRows := dm.qryVatAmounts;
    }
    qr.rpTMWarehouseReceipt.Preview;

  finally
    qr.Free;
  end;

end;

procedure TframePrintWarehouseReceipts.SetdmPgDocumentsStorage(const Value: TdmJanuaPgDocumentsStorage);
begin
  FdmPgDocumentsStorage := Value;
end;

end.
