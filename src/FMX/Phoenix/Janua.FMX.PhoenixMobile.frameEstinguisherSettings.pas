unit Janua.FMX.PhoenixMobile.frameEstinguisherSettings;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Layouts,
  FMX.Controls.Presentation, FMX.Objects, FMX.Edit, FMX.ListBox, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo,
  // DTO
  Phoenix.JSON.Tecnici.DTO, Phoenix.JSON.Prodotti.DTO, DTO.Phoenix.ReportList, Phoenix.JSON.Config.DTO,
  Phoenix.JSON.Statini.DTO, DTO.Phoenix.CatEstintori;

type
  TframeFMXPhoenixMobileEstinguisherSetting = class(TFrame)
    Layout1: TLayout;
    Rectangle1: TRectangle;
    lbSpecification: TLabel;
    Layout2: TLayout;
    lbProgr: TLabel;
    lbMatricola: TLabel;
    lbAnno: TLabel;
    Layout3: TLayout;
    edProgr: TEdit;
    edMatr: TEdit;
    cboYear: TComboBox;
    Layout4: TLayout;
    lbAnnoSostituzione: TLabel;
    txtYearSubstituion: TLabel;
    Layout5: TLayout;
    lbTipo: TLabel;
    Layout6: TLayout;
    cboType: TComboBox;
    Layout7: TLayout;
    lbMarca: TLabel;
    Layout8: TLayout;
    lbUltimaRevisione: TLabel;
    Layout9: TLayout;
    cboBrand: TComboBox;
    Layout10: TLayout;
    cboRevisionMonth: TComboBox;
    cboRevisionYear: TComboBox;
    Layout11: TLayout;
    loLastTest: TLabel;
    Layout12: TLayout;
    cboLastTestMonth: TComboBox;
    cboLastTestYear: TComboBox;
    Layout13: TLayout;
    lbUbicazione: TLabel;
    memLocation: TMemo;
    layState: TLayout;
    lbState: TLabel;
    Layout14: TLayout;
    cboStato: TComboBox;
    Layout15: TLayout;
    lbNoteTecnico: TLabel;
    memNoteTecnico: TMemo;
  private
    FEstintore: TEstintori;
    procedure SetEstintore(const Value: TEstintori);
    { Private declarations }
  public
    procedure Refresh;
    property Estintore: TEstintori read FEstintore write SetEstintore;
  end;

implementation

{$R *.fmx}

uses System.DateUtils, System.Math, System.StrUtils, Janua.FMX.PhoenixMobile.dmAppMobileController;
{ TframeFMXPhoenixMobileEstinguisherSetting }

procedure TframeFMXPhoenixMobileEstinguisherSetting.Refresh;
begin
  var
  dm := dmFMXPhoenixAppMobileController;

  edProgr.Text := FEstintore.PROGRESSIVO.ToString;
  edMatr.Text := FEstintore.MATRICOLA;
  var
  lYear := 0;

  if not FEstintore.ANNOCOSTRUZIONE.IsEmpty then
    lYear := FEstintore.ANNOCOSTRUZIONE.ToInteger()
  else
    lYear := YearOf(Now);

  if cboYear.Items[0].ToInteger() <> lYear  then
    cboYear.ItemIndex := lYear - cboYear.Items[0].ToInteger();


   (*

  // cboType
  for var lListItem in dm.Conf.CatEstintori do
  begin
    cboType.Items.AddObject(lListItem.Descrizione, lListItem);
    if lListItem.Chiave = FEstintore.TIPOESTINTORE then
      cboType.ItemIndex := cboType.Items.Count - 1;
  end;

  // cboBrand
  for var lListItem in dm.Conf.MARCHEESTINTORI do
  begin
    cboBrand.Items.AddObject(lListItem.Descrizione, lListItem);
    if lListItem.Chiave = FEstintore.MARCA then
      cboBrand.ItemIndex := cboBrand.Items.Count - 1;
  end;

  *)

  // ****** Revisioine ******************************************

  var
    lRevisione: TDateTime := dm.JsonDateToDateTime(FEstintore.DATASTARTUPREV);

  if lRevisione = 0.0 then
    lRevisione := Date();

  var
  Year := YearOf(lRevisione); // Anno (es: 2025)
  var
  Month := MonthOf(lRevisione); // Mese (1-12)
  var
  Day := DayOf(lRevisione); // Giorno del mese (1-31)

  // cboRevisionMonth
  for var lMonth in dm.Months do
    cboRevisionMonth.Items.Add(lMonth);

  cboRevisionMonth.ItemIndex := Month - 1;

  // cboRevisionYear
  lYear := YearOf(lRevisione);

  if cboRevisionYear.Items[0].ToInteger() <> lYear  then
    cboRevisionYear.ItemIndex := lYear - cboRevisionYear.Items[0].ToInteger();


  // ****** Collaudo ******************************************

  var
    lCollaudo: TDateTime := dm.JsonDateToDateTime(FEstintore.DATASTARTUPCOL);

  if lCollaudo = 0.0 then
    lCollaudo := Date();

  Year := YearOf(lCollaudo); // Anno (es: 2025)
  Month := MonthOf(lCollaudo); // Mese (1-12)
  Day := DayOf(lCollaudo); // Giorno del mese (1-31)

  // cboLastTestMonth
  for var lMonth in dm.Months do
    cboLastTestMonth.Items.Add(lMonth);

  cboLastTestMonth.ItemIndex := Month - 1;

  // cboRevisionYear
  lYear := YearOf(lCollaudo);

  if cboLastTestYear.Items[0].ToInteger() <> lYear  then
    cboLastTestYear.ItemIndex := lYear - cboLastTestYear.Items[0].ToInteger();

  memLocation.Text := FEstintore.UBICAZIONE;
  memNoteTecnico.Text := FEstintore.NOTETECNICO;

  cboStato.ItemIndex := IfThen(FEstintore.STATO = 'A', 0, 1);

end;

procedure TframeFMXPhoenixMobileEstinguisherSetting.SetEstintore(const Value: TEstintori);
begin
  if FEstintore <> Value then
  begin
    FEstintore := Value;
    if Assigned(FEstintore) then
    begin
      var
      dm := dmFMXPhoenixAppMobileController;

      edProgr.Text := FEstintore.PROGRESSIVO.ToString;
      edMatr.Text := FEstintore.MATRICOLA;
      var
      lYear := 0;

      if not FEstintore.ANNOCOSTRUZIONE.IsEmpty then
        lYear := FEstintore.ANNOCOSTRUZIONE.ToInteger()
      else
        lYear := YearOf(Now);

      cboYear.Items.Clear;

      for var I := lYear to FEstintore.ANNOCOSTRUZIONE.ToInteger() + 40 do
        cboYear.Items.Add(I.ToString);
      cboYear.ItemIndex := 0;

      // cboType
      cboType.Items.Clear;
      for var lListItem in dm.Conf.CatEstintori do
      begin
        cboType.Items.AddObject(lListItem.Descrizione, lListItem);
        if lListItem.Chiave = FEstintore.TIPOESTINTORE then
          cboType.ItemIndex := cboType.Items.Count - 1;
      end;

      // cboBrand
      cboBrand.Items.Clear;
      for var lListItem in dm.Conf.MARCHEESTINTORI do
      begin
        cboBrand.Items.AddObject(lListItem.Descrizione, lListItem);
        if lListItem.Chiave = FEstintore.MARCA then
          cboBrand.ItemIndex := cboBrand.Items.Count - 1;
      end;

      // ****** Revisioine ******************************************

      var
        lRevisione: TDateTime := dm.JsonDateToDateTime(FEstintore.DATASTARTUPREV);

      if lRevisione = 0.0 then
        lRevisione := Date();

      var
      Year := YearOf(lRevisione); // Anno (es: 2025)
      var
      Month := MonthOf(lRevisione); // Mese (1-12)
      var
      Day := DayOf(lRevisione); // Giorno del mese (1-31)

      // cboRevisionMonth
      cboRevisionMonth.Items.Clear;
      for var lMonth in dm.Months do
        cboRevisionMonth.Items.Add(lMonth);

      cboRevisionMonth.ItemIndex := Month - 1;

      // cboRevisionYear
      lYear := YearOf(lRevisione);
      cboRevisionYear.Items.Clear;
      for var I := lYear to lYear + 40 do
        cboRevisionYear.Items.Add(I.ToString);
      cboRevisionYear.ItemIndex := 0;

      // ****** Collaudo ******************************************

      var
        lCollaudo: TDateTime := dm.JsonDateToDateTime(FEstintore.DATASTARTUPCOL);

      if lCollaudo = 0.0 then
        lCollaudo := Date();

      Year := YearOf(lCollaudo); // Anno (es: 2025)
      Month := MonthOf(lCollaudo); // Mese (1-12)
      Day := DayOf(lCollaudo); // Giorno del mese (1-31)

      // cboLastTestMonth
      cboLastTestMonth.Items.Clear;
      for var lMonth in dm.Months do
        cboLastTestMonth.Items.Add(lMonth);

      cboLastTestMonth.ItemIndex := Month - 1;

      // cboRevisionYear
      lYear := YearOf(lCollaudo);
      cboLastTestYear.Items.Clear;
      for var I := lYear to lYear + 40 do
        cboLastTestYear.Items.Add(I.ToString);
      cboLastTestYear.ItemIndex := 0;

      memLocation.Text := FEstintore.UBICAZIONE;
      memNoteTecnico.Text := FEstintore.NOTETECNICO;

      cboStato.ItemIndex := IfThen(FEstintore.STATO = 'A', 0, 1);

    end;
  end;
end;

end.
