program Cipher_FMX;
uses
  System.StartUpCopy,
  FMX.Forms,
  MainFormCipherFMX in '..\..\..\Lib\DelphiEncryptionCompendium\Demos\Cipher_FMX\MainFormCipherFMX.pas' {FormMain};

{$R *.res}
begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
