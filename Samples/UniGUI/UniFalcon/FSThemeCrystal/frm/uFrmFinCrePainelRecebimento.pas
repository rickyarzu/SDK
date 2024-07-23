unit uFrmFinCrePainelRecebimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniLabel, uniButton, uniBitBtn,
  UniFSButton, uniPanel, uniBasicGrid, uniDBGrid;

type
  TfrmFinCrePainelRecebimento = class(TUniFrame)
    dbg1: TUniDBGrid;
    pnl1: TUniPanel;
    btn1: TUniFSButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

{Lembrar de registrar todas as telas}
initialization
  RegisterClass(TfrmFinCrePainelRecebimento);

end.
