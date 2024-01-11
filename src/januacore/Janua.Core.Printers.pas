unit Janua.Core.Printers;

interface

{$I JANUACORE.INC}

uses
  SysUtils, Classes, Janua.Core.Classes
{$IFDEF MSWINDOWS} , Winapi.Windows {$ENDIF MSWINDOWS}
    ;

type
  TJanuaPaperFormat = (jpfA3, jpfA4, jpfA5, jpfA6);

type
  TJanuaCustomPrinter = Class(TJanuaObject)
  private
    FPrintersList: TStrings;
    FDriver: string;
    FDevice: string;
    FPort: string;
    FPaperFormat: TJanuaPaperFormat;
    procedure SetPrintersList(const Value: TStrings);
    procedure SetDevice(const Value: string);
    procedure SetDriver(const Value: string);
    procedure SetPort(const Value: string);
    procedure SetPaperFormat(const Value: TJanuaPaperFormat);
  protected
    procedure SetDefaultPrinter1(NewDefPrinter: string); virtual; abstract;
    procedure SetDefaultPrinter2(PrinterName: string); virtual; abstract;
    function GetDefaultPrinter: string; virtual; abstract;
    function InternalActivate: boolean; override;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property PrintersList: TStrings read FPrintersList write SetPrintersList;
    property Device: string read FDevice write SetDevice;
    property Driver: string read FDriver write SetDriver;
    property Port: string read FPort write SetPort;
    property DefaultPrinter: string read GetDefaultPrinter write SetDefaultPrinter2;
    property PaperFormat: TJanuaPaperFormat read FPaperFormat write SetPaperFormat;
  End;

type
  TJanuaCustomSelectPrinter = class(TComponent)

{$IFDEF MSWINDOWS}
  private
    FPriterName: widestring;
    procedure SetPriterName(const Value: widestring);
  published
    property PriterName: widestring read FPriterName write SetPriterName;
{$ELSE}
  private
    FPriterName: string;
    procedure SetPriterName(const Value: string);
  published
    property PriterName: string read FPriterName write SetPriterName;
{$ENDIF MSWINDOWS}
  private
    FPrinterID: integer;
    FJanuaPrinter: TJanuaCustomPrinter;
    procedure SetPrinterID(const Value: integer);

    procedure SetJanuaPrinter(const Value: TJanuaCustomPrinter);
    { Private declarations }
  protected
    { Protected declarations }

  public
    { Public declarations }
    function Execute: boolean; virtual; abstract;
    function GetDefaultPrinter: string;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }

    property PrinterID: integer read FPrinterID write SetPrinterID;
    property JanuaPrinter: TJanuaCustomPrinter read FJanuaPrinter write SetJanuaPrinter;
  end;

implementation

uses Janua.Application.Framework;

{ TJanuaPrinter }

destructor TJanuaCustomPrinter.Destroy;
begin
  FPrintersList.Free;
  inherited;
end;

function TJanuaCustomPrinter.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        GetDefaultPrinter
      end;
    except
      on E: Exception do
        RaiseException('InternalActivate', E, self);
    end;

end;

procedure TJanuaCustomPrinter.SetDevice(const Value: string);
begin
  FDevice := Value;
end;

procedure TJanuaCustomPrinter.SetDriver(const Value: string);
begin
  FDriver := Value;
end;

procedure TJanuaCustomPrinter.SetPaperFormat(const Value: TJanuaPaperFormat);
begin
  FPaperFormat := Value;
end;

procedure TJanuaCustomPrinter.SetPort(const Value: string);
begin
  FPort := Value;
end;

procedure TJanuaCustomPrinter.SetPrintersList(const Value: TStrings);
begin
  FPrintersList := Value;
end;

constructor TJanuaCustomPrinter.Create;
begin
  inherited;
  FPrintersList := TStringList.Create;
end;

{ TJanuaSelectPrinter }

function TJanuaCustomSelectPrinter.GetDefaultPrinter: string;
begin
  Result := self.JanuaPrinter.DefaultPrinter;
end;

constructor TJanuaCustomSelectPrinter.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TJanuaCustomSelectPrinter.Destroy;
begin
  FJanuaPrinter.Free;
  inherited;
end;

procedure TJanuaCustomSelectPrinter.SetJanuaPrinter(const Value: TJanuaCustomPrinter);
begin
  FJanuaPrinter := Value;
end;

procedure TJanuaCustomSelectPrinter.SetPrinterID(const Value: integer);
begin
  FPrinterID := Value;
end;

{$IFDEF MSWINDOWS}

procedure TJanuaCustomSelectPrinter.SetPriterName(const Value: widestring);
begin
  FPriterName := Value;
end;
{$ELSE}

procedure TJanuaCustomSelectPrinter.SetPriterName(const Value: string);
begin
  FPriterName := Value;
end;
{$ENDIF MSWINDOWS}

end.
