unit Janua.FMX.PhoenixMobile.frameDoorSettings;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // FMX
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Memo.Types, FMX.ScrollBox,
  FMX.Memo, FMX.ListBox, FMX.Edit, FMX.Controls.Presentation, FMX.Objects, FMX.Layouts,
  // Janua
  Janua.REST.Client,
  // DTO
  Phoenix.JSON.Tecnici.DTO, Phoenix.JSON.Prodotti.DTO, DTO.Phoenix.ReportList,
  Phoenix.JSON.Config.DTO, Phoenix.JSON.Statini.DTO, DTO.Phoenix.CatEstintori;

type
  TframeFMXPhoenixMobileDoorSetting = class(TFrame)
    VertScrollBox1: TVertScrollBox;
    Layout1: TLayout;
    Rectangle1: TRectangle;
    lbSpecification: TLabel;
    Layout2: TLayout;
    lbProgr: TLabel;
    lbMatricola: TLabel;
    lbAnno: TLabel;
    Layout03: TLayout;
    edProgr: TEdit;
    edMatricola: TEdit;
    cboYear: TComboBox;
    Layout05: TLayout;
    lbTipo: TLabel;
    ly01Type: TLayout;
    cboType: TComboBox;
    Layout07: TLayout;
    lbMarca: TLabel;
    Layout8: TLayout;
    lbAnte: TLabel;
    Layout9: TLayout;
    cboMarca: TComboBox;
    Layout10: TLayout;
    cboAnte: TComboBox;
    Layout11: TLayout;
    lbMisuraAnta: TLabel;
    Layout12: TLayout;
    edMisura: TEdit;
    Layout13: TLayout;
    lbUbicazione: TLabel;
    Layout4: TLayout;
    Label1: TLabel;
    memLocation: TMemo;
    layState: TLayout;
    lbState: TLabel;
    Layout14: TLayout;
    cboStato: TComboBox;
    Layout15: TLayout;
    lbNoteTecnico: TLabel;
    memNoteTecnico: TMemo;
    Layout06: TLayout;
    Label2: TLabel;
    Layout16: TLayout;
    cboMarcaManiglione: TComboBox;
    Layout17: TLayout;
    cboTipoManiglione: TComboBox;
    Layout18: TLayout;
    lbTipoManiglione: TLabel;
    Layout19: TLayout;
    cboTipoSerraturaAntaPrincipale: TComboBox;
    Layout20: TLayout;
    lbTipoSerratura: TLabel;
    Layout21: TLayout;
    cboTipoSerraturaAntaSecondaria: TComboBox;
    Layout22: TLayout;
    lbTipoSerraturaSecondaria: TLabel;
    Layout23: TLayout;
    lbManigliaEsterna: TLabel;
    Layout3: TLayout;
    cboManigliaEsterna: TComboBox;
    Layout5: TLayout;
    edMMGuarnizione: TEdit;
    Layout6: TLayout;
    lbMMGuarnizione: TLabel;
    Layout7: TLayout;
    Layout24: TLayout;
    lbTipoInstallazione: TLabel;
    cboTipoInstallazione: TComboBox;
  private
    FDoor: TPorte;
    procedure SetPorta(const Value: TPorte);
    { Private declarations }
  public
    { Public declarations }
    property Door: TPorte read FDoor write SetPorta;
  end;

implementation

uses System.Math, System.StrUtils, Janua.FMX.PhoenixMobile.dmAppMobileController;

{$R *.fmx}
{ TframeFMXPhoenixMobileDoorSetting }

procedure TframeFMXPhoenixMobileDoorSetting.SetPorta(const Value: TPorte);
begin
  if FDoor <> Value then
  begin
    FDoor := Value;
    if Assigned(FDoor) then
    begin
      var
      dm := dmFMXPhoenixAppMobileController;

      // cboType - TIPO_PORTE
      for var lListItem in dm.Conf.TIPOPORTE do
      begin
        cboType.Items.AddObject(lListItem.Descrizione, lListItem);
        if lListItem.Chiave = FDoor.TIPO then
          cboType.ItemIndex := cboType.Items.Count - 1;
      end;

      cboStato.ItemIndex := IfThen(FDoor.STATO = 'A', 0, 1);

      edProgr.Text := FDoor.PROGRESSIVO.ToString;
      edMatricola.Text := FDoor.MATRICOLA;

      for var I := FDoor.ANNOCOSTRUZIONE to FDoor.ANNOCOSTRUZIONE + 40 do
        cboYear.Items.Add(I.ToString);
      cboYear.ItemIndex := 0;

      // cboMarca - MARCHEPORTE
      for var lListItem in dm.Conf.MARCHEPORTE do
      begin
        cboMarca.Items.AddObject(lListItem.Descrizione, lListItem);
        if lListItem.Chiave = FDoor.MARCA then
          cboMarca.ItemIndex := cboMarca.Items.Count - 1;
      end;

      // cboAnte - MARCHEPORTE
      cboAnte.Items.Add('1 Anta');
      cboAnte.Items.Add('2 Ante');
      cboAnte.Items.Add('Anta Scorrevole');

      if FDoor.ANTE = '1' then
        cboAnte.ItemIndex := 0
      else if FDoor.ANTE = '2' then
        cboAnte.ItemIndex := 1
      else
        cboAnte.ItemIndex := 2;

      edMisura.Text := FDoor.DIMENSIONE;

      // cboMarcaManiglione 
      for var lListItem in dm.Conf.MARCHEMANIGLIONEPORTE do
      begin
        cboMarcaManiglione.Items.AddObject(lListItem.Descrizione, lListItem);
        if lListItem.Chiave = FDoor.MARCAMANIGLIONE then
          cboMarcaManiglione.ItemIndex := cboMarcaManiglione.Items.Count - 1;
      end;    

      // cboTipoManiglione 
      for var lListItem in dm.Conf.TIPIMANIGLIONIPORTE do
      begin
        cboTipoManiglione.Items.AddObject(lListItem.Descrizione, lListItem);
        if lListItem.Chiave = FDoor.TIPOMANIGLIONE then
          cboTipoManiglione.ItemIndex := cboTipoManiglione.Items.Count - 1;
      end; 

      // cboTipoSerraturaAntaPrincipale 
      for var lListItem in dm.Conf.TIPISERRATURE do
      begin
        cboTipoSerraturaAntaPrincipale.Items.AddObject(lListItem.Descrizione, lListItem);
        if lListItem.Chiave = FDoor.TIPOSERRATURAANTAPRINCIPALE then
          cboTipoSerraturaAntaPrincipale.ItemIndex := cboTipoSerraturaAntaPrincipale.Items.Count - 1;
      end;  

      // cboTipoSerraturaAntaSecondaria 
      for var lListItem in dm.Conf.TIPISERRATURE do
      begin
        cboTipoSerraturaAntaSecondaria.Items.AddObject(lListItem.Descrizione, lListItem);
        if lListItem.Chiave = FDoor.TIPOSERRATURAANTASECONDARIA then
          cboTipoSerraturaAntaSecondaria.ItemIndex := cboTipoSerraturaAntaSecondaria.Items.Count - 1;
      end;  

      // cboManigliaEsterna
      for var lListItem in dm.Conf.TIPIMANIGLIONIPORTE do
      begin
        cboManigliaEsterna.Items.AddObject(lListItem.Descrizione, lListItem);
        if lListItem.Chiave = FDoor.TIPOSERRATURAANTASECONDARIA then
          cboManigliaEsterna.ItemIndex := cboManigliaEsterna.Items.Count - 1;
      end; 

      //cboTipoInstallazione
      for var lListItem in dm.Conf.TIPIINSTALLAZIONEPORTE do
      begin
        cboTipoInstallazione.Items.AddObject(lListItem.Descrizione, lListItem);
        if lListItem.Chiave = FDoor.TIPOSERRATURAANTASECONDARIA then
          cboTipoInstallazione.ItemIndex := cboTipoInstallazione.Items.Count - 1;
      end; 

      //cboTipoInstallazione
      memNoteTecnico.Text := FDoor.NOTETECNICO;

      
      memLocation.Text := FDoor.Ubicazione;
      memNoteTecnico.Text := FDoor.NOTETECNICO;
      // FDoor.
    end;
  end;
end;

end.
