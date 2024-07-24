unit udlgVCLAngeloLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Janua.VCL.dlgCustomLogin, Vcl.StdCtrls, Vcl.ExtCtrls,
  // Janua
  Janua.VCL.Interposers, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Forms.Types,
  Janua.Controls.Intf, Janua.Controls.Forms.Intf, uJanuaVCLForm, Janua.System.ViewModel.Intf;

type
  TdlgVCLAngeloLogin = class(TdlgVCLCustomLogin, IJanuaLoginForm, IJanuaForm, IJanuaControl)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgVCLAngeloLogin: TdlgVCLAngeloLogin;

implementation

{$R *.dfm}

end.
