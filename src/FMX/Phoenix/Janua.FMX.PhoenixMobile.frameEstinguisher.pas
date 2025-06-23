unit Janua.FMX.PhoenixMobile.frameEstinguisher;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Objects, FMX.Layouts,
  FMX.Controls.Presentation, FMX.TMSCustomButton, FMX.TMSSpeedButton, FMX.TMSFNCTypes, FMX.TMSFNCUtils,
  FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes, FMX.TMSFNCCustomControl, FMX.TMSFNCHTMLImageContainer,
  FMX.TMSFNCRadioButton, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo,
  // DTO
  Phoenix.JSON.Tecnici.DTO, Phoenix.JSON.Prodotti.DTO, DTO.Phoenix.ReportList, Phoenix.JSON.Config.DTO,
  Phoenix.JSON.Statini.DTO, DTO.Phoenix.CatEstintori, FMX.Edit;

type
  TframeFMXMobileEstinguisher = class(TFrame)
    rctMatr: TRectangle;
    lbNR: TLabel;
    layMatr: TLayout;
    txtNR: TLabel;
    lbtMatrYear: TLabel;
    txMatrYear: TLabel;
    lbSpace: TLabel;
    lbIntervento: TLabel;
    TMSFMXSpeedButton1: TTMSFMXSpeedButton;
    txtIntervento: TLabel;
    Rectangle1: TRectangle;
    lbTipo: TLabel;
    Layout1: TLayout;
    txtTipo: TLabel;
    Rectangle2: TRectangle;
    lbProssRev: TLabel;
    lbProssColl: TLabel;
    lbAnnoSost: TLabel;
    Layout2: TLayout;
    lbProssReve: TLabel;
    txtProssColl: TLabel;
    txtAnnoSost: TLabel;
    Rectangle3: TRectangle;
    lbLocation: TLabel;
    Layout3: TLayout;
    txtLocation: TLabel;
    Layout4: TLayout;
    ckbEseg: TTMSFNCRadioButton;
    Rectangle4: TRectangle;
    lbExecuted: TLabel;
    lbRitir: TLabel;
    lbSmalt: TLabel;
    ckbRitir: TTMSFNCRadioButton;
    ckbSmalt: TTMSFNCRadioButton;
    lbNonEseg: TLabel;
    lbRest: TLabel;
    ckbRest: TTMSFNCRadioButton;
    ckbNonEseg: TTMSFNCRadioButton;
    Rectangle5: TRectangle;
    lbAnomali: TLabel;
    memAnomalia: TMemo;
    Rectangle6: TRectangle;
    lbSpecification: TLabel;
    edSpecifica: TEdit;
    procedure ckbEsegClick(Sender: TObject);
    procedure ckbRitirClick(Sender: TObject);
    procedure ckbSmaltClick(Sender: TObject);
    procedure ckbRestClick(Sender: TObject);
    procedure ckbNonEsegClick(Sender: TObject);
  private
    FEstintore: TEstintori;
    procedure SetEstintore(const Value: TEstintori);
    { Private declarations }
  public
    { Public declarations }
    property Estintore: TEstintori read FEstintore write SetEstintore;
  end;

implementation

{$R *.fmx}

uses Janua.FMX.PhoenixMobile.Resources, Janua.FMX.PhoenixMobile.dmAppMobileController,
  Janua.FMX.dlgListSelectForm;

{ TframeFMXMobileEstinguisher }

procedure TframeFMXMobileEstinguisher.ckbEsegClick(Sender: TObject);
begin
  FEstintore.DataControllo := Date;
end;

procedure TframeFMXMobileEstinguisher.ckbNonEsegClick(Sender: TObject);
begin
  FEstintore.DataControlloNegato := Date;
  var
  lDlg := TdlgFMXListSelectForm.Create(self);
  try
    for var lMotivo in dmFMXPhoenixAppMobileController.Conf.MOTIVRITIROESTINTORI do
    begin
      var
      AItem := lDlg.ListViewMain.Items.Add;
      AItem.Tag := lMotivo.Chiave;
      AItem.Text := lMotivo.Descrizione;
    end;
    lDlg.ShowModal;
    lbSpecification.Text := 'Motivo Ritiro Estintore: ';
    edSpecifica.Text := lDlg.SelectedText;
  finally
    lDlg.Free;
  end;
end;

procedure TframeFMXMobileEstinguisher.ckbRestClick(Sender: TObject);
begin
  FEstintore.DataRestituzione := Date;
end;

procedure TframeFMXMobileEstinguisher.ckbRitirClick(Sender: TObject);
begin
  FEstintore.DataRitiro := Date;
  var
  lDlg := TdlgFMXListSelectForm.Create(self);
  try
    for var lMotivo in dmFMXPhoenixAppMobileController.Conf.MOTIVRITIROESTINTORI do
    begin
      var
      AItem := lDlg.ListViewMain.Items.Add;
      AItem.Tag := lMotivo.Chiave;
      AItem.Text := lMotivo.Descrizione;
    end;
    lDlg.ShowModal;
    lbSpecification.Text := 'Motivo Ritiro Estintore: ';
    edSpecifica.Text := lDlg.SelectedText;
  finally
    lDlg.Free;
  end;
end;

procedure TframeFMXMobileEstinguisher.ckbSmaltClick(Sender: TObject);
begin
  FEstintore.DataSmaltimento := Date;

end;

procedure TframeFMXMobileEstinguisher.SetEstintore(const Value: TEstintori);
var
  lCatEstintore: Tcatestintori;
begin
  FEstintore := Value;
  var
  vHasCat := dmFMXPhoenixAppMobileController.FindCatEstintore(FEstintore.TIPOESTINTORE, lCatEstintore);
  txtNR.Text := FEstintore.PROGRESSIVO.ToString;
  txMatrYear.Text := FEstintore.MATRICOLA + '/' + FEstintore.ANNOCOSTRUZIONE;
  if FEstintore.TIPOINTERVENTO = 'R' then
    txtIntervento.Text := 'Revisione'
  else if FEstintore.TIPOINTERVENTO = 'C' then
    txtIntervento.Text := 'Collaudo'
  else if FEstintore.TIPOINTERVENTO = 'O' then
    txtIntervento.Text := 'Ordinario';

  txtLocation.Text := FEstintore.UBICAZIONE;
  txtTipo.Text := '';

  if vHasCat then
  begin
    txtTipo.Text := lCatEstintore.DESCRCOMPATTA;

    {
      function TdmFMXPhoenixAppMobileController.ProcessDateWithMonthCalculation(const AInputDate: string;
      const AMonthsToAdd: integer; out AOriginalYear, AOriginalMonth: Word; out ANewDate: TDateTime;
      out ANewMonthYear: string): Boolean;
    }
    var
      AOriginalYear: Word := 0;
    var
      AOriginalMonth: Word := 0;
    var
      ANewDate: TDateTime := Date;
    var
      ANewMonthYear: string := '';

    if dmFMXPhoenixAppMobileController.ProcessDateWithMonthCalculation
      (FEstintore.DATASTARTUPCOL { AInputDate } , lCatEstintore.PERIODICITACOLLAUDO { AMonthsToAdd } ,
      AOriginalYear, AOriginalMonth, ANewDate, ANewMonthYear) then
      txtProssColl.Text := ANewMonthYear;

    if dmFMXPhoenixAppMobileController.ProcessDateWithMonthCalculation
      (FEstintore.DATASTARTUPREV { AInputDate } , lCatEstintore.PERIODICITAREVISIONE { AMonthsToAdd } ,
      AOriginalYear, AOriginalMonth, ANewDate, ANewMonthYear) then
      lbProssReve.Text := ANewMonthYear;

  end;

  // lbProssReve.Text := FEstintore.datar;

  // FEstintore.TIPOINTERVENTO

end;

end.
