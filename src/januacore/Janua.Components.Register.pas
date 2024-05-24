unit Janua.Components.Register;

interface

uses System.Classes, System.SysUtils, Janua.Core.Components;

procedure Register;

implementation

uses Janua.Core.System, Janua.Core.Functions, Janua.Core.Backup,
  Janua.Legacy.System, Janua.Legacy.Promo, Janua.Core.Legacy,
  Janua.Components.Servers, Janua.Cloud.WebServices,
  Janua.Core.Jpublic, Janua.Core.Classes,  Janua.Core.Cms, Janua.Core.DB,
  Janua.Core.Health, Janua.Core.Params, Janua.Core.Users, Janua.Core.CustomSession, Janua.Core.Http,
  Janua.Core.Feeds, Janua.Core.University, Janua.Core.Forms, Janua.Core.Pos,
  Janua.Core.Docs, Janua.Core.Ords, Janua.Core.Ftp, Janua.Core.Mobyt, Janua.Core.Conf,
  Janua.Core.Exceptions, Janua.Legacy.Anagraph, Janua.Legacy.UnderInstall, Janua.Legacy.Fakes,
  JanuaServiceTrattative, uJanuaSimulationRow, JanuaRigaDettaglio, Janua.Legacy.IBan, Janua.Legacy.Core,
  Janua.Components.Forms, Janua.Components.Dialogs, Janua.Components.Maps, Janua.Components.Mail,
  Janua.Components.Planner, Janua.Components.Cloud, Janua.Components.Remoting;

procedure InternalRegisterComponents(const Page: string; ComponentClasses: array of TComponentClass);
begin
  try
    RegisterComponents(Page, ComponentClasses);
  except
    on e: exception do
      raise exception.Create('Janua.Components.Register ' + Page + ' ' + ComponentClasses[0].ClassName +
        sLineBreak + e.Message);
  end;
end;

procedure Register;
begin
  // Janua.Components.Forms
  InternalRegisterComponents('Janua Forms', [TJanuaStyleManager]);
  InternalRegisterComponents('Janua Remoting', [TJanuaRemoteComponent]);
  // Janua.Components.Dialogs .................................................................................
  // TJanuaDialogLogin
  // TJanuaDialogText

  InternalRegisterComponents('Janua Dialogs', [TJanuaDialog]);
  InternalRegisterComponents('Janua Dialogs', [TJanuaDialogText]);
  InternalRegisterComponents('Janua Dialogs', [TJanuaDialogLogin]);
  InternalRegisterComponents('Janua Dialogs', [TJanuaInputText]);
  InternalRegisterComponents('Janua Dialogs', [TJanuaDialogInteger]);
  InternalRegisterComponents('Janua Dialogs', [TJanuaDialogDate]);
  InternalRegisterComponents('Janua Dialogs', [TJanuaDialogInteger]);
  InternalRegisterComponents('Janua Dialogs', [TJanuaDialogInteger]);
  // TJanuaDialogInteger
  InternalRegisterComponents('Janua Legacy', [TJanuaLegacyPromo]); // TJanuaLegacyPromo
  InternalRegisterComponents('Janua Legacy', [TJanuaISOCountry]);
  InternalRegisterComponents('Janua Legacy', [TJanuaIsoLanguage]);
  InternalRegisterComponents('Janua Legacy', [TJanuaSimulationRow]);
  InternalRegisterComponents('Janua Legacy', [TJanuaLegacySystem]);

  // Janua.Legacy.UnderInstall in '..\src\JanuaLegacy\Janua.Legacy.UnderInstall.pas',
  InternalRegisterComponents('Janua Legacy', [TJanuaLegacyIBAN]);
  InternalRegisterComponents('Janua Legacy', [TUnderInstall]);
  InternalRegisterComponents('Janua Legacy', [TJanuaRigaDettaglio]);
  InternalRegisterComponents('Janua Legacy', [TJanuaServiceTrattativa]);
  // Legacy
  InternalRegisterComponents('Janua Legacy', [TJanuaAnagraph]);
  InternalRegisterComponents('Janua Legacy', [TJanuaInputText]);
  InternalRegisterComponents('Janua Legacy', [TJanuaAnIdentity]);
  InternalRegisterComponents('Janua Legacy', [TJanuaAnagraphLawyer]);
  InternalRegisterComponents('Janua Legacy', [TJanuaAnagraphCarSharing]);
  InternalRegisterComponents('Janua Legacy', [TJanuaAnagraphHealth]);
  InternalRegisterComponents('Janua Legacy', [TJanuaBankAccount]);
  InternalRegisterComponents('Janua Legacy', [TJanuaAnagGroups]);
  InternalRegisterComponents('Janua Legacy', [TFlexcelImport]); //
  // TJanuaJsonDacDataset
  InternalRegisterComponents('Janua System', [TJanuaJsonDacDataset]);
  // TJanuaDatasetClone
  InternalRegisterComponents('Janua System', [TJanuaDatasetClone]);
  // TJanuaJsonDacDataset
  InternalRegisterComponents('Janua System', [TJanuaJsonDacDataset]);
  // Janua.Components.Maps  TJanuaCloudOAuth
  InternalRegisterComponents('Janua Cloud', [TJanuaStreetMap]);
  InternalRegisterComponents('Janua Cloud', [TJanuaCloudOAuth]);
  // InternalRegisterComponents('Janua Cloud', [TJanuaFacebookOAuth]);
  // Janua.Core.Mobyt  TJanuaMobyWS
  InternalRegisterComponents('Janua CRM', [TJanuaSMS]);
  // TJanuaFTP
  InternalRegisterComponents('Janua System', [TJanuaFTP]);
  { Janua.Core.Cms }
  InternalRegisterComponents('Janua System', [TJanuaRSSFeedReader]);
  { Janua.Core.Backup }
  InternalRegisterComponents('Janua System', [TJanuaDirectoryBackup]);
  InternalRegisterComponents('Janua System', [TJanuaDirBackupIO]);
  { Janua.Core.Classes }
  // InternalRegisterComponents('Janua Core Classes', [TJanuaISOCountry]);
  InternalRegisterComponents('Janua Core Business', [TJanuaIsoLanguageCountry, TJanuaIBAN, TJanuaBarcode,
    TJanuaVatCode, TJanuaFiscalCode, TJanuaVat]);
  InternalRegisterComponents('Janua System', [TJanuaFileCache]);
  // TJanuaCoreExceptionHandler
  InternalRegisterComponents('Janua System', [TJanuaCoreExceptionHandler]);

  { Janua.Core.WebServices }
  InternalRegisterComponents('Janua Cloud', [TJanuaAmazonBooks]);
  { Janua.Core.Health }
  InternalRegisterComponents('Janua Server Components', [TJanuaAnagDoctor]);
  { Janua.Core.Jpublic }
  InternalRegisterComponents('Janua Server Components', [TCountrySearch]);
  { Janua.Core.Mail }
  InternalRegisterComponents('Janua Cloud', [TJanuaMailSender, TJanuaParamsReader, TJanuaFeedReader]);
  { Janua.Core.System }
{$IFDEF fpc} {$I JanuaOS_icon.lrs}  {$ENDIF}
{$IFDEF fpc} {$I JanuaLogger_icon.lrs}  {$ENDIF}
{$IFDEF fpc} {$I JanuaIOSource_icon.lrs}  {$ENDIF}
  InternalRegisterComponents('Janua Core System', [TJanuaServerConf, TJanuaCoreLogger]);
  InternalRegisterComponents('Janua Core System', [TJanuaDBLogger]);
  InternalRegisterComponents('Janua Core System', [TJanuaIOSource]);
  { Janua.Core.Users }
  InternalRegisterComponents('Janua Server Components', [TJanuaProfile]);
  { Janua.core.Univeristy }
  InternalRegisterComponents('Janua Core Classes', [TJanuaUniProfile]);
  // TJanuaCoreFormSchemas
  InternalRegisterComponents('Janua Core Classes', [TJanuaCoreFormSchemas]);
  // TJanuaPromo
  InternalRegisterComponents('Janua Core Classes', [TJanuaPromo]);
  InternalRegisterComponents('Janua Core Classes', [TJanuaDocumentRow]);
  // TJanuaPlanner TJanuaPlannerController
  InternalRegisterComponents('Janua Core Classes', [TJanuaPlannerController]);
  // TJanuaGoogleGeoCoding
  InternalRegisterComponents('Janua Cloud', [TJanuaGoogleGeoCoding]);
  // TJanuaStreetMap
  InternalRegisterComponents('Janua Cloud', [TJanuaStreetMap]);

  // Janua Http MVC  TJanuaJsonDACRemoteDS
  // InternalRegisterComponents('Janua Cloud', [TJanuaJsonDACRemoteDS]);
  // TJanuaJsonDacDataset
  // InternalRegisterComponents('Janua Core Classes', [TJanuaJsonDacDataset]);

  // TJanuaConf
  InternalRegisterComponents('Janua System', [TJanuaConf]);
end;

end.
