unit januaPrinters;

interface

uses
  SysUtils, Classes, MidasLib, DBClient, DB, Printers;

type
  TJanuaPrinters = class(TComponent)
  private
    FPrinters: TClientDataset;
    FPrinterIndex: integer;
    FPrinterName: string;
    procedure setupPrinters;
    procedure setupDataset;
    procedure SetPrinterIndex(const Value: integer);
    procedure SetPrinterName(const Value: string);

    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent) ; override;
  published
    { Published declarations }
    property Printers: TClientDataset read FPrinters;
    property PrinterName: string read FPrinterName write SetPrinterName;
    property PrinterIndex: integer read FPrinterIndex write SetPrinterIndex;
    function FindPrinter(printername: string): integer; 
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Januaproject', [TJanuaPrinters]);
end;

{ TJanuaPrinters }


{ TJanuaPrinters }

constructor TJanuaPrinters.Create(AOwner: TComponent);
begin
  inherited;
  FPrinters := TClientDataset.Create(self);
end;

function TJanuaPrinters.FindPrinter(printername: string): integer;
begin
     setupPrinters;
     if FPrinters.Locate('PrinterName', printername, [loPartialKey]) then
        Result :=  FPrinters.FieldByName('PrinterNumber').AsInteger
     else
        Result := -1;
end;

procedure TJanuaPrinters.SetPrinterIndex(const Value: integer);
begin
  FPrinterIndex := Value;
end;

procedure TJanuaPrinters.SetPrinterName(const Value: string);
begin
  FPrinterName := Value;
end;

procedure TJanuaPrinters.setupDataset;
begin
  with FPrinters do
  begin
  with TIntegerField.Create(Self) do
    begin
      Name := 'FPrintersPrinterNumber';
      FieldKind := fkData;
      FieldName := 'FieldName';
      Size := 72;
      DataSet := FPrinters;
    end; //FieldName
  with TStringField.Create(Self) do
    begin
      Name := 'FPrintersPrinterName';
      FieldKind := fkData;
      FieldName := 'Last Name';
      DataSet := FPrinters;
    end; //Last Name
  end;

end;

procedure TJanuaPrinters.setupPrinters;
var
   januaPrinter: TPrinter;
   i: integer;
begin
      if not FPrinters.Active then FPrinters.CreateDataSet;
      FPrinters.First;
      While not FPrinters.eof do FPrinters.Delete;

      januaPrinter :=  TPrinter.Create;
      for i := 0 to januaPrinter.Printers.Count - 1 do
      begin
           FPrinters.Insert;
           FPrinters.FieldByName('PrinterNumber').AsInteger := i;
           FPrinters.FieldByName('PrinterName').AsString := januaPrinter.Printers.Strings[i];
           FPrinters.Post;
      end;
      FreeAndNil(januaPrinter);
end;

end.
