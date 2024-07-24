unit uFrmiGrowl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame,
  uniRadioButton, uniEdit, uniLabel, uniMultiItem, uniComboBox, uniButton,
  uniBitBtn, uniGUIBaseClasses, uniPanel, UniFSiGrowl, Vcl.Imaging.pngimage,
  uniImage;

type
  TfrmiGrowl = class(TUniFrame)
    pnlMaster: TUniPanel;
    FSiGrowl: TUniFSiGrowl;
    pnlTop: TUniPanel;
    imgFalcon: TUniImage;
    lblVersion: TUniLabel;
    pnlCenter: TUniPanel;
    btnHelloWorld: TUniBitBtn;
    cmbIcon: TUniComboBox;
    lbl1: TUniLabel;
    edtTitle: TUniEdit;
    edtUrlImage: TUniEdit;
    cmbType: TUniComboBox;
    edtMessage: TUniEdit;
    cmbAlertSize: TUniComboBox;
    lbl2: TUniLabel;
    lbl3: TUniLabel;
    lbl4: TUniLabel;
    lbl5: TUniLabel;
    lbl6: TUniLabel;
    edtDelay: TUniNumberEdit;
    edtOffsetX: TUniNumberEdit;
    edtSpacing: TUniNumberEdit;
    edtOffsetY: TUniNumberEdit;
    lbl7: TUniLabel;
    cmbEnableAnimation: TUniComboBox;
    cmbEnterAnimation: TUniComboBox;
    cmbExitAnimation: TUniComboBox;
    lbl8: TUniLabel;
    lbl9: TUniLabel;
    lbl10: TUniLabel;
    lbl11: TUniLabel;
    lbl12: TUniLabel;
    lbl13: TUniLabel;
    rdbTopLeft: TUniRadioButton;
    rdbTopCenter: TUniRadioButton;
    rdbTopRight: TUniRadioButton;
    rdbBottomLeft: TUniRadioButton;
    rdbBottomCenter: TUniRadioButton;
    rdbBottomRight: TUniRadioButton;
    btnSuccess: TUniButton;
    btnInfo: TUniButton;
    btnNotice: TUniButton;
    btnError: TUniButton;
    lbl14: TUniLabel;
    btnSimple: TUniButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure btnHelloWorldClick(Sender: TObject);
    procedure rdbTopLeftClick(Sender: TObject);
    procedure btnSuccessClick(Sender: TObject);
    procedure btnNoticeClick(Sender: TObject);
    procedure btnInfoClick(Sender: TObject);
    procedure btnErrorClick(Sender: TObject);
    procedure btnSimpleClick(Sender: TObject);
  private
    { Private declarations }
    procedure CarregaCombos;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  uDmMensagens, System.TypInfo;

procedure TfrmiGrowl.btnErrorClick(Sender: TObject);
begin
  FSiGrowl.Error('Opsss','algo de errado aconteceu!');
end;

procedure TfrmiGrowl.btnHelloWorldClick(Sender: TObject);
begin
  dmMensagens.FSiGrowlComp.Title  := edtTitle.Text;
  dmMensagens.FSiGrowlComp.Messages  := edtMessage.Text;
  dmMensagens.FSiGrowlComp.UrlImage  := edtUrlImage.Text;
  dmMensagens.FSiGrowlComp.AlertSize  := TAlertSize(cmbAlertSize.ItemIndex);
  dmMensagens.FSiGrowlComp.Types  := TTypes(cmbType.ItemIndex);
  dmMensagens.FSiGrowlComp.Icon  := TNameIcon(cmbIcon.ItemIndex);
  dmMensagens.FSiGrowlComp.Delay  := StrToInt(edtDelay.Text);
  dmMensagens.FSiGrowlComp.Spacing  := StrToInt(edtSpacing.Text);
  dmMensagens.FSiGrowlComp.OffsetX  := StrToInt(edtOffsetX.Text);
  dmMensagens.FSiGrowlComp.OffsetY  := StrToInt(edtOffsetY.Text);
  dmMensagens.FSiGrowlComp.EnableAnimation  := cmbEnableAnimation.ItemIndex = 0;
  dmMensagens.FSiGrowlComp.EnterAnimation  := TEnterAnimation(cmbEnterAnimation.ItemIndex);
  dmMensagens.FSiGrowlComp.ExitAnimation  := TExitAnimation(cmbExitAnimation.ItemIndex);

  dmMensagens.FSiGrowlComp.Run;
end;

procedure TfrmiGrowl.btnInfoClick(Sender: TObject);
begin
  FSiGrowl.Info('Hello','');
end;

procedure TfrmiGrowl.btnNoticeClick(Sender: TObject);
begin
  FSiGrowl.Warning('Warning','Important Notice!');
end;

procedure TfrmiGrowl.btnSimpleClick(Sender: TObject);
begin
  FSiGrowl.Simple('Simples','This is simple message.');
end;

procedure TfrmiGrowl.btnSuccessClick(Sender: TObject);
begin
  FSiGrowl.Success('Success','iGrowl Powered by Falcon Sistemas');
end;

procedure TfrmiGrowl.CarregaCombos;
var
  vTAlertSize: TAlertSize;
  vTTypes: TTypes;
  vTEnterAnimation: TEnterAnimation;
  vTExitAnimation: TExitAnimation;
  vTNameIcon: TNameIcon;
  vI: Integer;
begin
  for vTAlertSize := Low(TAlertSize) to High(TAlertSize) do
    cmbAlertSize.Items.Add(GetEnumName(TypeInfo(TAlertSize), Integer(vTAlertSize)));

  for vTTypes := Low(TTypes) to High(TTypes) do
    cmbType.Items.Add(GetEnumName(TypeInfo(TTypes), Integer(vTTypes)));

  for vTEnterAnimation := Low(TEnterAnimation) to High(TEnterAnimation) do
    cmbEnterAnimation.Items.Add(GetEnumName(TypeInfo(TEnterAnimation), Integer(vTEnterAnimation)));

  for vTExitAnimation := Low(TExitAnimation) to High(TExitAnimation) do
    cmbExitAnimation.Items.Add(GetEnumName(TypeInfo(TExitAnimation), Integer(vTExitAnimation)));

  for vTNameIcon := Low(TNameIcon) to High(TNameIcon) do
    cmbIcon.Items.Add(GetEnumName(TypeInfo(TNameIcon), Integer(vTNameIcon)));

  for vI := 0 to ComponentCount - 1 do
    if Components[vI] is TUniComboBox then
      TUniComboBox(Components[vI]).ItemIndex :=0;

  cmbIcon.ItemIndex := 50;
end;

procedure TfrmiGrowl.rdbTopLeftClick(Sender: TObject);
begin
  if Pos('Top',TUniRadioButton(Sender).Name) > 0 then
    dmMensagens.FSiGrowlComp.PlacementY := TPlacementY.top;
  if Pos('Bottom',TUniRadioButton(Sender).Name) > 0 then
    dmMensagens.FSiGrowlComp.PlacementY := TPlacementY.bottom;

  if Pos('Left',TUniRadioButton(Sender).Name) > 0 then
    dmMensagens.FSiGrowlComp.PlacementX := TPlacementX.left;
  if Pos('Center',TUniRadioButton(Sender).Name) > 0 then
    dmMensagens.FSiGrowlComp.PlacementX := TPlacementX.center;
  if Pos('Right',TUniRadioButton(Sender).Name) > 0 then
    dmMensagens.FSiGrowlComp.PlacementX := TPlacementX.right;
end;

procedure TfrmiGrowl.UniFrameCreate(Sender: TObject);
begin
  lblVersion.Caption := 'UniFSiGrowl - Component Version: '+UniFSiGrowl.PackageVersion;

  CarregaCombos;
  Self.Align := alClient;
end;

initialization
  RegisterClass(TfrmiGrowl);

end.
