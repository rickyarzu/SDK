unit uTestBeaconBasic;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Beacon,
  System.Bluetooth, System.Beacon.Components, FMX.TabControl,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListBox;

type
  TForm1 = class(TForm)
    tabRadar: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    Beacon1: TBeacon;
    BeaconDevice1: TBeaconDevice;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    LabelMajor: TLabel;
    LabelMinor: TLabel;
    LabelUID: TLabel;
    Label2: TLabel;
    Button1: TButton;
    lbDistance: TLabel;
    Button2: TButton;
    ComboBox1: TComboBox;
    Label3: TLabel;
    CheckBox2: TCheckBox;
    ComboBox2: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Beacon1BeaconEnter(const Sender: TObject; const ABeacon: IBeacon;
      const CurrentBeaconList: TBeaconList);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}

procedure TForm1.Beacon1BeaconEnter(const Sender: TObject;
  const ABeacon: IBeacon; const CurrentBeaconList: TBeaconList);
//'{01800024-4B03-24D6-B326-4B0324D6B201}'
//'FC:79:81:41:50:33'
//'F2:D6:CB:73:88:07'

//var
// fStyle: TFontStyle;
begin
   self.Label1.Text := 'Trovato';
   Label1.Font.Style := [TFontStyle.fsBold];
   self.CheckBox1.IsChecked := ABeacon.ItsAlive;
   self.LabelMajor.Text :=  ABeacon.Major.ToString;
   self.LabelMinor.Text :=  ABeacon.Minor.ToString;
   self.LabelUID.Text := ABeacon.GUID.ToString;
   self.Label2.Text := Abeacon.DeviceIdentifier;
   ComboBox1.ListBox.Items.Add(Abeacon.DeviceIdentifier);
   self.lbDistance.Text := Abeacon.Distance.ToString;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if SELF.Beacon1.Enabled then
  begin
    self.Beacon1.Enabled := False;
    self.Button1.Text := 'Avvia Ricerca';
  end
  else
  begin
    self.Beacon1.Enabled := True;
    self.Button1.Text := 'Ferma Ricerca';
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   self.Label1.Text := 'Ricerca';
   Label1.Font.Style := [];
   self.CheckBox1.IsChecked := False;
   self.LabelMajor.Text :=  '';
   self.LabelMinor.Text :=  '';
   self.LabelUID.Text := '';
   self.Label2.Text := '';
   self.lbDistance.Text := '';
end;

end.
