unit ufrmNeonTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, AdvMemo, Vcl.StdCtrls,
  // Janua
  Janua.Core.Types, Janua.Core.Json, VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsTypes, VCL.TMSFNCWXJSONFormatter, VCL.TMSFNCCustomControl, VCL.TMSFNCWebBrowser,
  VCL.TMSFNCCustomWEBControl, VCL.TMSFNCWXHTMLMemo, advmjson

    ;

type
  TSubRecord = record
    Name: string;
    X: Single;
    Y: Single;
    constructor Create(aX, aY: Single; aName: string);
  end;

  TRecord = record
    SubRecords: TArray<TSubRecord>;
    Title: string;
    constructor Create(aTitle: string);
  end;

  TfrmVCLJanuaNeonTest = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    tabJsonMemo: TTabSheet;
    tbFNCMemo: TTabSheet;
    tabSynEdit: TTabSheet;
    memJson: TAdvMemo;
    btnTestRecord: TButton;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    TMSFNCWXHTMLMemo1: TTMSFNCWXHTMLMemo;
    tabFNCJson: TTabSheet;
    TMSFNCWXJSONFormatter1: TTMSFNCWXJSONFormatter;
    procedure btnTestRecordClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLJanuaNeonTest: TfrmVCLJanuaNeonTest;

implementation

{$R *.dfm}
{ TSubRecord }

constructor TSubRecord.Create(aX, aY: Single; aName: string);
begin
  self.X := aX;
  self.Y := aY;
  self.Name := aName;
end;

procedure TfrmVCLJanuaNeonTest.btnTestRecordClick(Sender: TObject);
begin
  var
  lRecord := TRecord.Create('Test');
  SetLength(lRecord.SubRecords, 2);
  lRecord.SubRecords[0] := TSubRecord.Create(1.1, 1.2, 'Uno');
  lRecord.SubRecords[1] := TSubRecord.Create(2.1, 2.2, 'Due');
  memJson.Linex.Text := TJanuaJson.SerializeSimple<TRecord>(lRecord);

end;

{ TRecord }

constructor TRecord.Create(aTitle: string);
begin

end;

end.
