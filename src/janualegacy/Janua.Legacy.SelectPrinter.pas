unit Janua.Legacy.SelectPrinter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, VCL.Printers, VCL.Controls;

type
  TJanuaPaperFormat = (jpfA3, jpfA4, jpfA5, jpfA6);

type
  TJanuaPrinter = Class(TPersistent)
  private
    FPrintersList: TStrings;
    FActive: boolean;
    FDriver: string;
    FDevice: string;
    FPort: string;
    FPaperFormat: TJanuaPaperFormat;
    procedure SetPrintersList(const Value: TStrings);
    procedure SetActive(const Value: boolean);
    procedure SetDevice(const Value: string);
    procedure SetDriver(const Value: string);
    procedure SetPort(const Value: string);
    procedure SetPaperFormat(const Value: TJanuaPaperFormat);
  protected
    procedure SetDefaultPrinter1(NewDefPrinter: string);
    procedure SetDefaultPrinter2(PrinterName: string);
    procedure Activate;
    function GetDefaultPrinter: string;
  public
    constructor Create;
    destructor Destroy; override;
  published
    property PrintersList: TStrings read FPrintersList write SetPrintersList;
    property Active: boolean read FActive write SetActive;
    property Device: string read FDevice write SetDevice;
    property Driver: string read FDriver write SetDriver;
    property Port: string read FPort write SetPort;
    property DefaultPrinter: string read GetDefaultPrinter write SetDefaultPrinter2;
    property PaperFormat: TJanuaPaperFormat read FPaperFormat write SetPaperFormat;
  End;

type
  TJanuaSelectPrinter = class(TComponent)
  private
    FPrinterID: integer;
    FPriterName: widestring;
    FJanuaPrinter: TJanuaPrinter;
    procedure SetPrinterID(const Value: integer);
    procedure SetPriterName(const Value: widestring);
    procedure SetJanuaPrinter(const Value: TJanuaPrinter);
    { Private declarations }
  protected
    { Protected declarations }

  public
    { Public declarations }
    function Execute: boolean;
    function GetDefaultPrinter: string;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property PriterName: widestring read FPriterName write SetPriterName;
    property PrinterID: integer read FPrinterID write SetPrinterID;
    property JanuaPrinter: TJanuaPrinter read FJanuaPrinter write SetJanuaPrinter;
  end;

implementation

uses udlgSelectPrinter;

{ TJanuaSelectPrinter }

function TJanuaSelectPrinter.GetDefaultPrinter: string;
begin
  Result := self.JanuaPrinter.DefaultPrinter;
end;

constructor TJanuaSelectPrinter.Create(AOwner: TComponent);
begin
  inherited;
  self.FJanuaPrinter := TJanuaPrinter.Create;
end;

destructor TJanuaSelectPrinter.Destroy;
begin
  FJanuaPrinter.Free;
  inherited;
end;

function TJanuaSelectPrinter.Execute: boolean;
var
  stampante: TPrinter;
  i: integer;
  d: TdlgSelectPrinter;
  nomestampante: string;
begin
  d := TdlgSelectPrinter.Create(nil);
  Result := False;

  try
    with d do
    begin
      if not memPrinters.Active then
        memPrinters.CreateDataSet;
      stampante := TPrinter.Create;
      try
        for i := 0 to stampante.Printers.Count - 1 do
        begin
          memPrinters.Insert;
          memPrintersPrinterNumber.Value := i;
          memPrintersPrinterName.Value := stampante.Printers.Strings[i];
          memPrinters.Post;
        end;
      finally
        nomestampante := GetDefaultPrinter;
        memPrinters.Locate('PrinterName', nomestampante, []);
        stampante.Free;
      end;
      d.JvDBLookupCombo1.Value := memPrintersPrinterNumber.AsString;
      d.ShowModal;
      if d.ModalResult = mrOK then
      begin
        FPriterName := d.memPrintersPrinterName.AsWideString;
        FPrinterID := d.memPrintersPrinterNumber.AsInteger;
        Result := True;
      end;
    end;
  finally
    FreeAndNil(d);
  end;

end;

procedure TJanuaSelectPrinter.SetJanuaPrinter(const Value: TJanuaPrinter);
begin
  FJanuaPrinter := Value;
end;

procedure TJanuaSelectPrinter.SetPrinterID(const Value: integer);
begin
  FPrinterID := Value;
end;

procedure TJanuaSelectPrinter.SetPriterName(const Value: widestring);
begin
  FPriterName := Value;
end;

{ TJanuaPrinter }

destructor TJanuaPrinter.Destroy;
begin
  FPrintersList.Free;
  inherited;
end;

function TJanuaPrinter.GetDefaultPrinter: string;
begin
  try
    // Set PrinterIndex to -1 to ensure it points to the default printer
    Printer.PrinterIndex := -1;

    // Get the name of the default printer
    Result := Printer.Printers[Printer.PrinterIndex];

  except
    on e: exception do
    begin
      Result := '';
    end;
  end;
end;

procedure TJanuaPrinter.SetActive(const Value: boolean);
begin
  if FActive <> Value then
  begin
    if Value then
      Activate;
    FActive := Value;
  end;

end;

procedure TJanuaPrinter.SetDefaultPrinter1(NewDefPrinter: string);
begin
  var
  PrinterIndex := Printer.Printers.IndexOf(NewDefPrinter);

  if PrinterIndex <> -1 then
  begin
    // Set the selected printer as the default for the application
    Printer.PrinterIndex := PrinterIndex;
  end;
end;

procedure TJanuaPrinter.SetDefaultPrinter2(PrinterName: string);
begin

  var
  PrinterIndex := Printer.Printers.IndexOf(PrinterName);

  if PrinterIndex <> -1 then
  begin
    // Set the selected printer as the default for the application
    Printer.PrinterIndex := PrinterIndex;
  end;
end;

procedure TJanuaPrinter.SetDevice(const Value: string);
begin
  FDevice := Value;
end;

procedure TJanuaPrinter.SetDriver(const Value: string);
begin
  FDriver := Value;
end;

procedure TJanuaPrinter.SetPaperFormat(const Value: TJanuaPaperFormat);
begin
  FPaperFormat := Value;
end;

procedure TJanuaPrinter.SetPort(const Value: string);
begin
  FPort := Value;
end;

procedure TJanuaPrinter.SetPrintersList(const Value: TStrings);
begin
  FPrintersList := Value;
end;

procedure TJanuaPrinter.Activate;
begin
  FPrintersList.Assign(Printer.Printers)
end;

constructor TJanuaPrinter.Create;
begin
  FPrintersList := TStringList.Create;
end;

end.
