unit StandardUnit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainUnit, scControls,
  scModernControls;

type
  TStandardFrame8 = class(TFrame)
    scProgressBar1: TscProgressBar;
    scProgressBar2: TscProgressBar;
    scProgressBar3: TscProgressBar;
    scProgressBar4: TscProgressBar;
    scCheckBox1: TscCheckBox;
    scProgressBar5: TscProgressBar;
    scLabel1: TscLabel;
    scLabel2: TscLabel;
    scTrackBar6: TscTrackBar;
    scProgressBar6: TscProgressBar;
    scSwitch3: TscSwitch;
    scSwitch4: TscSwitch;
    scActivityIndicator1: TscActivityIndicator;
    scActivityIndicator2: TscActivityIndicator;
    scActivityIndicator3: TscActivityIndicator;
    scTrackBar5: TscTrackBar;
    scTrackBar3: TscTrackBar;
    scTrackBar1: TscTrackBar;
    scTrackBar2: TscTrackBar;
    scTrackBar4: TscTrackBar;
    scToggleSwitch1: TscToggleSwitch;
    procedure scCheckBox1Click(Sender: TObject);
    procedure scTrackBar1Change(Sender: TObject);
    procedure scTrackBar5Change(Sender: TObject);
    procedure scTrackBar6Change(Sender: TObject);
    procedure scSwitch4ChangeState(Sender: TObject);
    procedure scTrackBar4Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


procedure TStandardFrame8.scSwitch4ChangeState(Sender: TObject);
begin
  scActivityIndicator1.Active := scSwitch4.IsOn;
  scActivityIndicator2.Active := scSwitch4.IsOn;
  scActivityIndicator3.Active := scSwitch4.IsOn;
end;

procedure TStandardFrame8.scTrackBar1Change(Sender: TObject);
begin
  scProgressBar1.Value := scTrackBar1.Value;
  scProgressBar2.Value := scTrackBar1.Value;
  scProgressBar3.Value := scTrackBar1.Value;
  scProgressBar4.Value := scTrackBar1.Value;
  scProgressBar5.Value := scTrackBar1.Value;
  scProgressBar6.Value := scTrackBar1.Value;
end;

procedure TStandardFrame8.scTrackBar4Change(Sender: TObject);
begin
  scProgressBar1.Value := scTrackBar4.Value;
  scProgressBar2.Value := scTrackBar4.Value;
  scProgressBar3.Value := scTrackBar4.Value;
  scProgressBar4.Value := scTrackBar4.Value;
  scProgressBar5.Value := scTrackBar4.Value;
  scProgressBar6.Value := scTrackBar4.Value;
end;

procedure TStandardFrame8.scTrackBar5Change(Sender: TObject);
begin
  scProgressBar1.Value := scTrackBar5.Value;
  scProgressBar2.Value := scTrackBar5.Value;
  scProgressBar3.Value := scTrackBar5.Value;
  scProgressBar4.Value := scTrackBar5.Value;
  scProgressBar5.Value := scTrackBar5.Value;
  scProgressBar6.Value := scTrackBar5.Value;
end;

procedure TStandardFrame8.scTrackBar6Change(Sender: TObject);
begin
  scProgressBar1.Value := scTrackBar6.Value;
  scProgressBar2.Value := scTrackBar6.Value;
  scProgressBar3.Value := scTrackBar6.Value;
  scProgressBar4.Value := scTrackBar6.Value;
  scProgressBar5.Value := scTrackBar6.Value;
  scProgressBar6.Value := scTrackBar6.Value;
end;

procedure TStandardFrame8.scCheckBox1Click(Sender: TObject);
begin
  if scCheckBox1.Checked then
  begin
    scProgressBar1.StartAnimation;
    scProgressBar2.StartAnimation;
    scProgressBar3.StartAnimation;
    scProgressBar4.StartAnimation;
    scProgressBar5.StartAnimation;
    scProgressBar6.StartAnimation;
  end
  else
  begin
    scProgressBar1.StopAnimation;
    scProgressBar2.StopAnimation;
    scProgressBar3.StopAnimation;
    scProgressBar4.StopAnimation;
    scProgressBar5.StopAnimation;
    scProgressBar6.StopAnimation;
  end;
  scActivityIndicator1.Active := scCheckBox1.Checked;
  scActivityIndicator2.Active := scCheckBox1.Checked;
  scActivityIndicator3.Active := scCheckBox1.Checked;
end;

end.
