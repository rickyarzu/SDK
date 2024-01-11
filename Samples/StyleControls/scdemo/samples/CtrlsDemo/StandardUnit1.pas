unit StandardUnit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls,
  Vcl.StdCtrls, Vcl.Menus, MainUnit, scExtControls, scHtmlControls,
  scColorDialog, scDialogs;

type
  TStandardFrame1 = class(TFrame)
    scLabel1: TscLabel;
    scLabel2: TscLabel;
    scButton1: TscButton;
    scComboBox1: TscComboBox;
    scCheckBox1: TscCheckBox;
    scCheckBox2: TscCheckBox;
    scCheckBox5: TscCheckBox;
    scCheckBox4: TscCheckBox;
    scCheckBox3: TscCheckBox;
    scButton2: TscButton;
    scButton3: TscButton;
    PopupMenu1: TPopupMenu;
    Item11: TMenuItem;
    Item21: TMenuItem;
    Item41: TMenuItem;
    Item42: TMenuItem;
    scGalleryMenu1: TscGalleryMenu;
    scCheckBox8: TscCheckBox;
    scColorButton1: TscColorButton;
    scColorButton2: TscColorButton;
    scButton4: TscButton;
    scButton5: TscButton;
    scButton6: TscButton;
    scMemo1: TscMemo;
    scHTMLLabel1: TscHTMLLabel;
    scColorDialog1: TscColorDialog;
    procedure scComboBox1Click(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
    procedure scCheckBox5Click(Sender: TObject);
    procedure scCheckBox2Click(Sender: TObject);
    procedure scCheckBox4Click(Sender: TObject);
    procedure scCheckBox3Click(Sender: TObject);
    procedure scCheckBox8Click(Sender: TObject);
    procedure scHTMLLabel1LinkClick(Sender: TObject; LinkIndex: Integer;
      LinkText, LinkURL: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TStandardFrame1.scCheckBox1Click(Sender: TObject);
begin
  if scCheckBox1.Checked then
  begin
    scButton1.DropDownMenu := PopupMenu1;
    scCheckBox8.Checked := False;
  end
  else
    scButton1.DropDownMenu := nil;

end;

procedure TStandardFrame1.scCheckBox2Click(Sender: TObject);
begin
  scButton1.SplitButton := scCheckBox2.Checked;
end;

procedure TStandardFrame1.scCheckBox3Click(Sender: TObject);
begin
  scButton1.Animation := scCheckBox3.Checked;
  scButton2.Animation := scCheckBox3.Checked;
  scButton3.Animation := scCheckBox3.Checked;
end;

procedure TStandardFrame1.scCheckBox4Click(Sender: TObject);
begin
  scButton1.GlowEffect.Enabled := scCheckBox4.Checked;
end;

procedure TStandardFrame1.scCheckBox5Click(Sender: TObject);
begin
  scButton1.CanFocused := scCheckBox5.Checked;
end;

procedure TStandardFrame1.scCheckBox8Click(Sender: TObject);
begin
 if scCheckBox8.Checked then
 begin
   scButton1.GalleryMenu := scGalleryMenu1;
   scCheckBox1.Checked := False;
 end
  else
    scButton1.GalleryMenu := nil;

end;

procedure TStandardFrame1.scComboBox1Click(Sender: TObject);
begin
  scButton1.StyleKind := TscButtonStyleKind(scComboBox1.ItemIndex);
end;

procedure TStandardFrame1.scHTMLLabel1LinkClick(Sender: TObject;
  LinkIndex: Integer; LinkText, LinkURL: string);
begin
  if LinkText = 'Custom' then
   scShowMessage('Custom link is supported!' + #13 + #10 +
     'Use TscHtmlLabel.OnLinkClick event.');
end;

end.
