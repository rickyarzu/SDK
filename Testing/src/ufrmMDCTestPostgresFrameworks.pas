unit ufrmMDCTestPostgresFrameworks;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, AdvMemo, advmjson, AdvOfficePager, Data.DB,
  Vcl.Grids, Vcl.DBGrids, CRGrid, DBAdvMemo;

type
  TfrmMDCTestPostgresFrameworks = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePager11: TAdvOfficePage;
    AdvOfficePager12: TAdvOfficePage;
    AdvOfficePager13: TAdvOfficePage;
    AdvMemo1: TAdvMemo;
    CRDBGrid1: TCRDBGrid;
    CRDBGrid2: TCRDBGrid;
    DBAdvMemo1: TDBAdvMemo;
    DBAdvMemo2: TDBAdvMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMDCTestPostgresFrameworks: TfrmMDCTestPostgresFrameworks;

implementation

{$R *.dfm}

uses udmTestPgFrameworks;

procedure TfrmMDCTestPostgresFrameworks.Button1Click(Sender: TObject);
begin
   if not Assigned(dmTestPgFrameworks) then
     Application.CreateForm(TdmTestPgFrameworks, dmTestPgFrameworks);
   dmTestPgFrameworks.JanuaServerConf1.ExecDialogConfig;
   dmTestPgFrameworks.JanuaServerConf1.TestAllServers;
   self.AdvMemo1.Lines.Text := dmTestPgFrameworks.JanuaServerConf1.TestErrors.AsJsonPretty;
end;

end.
