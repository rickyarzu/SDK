unit StandardUnit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, MainUnit,
  Vcl.StdCtrls;

type
  TStandardFrame2 = class(TFrame)
    scRadioGroup1: TscRadioGroup;
    scGroupBox1: TscGroupBox;
    scButton1: TscButton;
    scCheckGroup1: TscCheckGroup;
    scGroupBox2: TscGroupBox;
    scButton2: TscButton;
    scComboBox1: TscComboBox;
    scLabel1: TscLabel;
    procedure scCheckGroup1ButtonClick(Sender: TObject);
    procedure scComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure Loaded; override;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TStandardFrame2.scCheckGroup1ButtonClick(Sender: TObject);
begin
  case scCheckGroup1.ItemIndex of
    0:
      begin
        scCheckGroup1.ButtonsGlowEffect.Enabled := scCheckGroup1.ItemChecked[0];
        scCheckGroup1.ButtonsAnimation := scCheckGroup1.ItemChecked[0];
      end;
    2: scCheckGroup1.ShowFocusRect := scCheckGroup1.ItemChecked[2];
  end;
end;

procedure TStandardFrame2.scComboBox1Click(Sender: TObject);
begin
  scGroupBox1.FramePosition := TscGroupBoxFramePosition(scComboBox1.ItemIndex);
  scGroupBox2.FramePosition := TscGroupBoxFramePosition(scComboBox1.ItemIndex);
  scRadioGroup1.FramePosition := TscGroupBoxFramePosition(scComboBox1.ItemIndex);
  scCheckGroup1.FramePosition := TscGroupBoxFramePosition(scComboBox1.ItemIndex);
end;

procedure TStandardFrame2.Loaded;
begin
  inherited;
  scCheckGroup1.ItemChecked[2] := True;
end;

end.
