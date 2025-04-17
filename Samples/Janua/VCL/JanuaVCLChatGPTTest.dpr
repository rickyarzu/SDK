program JanuaVCLChatGPTTest;

uses
  Vcl.Forms,
  Janua.VCL.frmDemoChatGPT in 'Janua.VCL.frmDemoChatGPT.pas' {Form2},
  Janua.Cloud.dmOpenAI in '..\..\..\src\januacore\datamodule\Janua.Cloud.dmOpenAI.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
