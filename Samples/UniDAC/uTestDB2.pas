unit uTestDB2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ODBCUniProvider, DB2UniProvider, Vcl.StdCtrls, UniProvider,
  SQLServerUniProvider, Data.DB, DBAccess, Uni, UniDacVcl;

type
  TForm3 = class(TForm)
    UniConnectDialog1: TUniConnectDialog;
    UniConnection1: TUniConnection;
    SQLServerUniProvider1: TSQLServerUniProvider;
    btnConnect: TButton;
    DB2UniProvider1: TDB2UniProvider;
    procedure btnConnectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btnConnectClick(Sender: TObject);
begin
   UniConnection1.Connect;
end;

end.
