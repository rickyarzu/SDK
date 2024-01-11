unit StandardUnit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls,
  Vcl.StdCtrls, Vcl.ComCtrls, System.UITypes, MainUnit, scDialogs;

type
  TStandardFrame3 = class(TFrame)
    scPageControl1: TscPageControl;
    scTabSheet1: TscTabSheet;
    scComboBox2: TscComboBox;
    scLabel4: TscLabel;
    scTabSheet2: TscTabSheet;
    scMemo1: TscMemo;
    scTabSheet3: TscTabSheet;
    scLabel1: TscLabel;
    scCheckBox1: TscCheckBox;
    scCheckBox2: TscCheckBox;
    scComboBox3: TscComboBox;
    scLabel3: TscLabel;
    scComboBox1: TscComboBox;
    scLabel2: TscLabel;
    scCheckBox3: TscCheckBox;
    scCheckBox4: TscCheckBox;
    scPanel1: TscPanel;
    scTabSheet4: TscTabSheet;
    scTabSheet5: TscTabSheet;
    procedure scComboBox2Click(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
    procedure scCheckBox2Click(Sender: TObject);
    procedure scComboBox1Click(Sender: TObject);
    procedure scComboBox3Click(Sender: TObject);
    procedure scCheckBox3Click(Sender: TObject);
    procedure scCheckBox4Click(Sender: TObject);
    procedure scPageControl1Close(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TStandardFrame3.scCheckBox1Click(Sender: TObject);
begin
  scPageControl1.HideTabs := scCheckBox1.Checked;
end;

procedure TStandardFrame3.scCheckBox2Click(Sender: TObject);
begin
  scPageControl1.HideBorder := scCheckBox2.Checked;
end;

procedure TStandardFrame3.scCheckBox3Click(Sender: TObject);
begin
  scPanel1.ShowCaption := scCheckBox3.Checked;
end;

procedure TStandardFrame3.scCheckBox4Click(Sender: TObject);
begin
  if scCheckBox4.Checked then
  begin
    scPanel1.Wallpapers := MainForm.scImageCollection1;
    scPanel1.WallpaperIndex := 0;
  end
  else
  begin
    scPanel1.Wallpapers := nil;
    scPanel1.WallpaperIndex := -1;
  end;
end;

procedure TStandardFrame3.scComboBox1Click(Sender: TObject);
begin
  scPanel1.StyleKind:= TscPanelStyleKind(scComboBox1.ItemIndex);
end;

procedure TStandardFrame3.scComboBox2Click(Sender: TObject);
begin
  scTabSheet1.StyleKind := TscTabStyleKind(scComboBox2.ItemIndex);
end;

procedure TStandardFrame3.scComboBox3Click(Sender: TObject);
begin
  scPanel1.BorderStyle := TscPanelBorderStyle(scComboBox3.ItemIndex);
end;

procedure TStandardFrame3.scPageControl1Close(Sender: TObject;
  var CanClose: Boolean);
begin
 CanClose := scMessageDlg('Do you want to close this page?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes;
end;

end.
