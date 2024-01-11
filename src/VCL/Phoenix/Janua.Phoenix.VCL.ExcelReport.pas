unit Janua.Phoenix.VCL.ExcelReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Data.DB, Bind.Components,

  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.ExtCtrls, VCL.DBCtrls, VCL.Grids, VCL.DBGrids,
  CRGrid, VCL.StdCtrls, VCL.Buttons, JvComponentBase, JvDBGridExport, AdvUtil, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, tmsAdvGridExcel, Janua.VCL.frameCRDBGrid, uJanuaVCLFrame, VCL.ExtDlgs, Janua.VCL.EnhCRDBGrid;

type
  TdlgExcelGridExporter = class(TForm)
    dsExcelExporter: TDataSource;
    pnlTop: TPanel;
    dbnExcelExporter: TDBNavigator;
    pnlBottom: TPanel;
    btnOK: TBitBtn;
    AdvGridExcelIO1: TAdvGridExcelIO;
    lbFileName: TLabel;
    DBAdvGrid1: TDBAdvGrid;
    frameVCLCRDBGrid: TframeVCLCRDBGrid;
    btnExcelExport: TButton;
    SaveDialog1: TSaveDialog;
    procedure btnOKClick(Sender: TObject);
    procedure btnExcelExportClick(Sender: TObject);
  private
    FFileName: TFileName;
    FDataset: TDataset;
    procedure SetFileName(const Value: TFileName);
    procedure SetDataset(const Value: TDataset);
    { Private declarations }
  public
    { Public declarations }
    property FileName: TFileName read FFileName write SetFileName;
    property Dataset: TDataset read FDataset write SetDataset;
    procedure Execute(const aFileName: string; const aDataset: TDataset);
  end;

var
  dlgExcelGridExporter: TdlgExcelGridExporter;

implementation

{$R *.dfm}

uses udmListaFilialiXLS, udmSVGImageList;
{ TdlgExcelGridExporter }

procedure TdlgExcelGridExporter.btnExcelExportClick(Sender: TObject);
begin
  if self.SaveDialog1.Execute() then
    AdvGridExcelIO1.XLSExport(SaveDialog1.FileName);
end;

procedure TdlgExcelGridExporter.btnOKClick(Sender: TObject);
begin
  Close;
end;

procedure TdlgExcelGridExporter.Execute(const aFileName: string; const aDataset: TDataset);
begin
  FileName := aFileName;
  ShowModal;
end;

procedure TdlgExcelGridExporter.SetDataset(const Value: TDataset);
begin
  FDataset := Value;
  dsExcelExporter.Dataset := FDataset;
end;

procedure TdlgExcelGridExporter.SetFileName(const Value: TFileName);
begin
  FFileName := Value;
  lbFileName.Caption := FFileName;
  SaveDialog1.FileName := FileName
end;

end.
