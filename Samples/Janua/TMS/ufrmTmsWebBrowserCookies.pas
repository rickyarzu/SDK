unit ufrmTmsWebBrowserCookies;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.IOUtils,
  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  // TMS
  AdvTypes, AdvUtils,
  AdvGraphics, AdvGraphicsTypes, AdvCustomControl,
  AdvWebBrowser, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.ExtCtrls,
  // Janua
  Janua.Core.Types, AdvMemo, advmjson;

type
  TJanuaTmsCookies = TJanuaArray<TAdvWebBrowserCookie>;

  TfrmTmsWebBrowserCookies = class(TForm)
    URLEdit: TEdit;
    NavigateBtn: TButton;
    AdvWebBrowser1: TAdvWebBrowser;
    Panel1: TPanel;
    Splitter1: TSplitter;
    pnlCookies: TPanel;
    PageControl1: TPageControl;
    tabCookiesDashboard: TTabSheet;
    Label1: TLabel;
    GetCookiesBtn: TButton;
    CookieGrid: TStringGrid;
    Label2: TLabel;
    NameEdit: TEdit;
    Label3: TLabel;
    DomainEdit: TEdit;
    Label4: TLabel;
    PathEdit: TEdit;
    Label5: TLabel;
    ValueEdit: TEdit;
    Label6: TLabel;
    ExpiresDate: TDateTimePicker;
    AddCookieBtn: TButton;
    DeleteCookieBtn: TButton;
    DeleteAllCookiesBtn: TButton;
    tabSerialization: TTabSheet;
    pnlSerialization: TPanel;
    btnSerizalize: TButton;
    btnDeserizalize: TButton;
    AdvMemo1: TAdvMemo;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    Timer1: TTimer;
    procedure NavigateBtnClick(Sender: TObject);
    procedure GetCookiesBtnClick(Sender: TObject);
    procedure AddCookieBtnClick(Sender: TObject);
    procedure DeleteCookieBtnClick(Sender: TObject);
    procedure DeleteAllCookiesBtnClick(Sender: TObject);
    procedure CookieGridSelectCell(Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure AdvWebBrowser1GetCookies(Sender: TObject; ACookies: array of TAdvWebBrowserCookie);
    procedure AdvWebBrowser1NavigateComplete(Sender: TObject;
      var Params: TAdvCustomWebBrowserNavigateCompleteParams);
    procedure AdvWebBrowser1Initialized(Sender: TObject);
    procedure btnSerizalizeClick(Sender: TObject);
    procedure btnDeserizalizeClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FCookies: TJanuaTmsCookies;
    FJsonFile: string;
  public
    { Public declarations }
    CookieList: array of TAdvWebBrowserCookie;
    procedure FillEdits(AIndex: Integer);
  end;

var
  frmTmsWebBrowserCookies: TfrmTmsWebBrowserCookies;

implementation

{$R *.dfm}

procedure TfrmTmsWebBrowserCookies.AddCookieBtnClick(Sender: TObject);
var
  c: TAdvWebBrowserCookie;
begin
  c.Name := NameEdit.Text;
  c.Domain := DomainEdit.Text;
  c.Path := PathEdit.Text;
  c.Expires := ExpiresDate.DateTime;
  c.Value := ValueEdit.Text;
  c.Secure := true;
  c.SameSite := sstLax;

  AdvWebBrowser1.AddCookie(c);

  AdvWebBrowser1.GetCookies;
end;

procedure TfrmTmsWebBrowserCookies.DeleteAllCookiesBtnClick(Sender: TObject);
begin
  AdvWebBrowser1.DeleteAllCookies;

  AdvWebBrowser1.GetCookies;
end;

procedure TfrmTmsWebBrowserCookies.DeleteCookieBtnClick(Sender: TObject);
begin
  AdvWebBrowser1.DeleteCookie(NameEdit.Text, DomainEdit.Text, PathEdit.Text);

  TThread.Sleep(100);

  AdvWebBrowser1.GetCookies;
end;

procedure TfrmTmsWebBrowserCookies.FillEdits(AIndex: Integer);
begin
  if (Length(CookieList) > AIndex) and (AIndex >= 0) then
  begin
    NameEdit.Text := CookieList[AIndex].Name;
    DomainEdit.Text := CookieList[AIndex].Domain;
    PathEdit.Text := CookieList[AIndex].Path;
    ValueEdit.Text := CookieList[AIndex].Value;
    ExpiresDate.DateTime := CookieList[AIndex].Expires;
  end
  else
  begin
    NameEdit.Text := '';
    DomainEdit.Text := '';
    PathEdit.Text := '';
    ValueEdit.Text := '';
    ExpiresDate.DateTime := Now + 1;
  end;
end;

procedure TfrmTmsWebBrowserCookies.FormCreate(Sender: TObject);
begin
  ExpiresDate.DateTime := Now + 1;

  var
  AppName := TPath.GetFileNameWithoutExtension(Application.ExeName);
  FJsonFile := TPath.Combine(TPath.GetHomePath, AppName + '_Cookies.json');

  if FileExists(FJsonFile) then
  begin
    AdvMemo1.Lines.LoadFromFile(FJsonFile);
    FCookies.JsonDeserialize(AdvMemo1.Lines.Text);
  end;

  CookieGrid.Cells[0, 0] := 'Name';
  CookieGrid.Cells[1, 0] := 'Domain';
  CookieGrid.Cells[2, 0] := 'Path';
  CookieGrid.Cells[3, 0] := 'Value';
  CookieGrid.Cells[4, 0] := 'Expires';
end;

procedure TfrmTmsWebBrowserCookies.FormShow(Sender: TObject);
begin
  Timer1.Enabled := true;
end;

procedure TfrmTmsWebBrowserCookies.GetCookiesBtnClick(Sender: TObject);
begin
  AdvWebBrowser1.GetCookies;
end;

procedure TfrmTmsWebBrowserCookies.NavigateBtnClick(Sender: TObject);
begin
  AdvWebBrowser1.Navigate(URLEdit.Text);
end;

procedure TfrmTmsWebBrowserCookies.Timer1Timer(Sender: TObject);
begin
  if FCookies.Count > 0 then
    for var I := 0 to FCookies.Count - 1 do
      AdvWebBrowser1.AddCookie(FCookies[I]);
end;

procedure TfrmTmsWebBrowserCookies.AdvWebBrowser1GetCookies(Sender: TObject;
  ACookies: array of TAdvWebBrowserCookie);
var
  I, l: Integer;
  lCookies: TArray<TAdvWebBrowserCookie>;
begin
  l := Length(ACookies);
  CookieGrid.RowCount := l + 1;

  SetLength(CookieList, l);
  for I := 0 to l - 1 do
  begin
    CookieList[I] := ACookies[I];
    CookieGrid.Cells[0, I + 1] := ACookies[I].Name;
    CookieGrid.Cells[1, I + 1] := ACookies[I].Domain;
    CookieGrid.Cells[2, I + 1] := ACookies[I].Path;
    CookieGrid.Cells[3, I + 1] := ACookies[I].Value;
    CookieGrid.Cells[4, I + 1] := DateTimeToStr(ACookies[I].Expires);
    FCookies.AddItem(ACookies[I]);
  end;

  if l > 0 then
  begin
    CookieGrid.Row := 1;
    FillEdits(0);
  end;
end;

procedure TfrmTmsWebBrowserCookies.AdvWebBrowser1Initialized(Sender: TObject);
begin
  if Pos('http', AdvWebBrowser1.URL) > 0 then
    URLEdit.Text := AdvWebBrowser1.URL;
end;

procedure TfrmTmsWebBrowserCookies.AdvWebBrowser1NavigateComplete(Sender: TObject;
  var Params: TAdvCustomWebBrowserNavigateCompleteParams);
begin
  AdvWebBrowser1.GetCookies;
end;

procedure TfrmTmsWebBrowserCookies.btnDeserizalizeClick(Sender: TObject);
begin
  AdvMemo1.Lines.LoadFromFile(FJsonFile);
  FCookies.JsonDeserialize(AdvMemo1.Lines.Text);
end;

procedure TfrmTmsWebBrowserCookies.btnSerizalizeClick(Sender: TObject);
begin
  AdvMemo1.Lines.Text := FCookies.JsonSerialize;
  AdvMemo1.Lines.SaveToFile(FJsonFile);
end;

procedure TfrmTmsWebBrowserCookies.CookieGridSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  FillEdits(ARow - 1);
end;

end.
