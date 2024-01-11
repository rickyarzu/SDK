unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, scControls,
  scModernControls, scImageCollection, scStyledForm, scStyleManager;

type
  TForm1 = class(TForm)
    scSplitView1: TscSplitView;
    scRelativePanel1: TscRelativePanel;
    scStyleManager1: TscStyleManager;
    scStyledForm1: TscStyledForm;
    scComboBox1: TscComboBox;
    scLabel1: TscLabel;
    scButton1: TscButton;
    scButton2: TscButton;
    scLabel2: TscLabel;
    scLabel3: TscLabel;
    scCheckBox1: TscCheckBox;
    procedure scSplitView1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure scComboBox1Click(Sender: TObject);
    procedure scButton1Click(Sender: TObject);
    procedure scButton2Click(Sender: TObject);
    procedure scLabel3Click(Sender: TObject);
    procedure scSplitView1Closed(Sender: TObject);
    procedure scSplitView1Opened(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FDown: Boolean;
    FOldY: Integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormDestroy(Sender: TObject);
begin
  scSplitView1.Opened := False;
end;

procedure TForm1.scButton1Click(Sender: TObject);
begin
  if scSplitView1.DisplayMode = scsvmOverlay then
  begin
    scSplitView1.DisplayMode := scsvmDocked;
    scButton1.Caption := 'Change DisplayMode (scsvmDocked)';
  end
  else
  begin
    scSplitView1.DisplayMode := scsvmOverlay;
    scButton1.Caption := 'Change DisplayMode (scsvmOverlay)';
  end;
end;

procedure TForm1.scButton2Click(Sender: TObject);
begin
  if scSplitView1.GripSize = 0 then
  begin
    scSplitView1.GripSize := 10;
    scButton2.Caption := 'Change GripSize (10)';
  end
  else
  begin
    scSplitView1.GripSize := 0;
    scButton2.Caption := 'Change GripSize (0)';
  end;
end;

procedure TForm1.scCheckBox1Click(Sender: TObject);
begin
  scSplitView1.Animation := scCheckBox1.Checked;
end;

procedure TForm1.scComboBox1Click(Sender: TObject);
begin
  scSplitView1.Placement := TscSplitViewPlacement(scComboBox1.ItemIndex);
end;

procedure TForm1.scLabel3Click(Sender: TObject);
begin
  scSplitView1.Opened := not scSplitView1.Opened;
end;

procedure TForm1.scSplitView1Click(Sender: TObject);
begin
  scSplitView1.Opened := not scSplitView1.Opened;
end;

procedure TForm1.scSplitView1Closed(Sender: TObject);
begin
  scButton1.CanFocused := False;
  scButton2.CanFocused := False;
  scCheckBox1.CanFocused := False;
  scComboBox1.SetFocus;
end;

procedure TForm1.scSplitView1Opened(Sender: TObject);
begin
  scButton1.CanFocused := True;
  scButton2.CanFocused := True;
  scCheckBox1.CanFocused := True;
end;

end.
