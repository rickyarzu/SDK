unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scPrinterDialog, scFontDialog,
  scColorDialog, scImageCollection, scOpenPictureDialog, scOpenFileDialog,
  scSelectPathDialog, scStyledForm, scStyleManager, Vcl.ComCtrls, scControls,
  Vcl.StdCtrls, scShellControls, scDrawUtils, scDialogs;

type
  TForm1 = class(TForm)
    scShellComboBox1: TscShellComboBox;
    scShellTreeView1: TscShellTreeView;
    scLabel1: TscLabel;
    scShellListView1: TscShellListView;
    scComboBox10: TscComboBox;
    AutoExecute: TscCheckBox;
    scPanel1: TscPanel;
    scLabel3: TscLabel;
    scButton1: TscButton;
    scButton2: TscButton;
    scButton3: TscButton;
    scButton4: TscButton;
    scCheckBox3: TscCheckBox;
    scCheckBox1: TscCheckBox;
    scCheckBox2: TscCheckBox;
    scButton5: TscButton;
    scButton6: TscButton;
    scButton7: TscButton;
    scPanel2: TscPanel;
    scStatusBar1: TscStatusBar;
    scStyleManager1: TscStyleManager;
    scStyledForm1: TscStyledForm;
    scSelectPathDialog1: TscSelectPathDialog;
    scOpenDialog1: TscOpenDialog;
    scSaveDialog1: TscSaveDialog;
    scOpenPictureDialog1: TscOpenPictureDialog;
    scImageCollection1: TscImageCollection;
    scColorDialog1: TscColorDialog;
    scFontDialog1: TscFontDialog;
    scPrintDialog1: TscPrintDialog;
    scButton8: TscButton;
    scButton9: TscButton;
    scButton10: TscButton;
    procedure AutoExecuteClick(Sender: TObject);
    procedure scButton1Click(Sender: TObject);
    procedure scButton2Click(Sender: TObject);
    procedure scButton3Click(Sender: TObject);
    procedure scButton4Click(Sender: TObject);
    procedure scButton5Click(Sender: TObject);
    procedure scButton6Click(Sender: TObject);
    procedure scButton7Click(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
    procedure scCheckBox2Click(Sender: TObject);
    procedure scCheckBox3Click(Sender: TObject);
    procedure scComboBox10Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure scButton9Click(Sender: TObject);
    procedure scButton8Click(Sender: TObject);
    procedure scButton10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AutoExecuteClick(Sender: TObject);
begin
 scShellListView1.AutoExecute := AutoExecute.Checked;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  if IsWindowsXP then
  begin
    scComboBox10.Items.Delete(scComboBox10.Items.Count - 1);
    scComboBox10.Items.Delete(scComboBox10.Items.Count - 1);
    scComboBox10.Items.Delete(scComboBox10.Items.Count - 1);
    scShellListView1.DefaultDraw := True;
  end;
  scShellTreeView1.Path := 'c:\';
end;

procedure TForm1.scButton10Click(Sender: TObject);
begin
  scStyledForm1.ShowClientInActiveEffect;
  if  scMessageDlgEx('System text on buttons',
    'Do you want to use scMessageDlgEx method in your Application?',
     mtConfirmation, mbOKCancel, -1) = mrOk then
     scShowMessageEx('My Title', 'Thank you!');
  scStyledForm1.HideClientInActiveEffect;
end;

procedure TForm1.scButton1Click(Sender: TObject);
begin
  scStyledForm1.ShowClientInActiveEffect;
  scSelectPathDialog1.Execute;
  scStyledForm1.HideClientInActiveEffect;
end;

procedure TForm1.scButton2Click(Sender: TObject);
begin
  scStyledForm1.ShowClientInActiveEffect;
  scOpenDialog1.Execute;
  scStyledForm1.HideClientInActiveEffect;
end;

procedure TForm1.scButton3Click(Sender: TObject);
begin
  scStyledForm1.ShowClientInActiveEffect;
  scSaveDialog1.Execute;
  scStyledForm1.HideClientInActiveEffect;
end;

procedure TForm1.scButton4Click(Sender: TObject);
begin
  scStyledForm1.ShowClientInActiveEffect;
  scOpenPictureDialog1.Execute;
  scStyledForm1.HideClientInActiveEffect;
end;

procedure TForm1.scButton5Click(Sender: TObject);
begin
  scStyledForm1.ShowClientInActiveEffect;
  scColorDialog1.Execute;
  scStyledForm1.HideClientInActiveEffect;
end;

procedure TForm1.scButton6Click(Sender: TObject);
begin
  scStyledForm1.ShowClientInActiveEffect;
  scFontDialog1.Execute;
  scStyledForm1.HideClientInActiveEffect;
end;

procedure TForm1.scButton7Click(Sender: TObject);
begin
  scStyledForm1.ShowClientInActiveEffect;
  scPrintDialog1.Execute;
  scStyledForm1.HideClientInActiveEffect;
end;

procedure TForm1.scButton8Click(Sender: TObject);
begin
  scStyledForm1.ShowClientInActiveEffect;
  if  scMessageDlg(
   'Do you want to use scMessageDlg method in your Application?' + #13 +
   '(Standard MessageDlg and support of scaling (High-DPI) with VCL Styles)',
    mtConfirmation, mbOKCancel, -1) = mrOk then
      scShowMessage('Thank you!');
  scStyledForm1.HideClientInActiveEffect;
end;

procedure TForm1.scButton9Click(Sender: TObject);
begin
  scStyledForm1.ShowClientInActiveEffect;
  if  scMessageDlgEx('My Title',
    'Do you want to use scMessageDlgEx method in your Application?',
     mtConfirmation, mbOKCancel, -1, ['I want', 'I don''t want']) = mrOk then
     scShowMessageEx('My Title', 'Thank you!');
  scStyledForm1.HideClientInActiveEffect;
end;

procedure TForm1.scCheckBox1Click(Sender: TObject);
begin
  scSelectPathDialog1.AnimationOnControls := scCheckBox1.Checked;
  scOpenDialog1.AnimationOnControls := scCheckBox1.Checked;
  scSaveDialog1.AnimationOnControls := scCheckBox1.Checked;
  scOpenPictureDialog1.AnimationOnControls := scCheckBox1.Checked;
  scColorDialog1.AnimationOnControls := scCheckBox1.Checked;
  scFontDialog1.AnimationOnControls := scCheckBox1.Checked;
  scPrintDialog1.AnimationOnControls := scCheckBox1.Checked;
end;

procedure TForm1.scCheckBox2Click(Sender: TObject);
begin
  scOpenDialog1.ShowThumbnails := scCheckBox2.Checked;
  scSaveDialog1.ShowThumbnails := scCheckBox2.Checked;
  scOpenPictureDialog1.ShowThumbnails := scCheckBox2.Checked;
end;

procedure TForm1.scCheckBox3Click(Sender: TObject);
begin
 scSelectPathDialog1.ShowCreateButton := scCheckBox3.Checked;
end;

procedure TForm1.scComboBox10Change(Sender: TObject);
begin
  if IsWindowsXP then
  begin
    scShellListView1.ViewStyle := TViewStyle(scComboBox10.ItemIndex);
    Exit;
  end;
  if scComboBox10.ItemIndex <= 3 then
  begin
    scShellListView1.ViewStyle := TViewStyle(scComboBox10.ItemIndex);
    if scShellListView1.ThumbnailOptions.Enabled and
       (scShellListView1.ViewStyle = vsIcon) then
       scShellListView1.ThumbnailOptions.Enabled := False;
  end
  else
    case scComboBox10.ItemIndex of
      4: scShellListView1.ThumbnailOptions.SetValues(True, 96, 96);
      5: scShellListView1.ThumbnailOptions.SetValues(True, 128, 128);
      6: scShellListView1.ThumbnailOptions.SetValues(True, 256, 256);
    end;
end;

end.
