unit ufrmPhoenixTestGoogleSync;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CloudBase, CloudBaseWin, CloudCustomGoogle, CloudGoogleWin,
  CloudCustomGCalendar, CloudGCalendar, SVGIconImage, Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid, Vcl.StdCtrls,
  Janua.Phoenix.Vcl.dmGCalendarController, AdvMemo, advmjson, Vcl.ExtCtrls, Janua.Vcl.frameGoogleColor,
  Janua.Vcl.EnhCRDBGrid;

type
  TfrmVCLPhoenixTestGoogleSync = class(TForm)
    SVGIconImage1: TSVGIconImage;
    AdvGCalendar1: TAdvGCalendar;
    btnTestSync: TButton;
    dsPlannerEvents: TDataSource;
    AdvMemo1: TAdvMemo;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    btnTestDelete: TButton;
    AdvMemo2: TAdvMemo;
    pnlColors: TPanel;
    pnlColors2: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    ScrollBox2: TScrollBox;
    Panel3: TPanel;
    Panel4: TPanel;
    btnItemColors: TButton;
    grdColors: TCRDBGrid;
    dsEventColors: TDataSource;
    EnhCRDBGrid1: TEnhCRDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure btnTestSyncClick(Sender: TObject);
    procedure btnTestDeleteClick(Sender: TObject);
    procedure btnItemColorsClick(Sender: TObject);
    procedure EnhCRDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
      Column: TColumn; State: TGridDrawState);
  private
    cnt: TdmPhoenixVCLGCalendarController;
  public
    { Public declarations }
  end;

var
  frmVCLPhoenixTestGoogleSync: TfrmVCLPhoenixTestGoogleSync;

implementation

uses Janua.Application.Framework, Janua.Vcl.Functions;

{$R *.dfm}

procedure TfrmVCLPhoenixTestGoogleSync.btnItemColorsClick(Sender: TObject);
begin
  cnt.SetUpCalendarColors;
end;

procedure TfrmVCLPhoenixTestGoogleSync.btnTestDeleteClick(Sender: TObject);
begin
  try
    cnt.DeleteGoogleItem(AdvMemo1.Lines.Text);
  finally
    AdvMemo2.Lines.Text := (cnt.Log.Text)
  end;
end;

procedure TfrmVCLPhoenixTestGoogleSync.btnTestSyncClick(Sender: TObject);
begin
  // ShowMessage('Create Controller');
  dsPlannerEvents.Enabled := False;
  try
    cnt.FillGoogleCalendars;
  finally
    dsPlannerEvents.Enabled := True;
  end;

end;

procedure TfrmVCLPhoenixTestGoogleSync.EnhCRDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  backgroundColor: TColor;
  FontColor: TColor;
  FontStyles: Vcl.Graphics.TFontStyles;
begin
  with Sender as TEnhCRDBGrid, DataSource.DataSet do
  begin
    backgroundColor := Column.Color;
    FontColor := Column.Font.Color;
    FontStyles := Column.Font.Style;

    FontStyles := [fsBold];

    FontColor := FieldByName('BACKGROUND_COLOR').AsInteger;

    // if (FieldByName('AN_INVOICE').AsInteger  = 2)  then backgroundColor := clYellow;
    DrawField(Column.Field.DisplayText, Rect, Canvas, Column.Font, Column.Alignment,
      FontStyles { Column.Font.Style } , FontColor { Column.Font.Color } , backgroundColor { Column.Color } )
  end;
end;

procedure TfrmVCLPhoenixTestGoogleSync.FormCreate(Sender: TObject);
var
  lPanel: TPanel;
begin
  AdvGCalendar1.PersistTokens.Location := plIniFile;
  AdvGCalendar1.PersistTokens.Key := 'C:\Phoenix\tokens.ini';
  AdvGCalendar1.PersistTokens.Section := 'google_janua';
  AdvGCalendar1.LoadTokens;
  AdvGCalendar1.Logging := True;
  AdvGCalendar1.LogLevel := llDetail;
  AdvGCalendar1.App.Key := TJanuaApplication.CloudConf.GoogleAppKey;
  AdvGCalendar1.App.Secret := TJanuaApplication.CloudConf.GoogleAppSecret;

  if not AdvGCalendar1.TestTokens then
    AdvGCalendar1.RefreshAccess;

  if not AdvGCalendar1.TestTokens then
    AdvGCalendar1.DoAuth;

  cnt := TdmPhoenixVCLGCalendarController.Create(nil);
  cnt.AdvGCalendar1 := AdvGCalendar1;
  cnt.tabGoogleColors.Open;
  cnt.tabGoogleColors.First;
  var
  i := 0;
  var
  j := 0;
  While not cnt.tabGoogleColors.Eof do
  begin
    Inc(j);

    if j <= 12 then
      lPanel := pnlColors
    else
      lPanel := pnlColors2;

    var
    aFrame := TframeVCLJanuaGoogleColor.Create(lPanel);
    aFrame.Name := 'frameVCLJanuaGoogleColor' + cnt.tabGoogleColorsID.AsString;
    aFrame.lbColorIF.Caption := cnt.tabGoogleColorsID.AsString;
    aFrame.lbBackGround.Caption := cnt.tabGoogleColorsBACK_COLOR.AsString;
    aFrame.lbForeGround.Caption := cnt.tabGoogleColorsFORE_COLOR.AsString;
    aFrame.Parent := lPanel;
    aFrame.Align := TAlign.alTop;
    aFrame.Top := i;
    i := i + aFrame.Height + 1;
    aFrame.pnlColor.Color := cnt.tabGoogleColorsBACK_COLOR.AsInteger;
    aFrame.Show;
    cnt.tabGoogleColors.Next;
  end;

  dsEventColors.DataSet := cnt.tabEventColors;
  cnt.tabEventColors.Open;

  // Panel3

  i := 0;
  j := 0;
  While not cnt.tabEventColors.Eof do
  begin
    Inc(j);

    if j <= 12 then
      lPanel := Panel3
    else
      lPanel := Panel4;

    var
    aFrame := TframeVCLJanuaGoogleColor.Create(lPanel);
    aFrame.Name := 'frameVCLJanuaGoogleColor' + cnt.tabEventColorsID.AsString;
    aFrame.lbColorIF.Caption := cnt.tabEventColorsID.AsString;
    aFrame.lbBackGround.Caption := cnt.tabEventColorsBACK_COLOR.AsString;
    aFrame.lbForeGround.Caption := cnt.tabEventColorsFORE_COLOR.AsString;
    aFrame.Parent := lPanel;
    aFrame.Align := TAlign.alTop;
    aFrame.Top := i;
    i := i + aFrame.Height + 1;
    aFrame.pnlColor.Color := cnt.tabEventColorsBACK_COLOR.AsInteger;
    aFrame.Show;
    cnt.tabEventColors.Next;
  end;
  cnt.qryGoogleEventsTemp.Open;
  dsPlannerEvents.DataSet := cnt.qryGoogleEventsTemp;

end;

end.
