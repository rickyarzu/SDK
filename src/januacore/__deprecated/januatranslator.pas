unit januatranslator;

interface

uses
  SysUtils, Classes;

type
  TJanuaTranslator = class(TComponent)
  private
    FLanguageCode: string;
    procedure SetLanguageCode(const Value: string);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
    property LanguageCode: string read FLanguageCode write SetLanguageCode;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Janua System', [TJanuaTranslator]);
end;

{ TJanuaTranslator }

procedure TJanuaTranslator.SetLanguageCode(const Value: string);
begin
  FLanguageCode := Value;
end;



end.
