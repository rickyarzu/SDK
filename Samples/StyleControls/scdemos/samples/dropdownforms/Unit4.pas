unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ImgList, scStyledForm,
  scStyleManager, scModernControls, scControls, scExtControls,
  scAdvancedControls;

type
  TMenuPopupForm = class(TForm)
    scPanel1: TscPanel;
    scPageViewer1: TscPageViewer;
    scPageViewerPage2: TscPageViewerPage;
    scLabel2: TscLabel;
    scPageViewerPage1: TscPageViewerPage;
    scLabel1: TscLabel;
    scSplitView3: TscSplitView;
    scLabel7: TscLabel;
    scSplitView2: TscSplitView;
    scLabel4: TscLabel;
    scLabel28: TscLabel;
    scLabel5: TscLabel;
    scButton10: TscButton;
    scLabel6: TscLabel;
    scSplitView1: TscSplitView;
    scButton6: TscButton;
    scButton2: TscButton;
    scButton3: TscButton;
    scButton1: TscButton;
    scButton4: TscButton;
    scButton5: TscButton;
    scStyledForm1: TscStyledForm;
    ImageList1: TImageList;
    scAdvancedListBox1: TscAdvancedListBox;
    procedure scButton1Click(Sender: TObject);
    procedure scButton6Click(Sender: TObject);
    procedure scButton2Click(Sender: TObject);
    procedure scButton3Click(Sender: TObject);
    procedure scButton4Click(Sender: TObject);
    procedure scButton5Click(Sender: TObject);
    procedure scStyledForm1CloseUp(ADropDownForm: TCustomForm;
      ADropDownControl: TControl; AAcceptChanges: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure scAdvancedListBox1DblClick(Sender: TObject);
    procedure scAdvancedListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuPopupForm: TMenuPopupForm;

implementation

{$R *.dfm}

uses Unit1;

procedure TMenuPopupForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    scStyledForm1.CloseUp(False);
end;

procedure TMenuPopupForm.scAdvancedListBox1DblClick(Sender: TObject);
begin
  scStyledForm1.CloseUp(True);
end;

procedure TMenuPopupForm.scAdvancedListBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    scStyledForm1.CloseUp(True);
end;

procedure TMenuPopupForm.scButton1Click(Sender: TObject);
begin
  scStyledForm1.CloseUp(True);
  Form1.Close;
end;

procedure TMenuPopupForm.scButton2Click(Sender: TObject);
begin
  scPageViewer1.PageIndex := 0;
end;

procedure TMenuPopupForm.scButton3Click(Sender: TObject);
begin
  scPageViewer1.PageIndex := 1;
end;

procedure TMenuPopupForm.scButton4Click(Sender: TObject);
begin
 if not scSplitView2.Opened and scSplitView3.Opened  then
     scSplitView3.Opened := False;
  scSplitView2.Opened := not scSplitView2.Opened;
end;

procedure TMenuPopupForm.scButton5Click(Sender: TObject);
begin
  if not scSplitView3.Opened and scSplitView2.Opened  then
     scSplitView2.Opened := False;
  scSplitView3.Opened := not scSplitView3.Opened;
end;

procedure TMenuPopupForm.scButton6Click(Sender: TObject);
begin
  scSplitView1.Opened := not scSplitView1.Opened;
end;

procedure TMenuPopupForm.scStyledForm1CloseUp(ADropDownForm: TCustomForm;
  ADropDownControl: TControl; AAcceptChanges: Boolean);
begin
  if ADropDownControl is TScButton then
    TscButton(ADropDownControl).CloseUp(AAcceptChanges);
end;

end.
