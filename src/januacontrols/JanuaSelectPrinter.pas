unit JanuaSelectPrinter;

interface

uses
  SysUtils, Classes, Printers, Forms, DBClient, Controls;

type
  TJanuaSelectPrinter = class(TComponent)
  private
    FPrinterID: integer;
    FPriterName: widestring;
    procedure SetPrinterID(const Value: integer);
    procedure SetPriterName(const Value: widestring);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    function Execute: boolean;
  published
    { Published declarations }
    property PriterName: widestring read FPriterName write SetPriterName;
    property PrinterID: integer read FPrinterID write SetPrinterID;
  end;

procedure Register;

implementation

uses udlgSelectPrinter;

procedure Register;
begin
  RegisterComponents('Januaproject Dialogs', [TJanuaSelectPrinter]);
end;

{ TJanuaSelectPrinter }

function TJanuaSelectPrinter.Execute: boolean;
var
   stampante: TPrinter;
   i: integer;
   d : TdlgSelectPrinter;
begin
  d :=  TdlgSelectPrinter.Create(nil);

  try
    with d do
    begin
      if not cdsStampanti.Active then cdsStampanti.CreateDataSet;
      stampante :=  TPrinter.Create;
      try
        for i := 0 to Stampante.Printers.Count - 1 do
        begin
           cdsStampanti.Insert;
           cdsStampantiPrinterNumber.Value := i;
           cdsStampantiPrinterName.Value := stampante.Printers.Strings[i];
           cdsStampanti.Post;
        end;
      finally
        stampante.Free;
      end;
      d.ShowModal;
      if d.ModalResult = mrOK then begin
        FPriterName := d.cdsStampantiPrinterName.AsWideString;
        FPrinterID := d.cdsStampantiPrinterNumber.AsInteger; 
      end;
    end;
  finally
    FreeAndNil(d);
  end;

end;

procedure TJanuaSelectPrinter.SetPrinterID(const Value: integer);
begin
  FPrinterID := Value;
end;

procedure TJanuaSelectPrinter.SetPriterName(const Value: widestring);
begin
  FPriterName := Value;
end;

end.
