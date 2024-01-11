unit ItalianFiscalCode;

interface

uses
  SysUtils, Classes;

{$TYPEINFO ON}

type
  TJanuaItalianFiscalCode = class(TObject)  {($M+)}
  private
    { Private declarations }
     FFiscalCode:string;
     FError:string;
     FVerify:boolean;
    FTown: string;

    FBirthDate: TDateTime; 
    FName: string; 
    FIsoCountry: string; 
    FFamilyName: string;  function GetVerify : boolean;
     function Valctrl(resto: integer): string;
     function ValPari(carattere: char): integer;
     function ValDispari(carattere: char): integer;
     function GetFiscalCode : string;
     procedure SetFiscalCode(val : string);
     function GetError : string;
  public
    procedure SetBirthDate(const Value: TDateTime);
    procedure SetFamilyName(const Value: string);
    procedure SetIsoCountry(const Value: string);
    procedure SetName(const Value: string);
    procedure SetTown(const Value: string);
    function Generate : string;
    procedure Clear;
  published
    property Verify : boolean read GetVerify;
    property FiscalCode : string read GetFiscalCode write SetFiscalCode;
    property Error : string read GetError;
    property BirthDate: TDateTime  read FBirthDate write SetBirthDate;
    property Name: string read FName write SetName;
    property FamilyName: string  read FFamilyName write SetFamilyName;
    property IsoCountry: string  read FIsoCountry write SetIsoCountry;
    property Town: string  read FTown write SetTown;

  end;


implementation


function TJanuaItalianFiscalCode.ValPari(carattere: char): integer;
//var
//  a: integer;
begin
    // a := ord((carattere));

    case carattere
    of
          'A': Result :=  (0);
          'B': Result :=  (1);
          'C': Result :=  (2);
          'D': Result :=  (3);
          'E': Result :=  (4);
          'F': Result :=  (5);
          'G': Result :=  (6);
          'H': Result :=  (7);
          'I': Result :=  (8);
          'J': Result :=  (9);
          'K': Result :=  (10);
          'L': Result :=  (11);
          'M': Result :=  (12);
          'N': Result :=  (13);
          'O': Result :=  (14);
          'P': Result :=  (15);
          'Q': Result :=  (16);
          'R': Result :=  (17);
          'S': Result :=  (18);
          'T': Result :=  (19);
          'U': Result :=  (20);
          'V': Result :=  (21);
          'W': Result :=  (22);
          'X': Result :=  (23);
          'Y': Result :=  (24);
          'Z': Result :=  (25);

          '0': Result :=  (0);
          '1': Result :=  (1);
          '2': Result :=  (2);
          '3': Result :=  (3);
          '4': Result :=  (4);
          '5': Result :=  (5);
          '6': Result :=  (6);
          '7': Result :=  (7);
          '8': Result :=  (8);
          '9': Result :=  (9);
else
      Result := (-1);
end;

end;

function TJanuaItalianFiscalCode.ValDispari(carattere: char): integer;
begin
    case (carattere)
    of

          'A': Result :=  (1);
          'B': Result :=  (0);
          'C': Result :=  (5);
          'D': Result :=  (7);
          'E': Result :=  (9);
          'F': Result :=  (13);
          'G': Result :=  (15);
          'H': Result :=  (17);
          'I': Result :=  (19);
          'J': Result :=  (21);
          'K': Result :=  (2);
          'L': Result :=  (4);
          'M': Result :=  (18);
          'N': Result :=  (20);
          'O': Result :=  (11);
          'P': Result :=  (3);
          'Q': Result :=  (6);
          'R': Result :=  (8);
          'S': Result :=  (12);
          'T': Result :=  (14);
          'U': Result :=  (16);
          'V': Result :=  (10);
          'W': Result :=  (22);
          'X': Result :=  (25);
          'Y': Result :=  (24);
          'Z': Result :=  (23);

          '0': Result :=  (1);
          '1': Result :=  (0);
          '2': Result :=  (5);
          '3': Result :=  (7);
          '4': Result :=  (9);
          '5': Result :=  (13);
          '6': Result :=  (15);
          '7': Result :=  (17);
          '8': Result :=  (19);
          '9': Result :=  (21);
          else Result := (-1);
          end;
end;


//------------------------------------------------------------
function TJanuaItalianFiscalCode.valCtrl(resto: integer): string;
begin
    case(resto)
    of
          0: Result :=  ('A');
          1: Result :=  ('B');
          2: Result :=  ('C');
          3: Result :=  ('D');
          4: Result :=  ('E');
          5: Result :=  ('F');
          6: Result :=  ('G');
          7: Result :=  ('H');
          8: Result :=  ('I');
          9: Result :=  ('J');
          10: Result :=  ('K');
          11: Result :=  ('L');
          12: Result :=  ('M');
          13: Result :=  ('N');
          14: Result :=  ('O');
          15: Result :=  ('P');
          16: Result :=  ('Q');
          17: Result :=  ('R');
          18: Result :=  ('S');
          19: Result :=  ('T');
          20: Result :=  ('U');
          21: Result :=  ('V');
          22: Result :=  ('W');
          23: Result :=  ('X');
          24: Result :=  ('Y');
          25: Result :=  ('Z');
        else Result := ('-1');
    end;
end;

function TJanuaItalianFiscalCode.GetVerify: boolean;
begin
  Result := FVerify
end;

function TJanuaItalianFiscalCode.GetFiscalCode: string;
begin
  Result := FFiscalCode
end;

procedure TJanuaItalianFiscalCode.SetBirthDate(const Value: TDateTime);
begin
  FBirthDate := Value;
end;

procedure TJanuaItalianFiscalCode.SetFamilyName(const Value: string);
begin
  FFamilyName := Value;
end;

procedure TJanuaItalianFiscalCode.SetFiscalCode(val : string);
var
   somma, i,  resto :integer;
begin
   FError := '';
   FFiscalCode := UpperCase(val);

   somma := 0;
   if length(FFiscalCode) = 16 then
   begin     // esegue la verifica del codice fiscale solo se questo è
   // lungo 16
    for  i := 1 to 15
    do begin
        resto :=  (i mod 2);

        if resto = 0 then
           somma := somma + valPari(FFiscalCode[i])
        else
           somma := somma + valDispari(FFiscalCode[i]);
   end;
    resto := (somma mod 26);
    if (valCtrl(resto) = FFiscalCode[16]) then
        FVerify := True
    else
      begin
          FVerify := False;
          FError := ('Attenzione Codice fiscale formalmente errato');
      end;
    end
    else
    begin
          FVerify := False;
          FError := ('Attenzione Errata lunghezza del codice fiscale.');
    end;
end;

procedure TJanuaItalianFiscalCode.Clear;
begin
  // This funcion Clear all the Variables inside the Fiscal Code
  self.FFiscalCode := '';
  self.FError := '';
  self.FVerify := False;
  self.FTown := '';

end;

function TJanuaItalianFiscalCode.Generate: string;
begin
  // This funcion Generates The Fiscal Code using all the Variables.
end;

procedure TJanuaItalianFiscalCode.SetIsoCountry(const Value: string);
begin
  FIsoCountry := Value;
end;

procedure TJanuaItalianFiscalCode.SetName(const Value: string);
begin
  FName := Value;
end;

procedure TJanuaItalianFiscalCode.SetTown(const Value: string);
begin
  FTown := Value;
end;

function TJanuaItalianFiscalCode.GetError: string;
begin
  Result := FError
end;

end.
