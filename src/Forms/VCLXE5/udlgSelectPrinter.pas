unit udlgSelectPrinter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Buttons, JvExControls, JvDBLookup, StdCtrls,
  AdvGlowButton;

type
  TdlgSelectPrinter = class(TForm)
    cdsStampanti: TClientDataSet;
    SpeedButton1: TSpeedButton;
    JvDBLookupCombo1: TJvDBLookupCombo;
    cdsStampantiPrinterNumber: TIntegerField;
    cdsStampantiPrinterName: TWideStringField;
    Label1: TLabel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    dsPrinters: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgSelectPrinter: TdlgSelectPrinter;

implementation

{$R *.dfm}

end.
