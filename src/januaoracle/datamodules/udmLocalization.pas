unit udmLocalization;

interface

uses
  SysUtils, Classes, DB, MemDS, DBAccess, Ora, DBClient;

type
  TdmLocalization = class(TDataModule)
    qryFormLanguage: TOraQuery;
    qryFormLanguageAPPLICATIONNAME: TWideStringField;
    qryFormLanguageISOLANGUAGE: TWideStringField;
    qryFormLanguageFORMNAME: TWideStringField;
    qryFormLanguageOBJECTNAME: TWideStringField;
    qryFormLanguageTEXT: TWideStringField;
    cdsFormLanguage: TClientDataSet;
    cdsFormLanguageAPPLICATIONNAME: TWideStringField;
    cdsFormLanguageISOLANGUAGE: TWideStringField;
    cdsFormLanguageFORMNAME: TWideStringField;
    cdsFormLanguageOBJECTNAME: TWideStringField;
    cdsFormLanguageTEXT: TWideStringField;
    cdsFormLanguageISNEW: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmLocalization: TdmLocalization;

implementation

{$R *.dfm}

end.
