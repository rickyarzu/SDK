unit Janua.FMX.PhoenixMobile.frameSprinkler;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.TMSFNCTypes,
  FMX.TMSFNCUtils, FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes, FMX.Objects, FMX.TMSFNCCustomControl,
  FMX.TMSFNCHTMLImageContainer, FMX.TMSFNCRadioButton, FMX.TMSCustomButton, FMX.TMSSpeedButton,
  FMX.Controls.Presentation, FMX.Layouts, FMX.ListBox, FMX.Edit;

type
  TframeFMXMobileSprinkler = class(TFrame)
    layMatr: TLayout;
    txtNR: TLabel;
    btnCheckList: TTMSFMXSpeedButton;
    Layout3: TLayout;
    Layout4: TLayout;
    rctMatr: TRectangle;
    lbCheck: TLabel;
    lbSpace: TLabel;
    lbCheckList: TLabel;
    Rectangle3: TRectangle;
    lbBrand: TLabel;
    Rectangle4: TRectangle;
    lbModel: TLabel;
    Rectangle5: TRectangle;
    lbTipoImpianto: TLabel;
    lbContr: TLabel;
    Label1: TLabel;
    ckbContr: TTMSFNCRadioButton;
    ckbNonEseg: TTMSFNCRadioButton;
    Layout1: TLayout;
    Label2: TLabel;
    laySelect: TLayout;
    cboSelect: TComboBox;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Layout2: TLayout;
    cboSprinklerSystemType: TComboBox;
    Rectangle1: TRectangle;
    lbQty: TLabel;
    Layout5: TLayout;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    TMSFNCRadioButton1: TTMSFNCRadioButton;
    Edit3: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
