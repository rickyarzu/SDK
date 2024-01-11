unit Janua.VCL.RestClient;

interface

uses
  // RTL
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.ComCtrls, VCL.Imaging.pngimage, VCL.Mask, VCL.Dialogs,
  VCL.StdCtrls,
  // DB
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, VCL.ExtCtrls,
  // Tms
  AdvMemo, DBAdvMemo, advmjson, Advmxml,
  // Janua
  uJanuaVCLForm;

type
  TMyCompletionHandlerWithError = TProc<TObject>;

  TfrmVCLRestClient = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PageControl2: TPageControl;
    TabSheet6: TTabSheet;
    edtAccept: TLabeledEdit;
    Label1: TLabel;
    mmCustomBody: TMemo;
    btnDELETE: TButton;
    btnPUT: TButton;
    btnPOST: TButton;
    btnGET: TButton;
    lblStatusCode: TLabel;
    Label3: TLabel;
    pnlRequest: TPanel;
    edtBaseURL: TLabeledEdit;
    lbedToken: TLabeledEdit;
    pnlUsernamePassword: TPanel;
    mmBody: TDBAdvMemo;
    AdvXMLMemoStyler1: TAdvXMLMemoStyler;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    tabSQLQueryRequest: TTabSheet;
    lbedUserName: TLabeledEdit;
    lbedPassword: TLabeledEdit;
    rgAuthentication: TRadioGroup;
    pnlSQLButtons: TPanel;
    DBAdvMemo1: TDBAdvMemo;
    tabHeaders: TTabSheet;
    tabParams: TTabSheet;
    procedure btnGETClick(Sender: TObject);
    procedure btnPOSTClick(Sender: TObject);
    procedure btnPUTClick(Sender: TObject);
    procedure btnDELETEClick(Sender: TObject);
  end;

var
  frmVCLRestClient: TfrmVCLRestClient;

implementation

{$R *.dfm}

uses RESTRequest4D;

procedure TfrmVCLRestClient.btnDELETEClick(Sender: TObject);
var
  LResponse: IResponse;
begin
  LResponse := TRequest.New.BaseURL(edtBaseURL.Text).Accept(edtAccept.Text).Delete;

  mmBody.Lines.Text := LResponse.Content;
  lblStatusCode.Caption := LResponse.StatusCode.ToString;
end;

procedure TfrmVCLRestClient.btnGETClick(Sender: TObject);
var
  LResponse: IResponse;
begin
  LResponse := TRequest.New.BaseURL(edtBaseURL.Text).Accept(edtAccept.Text).Get;

  mmBody.Lines.Text := LResponse.Content;
  lblStatusCode.Caption := LResponse.StatusCode.ToString;
end;

procedure TfrmVCLRestClient.btnPOSTClick(Sender: TObject);
var
  LResponse: IResponse;
begin
  LResponse := TRequest.New.BaseURL(edtBaseURL.Text).Accept(edtAccept.Text)
    .AddBody(mmCustomBody.Lines.Text).Post;

  mmBody.Lines.Text := LResponse.Content;
  lblStatusCode.Caption := LResponse.StatusCode.ToString;
end;

procedure TfrmVCLRestClient.btnPUTClick(Sender: TObject);
var
  LResponse: IResponse;
begin
  LResponse := TRequest.New.BaseURL(edtBaseURL.Text).Accept(edtAccept.Text)
    .AddBody(mmCustomBody.Lines.Text).Put;

  mmBody.Lines.Text := LResponse.Content;
  lblStatusCode.Caption := LResponse.StatusCode.ToString;
end;

end.
