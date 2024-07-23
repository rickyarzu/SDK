unit uFrmToggle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, UniFSToggle, uniButton,
  uniBitBtn, uniPanel, uniLabel, uniBasicGrid, uniDBGrid, Vcl.Imaging.pngimage,
  uniImage;

type
  TfrmToggle = class(TUniFrame)
    pnl1: TUniPanel;
    tgl1: TUniFSToggle;
    lbl1: TUniLabel;
    tgl2: TUniFSToggle;
    tgl3: TUniFSToggle;
    tgl4: TUniFSToggle;
    tgl5: TUniFSToggle;
    tgl6: TUniFSToggle;
    tgl7: TUniFSToggle;
    tgl8: TUniFSToggle;
    tgl9: TUniFSToggle;
    lbl2: TUniLabel;
    pnlControle: TUniPanel;
    tgl10: TUniFSToggle;
    tgl11: TUniFSToggle;
    tgl12: TUniFSToggle;
    btn1: TUniButton;
    btn2: TUniBitBtn;
    tgl13: TUniFSToggle;
    tgl14: TUniFSToggle;
    tgl15: TUniFSToggle;
    img1: TUniImage;
    img2: TUniImage;
    img3: TUniImage;
    imgFalcon: TUniImage;
    lblVersion: TUniLabel;
    procedure UniFrameCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure tgl9Toggled(const Value: Boolean);
    procedure tgl11Toggled(const Value: Boolean);
    procedure tgl12Toggled(const Value: Boolean);
    procedure tgl13Toggled(const Value: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TfrmToggle.btn1Click(Sender: TObject);
begin
  tgl10.Toggled := True;
  tgl14.Toggled := True;
  tgl15.Toggled := True;
end;

procedure TfrmToggle.btn2Click(Sender: TObject);
begin
  tgl10.Toggled := False;
  tgl14.Toggled := False;
  tgl15.Toggled := False;
end;

procedure TfrmToggle.tgl11Toggled(const Value: Boolean);
begin
  img1.Visible := Value;
end;

procedure TfrmToggle.tgl12Toggled(const Value: Boolean);
begin
  img2.Visible := Value;
end;

procedure TfrmToggle.tgl13Toggled(const Value: Boolean);
begin
  img3.Visible := Value;
end;

procedure TfrmToggle.tgl9Toggled(const Value: Boolean);
begin
  pnlControle.Visible := Value;
end;

procedure TfrmToggle.UniFrameCreate(Sender: TObject);
begin
  lblVersion.Caption := 'UniFSToggle - Component Version: '+UniFSToggle.PackageVersion;
end;

initialization
  RegisterClass(TfrmToggle);

end.
