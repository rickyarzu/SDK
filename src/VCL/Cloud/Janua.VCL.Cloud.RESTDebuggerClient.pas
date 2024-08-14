unit Janua.VCL.Cloud.RESTDebuggerClient;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // FireDAC
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  // VCL
  VCL.Controls, VCL.Forms, VCL.Graphics, VCL.Dialogs, VCL.StdCtrls, VCL.ExtCtrls, VCL.ComCtrls, VCL.Mask,
  VCL.Imaging.pngimage,
  // Tms
  AdvMemo, advmjson, Advmxml, AdvmINIs, AdvmCSS, AdvmBS, AdvmPS, AdvmWS,
  // Janua
  Janua.Cloud.Types, Janua.Http.Types;

type
  TMyCompletionHandlerWithError = TProc<TObject>;

  TFrmMain = class(TForm)
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
    edtBaseURL: TLabeledEdit;
    edtAccept: TLabeledEdit;
    lbGet: TLabel;
    btnDELETE: TButton;
    btnPUT: TButton;
    btnPOST: TButton;
    btnGET: TButton;
    lblStatusCode: TLabel;
    Label3: TLabel;
    TabSheet2: TTabSheet;
    Panel7: TPanel;
    Label2: TLabel;
    imgMultipartFormDataStream: TImage;
    Label4: TLabel;
    edtMultipartFormDataText: TEdit;
    Label5: TLabel;
    lblMultipartFormDataFile: TLabel;
    Panel9: TPanel;
    Panel10: TPanel;
    btnMultipartFormDataPost: TButton;
    edtMultipartFormDataBaseURL: TLabeledEdit;
    Panel8: TPanel;
    lblRESTRequest4DelphiComponent: TLabel;
    btnMultipartFormDataPut: TButton;
    FDMemTable1: TFDMemTable;
    tabAuthentication: TTabSheet;
    tabCustomBody: TTabSheet;
    mmCustomBody: TAdvMemo;
    AdvHTMLMemoStyler1: TAdvHTMLMemoStyler;
    AdvJSMemoStyler1: TAdvJSMemoStyler;
    AdvWebMemoStyler1: TAdvWebMemoStyler;
    AdvPascalMemoStyler1: TAdvPascalMemoStyler;
    AdvBasicMemoStyler1: TAdvBasicMemoStyler;
    AdvCSSMemoStyler1: TAdvCSSMemoStyler;
    AdvINIMemoStyler1: TAdvINIMemoStyler;
    AdvXMLMemoStyler1: TAdvXMLMemoStyler;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    mmBody: TAdvMemo;
    procedure btnGETClick(Sender: TObject);
    procedure btnPOSTClick(Sender: TObject);
    procedure btnPUTClick(Sender: TObject);
    procedure btnDELETEClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnMultipartFormDataPostClick(Sender: TObject);
    procedure btnMultipartFormDataPutClick(Sender: TObject);
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

uses RESTRequest4D;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
  lblMultipartFormDataFile.Caption := (ExtractFilePath(ParamStr(0)) + 'RESTRequest4Delphi.pdf');
  lblRESTRequest4DelphiComponent.Caption := 'RESTRequest4Delphi:  RR4D_RESTCLIENT';
end;

procedure TFrmMain.btnDELETEClick(Sender: TObject);
var
  LResponse: IResponse;
begin
  LResponse := TRequest.New.BaseURL(edtBaseURL.Text).Accept(edtAccept.Text).Delete;

  mmBody.Lines.Text := LResponse.Content;
  lblStatusCode.Caption := LResponse.StatusCode.ToString;
end;

procedure TFrmMain.btnGETClick(Sender: TObject);
var
  LResponse: IResponse;
begin
  LResponse := TRequest.New.BaseURL(edtBaseURL.Text).Accept(edtAccept.Text).Get;

  mmBody.Lines.Text := LResponse.Content;
  lblStatusCode.Caption := LResponse.StatusCode.ToString;
end;

procedure TFrmMain.btnMultipartFormDataPostClick(Sender: TObject);
var
  LStream: TMemoryStream;
  LResponse: IResponse;
  LRequest: IRequest;
begin
  LStream := TMemoryStream.Create;
  try
    imgMultipartFormDataStream.Picture.SaveToStream(LStream);
    LRequest := TRequest.New.BaseURL(edtMultipartFormDataBaseURL.Text);
    LRequest.AddParam('text', edtMultipartFormDataText.Text)
      .AddParam('file', lblMultipartFormDataFile.Caption);
    {LRequest.AddParam('stream', LStream);}
    LResponse := LRequest.Post;
  finally
    LStream.Free;
  end;

  mmBody.Lines.Text := LResponse.Content;
  lblStatusCode.Caption := LResponse.StatusCode.ToString;
end;

procedure TFrmMain.btnMultipartFormDataPutClick(Sender: TObject);
var
  LStream: TMemoryStream;
  LResponse: IResponse;
begin
  LStream := TMemoryStream.Create;
  try
    imgMultipartFormDataStream.Picture.SaveToStream(LStream);
    LResponse := TRequest.New.BaseURL(edtMultipartFormDataBaseURL.Text)
      .AddParam('text', edtMultipartFormDataText.Text).AddParam('file', lblMultipartFormDataFile.Caption)
      {.AddParam('stream', LStream)}.Put;
  finally
    LStream.Free;
  end;

  mmBody.Lines.Text := LResponse.Content;
  lblStatusCode.Caption := LResponse.StatusCode.ToString;
end;

procedure TFrmMain.btnPOSTClick(Sender: TObject);
var
  LResponse: IResponse;
begin
  LResponse := TRequest.New.BaseURL(edtBaseURL.Text).Accept(edtAccept.Text)
    .AddBody(mmCustomBody.Lines.Text).Post;

  mmBody.Lines.Text := LResponse.Content;
  lblStatusCode.Caption := LResponse.StatusCode.ToString;
end;

procedure TFrmMain.btnPUTClick(Sender: TObject);
var
  LResponse: IResponse;
begin
  LResponse := TRequest.New.BaseURL(edtBaseURL.Text).Accept(edtAccept.Text)
    .AddBody(mmCustomBody.Lines.Text).Put;

  mmBody.Lines.Text := LResponse.Content;
  lblStatusCode.Caption := LResponse.StatusCode.ToString;
end;

end.
