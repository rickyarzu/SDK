program DilettantissimoCms;

uses
  Vcl.Forms,
  Vcl.Dialogs,
  Midaslib,
  Janua.Core.Classes,
  Janua.Core.Types,
  Vcl.Themes,
  Vcl.Styles,
  ufrmVCLCmsEditor in '..\..\..\src\VCL\Cms\ufrmVCLCmsEditor.pas' {frmVCLCmsEditor},
  uframeRichEditorRibbon in '..\..\..\src\VCL\Cms\uframeRichEditorRibbon.pas' {frameRichEditorRibbon: TFrame},
  udmJanuaCoreServer in '..\..\..\src\januacore\udmJanuaCoreServer.pas' {dmJanuaCoreServer: TDataModule},
  udmJanuaPostgresModel in '..\..\..\src\januaunidac\datamodules\udmJanuaPostgresModel.pas' {dmJanuaPostgresModel: TDataModule},
  udmPgSystemCommand in '..\..\..\src\januaunidac\datamodules\udmPgSystemCommand.pas' {dmPgSystemCommand: TDataModule},
  udlgLNDLogin in '..\..\..\src\VCL\Cms\udlgLNDLogin.pas' {dlgLNDLogin},
  udlgCmsCategorie in '..\..\..\src\VCL\Cms\udlgCmsCategorie.pas' {dlgCmsCategorie},
  udmPgCloudStorage in '..\..\..\src\januaunidac\datamodules\udmPgCloudStorage.pas' {dmPgCloudStorage: TDataModule},
  udmPgCmsStorage in '..\..\..\src\januaunidac\datamodules\udmPgCmsStorage.pas' {dmPgCmsStorage: TDataModule},
  DILConf in '..\..\..\src\januacore\custom\DILConf.pas',
  udmCMSViewModel in '..\..\..\src\VCL\Cms\udmCMSViewModel.pas' {dmCMSViewModel: TDataModule},
  udmPgAdsStorage in '..\..\..\src\januaunidac\datamodules\udmPgAdsStorage.pas' {dmPgAdsStorage: TDataModule},
  udlgMaiilSettingsTMS in '..\..\..\src\VCL\Commons\udlgMaiilSettingsTMS.pas' {dlgMaiilSettingsTMS},
  udlgMailSettings in '..\..\..\src\VCL\Commons\udlgMailSettings.pas' {OKRightDlg},
  udlgFilesUploadConverterVCL in '..\..\..\src\VCL\Cms\udlgFilesUploadConverterVCL.pas' {Form2},
  udlgInputMemo in '..\..\..\src\VCL\Cms\udlgInputMemo.pas' {dlgInputMemo},
  udlgSplash in '..\..\..\src\VCL\Cms\udlgSplash.pas' {FormSplast};

{$R *.res}

begin
(*
  udmAppConf in '\\vmware-host\Shared Folders\januaproject\Delphi\Dev\src\DataModules\udmAppConf.pas' {dmAppConf: TDataModule},
  JanuaApplicationGlobalProfile.AppName := 'LNDCms';
*)

  Application.Initialize;
  // Application.CreateForm(TdmCmsLNDGenerator, dmCmsLNDGenerator);
  Application.CreateForm(TdmCMSViewModel, dmCMSViewModel);
  Application.CreateForm(TfrmVCLCmsEditor, frmVCLCmsEditor);
  //
  Application.MainFormOnTaskbar := True;
  // Application.CreateForm(TdmJanuaPostgresModel, dmJanuaPostgresModel);
  // Application.CreateForm(TdmJanuaCoreServer, dmJanuaCoreServer);
  Application.Run;
end.
