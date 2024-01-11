unit JanuaDatasetText;

interface

uses
  SysUtils, Classes, DB, DBClient;

type
  TJanuaDatasetText = class(TComponent)
  private
    FtemplateText: string;
    Fcaption: string;
    Fdataset: Tclientdataset;
    Factive: boolean;
    procedure SettemplateText(const Value: string);
    procedure Setdataset(const Value: Tclientdataset);
    procedure Setactive(const Value: boolean);
    { Private declarations }
  protected
    { Protected declarations }
    procedure SetCaption; 
  public
    { Public declarations }
  published
    { Published declarations }
    property templateText: string read FtemplateText write SettemplateText;
    // questo è il testo del modello, un campo viene chiamato con <nome campo>
    // per esempio <NOME> dovrà essere sostituito con il vlaore dell'attuale record..
    property caption: string read Fcaption;  // sola lettura
    // è la proprietà che scrive il valore risultato da elaborazione tempplate
    property dataset: Tclientdataset read Fdataset write Setdataset;
    property active: boolean read Factive write Setactive;
    //properità che ci dice se il calcolo è attivo o no se attivo eseguo il calcolo...
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('januaproject', [TJanuaDatasetText]);
end;

{ TJanuaDatasetText }

procedure TJanuaDatasetText.Setactive(const Value: boolean);
begin
  Factive := Value;
  if Factive then SetCaption else FCaption := '';
end;

procedure TJanuaDatasetText.SetCaption;
var
  i: integer;
begin
  if assigned(FDataset) and (FtemplateText > '') then
    begin
    Fcaption := FtemplateText;

    for i := 0 to Fdataset.FieldCount - 1 do
    begin
     Fcaption := StringReplace(Fcaption,
                  '<' + UpperCase(Fdataset.Fields[i].FieldName) + '>',
                  Fdataset.Fields[i].AsWideString, [rfReplaceAll, rfIgnoreCase] );
    end;
  end;
end;

procedure TJanuaDatasetText.Setdataset(const Value: Tclientdataset);
begin
  Fdataset := Value;
end;

procedure TJanuaDatasetText.SettemplateText(const Value: string);
begin
  FtemplateText := Value;
end;

end.
