program LndCms;

uses
  Vcl.Forms,
  Vcl.Dialogs,
  Midaslib,
  Janua.Core.Classes,
  Janua.Core.Types,
  Vcl.Themes,
  Vcl.Styles,
  System.SysUtils,
  System.Classes,
  ufrmVCLCmsEditor in '..\..\..\src\VCL\Cms\ufrmVCLCmsEditor.pas' {frmVCLCmsEditor},
  uframeRichEditorRibbon in '..\..\..\src\VCL\Cms\uframeRichEditorRibbon.pas' {frameRichEditorRibbon: TFrame},
  udmJanuaPostgresModel in '..\..\..\src\januaunidac\datamodules\udmJanuaPostgresModel.pas' {dmJanuaPostgresModel: TDataModule},
  udmPgSystemCommand in '..\..\..\src\januaunidac\datamodules\udmPgSystemCommand.pas' {dmPgSystemCommand: TDataModule},
  udlgLNDLogin in '..\..\..\src\VCL\Cms\udlgLNDLogin.pas' {dlgLNDLogin},
  udlgCmsCategorie in '..\..\..\src\VCL\Cms\udlgCmsCategorie.pas' {dlgCmsCategorie},
  udmPgCmsStorage in '..\..\..\src\januaunidac\datamodules\udmPgCmsStorage.pas' {dmPgCmsStorage: TDataModule},
  udmPgCloudStorage in '..\..\..\src\januaunidac\datamodules\udmPgCloudStorage.pas' {dmPgCloudStorage: TDataModule},
  udlgSplash in '..\..\..\src\VCL\Cms\udlgSplash.pas' {FormSplast},
  udmCMSViewModel in '..\..\..\src\VCL\Cms\udmCMSViewModel.pas' {dmCMSViewModel: TDataModule},
  udlgFilesUploadConverterVCL in '..\..\..\src\VCL\Cms\udlgFilesUploadConverterVCL.pas' {Form2},
  uDMLndSession in '..\..\..\src\januacore\custom\uDMLndSession.pas' {dmLndSession: TDataModule},
  udmPgAdsStorage in '..\..\..\src\januaunidac\datamodules\udmPgAdsStorage.pas' {dmPgAdsStorage: TDataModule},
  LNDConf in '..\..\..\src\januacore\custom\LNDConf.pas',
  udlgInputMemo in '..\..\..\src\VCL\Cms\udlgInputMemo.pas' {dlgInputMemo},
  udlgMailSettings in '..\..\..\src\VCL\Commons\udlgMailSettings.pas' {OKRightDlg},
  udlgMaiilSettingsTMS in '..\..\..\src\VCL\Commons\udlgMaiilSettingsTMS.pas' {dlgMaiilSettingsTMS},
  Janua.Core.DataModule in '..\..\..\src\januacore\datamodule\Janua.Core.DataModule.pas' {JanuaCoreDataModule: TDataModule},
  udmPgStorage in '..\..\..\src\januaunidac\datamodules\udmPgStorage.pas';

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
  Application.CreateForm(TJanuaCoreDataModule, JanuaCoreDataModule);
  //
  Application.MainFormOnTaskbar := True;
  // Application.CreateForm(TdmJanuaPostgresModel, dmJanuaPostgresModel);
  // Application.CreateForm(TdmJanuaCoreServer, dmJanuaCoreServer);
  Application.Run;

end.
