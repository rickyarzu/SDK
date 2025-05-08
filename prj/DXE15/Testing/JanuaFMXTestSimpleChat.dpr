program JanuaFMXTestSimpleChat;

uses
  System.StartUpCopy,
  FMX.Forms,
  Janua.Test.FMX.frmChatGPTSimple in '..\..\..\src\FMX\Test\Janua.Test.FMX.frmChatGPTSimple.pas' {Form3},
  Janua.Cloud.dmOpenAI in '..\..\..\src\januacore\datamodule\Janua.Cloud.dmOpenAI.pas' {dmCloudOpenAI: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TdmCloudOpenAI, dmCloudOpenAI);
  Application.Run;
end.
