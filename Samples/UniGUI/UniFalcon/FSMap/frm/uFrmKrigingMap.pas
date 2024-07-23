unit uFrmKrigingMap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniBitBtn, UniFSButton, uniPanel,
  uniGUIBaseClasses, uniHTMLFrame, UniFSMap, uniLabel, uniEdit, uniMultiItem,
  uniComboBox, uniGroupBox, uniPageControl, uniMemo;

type
  TfrmKrigingMap = class(TUniFrame)
    pnlControle: TUniPanel;
    btnKrigarMapa: TUniFSButton;
    lbl1: TUniLabel;
    lbl2: TUniLabel;
    pgcKriging: TUniPageControl;
    tabMapa: TUniTabSheet;
    tabConfig: TUniTabSheet;
    map: TUniFSMap;
    grp1: TUniGroupBox;
    cmbVariogram: TUniComboBox;
    edtValueVariogram: TUniEdit;
    grpPolygon: TUniGroupBox;
    grpPoints: TUniGroupBox;
    grpCores: TUniGroupBox;
    edtCores: TUniEdit;
    lbl3: TUniLabel;
    lbl4: TUniLabel;
    memPolygon: TUniMemo;
    memPontos: TUniMemo;
    procedure UniFrameCreate(Sender: TObject);
    procedure btnKrigarMapaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  ServerModule;

{$R *.dfm}

procedure TfrmKrigingMap.btnKrigarMapaClick(Sender: TObject);
var
  OverlayKriging: TOverlayKriging;
begin
  //Limpa todas as camadas
  map.DeleteAllOverlayKriging;

  //Cria uma nova camada de Kriging
  OverlayKriging := TOverlayKriging.Create;
  OverlayKriging.Variogram := cmbVariogram.Text;
  OverlayKriging.ValVariogram := edtValueVariogram.Text;

  //Aqui você define o range de cores
  OverlayKriging.Colors := edtCores.Text;

  //Aqui você define as coordenadas do polygon
  OverlayKriging.World := memPolygon.Lines.Text;

  //Aqui você definie os valores e a coordenada de cada valor
  OverlayKriging.Pontos := memPontos.Lines.Text;

  //Adiciona a camada no mapa
  map.AddOverlayKriging(OverlayKriging, True);
end;

procedure TfrmKrigingMap.UniFrameCreate(Sender: TObject);
begin
  Self.Align := alClient;
  map.APIKeys := UniServerModule.APIKeys;
  map.InitMap;

  pgcKriging.ActivePage := tabMapa;
end;

initialization
  RegisterClass(TfrmKrigingMap);

end.
