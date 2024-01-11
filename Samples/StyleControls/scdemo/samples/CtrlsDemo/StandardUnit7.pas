unit StandardUnit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, MainUnit;

type
  TStandardFrame7 = class(TFrame)
    scCheckBox2: TscCheckBox;
    scCheckBox3: TscCheckBox;
    scRadioButton1: TscRadioButton;
    scRadioButton2: TscRadioButton;
    scCheckBox1: TscCheckBox;
    scLabel1: TscLabel;
    scCheckBox4: TscCheckBox;
    scCheckBox5: TscCheckBox;
    procedure scCheckBox1Click(Sender: TObject);
    procedure scCheckBox5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TStandardFrame7.scCheckBox1Click(Sender: TObject);
begin
  scCheckBox2.Animation := scCheckBox1.Checked;
  scCheckBox3.Animation := scCheckBox1.Checked;
  scCheckBox5.Animation := scCheckBox1.Checked;
  scRadioButton2.Animation := scCheckBox1.Checked;
end;

procedure TStandardFrame7.scCheckBox5Click(Sender: TObject);
begin
  if scCheckBox5.Checked then
    scCheckBox5.GlowEffect.Color := clLime
  else
    scCheckBox5.GlowEffect.Color := clRed;
  scCheckBox5.RePaintControl;
end;

end.
