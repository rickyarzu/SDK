unit ufrmTestStatisticsPostgres;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmTestStatistics, Janua.VCL.Dialogs, AdvMemo, advmjson, Vcl.Menus, AdvMenus,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, AdvSplitter, Shader, ushldlg, Data.DB,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, CRGrid;

type
  TfrmTestStatisticsServer = class(TfrmTestStatistics)
    TabSheet2: TTabSheet;
    AdvMemo1: TAdvMemo;
    FormatDialog1: TFormatDialog;
    Panel4: TPanel;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    CRDBGrid1: TCRDBGrid;
    Button2: TButton;
    MainMenu1: TMainMenu;
    SaveToServer1: TMenuItem;
    N3: TMenuItem;
    procedure Aggiorna1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTestStatisticsServer: TfrmTestStatisticsServer;

implementation

{$R *.dfm}

uses udmJanuaCoreTesting;

procedure TfrmTestStatisticsServer.Aggiorna1Click(Sender: TObject);
begin
  self.Schema := udmJanuaCoreTesting.dmJanuaCoreTesting.JanuaPgStatisticsServer1.StatSchema;
  inherited;

end;

end.
