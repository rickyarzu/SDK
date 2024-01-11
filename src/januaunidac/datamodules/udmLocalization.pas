unit udmLocalization;

interface

uses
  SysUtils, Classes, DB, MemDS, DBAccess, DBClient, Uni;

type
  TdmLocalization = class(TDataModule)
    qryFormLanguage: TUniQuery;
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
