unit Janua.FMX.PhoenixMobile.frameEstinguisherSettings;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Layouts,
  FMX.Controls.Presentation, FMX.Objects, FMX.Edit, FMX.ListBox, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo;

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
    Edit1: TEdit;
    Edit2: TEdit;
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
    ComboBox1: TComboBox;
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
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
