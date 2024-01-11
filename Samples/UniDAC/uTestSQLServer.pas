unit uTestSQLServer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBAccess, UniDacVcl, UniProvider, SQLServerUniProvider,
  Data.DB, Uni;

type
  TForm2 = class(TForm)
    UniConnection1: TUniConnection;
    SQLServerUniProvider1: TSQLServerUniProvider;
    UniConnectDialog1: TUniConnectDialog;
    btnConnect: TButton;
    procedure btnConnectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnConnectClick(Sender: TObject);
begin
   UniConnection1.Connect;
end;

end.
