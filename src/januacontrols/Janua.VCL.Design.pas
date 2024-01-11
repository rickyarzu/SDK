unit Janua.VCL.Design;

interface

uses System.Classes, Janua.VCL.EnhCRDBGrid, Janua.VCL.EnhDBGrid, Janua.VCL.Backup, Janua.VCL.Users,
  Janua.VCL.Dialogs, Janua.VCL.Error, Janua.VCL.Health, Janua.VCL.System, Janua.VCL.TestDebug,
  Janua.VCL.TMSStyles, Janua.VCL.DirectoryBackup, Janua.VCL.Cloud, Janua.VCL.Forms,
  Janua.VCL.FootballControllers;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Januaproject', [TEnhCRDBGrid]);
  RegisterComponents('Januaproject', [TEnhDBGrid]);
  RegisterComponents('Janua System', [TJanuaVclBackupTreeMaker]);
  { Janua.VCL.Dialogs }
  RegisterComponents('Januaproject Dialogs', [TJanuaDialog]);
  RegisterComponents('Januaproject Dialogs', [TJanuaDialogInteger]);
  RegisterComponents('Januaproject Dialogs', [TJanuaDialogDate]);
  RegisterComponents('Januaproject Dialogs', [TJanuaDialogNumber]);
  RegisterComponents('Januaproject Dialogs', [TJanuaDialogText]);
  RegisterComponents('Januaproject Dialogs', [TJanuaDialogLogin]);
  { Janua.VCL.Error }
  RegisterComponents('Januaproject VCL System', [TJanuaExceptionHandler]);
  { Janua.VCL.Health }
  RegisterComponents('Januaproject VCL Controls', [TJanuaVCLDoctor]);
  { Janua.VCL.System }
  RegisterComponents('Januaproject VCL Controls', [TJanuaVCLSystem]);
  RegisterComponents('Januaproject VCL Controls', [TJanuaSystem]);
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
