unit januaCoreDesign;

interface

uses

  {$IFNDEF FPC}
  Janua.Core.System, Janua.Core.Functions, Janua.Core.Anagraph, Janua.Core.Backup,
  Janua.Core.Jpublic, Janua.Core.Classes, Janua.Core.Mail, System.Classes, Janua.Core.Cms,
  Janua.Core.Health, Janua.Core.Params, Janua.Core.Users, Janua.Data.CustomSession,
  Janua.Core.Feeds, Janua.Core.University, Janua.Core.WebServices, Janua.Core.Forms, Janua.Core.Pos,
  Janua.Core.Docs, Janua.Core.Ords
  {$ENDIF}
  {$IFDEF FPC}
     Classes,  JanuaCoreFunctions, JanuaCoreClasses, JanuaCoreParams
  {$ENDIF}

  ;

procedure Register;

implementation

procedure Register;
begin
  {$ifdef fpc}
  RegisterComponents('Janua Core', [TJanuaISOCountry]);
  RegisterComponents('Janua Core', [TJanuaIsoLanguageCountry]);
  RegisterComponents('Janua Core', [TJanuaIBAN]); //
  RegisterComponents('Janua Core', [TJanuaBarcode]);
  RegisterComponents('Janua Core', [TJanuaVatCode]);
  RegisterComponents('Janua Core', [TJanuaFiscalCode]);
  RegisterComponents('Janua Core', [TJanuaVat]);
  { JanuaCoreParams }
  RegisterComponents('Janua Core', [TJanuaParamsReader]);
  {$endif}
    {$IFNDEF FPC}
  { Janua.Core.Cms }
  RegisterComponents('Janua System', [TJanuaRSSFeedReader]);
  { Janua.Core.Backup }
  RegisterComponents('Janua System', [TJanuaDirectoryBackup]);
  RegisterComponents('Janua System', [TJanuaDirBackupIO]);
  { Janua.Core.Classes }
  RegisterComponents('Janua Core Classes', [TJanuaISOCountry]);
  RegisterComponents('Janua Core Classes', [TJanuaIsoLanguageCountry]);
  RegisterComponents('Janua Core Classes', [TJanuaIBAN]); //
  RegisterComponents('Janua Core Classes', [TJanuaBarcode]);
  RegisterComponents('Janua Core Classes', [TJanuaVatCode]);
  RegisterComponents('Janua Core Classes', [TJanuaFiscalCode]);
  RegisterComponents('Janua Core Classes', [TJanuaVat]);
  { Janua.Core.WebServices }
  RegisterComponents('Janua Core Classes', [TJanuaAmazonBooks]);
  { Janua.Core.Health }
  RegisterComponents('Janua Server Components', [TJanuaAnagDoctor]);
  { Janua.Core.Jpublic }
  RegisterComponents('Janua Server Components', [TCountrySearch]);
  { Janua.Core.Mail }
  RegisterComponents('Janua System', [TJanuaMailSender]);
  { Janua.Core.Params }
  RegisterComponents('Janua System', [TJanuaParamsReader]);
  { Janua.Core.System }
  RegisterComponents('Janua System', [TJanuaCoreOS]);
  RegisterComponents('Janua System', [TJanuaOS]);
  RegisterComponents('Janua System', [TJanuaApplicationProfile]);
  RegisterComponents('Janua System', [TJanuaCoreLogger]);
  RegisterComponents('Janua System', [TJanuaIOSource]);
  { Janua.Core.Users }
  RegisterComponents('Janua Server Components', [TJanuaProfile]);
  { Janua.Core.Feeds }
  RegisterComponents('Janua System', [TJanuaFeedReader]);
  { Janua.core.Univeristy }
  RegisterComponents('Janua System', [TJanuaUniProfile]);
  // TJanuaCoreFormSchemas
  RegisterComponents('Janua System', [TJanuaCoreFormSchemas]);
  // TJanuaPromo
  RegisterComponents('Janua Pos', [TJanuaPromo]);

  RegisterComponents('Janua Docs', [TJanuaDocumentRow]);
  {$ENDIF}

  {$IFDEF fpc}
  //{$I JanuaOS_icon.lrs}
  //{$I JanuaApplicationProfile_icon.lrs}
  //{$I JanuaLogger_icon.lrs}
  //{$I JanuaIOSource_icon.lrs}
  {$ENDIF}
end;

end.
