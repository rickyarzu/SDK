unit Janua.Test.dlgVCLLogin;

interface

uses
  Janua.VCL.dlgCustomLogin,
  // Windows / System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Spring.Collections, System.Json, System.Types, System.UITypes,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.ExtCtrls, VCL.Imaging.pngimage,
  // Janua
  Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Forms.Types,
  Janua.Controls.Intf, Janua.Controls.Forms.Intf, uJanuaVCLForm, Janua.System.ViewModel.Intf;

type
  TdlgVCLCarServiceLogin = class(TdlgVCLCustomLogin, IJanuaLoginForm, IJanuaForm, IJanuaControl)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgVCLCarServiceLogin: TdlgVCLCarServiceLogin;

implementation

{$R *.dfm}

procedure TdlgVCLCarServiceLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Pos('@', Self.edUserName.Text) <= 0 then
    ViewModel.SystemUserSessionModel.UserLogin.UserName.AsString := edUserName.Text +
      '@tailormadelogistic.com';
end;

end.
