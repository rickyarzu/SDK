unit udlgFootballPlayer;

interface

uses
  // RTL
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // DB
  Data.DB,
  // VCL
  Vcl.Grids, Vcl.DBGrids, CRGrid, JvExMask, JvToolEdit, JvDBControls, Vcl.Mask, Vcl.Buttons, Vcl.Graphics,
  Vcl.ExtCtrls, Vcl.ExtDlgs, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  // TMS
  DBAdvGlowNavigator, AdvAppStyler, Shader, AdvGroupBox, AdvGlowButton, AdvOfficeImage, AdvStyleIF,
  // Januaproject
  Janua.Core.Classes, Janua.Core.CustomControls, Janua.Vcl.Dialogs, Janua.Vcl.EnhCRDBGrid,
  Janua.Core.Cloud, Janua.Postgres.Cloud, Janua.Core.Functions, Janua.Components.Dialogs,
  Janua.Vcl.Interposers, Janua.TMS.Interposers;

type
  TdlgFootballPlayer = class(TForm)
    Shader1: TShader;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    edBirthYear: TDBEdit;
    edFirstName: TDBEdit;
    edLastName: TDBEdit;
    edBirthPlace: TDBEdit;
    edNotes: TDBMemo;
    BitBtn1: TBitBtn;
    EnhCRDBGrid1: TEnhCRDBGrid;
    BitBtn2: TBitBtn;
    cboRole: TDBLookupComboBox;
    edBirthDate: TJvDBDateEdit;
    dsPlayer: TDataSource;
    JanuaDialog1: TJanuaDialog;
    DBAdvGlowNavigator1: TDBAdvGlowNavigator;
    AdvFormStyler1: TAdvFormStyler;
    AdvGroupBox1: TAdvGroupBox;
    EnhCRDBGrid2: TEnhCRDBGrid;
    dsStatistics: TDataSource;
    btnPhotos: TAdvGlowButton;
    AdvOfficeImage1: TAdvOfficeImage;
    btnPicturePhotos: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    AdvGlowButton2: TAdvGlowButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
  private
    { Private declarations }
    FImageID: int64;
  public
    { Public declarations }
  end;

var
  dlgFootballPlayer: TdlgFootballPlayer;

implementation

{$R *.dfm}

uses udmFootballPostgres, Janua.Core.DB, ufrmMDCFootball, udmFootballAnagraph, udmFootballController;

procedure TdlgFootballPlayer.AdvGlowButton1Click(Sender: TObject);
begin
  dmFootballPostgres.dsPlayerHistory.DataSet.Open;
end;

procedure TdlgFootballPlayer.AdvGlowButton2Click(Sender: TObject);
begin
  dmFootballController.ExportCareer
end;

procedure TdlgFootballPlayer.BitBtn1Click(Sender: TObject);
begin
  if self.dsPlayer.DataSet.State in [dsEdit, dsInsert] then
  begin
    self.dsPlayer.DataSet.Post;
    self.JanuaDialog1.JShowMessage('Registrata scheda giocatore',
      self.dsPlayer.DataSet.FieldByName('first_name').AsString + ' ' + self.dsPlayer.DataSet.FieldByName
      ('family_name').AsString, '');
    self.dsPlayer.DataSet.Refresh;
  end;

  if dmFootballAnagraph.qryAnagraphs.Modified then
    dmFootballAnagraph.qryAnagraphs.Post;

  Close;

end;

procedure TdlgFootballPlayer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dsStatistics.DataSet.Close;
end;

procedure TdlgFootballPlayer.FormCreate(Sender: TObject);
begin
  // if not Assigned (self.FJanuaServerCoud) then self.FJanuaServerCoud.Create(nil);
end;

procedure TdlgFootballPlayer.FormShow(Sender: TObject);
begin
  if Assigned(dmFootballPostgres.dsPlayerAlbum.DataSet) then
    dmFootballPostgres.dsPlayerAlbum.DataSet.Open;
  if Assigned(dsStatistics.DataSet) then
    OpenDBThreadedDataset(dsStatistics.DataSet, dsStatistics);
end;

end.
