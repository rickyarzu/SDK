unit uExcelExport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, AdvEdit, AdvEdBtn, AdvDirectoryEdit,
  AdvMemo, Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid, AdvmSQLS, Vcl.Buttons, Vcl.DBCtrls;

type
  TfrmExcelExport = class(TForm)
    pnlConnect: TPanel;
    advDir: TAdvDirectoryEdit;
    edFile: TEdit;
    btnExecQuery: TButton;
    AdvMemo1: TAdvMemo;
    Splitter1: TSplitter;
    CRDBGrid1: TCRDBGrid;
    btnConnect: TButton;
    btnExport: TButton;
    DataSource1: TDataSource;
    AdvSQLMemoStyler1: TAdvSQLMemoStyler;
    DBNavigator1: TDBNavigator;
    procedure btnExecQueryClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnConnectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExcelExport: TfrmExcelExport;

implementation

{$R *.dfm}

uses udmPostgresTest, Janua.TMS.ExcelExport, System.IOUtils;

procedure TfrmExcelExport.btnConnectClick(Sender: TObject);
begin
  udmPostgresTest.dmPostgresTest.pgConnection.Connected := True;
end;

procedure TfrmExcelExport.btnExecQueryClick(Sender: TObject);
begin
  dmPostgresTest.UniQuery1.Close;
  dmPostgresTest.UniQuery1.SQL.Text := AdvMemo1.Lines.Text;
  dmPostgresTest.UniQuery1.Open;
end;

procedure TfrmExcelExport.btnExportClick(Sender: TObject);
begin
  Janua.TMS.ExcelExport.DumpDataSet(dmPostgresTest.UniQuery1, TPath.Combine(advDir.Text, edFile.Text));
end;

end.
