unit udlgSelectPrinter;

interface

uses
  Winapi.Windows, Winapi.Messages, SysUtils, Variants, Classes, // Janua
  VCL.Graphics, VCL.Forms, Data.DB, Datasnap.DBClient, AdvGlowButton,
  VCL.Controls, JvExControls, JvDBLookup, VCL.StdCtrls, VCL.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdlgSelectPrinter = class(TForm)
    SpeedButton1: TSpeedButton;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label1: TLabel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    dsPrinters: TDataSource;
    memPrinters: TFDMemTable;
    memPrintersPrinterNumber: TIntegerField;
    memPrintersPrinterName: TWideStringField;
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
