unit Janua.FMX.PhoenixMobile.frameFireHoseSettings;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Memo.Types, FMX.ScrollBox,
  FMX.Memo, FMX.ListBox, FMX.Edit, FMX.Controls.Presentation, FMX.Objects, FMX.Layouts;

type
  TFrame2 = class(TFrame)
    Layout1: TLayout;
    Rectangle1: TRectangle;
    lbSpecification: TLabel;
    Layout2: TLayout;
    lbProgr: TLabel;
    lbType: TLabel;
    Layout3: TLayout;
    edProgr: TEdit;
    cboYear: TComboBox;
    Layout5: TLayout;
    lbLancia: TLabel;
    Layout6: TLayout;
    cboLancia: TComboBox;
    Layout8: TLayout;
    lbLength: TLabel;
    Layout10: TLayout;
    cboYear2: TComboBox;
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
    Edit1: TEdit;
    lbYear: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
