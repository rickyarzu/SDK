unit Janua.TMLogistic.dlgVCLLogin;

interface

uses
  Janua.VCL.dlgCustomLogin,
  // Windows / System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Spring.Collections, System.Json, System.Types, System.UITypes,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls,
  // Janua
  Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Forms.Types,
  Janua.Controls.Intf, Janua.Controls.Forms.Intf, uJanuaVCLForm, Janua.System.ViewModel.Intf, VCL.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TdlgVCLTMLogisticLogin = class(TdlgVCLCustomLogin, IJanuaLoginForm, IJanuaForm, IJanuaControl)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgVCLTMLogisticLogin: TdlgVCLTMLogisticLogin;

implementation

{$R *.dfm}

procedure TdlgVCLTMLogisticLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Pos('@', Self.edUserName.Text) <= 0 then
    ViewModel.SystemUserSessionModel.UserLogin.UserName.AsString := edUserName.Text + '@tailormadelogistic.com';
  inherited;
end;

end.
