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
var
  pDevice: pChar;
  pDriver: pChar;
  pPort: pChar;
  hDMode: THandle;
begin
  GetMem(pDevice, cchDeviceName);
  GetMem(pDriver, MAX_PATH);
  GetMem(pPort, MAX_PATH);
  try
    try
      Printer.GetPrinter(pDevice, pDriver, pPort, hDMode);
      if lStrLen(pDriver) = 0 then
      begin
        GetProfileString('Devices', pDevice, '', pDriver, MAX_PATH);
        pDriver[pos(',', pDriver) - 1] := #0;
      end;
      if lStrLen(pPort) = 0 then
      begin
        GetProfileString('Devices', pDevice, '', pPort, MAX_PATH);
        lStrCpy(pPort, @pPort[lStrLen(pPort) + 2]);
      end;
      // StrCat(pDevice, ',');
      FDevice := StrPas(pDevice);
      FDriver := StrPas(pDriver);
      FPort := StrPas(pPort);
      // StrCat(pDevice, ',');
      Result := StrPas(pDevice);
    finally
      FreeMem(pDevice, cchDeviceName);
      FreeMem(pDriver, MAX_PATH);
      FreeMem(pPort, MAX_PATH);
    end;
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
var
  ResStr: array [0 .. 255] of Char;
begin
  StrPCopy(ResStr, NewDefPrinter);
  WriteProfileString('windows', 'device', ResStr);
  StrCopy(ResStr, 'windows');
  SendMessage(HWND_BROADCAST, WM_WININICHANGE, 0, Longint(@ResStr));
end;

procedure TJanuaPrinter.SetDefaultPrinter2(PrinterName: string);
var
  i: integer;
  Device: pChar;
  Driver: pChar;
  Port: pChar;
  HdeviceMode: THandle;
  aPrinter: TPrinter;
begin
  Printer.PrinterIndex := -1;
  GetMem(Device, 255);
  GetMem(Driver, 255);
  GetMem(Port, 255);
  aPrinter := TPrinter.Create;
  try
    for i := 0 to Printer.Printers.Count - 1 do
    begin
      if Printer.Printers[i] = PrinterName then
      begin
        aPrinter.PrinterIndex := i;
        aPrinter.GetPrinter(Device, Driver, Port, HdeviceMode);
        StrCat(Device, ',');
        StrCat(Device, Driver);
        StrCat(Device, Port);
        WriteProfileString('windows', 'device', Device);
        StrCopy(Device, 'windows');
        SendMessage(HWND_BROADCAST, WM_WININICHANGE, 0, Longint(@Device));
      end;
    end;
  finally
    aPrinter.Free;
  end;
  FreeMem(Device, 255);
  FreeMem(Driver, 255);
  FreeMem(Port, 255);
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
var
  pDevice: pChar;
  pDriver: pChar;
  pPort: pChar;
  hDMode: THandle;
begin
  GetMem(pDevice, cchDeviceName);
  GetMem(pDriver, MAX_PATH);
  GetMem(pPort, MAX_PATH);
  Printer.GetPrinter(pDevice, pDriver, pPort, hDMode);
  if lStrLen(pDriver) = 0 then
  begin
    GetProfileString('Devices', pDevice, '', pDriver, MAX_PATH);
    pDriver[pos(',', pDriver) - 1] := #0;
  end;
  if lStrLen(pPort) = 0 then
  begin
    GetProfileString('Devices', pDevice, '', pPort, MAX_PATH);
    lStrCpy(pPort, @pPort[lStrLen(pPort) + 2]);
  end;
  FDevice := StrPas(pDevice);
  FDriver := StrPas(pDriver);
  FPort := StrPas(pPort);
  FreeMem(pDevice, cchDeviceName);
  FreeMem(pDriver, MAX_PATH);
  FreeMem(pPort, MAX_PATH);
end;

constructor TJanuaPrinter.Create;
begin
  FPrintersList := TStringList.Create;
end;

end.
