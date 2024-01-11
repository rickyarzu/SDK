unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, scExtControls, Vcl.StdCtrls,
  scImageCollection, Vcl.ImgList, Vcl.Mask, Vcl.Themes,
  scStyledForm, scStyleManager;

type
  TForm1 = class(TForm)
    scImageCollection1: TscImageCollection;
    scScrollPanel1: TscScrollPanel;
    scButton1: TscButton;
    ImageList1: TImageList;
    scButton3: TscButton;
    scButton4: TscButton;
    scButton5: TscButton;
    scPanel1: TscPanel;
    scPanel2: TscPanel;
    scButton2: TscButton;
    scButton6: TscButton;
    scScrollPanel2: TscScrollPanel;
    scButton7: TscButton;
    scButton8: TscButton;
    scButton9: TscButton;
    scButton10: TscButton;
    scCheckBox1: TscCheckBox;
    scCheckBox2: TscCheckBox;
    scCheckBox3: TscCheckBox;
    scCheckBox4: TscCheckBox;
    scLabel1: TscLabel;
    scComboBox1: TscComboBox;
    scButton11: TscButton;
    scStyledForm1: TscStyledForm;
    scStyleManager1: TscStyleManager;
    scPanel3: TscPanel;
    scEdit1: TscEdit;
    procedure Button1Click(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
    procedure scCheckBox2Click(Sender: TObject);
    procedure scCheckBox3Click(Sender: TObject);
    procedure scCheckBox4Click(Sender: TObject);
    procedure scComboBox1Click(Sender: TObject);
    procedure scButton11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  scButton3.Left :=  scButton3.Left + 30;
end;

procedure TForm1.scButton11Click(Sender: TObject);
begin
  if TStyleManager.ActiveStyle.Name = 'Windows' then
    TStyleManager.SetStyle('Glossy')
  else
    TStyleManager.SetStyle('Windows');
end;

procedure TForm1.scCheckBox1Click(Sender: TObject);
begin
  scScrollPanel1.HotScroll := scCheckBox1.Checked;
  scScrollPanel2.HotScroll := scCheckBox1.Checked;
  if scScrollPanel1.HotScroll then
  begin
    scScrollPanel1.ScrollTimerInterval := 30;
    scScrollPanel2.ScrollTimerInterval := 30;
    scScrollPanel1.ScrollOffset := 15;
    scScrollPanel2.ScrollOffset := 15;
  end
  else
  begin
    scScrollPanel1.ScrollTimerInterval := 50;
    scScrollPanel2.ScrollTimerInterval := 50;
    scScrollPanel1.ScrollOffset := 70;
    scScrollPanel2.ScrollOffset := 70;
  end;
end;

procedure TForm1.scCheckBox2Click(Sender: TObject);
begin
  if scCheckBox2.Checked then
  begin
    scScrollPanel1.ScrollOffset := 0;
    scScrollPanel2.ScrollOffset := 0;
  end
  else
  begin
    if scScrollPanel1.HotScroll then
    begin
      scScrollPanel1.ScrollOffset := 15;
      scScrollPanel2.ScrollOffset := 15;
    end
    else
    begin
      scScrollPanel1.ScrollOffset := 70;
      scScrollPanel2.ScrollOffset := 70;
    end;
  end;
end;

procedure TForm1.scCheckBox3Click(Sender: TObject);
begin
  if scCheckBox3.Checked then
  begin
    scScrollPanel1.WallpaperIndex := 0;
    scScrollPanel2.WallpaperIndex := 1;
    scScrollPanel1.StorePaintBuffer := True;
  end
  else
  begin
    scScrollPanel1.WallpaperIndex := -1;
    scScrollPanel2.WallpaperIndex := -1;
    scScrollPanel1.StorePaintBuffer := False;
  end;
end;

procedure TForm1.scCheckBox4Click(Sender: TObject);
begin
  if scCheckBox4.Checked then
  begin
    scScrollPanel1.CustomImageIndex := 2;
    scScrollPanel2.CustomImageIndex := 2;
  end
  else
  begin
    scScrollPanel1.CustomImageIndex := -1;
    scScrollPanel2.CustomImageIndex := -1;
  end;
end;

procedure TForm1.scComboBox1Click(Sender: TObject);
begin
  scScrollPanel1.StyleKind:= TscScrollPanelStyleKind(scComboBox1.ItemIndex);
  scScrollPanel2.StyleKind:= TscScrollPanelStyleKind(scComboBox1.ItemIndex);
end;

end.
