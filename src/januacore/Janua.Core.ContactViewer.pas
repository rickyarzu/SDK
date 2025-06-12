unit Janua.Core.ContactViewer;

interface

uses
  System.SysUtils, System.Classes;

type
  TJanuaContact = class
  private
    FFullName: string;
    FPhone: string;
    FEmail: string;
    FCompany: string;
    FTitle: string;
    FAddress: string;
    FPhotoPath: string;
    FVCardPath: string;
    FVCard: TStringList;

    function ExtractVCardField(const VCardText, FieldPrefix: string): string;
  public
    constructor Create;
    destructor Destroy; override;

    // Metodi di codifica/decodifica separati dal caricamento/salvataggio
    procedure DecodeVCard; // Popola le proprietà leggendo dal contenuto di VCard
    procedure EncodeVCard; // Popola VCard leggendo dalle proprietà

    // Metodi di caricamento/salvataggio separati dalla logica di decodifica
    function LoadFromVCardFile(const FilePath: string): Boolean;
    function SaveToVCardFile(const FilePath: string): Boolean;

    procedure Clear;

    // Proprietà per accedere ai dati del contatto
    property FullName: string read FFullName write FFullName;
    property Phone: string read FPhone write FPhone;
    property Email: string read FEmail write FEmail;
    property Company: string read FCompany write FCompany;
    property Title: string read FTitle write FTitle;
    property Address: string read FAddress write FAddress;
    property PhotoPath: string read FPhotoPath write FPhotoPath;
    property VCardPath: string read FVCardPath write FVCardPath;

    // Proprietà per accedere direttamente al contenuto vCard
    property VCard: TStringList read FVCard;
  end;

implementation

uses
  System.IOUtils;

{ TJanuaContact }

constructor TJanuaContact.Create;
begin
  inherited;
  FVCard := TStringList.Create;
  Clear;
end;

destructor TJanuaContact.Destroy;
begin
  FVCard.Free;
  inherited;
end;

procedure TJanuaContact.Clear;
begin
  FFullName := '';
  FPhone := '';
  FEmail := '';
  FCompany := '';
  FTitle := '';
  FAddress := '';
  FPhotoPath := '';
  FVCardPath := '';
  FVCard.Clear;
end;

function TJanuaContact.ExtractVCardField(const VCardText, FieldPrefix: string): string;
var
  Lines: TStringList;
  I: Integer;
  Line: string;
  ValuePos: Integer;
begin
  Result := '';
  Lines := TStringList.Create;
  try
    Lines.Text := VCardText;
    for I := 0 to Lines.Count - 1 do
    begin
      Line := Lines[I];
      if Pos(FieldPrefix, Line) = 1 then
      begin
        ValuePos := Pos(':', Line);
        if ValuePos > 0 then
          Result := Copy(Line, ValuePos + 1, Length(Line));
        Break;
      end;
    end;
  finally
    Lines.Free;
  end;

  // Sostituisci le sequenze di escape comuni nei vCard
  Result := StringReplace(Result, '\n', #13#10, [rfReplaceAll]);
  Result := StringReplace(Result, '\,', ',', [rfReplaceAll]);
  Result := StringReplace(Result, '\;', ';', [rfReplaceAll]);
end;

procedure TJanuaContact.DecodeVCard;
var
  VCardText: string;
  PhotoFieldStart, PhotoFieldEnd: Integer;
  PhotoData, TempPhotoPath: string;
begin
  if FVCard.Count = 0 then
    Exit;

  VCardText := FVCard.Text;

  // Estrazione dei campi principali
  FFullName := ExtractVCardField(VCardText, 'FN:');
  if FFullName = '' then
    FFullName := ExtractVCardField(VCardText, 'N:');

  FPhone := ExtractVCardField(VCardText, 'TEL;');
  if FPhone = '' then
    FPhone := ExtractVCardField(VCardText, 'TEL:');

  FEmail := ExtractVCardField(VCardText, 'EMAIL;');
  if FEmail = '' then
    FEmail := ExtractVCardField(VCardText, 'EMAIL:');

  FCompany := ExtractVCardField(VCardText, 'ORG:');
  FTitle := ExtractVCardField(VCardText, 'TITLE:');

  FAddress := ExtractVCardField(VCardText, 'ADR;');
  if FAddress = '' then
    FAddress := ExtractVCardField(VCardText, 'ADR:');

  // Gestione della foto (se presente)
  PhotoFieldStart := Pos('PHOTO;', VCardText);
  if PhotoFieldStart > 0 then
  begin
    // Cerca la fine dei dati dell'immagine
    PhotoFieldEnd := Pos(#13#10, VCardText, PhotoFieldStart);
    if PhotoFieldEnd > 0 then
    begin
      PhotoData := Copy(VCardText, PhotoFieldStart, PhotoFieldEnd - PhotoFieldStart);

      // Se c'è un'immagine incorporata, salvarla in un file temporaneo
      if Pos('BASE64:', PhotoData) > 0 then
      begin
        try
          // Creiamo un percorso temporaneo per l'immagine
          TempPhotoPath := TPath.Combine(TPath.GetTempPath,
            'janua_contact_' + TPath.GetFileNameWithoutExtension(TGUID.NewGuid.ToString) + '.jpg');

          // Implementazione semplificata - in un'app reale, dovresti estrarre
          // e decodificare correttamente i dati base64 della foto
          // Qui lo lasciamo come esercizio futuro

          FPhotoPath := TempPhotoPath;
        except
          // In caso di errore, ignora semplicemente la foto
          FPhotoPath := '';
        end;
      end;
    end;
  end;
end;

procedure TJanuaContact.EncodeVCard;
begin
  FVCard.Clear;

  // Formato vCard standard
  FVCard.Add('BEGIN:VCARD');
  FVCard.Add('VERSION:3.0');

  if FFullName <> '' then
    FVCard.Add('FN:' + FFullName);

  if FPhone <> '' then
    FVCard.Add('TEL;TYPE=CELL:' + FPhone);

  if FEmail <> '' then
    FVCard.Add('EMAIL;TYPE=INTERNET:' + FEmail);

  if FCompany <> '' then
    FVCard.Add('ORG:' + FCompany);

  if FTitle <> '' then
    FVCard.Add('TITLE:' + FTitle);

  if FAddress <> '' then
    FVCard.Add('ADR:' + FAddress);

  // Qui potremmo implementare il salvataggio della foto,
  // ma lo lasciamo per sviluppi futuri

  FVCard.Add('END:VCARD');
end;

function TJanuaContact.LoadFromVCardFile(const FilePath: string): Boolean;
begin
  Result := False;
  Clear;

  if not FileExists(FilePath) then
    Exit;

  try
    FVCardPath := FilePath;
    FVCard.LoadFromFile(FilePath);
    DecodeVCard;
    Result := True;
  except
    on E: Exception do
    begin
      Clear;
      Result := False;
    end;
  end;
end;

function TJanuaContact.SaveToVCardFile(const FilePath: string): Boolean;
begin
  Result := False;

  try
    // Prima genera il contenuto vCard dalle proprietà
    EncodeVCard;

    // Poi salva il file
    FVCard.SaveToFile(FilePath);
    FVCardPath := FilePath;
    Result := True;
  except
    on E: Exception do
      Result := False;
  end;
end;

end.
