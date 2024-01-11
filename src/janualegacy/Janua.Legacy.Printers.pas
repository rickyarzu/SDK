unit Janua.Legacy.Printers;

interface

uses
  System.SysUtils, System.Classes,  Data.DB, Vcl.Printers,
  // FireDac
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TJanuaLegacyPrinters = class(TComponent)
  private
    FPrinters: TFDMemTable;
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
    constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
    property Printers: TFDMemTable read FPrinters;
    property PrinterName: string read FPrinterName write SetPrinterName;
    property PrinterIndex: integer read FPrinterIndex write SetPrinterIndex;
    function FindPrinter(PrinterName: string): integer;
  end;

implementation

{ TJanuaPrinters }

{ TJanuaPrinters }

constructor TJanuaLegacyPrinters.Create(AOwner: TComponent);
begin
  inherited;
  FPrinters := TFDMemTable.Create(self);
end;

function TJanuaLegacyPrinters.FindPrinter(PrinterName: string): integer;
begin
  setupPrinters;
  if FPrinters.Locate('PrinterName', PrinterName, [loPartialKey]) then
    Result := FPrinters.FieldByName('PrinterNumber').AsInteger
  else
    Result := -1;
end;

procedure TJanuaLegacyPrinters.SetPrinterIndex(const Value: integer);
begin
  FPrinterIndex := Value;
end;

procedure TJanuaLegacyPrinters.SetPrinterName(const Value: string);
begin
  FPrinterName := Value;
end;

procedure TJanuaLegacyPrinters.setupDataset;
begin
  with FPrinters do
  begin
    with TIntegerField.Create(self) do
    begin
      Name := 'FPrintersPrinterNumber';
      FieldKind := fkData;
      FieldName := 'FieldName';
      Size := 72;
      DataSet := FPrinters;
    end; // FieldName
    with TStringField.Create(self) do
    begin
      Name := 'FPrintersPrinterName';
      FieldKind := fkData;
      FieldName := 'Last Name';
      DataSet := FPrinters;
    end; // Last Name
  end;

end;

procedure TJanuaLegacyPrinters.setupPrinters;
var
  januaPrinter: TPrinter;
  i: integer;
begin
  if not FPrinters.Active then
    FPrinters.CreateDataSet;
  FPrinters.First;
  While not FPrinters.eof do
    FPrinters.Delete;

  januaPrinter := TPrinter.Create;
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
