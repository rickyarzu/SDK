unit ufrmTwilio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // vcl
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  // tms
  CloudBase, CloudSMS, uSynEdit, uSynMemo, AdvMemo, advmjson, Vcl.ComCtrls, Winapi.WebView2, Winapi.ActiveX,
  Vcl.Edge;

type
  TRecordTest = record
    TestInteger: integer;
    TestString: string;
    TestFloat: Real;
    TestDate: TDateTime;
  end;

  TfrmTwilio = class(TForm)
    pgcTests: TPageControl;
    tbSettingsTest: TTabSheet;
    tbTwilioTest: TTabSheet;
    btnInviasms: TButton;
    btnSmsInterface: TButton;
    btnSerialize: TButton;
    AdvMemo1: TAdvMemo;
    AdvMemo2: TAdvMemo;
    btnDeserialize: TButton;
    AdvTwilio: TAdvTwilio;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    tbTinyUrl: TTabSheet;
    edtUrl: TEdit;
    btnTinyUrl: TButton;
    EdgeBrowser1: TEdgeBrowser;
    lblUrl: TLabel;
    AdvMemo3: TAdvMemo;
    AdvMemo4: TAdvMemo;
    btnSerialize1: TButton;
    btnDeserialize1: TButton;
    AdvMemo5: TAdvMemo;
    procedure btnInviasmsClick(Sender: TObject);
    procedure btnSmsInterfaceClick(Sender: TObject);
    procedure btnSerializeClick(Sender: TObject);
    procedure btnDeserializeClick(Sender: TObject);
    procedure btnTinyUrlClick(Sender: TObject);
    procedure lblUrlMouseEnter(Sender: TObject);
    procedure lblUrlMouseLeave(Sender: TObject);
    procedure lblUrlClick(Sender: TObject);
    procedure btnSerialize1Click(Sender: TObject);
    procedure btnDeserialize1Click(Sender: TObject);
  private
    { Private declarations }
    function GetSMSText: string;
  public
    { Public declarations }
  end;

var
  frmTwilio: TfrmTwilio;

implementation

uses Janua.Cloud.Sms.Intf, Janua.Application.Framework,
  // Janua.Core.Http contiene la funzione GenerateTinyUrl per testare l'url di chiamata
  Janua.Core.Http;

{$R *.dfm}

procedure TfrmTwilio.btnDeserialize1Click(Sender: TObject);
var
  aTestRecord: TRecordTest;
begin
  AdvMemo4.Lines.Text := TJanuaApplication.UserSessionVM.ReadSchemaConf('TestConf', AdvMemo3.Lines.Text);
  aTestRecord := TJanuaCoreOs.DeserializeSimple<TRecordTest>(AdvMemo4.Lines.Text);
  AdvMemo5.Lines.Text := TJanuaCoreOs.SerializeSimple<TRecordTest>(aTestRecord);
end;

procedure TfrmTwilio.btnDeserializeClick(Sender: TObject);
var
  lSMS: IJanuaSMSSender;
begin
  if TJanuaApplicationFactory.TryGetInterface(IJanuaSMSSender, lSMS, True) then
  begin
    lSMS.ClearConf;
    AdvMemo2.Lines.Text := lSMS.AsJsonConf;
    ShowMessage('Test Clear Complete press Ok to reload');
    lSMS.AsJsonConf := AdvMemo1.Lines.Text;
    AdvMemo2.Lines.Text := lSMS.AsJsonConf;
  end;

end;

procedure TfrmTwilio.btnInviasmsClick(Sender: TObject);
begin
  { ACCOUNT SID
    AC221a150df22723daef8d097a7f76cfcf
    token
    f3c90112efdccd931b81dea46f74f1da
  }
  AdvTwilio.App.Key := 'AC221a150df22723daef8d097a7f76cfcf';
  AdvTwilio.App.Secret := 'f3c90112efdccd931b81dea46f74f1da';
  AdvTwilio.App.Name := '+15302036772';
  AdvTwilio.SendSMS('+393409111351', 'Prova');
end;

procedure TfrmTwilio.btnSerialize1Click(Sender: TObject);
var
  aTestRecord: TRecordTest;
begin
  aTestRecord.TestInteger := 100;
  aTestRecord.TestString := 'Ciao';
  aTestRecord.TestFloat := 13.45;
  aTestRecord.TestDate := Now();
  AdvMemo3.Lines.Text := TJanuaCoreOs.SerializeSimple<TRecordTest>(aTestRecord);
  TJanuaApplication.UserSessionVM.WriteSchemaConf('TestConf', AdvMemo3.Lines.Text);
end;

procedure TfrmTwilio.btnSerializeClick(Sender: TObject);
var
  lSMS: IJanuaSMSSender;
begin
  if TJanuaApplicationFactory.TryGetInterface(IJanuaSMSSender, lSMS, True) then
    AdvMemo1.Lines.Text := lSMS.AsJsonConf;
end;

procedure TfrmTwilio.btnSmsInterfaceClick(Sender: TObject);
var
  lSMS: IJanuaSMSSender;
begin
  if TJanuaApplicationFactory.TryGetInterface(IJanuaSMSSender, lSMS, True) then
  begin
    lSMS.SMSMessage := GetSMSText;
    lSMS.AddRecipient('+393409111351');
    lSMS.SendSMS(nil, nil,
      procedure
      begin
        ShowMessage('Messaggio Inviato');
      end);
  end;
end;

procedure TfrmTwilio.btnTinyUrlClick(Sender: TObject);
begin
  Self.lblUrl.Caption := GenerateTinyUrl(Self.edtUrl.Text);
end;

function TfrmTwilio.GetSMSText: string;
begin
  Result := GenerateTinyUrl('https://www.ergomercator.com/');
end;

procedure TfrmTwilio.lblUrlClick(Sender: TObject);
begin
  EdgeBrowser1.Navigate(lblUrl.Caption)
end;

procedure TfrmTwilio.lblUrlMouseEnter(Sender: TObject);
begin
  lblUrl.Font.Style := [fsItalic, fsUnderline];
  Screen.Cursor := crUpArrow
end;

procedure TfrmTwilio.lblUrlMouseLeave(Sender: TObject);
begin
  lblUrl.Font.Style := [];
  Screen.Cursor := crArrow
end;

end.
