unit udlgCmsCategorie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CRGrid, AdvAppStyler, Vcl.ExtCtrls, Shader,
  DBAdvNavigator, Vcl.DBCtrls, AdvGlowButton, Data.DB, Vcl.Grids, Vcl.DBGrids, AdvStyleIF;

type
  TdlgCmsCategorie = class(TForm)
    Shader1: TShader;
    AdvFormStyler1: TAdvFormStyler;
    Panel1: TPanel;
    CRDBGrid1: TCRDBGrid;
    Panel2: TPanel;
    CRDBGrid2: TCRDBGrid;
    DBNavigator1: TDBAdvNavigator;
    DBAdvNavigator1: TDBAdvNavigator;
    AdvGlowButton1: TAdvGlowButton;
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgCmsCategorie: TdlgCmsCategorie;

implementation

{$R *.dfm}

uses udmPgCmsStorage, ufrmVCLCmsEditor, udmCMSViewModel;

procedure TdlgCmsCategorie.AdvGlowButton1Click(Sender: TObject);
begin
  Close;
end;

end.
