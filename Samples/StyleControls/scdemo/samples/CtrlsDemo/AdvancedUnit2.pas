unit AdvancedUnit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainUnit,
  scAdvancedControls, scControls, Vcl.StdCtrls;

type
  TAdvancedFrame2 = class(TFrame)
    scLabel1: TscLabel;
    scLabel2: TscLabel;
    scComboBox1: TscComboBox;
    scComboBox2: TscComboBox;
    scLabel3: TscLabel;
    scCheckBox1: TscCheckBox;
    scCheckBox2: TscCheckBox;
    scCheckBox3: TscCheckBox;
    scComboBox4: TscComboBox;
    scGallery1: TscGallery;
    scGridView1: TscGridView;
    scGridViewComboBox1: TscGridViewComboBox;
    scComboBox3: TscComboBox;
    scLabel4: TscLabel;
    scCheckBox4: TscCheckBox;
    procedure scComboBox1Click(Sender: TObject);
    procedure scComboBox2Click(Sender: TObject);
    procedure scComboBox4Click(Sender: TObject);
    procedure scComboBox3Click(Sender: TObject);
    procedure scCheckBox4Click(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
    procedure scCheckBox2Click(Sender: TObject);
    procedure scCheckBox3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TAdvancedFrame2.scComboBox4Click(Sender: TObject);
begin
  scGridView1.BackgroundStyle := TscBackgroundStyle(scComboBox4.ItemIndex);
  scGallery1.BackgroundStyle := TscBackgroundStyle(scComboBox4.ItemIndex)
end;

procedure TAdvancedFrame2.scCheckBox1Click(Sender: TObject);
begin
  scGridView1.ShowFocusRect := scCheckBox1.Checked;
  scGridViewComboBox1.ShowFocusRect := scCheckBox1.Checked;
  scGallery1.ShowFocusRect := scCheckBox1.Checked;
end;

procedure TAdvancedFrame2.scCheckBox2Click(Sender: TObject);
begin
  if scCheckBox2.Checked then
  begin
    scGridView1.Wallpapers := MainForm.scImageCollection1;
    scGallery1.Wallpapers := MainForm.scImageCollection1;
    scGridViewComboBox1.GridViewWallpapers := MainForm.scImageCollection1;
  end
  else
  begin
    scGridView1.Wallpapers := nil;
    scGallery1.Wallpapers := nil;
    scGridViewComboBox1.GridViewWallpapers := nil;
  end;
end;

procedure TAdvancedFrame2.scCheckBox3Click(Sender: TObject);
begin
  if scCheckBox3.Checked then
  begin
    scGridView1.BorderStyle := scbsSingle;
    scGallery1.BorderStyle := scbsSingle;
  end
  else
  begin
    scGridView1.BorderStyle := scbsNone;
    scGallery1.BorderStyle := scbsNone;
  end;
end;

procedure TAdvancedFrame2.scCheckBox4Click(Sender: TObject);
begin
  scGridViewComboBox1.Animation := scCheckBox4.Checked;
end;

procedure TAdvancedFrame2.scComboBox1Click(Sender: TObject);
begin
  scGridView1.SelectionStyle := TscAdvancedSelectionStyle(scComboBox1.ItemIndex);
  scGallery1.SelectionStyle := TscAdvancedSelectionStyle(scComboBox1.ItemIndex);
  scGridViewComboBox1.GridViewSelectionStyle := TscAdvancedSelectionStyle(scComboBox1.ItemIndex);
  scGridViewComboBox1.SelectionStyle := TscAdvancedSelectionStyle(scComboBox1.ItemIndex);
end;

procedure TAdvancedFrame2.scComboBox2Click(Sender: TObject);
begin
  scGridView1.HeaderStyle := TscAdvancedHeaderStyle(scComboBox2.ItemIndex);
  scGridViewComboBox1.GridViewHeaderStyle := TscAdvancedHeaderStyle(scComboBox2.ItemIndex);
end;

procedure TAdvancedFrame2.scComboBox3Click(Sender: TObject);
begin
  scGridViewComboBox1.Style := TscAdvancedComboStyle(scComboBox3.ItemIndex);
end;

end.
