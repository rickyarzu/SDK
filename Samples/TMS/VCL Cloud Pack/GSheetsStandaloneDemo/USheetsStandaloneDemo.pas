unit USheetsStandaloneDemo;

interface

uses
  Windows, Messages, SysUtils, Variants,
  Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, CloudBase, CloudBaseWin,
  CloudCustomGoogle, CloudGoogleWin, CloudCustomGSheets, CloudGSheets,
  Grids, OleCtrls, SHDocVw, ExtCtrls, ComCtrls, ShellApi,
  CloudCustomFourSquare;

type
  TForm9 = class(TForm)
    AdvGSheets1: TAdvGSheets;
    btnConnect: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    lblErrorMsg: TLabel;
    StringGrid1: TStringGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    cbWorkBooks: TComboBox;
    Label1: TLabel;
    txtTitle: TEdit;
    btnCreateWorkbook: TButton;
    btLoadWorkbook: TButton;
    Label2: TLabel;
    Button1: TButton;
    btnAddRow: TButton;
    Label3: TLabel;
    btBrowser: TButton;
    btUpdateCell: TButton;
    edCellValue: TEdit;
    cbSheets: TComboBox;
    Label4: TLabel;
    procedure AdvGSheets1ReceivedAccessToken(Sender: TObject);
    procedure btnConnectClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCreateWorkbookClick(Sender: TObject);
    procedure btnAddRowClick(Sender: TObject);
    procedure btLoadWorkbookClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btBrowserClick(Sender: TObject);
    procedure btUpdateCellClick(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
  private
    procedure Disablecontrols;
    procedure DisableStartControls;
    procedure EnableControls;
    procedure EnableStartControls;
    { Private declarations }
  public
    { Public declarations }
    procedure Init;
    procedure InitGrid;
    procedure FillGrid;
    procedure FillSheets;
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}
// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
// GAppkey = 'xxxxxxxxx';
// GAppSecret = 'yyyyyyyy';

{$I APPIDS.INC}

procedure TForm9.AdvGSheets1ReceivedAccessToken(Sender: TObject);
begin
  AdvGSheets1.SaveTokens;
  init;
  EnableStartControls;
end;

procedure TForm9.btLoadWorkbookClick(Sender: TObject);
var
  Title: string;
begin
  Screen.Cursor := crHourGlass;
  Title := cbWorkBooks.Items[cbWorkBooks.ItemIndex];
  AdvGSheets1.WorkSheetID := AdvGSheets1.GetWorkSheetId(Title);

  if AdvGSheets1.WorkSheetID <> '' then
  begin
    Disablecontrols;

    Label3.Caption := 'Workbook: ' + Title;

    AdvGSheets1.WorkSheetTitle := Title;
    AdvGSheets1.GetWorkSheet;

    FillSheets;
    FillGrid;
    InitGrid;

    EnableControls;
  end
  else
  begin
    lblErrorMsg.Caption := 'Nothing found...';
  end;
  Screen.Cursor := crDefault;
end;

procedure TForm9.btnAddRowClick(Sender: TObject);
var
  Sl: TStringList;
begin
  Disablecontrols;

  Sl := TStringList.Create;
  Sl.Add('R' + IntToStr(AdvGSheets1.Sheets[cbSheets.ItemIndex].RowCount + 1) + ' C1');
  Sl.Add('R' + IntToStr(AdvGSheets1.Sheets[cbSheets.ItemIndex].RowCount + 1) + ' C2');
  AdvGSheets1.Sheets[cbSheets.ItemIndex].AddRow(Sl);
  AdvGSheets1.GetWorkSheet;
  Sl.Free;

  FillGrid;

  EnableControls;
end;

procedure TForm9.btnConnectClick(Sender: TObject);
var
  acc: Boolean;
begin
  DisableStartControls;
  AdvGSheets1.App.Key := GAppkey;
  AdvGSheets1.App.Secret := GAppSecret;
  AdvGSheets1.Logging := True;

  if AdvGSheets1.App.Key <> '' then
  begin
    AdvGSheets1.PersistTokens.Location := plIniFile;
    AdvGSheets1.PersistTokens.Key := '.\google.ini';
    AdvGSheets1.PersistTokens.Section := 'tokens';
    AdvGSheets1.LoadTokens;

    acc := AdvGSheets1.TestTokens;

    if not acc then
    begin
      AdvGSheets1.RefreshAccess;
      AdvGSheets1.DoAuth;
    end
    else
    begin
      EnableStartControls;
      Init;
    end;
  end
  else
    ShowMessage ('Please provide a valid application ID for the client component');
end;

procedure TForm9.btnCreateWorkbookClick(Sender: TObject);
begin
  Disablecontrols;
  AdvGSheets1.WorkSheetTitle := txtTitle.Text;
  AdvGSheets1.CreateWorkbook(txtTitle.Text);

  if AdvGSheets1.WorkSheetID <> '' then
  begin
    Init;
    InitGrid;
    FillGrid;
    EnableControls;
  end;
end;

procedure TForm9.btUpdateCellClick(Sender: TObject);
begin
  if AdvGSheets1.Sheets.Count > 0 then
  begin
    if AdvGSheets1.Sheets[cbSheets.ItemIndex].UpdateCell(StringGrid1.Col, StringGrid1.Row, edCellValue.Text) then
      StringGrid1.Cells[StringGrid1.Col, StringGrid1.Row] := edCellValue.Text;
  end;
end;

procedure TForm9.Button1Click(Sender: TObject);
begin
  AdvGSheets1.ClearTokens;
  Disablecontrols;
  DisableStartControls;
  lblErrorMsg.Caption := '';
end;

procedure TForm9.btBrowserClick(Sender: TObject);
begin
  ShellExecute(0,'open',PChar('https://docs.google.com/spreadsheets/d/' + AdvGSheets1.WorkSheetID),nil,nil,SW_NORMAL)
end;

procedure TForm9.Disablecontrols;
begin
  Screen.Cursor := crHourGlass;
  btnAddRow.Enabled := False;
  edCellValue.Enabled := False;
  btUpdateCell.Enabled := False;
  btBrowser.Enabled := False;
  cbSheets.Enabled := False;
end;

procedure TForm9.DisableStartControls;
begin
  Screen.Cursor := crHourGlass;
  txtTitle.Enabled := False;
  btnCreateWorkbook.Enabled := False;
  cbWorkBooks.Enabled := False;
  btLoadWorkbook.Enabled := False;
end;

procedure TForm9.EnableControls;
begin
  btnAddRow.Enabled := True;
  lblErrorMsg.Caption := '';
  edCellValue.Enabled := True;
  cbSheets.Enabled := True;
  btUpdateCell.Enabled := True;
  btBrowser.Enabled := True;
  Screen.Cursor := crDefault;
end;

procedure TForm9.EnableStartControls;
begin
  txtTitle.Enabled := True;
  btnCreateWorkbook.Enabled := True;
  lblErrorMsg.Caption := '';
  cbWorkBooks.Enabled := True;
  btLoadWorkbook.Enabled := True;
  Screen.Cursor := crDefault;
end;

procedure TForm9.FillGrid;
var
  Cell: TGSheetsCell;
  S: TGSheetsSheet;
  I: Integer;
begin
    for I := 0 to StringGrid1.ColCount - 1 do
      StringGrid1.Cols[I].Clear;

    if AdvGSheets1.Sheets.Count <= 0 then
      Exit;

    S := AdvGSheets1.Sheets[cbSheets.ItemIndex];
    StringGrid1.ColCount := S.ColCount + 1;
    StringGrid1.RowCount := S.RowCount + 1;

    for I := 1 to StringGrid1.ColCount - 1 do
    begin
      StringGrid1.ColWidths[I] := 100;
    end;

    for I := 0 to S.Cells.Count - 1 do
    begin
      Cell := S.Cells[I];
      StringGrid1.Cells[Cell.Col, Cell.Row] := Cell.Content;
    end;
end;

procedure TForm9.FillSheets;
var
  I: Integer;
begin
  cbSheets.Clear;
  for I := 0 to AdvGSheets1.Sheets.Count - 1 do
  begin
    cbSheets.Items.Add(AdvGSheets1.Sheets[I].Title);
  end;
  cbSheets.ItemIndex := 0;
end;

procedure TForm9.StringGrid1Click(Sender: TObject);
begin
  edCellValue.Text := StringGrid1.Cells[StringGrid1.Col, StringGrid1.Row];
end;

procedure TForm9.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;

  DisableStartControls;
  Disablecontrols;
  InitGrid;

  Screen.Cursor := crDefault;
end;

procedure TForm9.Init;
var
  s: TGSheetsWorksheets;
  i: Integer;
begin
  cbWorkBooks.Items.Clear;
  s := AdvGSheets1.GetAvailableWorkSheets;

  if not Assigned(s) then
    Exit;

  for i := 0 to s.Count - 1 do
    cbWorkBooks.Items.Add(s[i].Name);

  cbWorkBooks.ItemIndex := 0;
  s.Free;
end;

procedure TForm9.InitGrid;
var
  I: Integer;
begin
  for I := 1 to StringGrid1.RowCount - 1 do
    StringGrid1.Cells[0,I] := IntToStr(I);

  for I := 1 to StringGrid1.ColCount - 1 do
    StringGrid1.Cells[I,0] := AdvGSheets1.NumberToString(I);
end;

end.
