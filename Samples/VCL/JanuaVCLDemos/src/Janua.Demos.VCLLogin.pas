unit Janua.Demos.VCLLogin;

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
  Janua.Controls.Intf, Janua.Controls.Forms.Intf, uJanuaVCLForm, Janua.System.ViewModel.Intf, VCL.ExtCtrls, SVGIconImage;

type
  TdlgJanuaDemosVCLLogin = class(TdlgVCLCustomLogin, IJanuaLoginForm, IJanuaForm, IJanuaControl)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgJanuaDemosVCLLogin: TdlgJanuaDemosVCLLogin;

implementation

{$R *.dfm}

end.
