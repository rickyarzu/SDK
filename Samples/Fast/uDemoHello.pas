unit uDemoHello;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxExportBaseDialog, frxExportPDF, frxPreview,
  frxExportHTML,
  Vcl.ComCtrls, scControls, Vcl.StdCtrls, Vcl.ExtCtrls, AdvMemo, advmjson, Vcl.NumberBox;

type
  TForm1 = class(TForm)
    frxpdfHello: TfrxPDFExport;
    frxrptHello: TfrxReport;
    frxhtmlExport: TfrxHTMLExport;
    pgcStatino: TscPageControl;
    pnlStatino: TscPanel;
    tabReport: TscTabSheet;
    tabStatino: TscTabSheet;
    frxprvwHello: TfrxPreview;
    jsonStatino: TAdvJSONMemoStyler;
    advmStatino: TAdvMemo;
    btnSearch: TButton;
    nmStatino: TNumberBox;
    procedure FormShow(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Janua.Core.Json, Janua.Phoenix.FbMaintenanceReport;

{$R *.dfm}

procedure TForm1.btnSearchClick(Sender: TObject);
begin
  dmFBPhonixMantReport.qryStatini.Close;
  dmFBPhonixMantReport.qryStatini.ParambyName('CHIAVE').AsInteger := nmStatino.ValueInt;
  dmFBPhonixMantReport.qryStatini.Open;
  advmStatino.Lines.Text := JsonPretty(dmFBPhonixMantReport.qryStatiniJSON_DA_MOBILE.AsString);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  nmStatino.ValueInt := dmFBPhonixMantReport.qryStatini.ParambyName('CHIAVE').AsInteger;
end;

end.
