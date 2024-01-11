unit ufrmTeamLogo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid, Vcl.DBCtrls, Vcl.ExtCtrls,
  DBAdvGlowNavigator, Vcl.StdCtrls, Vcl.Mask, AdvSpin, JvBaseDlg, JvSelectDirectory, AdvGlowButton, AdvAppStyler,
  AdvStyleIF;

type
  TdlgTeamsLogos = class(TForm)
    DBAdvGlowNavigator1: TDBAdvGlowNavigator;
    DBImage1: TDBImage;
    CRDBGrid1: TCRDBGrid;
    spinHeight: TAdvSpinEdit;
    spinWidth: TAdvSpinEdit;
    JvSelectDirectory1: TJvSelectDirectory;
    DataSource1: TDataSource;
    Altezza: TLabel;
    Label1: TLabel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvFormStyler1: TAdvFormStyler;
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgTeamsLogos: TdlgTeamsLogos;

implementation

{$R *.dfm}

uses udmFootballPostgres, ufrmMDCFootball, Janua.Vcl.Functions, Janua.Core.Functions;

procedure TdlgTeamsLogos.AdvGlowButton1Click(Sender: TObject);
var
  aBitmap: TBitmap;
begin
  if self.JvSelectDirectory1.Execute then
  begin
    self.DataSource1.DataSet.First;
    while not self.DataSource1.DataSet.Eof do
    begin
      if Assigned(DBImage1.Picture) and (DBImage1.Picture.Width > 0) then
      begin
        aBitmap := Janua.Vcl.Functions.ResizePicture(self.DBImage1.Picture, spinHeight.Value, spinWidth.Value);
        SaveBitmapAs(aBitmap, gteJPG, tpl(JvSelectDirectory1.Directory) + self.DataSource1.DataSet.FieldByName
          ('team_id').AsString + '.jpg');
      end;
      DataSource1.DataSet.Next;
    end;
  end;
end;

procedure TdlgTeamsLogos.FormShow(Sender: TObject);
begin
  self.DataSource1.DataSet.Open;
  self.DataSource1.DataSet.First;
end;

end.
