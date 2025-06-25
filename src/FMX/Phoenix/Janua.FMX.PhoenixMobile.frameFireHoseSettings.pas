unit Janua.FMX.PhoenixMobile.frameFireHoseSettings;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Memo.Types, FMX.ScrollBox,
  FMX.Memo, FMX.ListBox, FMX.Edit, FMX.Controls.Presentation, FMX.Objects, FMX.Layouts,
  // DTO
  Phoenix.JSON.Tecnici.DTO, Phoenix.JSON.Prodotti.DTO, DTO.Phoenix.ReportList, Phoenix.JSON.Config.DTO,
  Phoenix.JSON.Statini.DTO, DTO.Phoenix.CatEstintori;

type
  TframeFMXPhoenixMobileFireHoseSetting = class(TFrame)
    Layout1: TLayout;
    Rectangle1: TRectangle;
    lbSpecification: TLabel;
    Layout2: TLayout;
    lbProgr: TLabel;
    lbType: TLabel;
    Layout3: TLayout;
    edProgr: TEdit;
    cboType: TComboBox;
    Layout5: TLayout;
    lbLancia: TLabel;
    Layout6: TLayout;
    cboLancia: TComboBox;
    Layout8: TLayout;
    lbLength: TLabel;
    Layout10: TLayout;
    cboYear: TComboBox;
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
    edLength: TEdit;
    lbYear: TLabel;
  private
    FBocchello: TBocchelli;
    FIdrante: TIdranti;
    procedure SetBocchello(const Value: TBocchelli);
    procedure SetIdrante(const Value: TIdranti);
    { Private declarations }
  public
    property Idrante: TIdranti read FIdrante write SetIdrante;
    property Bocchello: TBocchelli read FBocchello write SetBocchello;
  end;

implementation

{$R *.fmx}

uses System.StrUtils, System.Math, System.DateUtils, Janua.FMX.PhoenixMobile.dmAppMobileController;

{ TFrame2 }

procedure TframeFMXPhoenixMobileFireHoseSetting.SetBocchello(const Value: TBocchelli);
begin
  if FBocchello <> Value then
  begin
    FBocchello := Value;
    if Assigned(FBocchello) then
    begin
      var
      dm := dmFMXPhoenixAppMobileController;

      edProgr.Text := FBocchello.IDBOCCHELLO.ToString;

      // cboType
      for var lListItem in dm.Conf.TIPOBOCCHELLI do
      begin
        cboType.Items.AddObject(lListItem.Descrizione, lListItem);
        if lListItem.Chiave = FBocchello.TIPOBOCCHELLO then
          cboType.ItemIndex := cboType.Items.Count - 1;
      end;

      // cboLancia
      for var lListItem in dm.Conf.TIPOLANCIA do
      begin
        cboLancia.Items.AddObject(lListItem.Descrizione, lListItem);
        if lListItem.Chiave = FBocchello.TIPOLANCIA then
          cboLancia.ItemIndex := cboLancia.Items.Count - 1;
      end;

      cboStato.ItemIndex := IfThen(FBocchello.STATO = 'A', 0, 1);

      edLength.Text := FBocchello.LUNGHEZZAMANICHETTA.ToString();

      var
      lYear := 0;

      if not FBocchello.ANNOMANICHETTA.IsEmpty then
        lYear := FBocchello.ANNOMANICHETTA.ToInteger()
      else
        lYear := YearOf(Now);

      for var I := lYear to FBocchello.ANNOMANICHETTA.ToInteger() + 40 do
        cboYear.Items.Add(I.ToString);
      cboYear.ItemIndex := 0;



      // ****** Collaudo ******************************************

      lYear := FBocchello.ANNOSTARTUP;
      var
      Month := FBocchello.MESESTARTUP;

      // cboLastTestMonth
      for var lMonth in dm.Months do
        cboLastTestMonth.Items.Add(lMonth);

      cboLastTestMonth.ItemIndex := Month - 1;


      for var I := lYear to lYear + 40 do
        cboLastTestYear.Items.Add(I.ToString);
      cboLastTestYear.ItemIndex := 0;

      memLocation.Text := FBocchello.UBICAZIONE;
      memNoteTecnico.Text := FBocchello.NOTETECNICO;

    end;
  end;
end;

procedure TframeFMXPhoenixMobileFireHoseSetting.SetIdrante(const Value: TIdranti);
begin
  FIdrante := Value;
end;

end.
