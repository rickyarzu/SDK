unit uJanuaPgServerControllerVCL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uJanuaPostgresServerController, Janua.Core.Classes, Janua.Core.Params,
  Janua.Core.System, Janua.Core.Mail, Janua.Postgres.System, Janua.Core.Customcontrols, Janua.VCL.Dialogs,
  Janua.Core.Servers;

type
  TJanuaPostgresServerController1 = class(TJanuaPostgresServerController)
    JanuaDialogLogin1: TJanuaDialogLogin;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  JanuaPostgresServerController1: TJanuaPostgresServerController1;

implementation

{$R *.dfm}

end.
