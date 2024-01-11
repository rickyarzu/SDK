unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, Vcl.StdCtrls, Vcl.Themes,
  scImageCollection, scAdvancedControls, Vcl.Mask, scStyledForm,
  scStyleManager;

type
  TForm1 = class(TForm)
    scPanel1: TscPanel;
    scImageCollection1: TscImageCollection;
    scLabel1: TscLabel;
    scButton1: TscButton;
    scButton2: TscButton;
    scLabel2: TscLabel;
    scAdvancedListBox1: TscAdvancedListBox;
    scCheckBox1: TscCheckBox;
    scPanel2: TscPanel;
    scCheckBox2: TscCheckBox;
    scStyledForm1: TscStyledForm;
    scStyleManager1: TscStyleManager;
    procedure scButton1Click(Sender: TObject);
    procedure scButton2Click(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
    procedure scAdvancedListBox1Items2ButtonClick(Sender: TObject);
    procedure scCheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.scAdvancedListBox1Items2ButtonClick(Sender: TObject);
begin
  if scAdvancedListBox1.SelectionStyle = scastCustomImageWithGlow then
    scAdvancedListBox1.SelectionStyle := scastCustomImage
  else
    scAdvancedListBox1.SelectionStyle := scastCustomImageWithGlow;
end;

procedure TForm1.scButton1Click(Sender: TObject);
begin
  if scPanel1.WallpaperIndex = 0 then
  begin
    scPanel1.WallpaperIndex := 1;
    scLabel2.Caption := 'scImageCollection1.Images[Index].DrawStyle = idsTile';
  end
  else
  if scPanel1.WallpaperIndex = 1 then
  begin
    scPanel1.WallpaperIndex := 2;
    scLabel2.Caption := 'scImageCollection1.Images[Index].DrawStyle = idsTopRight';
  end
  else
  begin
    scPanel1.WallpaperIndex := 0;
     scLabel2.Caption := 'scImageCollection1.Images[Index].DrawStyle = idsCenter';
  end;
end;

procedure TForm1.scButton2Click(Sender: TObject);
begin
  if TStyleManager.ActiveStyle.Name = 'Windows' then
    TStyleManager.SetStyle('Glossy')
  else
    TStyleManager.SetStyle('Windows');
end;

procedure TForm1.scCheckBox1Click(Sender: TObject);
begin
  if scCheckBox1.Checked then
    scPanel1.CustomImageIndex := 3
  else
    scPanel1.CustomImageIndex := -1;
end;

procedure TForm1.scCheckBox2Click(Sender: TObject);
begin
  if scCheckBox2.Checked then
    scAdvancedListBox1.CustomOverContentImageIndex := 8
  else
    scAdvancedListBox1.CustomOverContentImageIndex := -1;
end;

end.
