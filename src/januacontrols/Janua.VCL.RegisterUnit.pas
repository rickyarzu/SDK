unit Janua.VCL.RegisterUnit;

interface

uses
   System.Classes,  Janua.VCL.Dialogs, Janua.VCL.EnhCRDBGrid, Janua.VCL.EnhDBGrid,
  Janua.VCL.Backup, Janua.VCL.Users,
  Janua.VCL.Error, Janua.VCL.Health, Janua.VCL.System, Janua.VCL.TestDebug,
  Janua.VCL.TMSStyles, Janua.VCL.DirectoryBackup, Janua.VCL.Cloud, Janua.VCL.Forms,
  Janua.VCL.FootballControllers;

procedure Register;

implementation

procedure Register;
begin
  { Janua.VCL.Dialogs }
  RegisterComponents('Janua Dialogs', [TJanuaVCLDialogServer]);
  RegisterComponents('Janua Dialogs', [TJanuaDialogSelectSchema]);
  RegisterComponents('Janua Dialogs', [TJanuaDialog]);
  RegisterComponents('Janua Dialogs', [TJanuaDialogInteger]);
  RegisterComponents('Janua Dialogs', [TJanuaDialogDate]);
  RegisterComponents('Janua Dialogs', [TJanuaDialogNumber]);
  RegisterComponents('Janua Dialogs', [TJanuaDialogText]);
  RegisterComponents('Janua Dialogs', [TJanuaDialogLogin]);




  RegisterComponents('Janua VCL Controls', [TEnhCRDBGrid]);
  RegisterComponents('Janua VCL Controls', [TEnhDBGrid]);
  RegisterComponents('Janua VCL Controls', [TJanuaVclBackupTreeMaker]);

  { Janua.VCL.Error }
  RegisterComponents('Janua VCL System', [TJanuaExceptionHandler]);
  { Janua.VCL.Health }
  RegisterComponents('Janua VCL Controls', [TJanuaVCLDoctor]);
  { Janua.VCL.System }
  RegisterComponents('Janua VCL Controls', [TJanuaVCLSystem]);
  RegisterComponents('Janua VCL Controls', [TJanuaSystem]);
  //
  { Janua.VCL.TestDebug }
  RegisterComponents('Januaproject', [TJanuaVCLTestLog]);
  { Janua.VCL.Users }
  RegisterComponents('Januaproject VCL Controls', [TJanuaVCLUser]);
  RegisterComponents('Januaproject VCL Controls', [TJanuaVCLProfile]);
  { Janua.VCL.TMSStyles }
  RegisterComponents('Januaproject VCL Controls', [TJanuaTMSStyleManager]);
  // TJanuaFormStyler
  RegisterComponents('Januaproject VCL Controls', [TJanuaFormStyler]);
  // TJanuaDirBackupIO
  RegisterComponents('Januaproject VCL System', [TJanuaVCLDirBackupIO]);
  // TJanuaVCLImageController
  RegisterComponents('Januaproject VCL Controllers', [TJanuaVCLImageController]);
  { Janua.VCL.Forms }
  RegisterComponents('Januaproject VCL Forms', [TJanuaVCLFrame]);
  RegisterComponents('Januaproject VCL Forms', [TJanuaVCLForm]);
  { Janua.VCL.Football }
  RegisterComponents('Januaproject VCL Controllers', [TJanuaVCLFootballRankingController]);
end;

end.
