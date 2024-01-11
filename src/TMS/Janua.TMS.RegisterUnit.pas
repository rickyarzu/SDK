unit Janua.TMS.RegisterUnit;

interface

uses
  // System
  System.Classes;

procedure Register;

implementation

uses
  // Cloud
  Janua.TMS.Cloud, Janua.TMS.SMS, Janua.VCL.TmsStyles, Janua.VCL.Geocoding, Janua.VCL.Users,
  // Forms
  Janua.VCL.dlgServer, Janua.VCL.Forms, {Janua.VCL.Dialogs,}
  // Janua.Legacy
  Janua.Legacy.Error, Janua.Legacy.Logger, Janua.Legacy.InputNumber, Janua.Legacy.ReadOnly,
  Janua.Legacy.SelectPrinter,
  // Janua Navigator & Main Form Framework
  Janua.TMS.NavBar;

(*
  Janua.TMS.Cloud in '..\src\TMS\Janua.TMS.Cloud.pas',
  Janua.TMS.Statistics.MainFormController in '..\src\TMS\Janua.TMS.Statistics.MainFormController.pas',
  Janua.VCL.dlgRegisterUser in '..\src\VCL\System\Janua.VCL.dlgRegisterUser.pas' {dlgRegisterUser},
  Janua.VCL.Geocoding in '..\src\VCL\Cloud\Janua.VCL.Geocoding.pas' {dmGeoCoding: TDataModule},
  Janua.VCL.Users in '..\src\VCL\System\Janua.VCL.Users.pas',
*)

procedure Register;
begin
  { Janua.TMS.NavBarFrame }
  RegisterComponents('Januaproject VCL Controls', [TJanuaTMSNavBarController]);
  // RegisterComponents('Janua Legacy VCL', [TExceptionHandler]);
  RegisterComponents('Janua Legacy VCL', [TJanuaSelectPrinter]);
  RegisterComponents('Janua Legacy VCL', [TJanuaReadOnly]);
  RegisterComponents('Janua Legacy VCL', [TJanuaInputNumber]);
  // RegisterComponents('Janua Legacy VCL', [Janua.Legacy.Logger.TJanuaLogger]);
  RegisterComponents('Janua Legacy VCL', [Janua.Legacy.Error.TExceptionHandler]);
  // ************************************ Controls *******************************************************************
  { Janua.VCL.TMSStyles }
  RegisterComponents('Januaproject VCL Controls', [TJanuaTMSStyleManager]);
  // TJanuaFormStyler
  RegisterComponents('Januaproject VCL Controls', [TJanuaFormStyler]);

  // ************************************ Dialogs ********************************************************************
  { Janua.VCL.Dialogs }
  // RegisterComponents('Janua Dialogs', [TJanuaVCLDialogServer]);
  // RegisterComponents('Janua Dialogs', [TJanuaDialogSelectSchema]);
  // RegisterComponents('Janua Dialogs', [TJanuaDialog]);
  // RegisterComponents('Janua Dialogs', [TJanuaDialogInteger]);
  // RegisterComponents('Janua Dialogs', [TJanuaDialogDate]);
  // RegisterComponents('Janua Dialogs', [TJanuaDialogNumber]);
  // RegisterComponents('Janua Dialogs', [TJanuaDialogText]);
  // RegisterComponents('Janua Dialogs', [TJanuaDialogLogin]);
  RegisterComponents('Janua Dialogs', [TJanuaVCLUserDialog]);
  { Janua.VCL.dlgServer }
  // RegisterComponents('Janua Dialogs', [TJanuaVCLDBServerDialog]);

  { Janua.VCL.Geocoding }
  RegisterComponents('Januaproject VCL Cloud', [TJanuaVCLGeoMaps]);

  { Janua.VCL.Users }
  RegisterComponents('Januaproject VCL Controls', [TJanuaVCLUser]);
  RegisterComponents('Januaproject VCL Controls', [TJanuaVCLProfile]);

  // ************************************ Controller ******************************************************************
  { Janua.VCL.Forms }
  RegisterComponents('Januaproject VCL Forms', [TJanuaVCLFrame]);
  RegisterComponents('Januaproject VCL Forms', [TJanuaVCLForm]);
  RegisterComponents('Januaproject VCL Forms', [TJanuaFormsController]);
end;

end.
