unit ufrmMailModelVCL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, AdvListEditor, AdvAppStyler, Vcl.ExtCtrls, Shader,
  Janua.Core.Classes, Janua.Core.Customcontrols, Janua.VCL.Dialogs, System.ImageList, Vcl.ImgList, JvImageList,
  AdvOfficePager, Vcl.OleCtrls, SHDocVw, AdvRichEditorIO, AdvScrollControl, AdvRichEditorBase, AdvRichEditor, AdvMemo,
  AdvMemoStylerManager, AdvmWS, AdvToolBar, AdvToolBarExt, AdvRichEditorToolBar, Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtDlgs,
  AdvGlowButton, AdvOfficeHint, AdvToolBarStylers, Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList,
  Vcl.ActnMan, Janua.Core.Mail, Vcl.Buttons, AdvCodeList, AdvmPS, AdvMenus, AdvMenuStylers, AdvMemoActions;

type
  TfrmMailModelVCL = class(TForm)
    Shader1: TShader;
    AdvFormStyler1: TAdvFormStyler;
    edMailTo: TAdvListEditor;
    lbTo: TLabel;
    JvImageList1: TJvImageList;
    ImageList1: TImageList;
    lbCC: TLabel;
    lbBCC: TLabel;
    edMailCC: TAdvListEditor;
    edMailBCC: TAdvListEditor;
    AdvOfficePager11: TAdvOfficePage;
    pgMailPreview: TAdvOfficePage;
    AdvOfficePager13: TAdvOfficePage;
    lbSubject: TLabel;
    WebBrowser1: TWebBrowser;
    memMailObject: TMemo;
    AdvRichEditorHTMLIO1: TAdvRichEditorHTMLIO;
    AdvRichEditor1: TAdvRichEditor;
    AdvHTMLMemoStyler1: TAdvHTMLMemoStyler;
    AdvMemoStylerManager1: TAdvMemoStylerManager;
    AdvMemo1: TAdvMemo;
    OpenTextFileDialog1: TOpenTextFileDialog;
    TG: TAdvOfficePager;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvOfficeHint1: TAdvOfficeHint;
    AdvToolBarPager1: TAdvToolBarPager;
    AdvToolBarPager11: TAdvPage;
    AdvRichEditorClipboardRibbonToolBar1: TAdvRichEditorClipboardRibbonToolBar;
    AdvRichEditorFontRibbonToolBar1: TAdvRichEditorFontRibbonToolBar;
    AdvRichEditorParagraphRibbonToolBar1: TAdvRichEditorParagraphRibbonToolBar;
    AdvRichEditorEditingRibbonToolBar1: TAdvRichEditorEditingRibbonToolBar;
    AdvToolBarPager12: TAdvPage;
    AdvToolBar2: TAdvToolBar;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    JanuaMailSender1: TJanuaMailSender;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    CheckBox1: TCheckBox;
    SpeedButton4: TSpeedButton;
    AdvCodeList1: TAdvCodeList;
    ActionList1: TActionList;
    AdvMemoCut1: TAdvMemoCut;
    AdvMemoCopy1: TAdvMemoCopy;
    AdvMemoPaste1: TAdvMemoPaste;
    AdvMemoUndo1: TAdvMemoUndo;
    AdvMemoRedo1: TAdvMemoRedo;
    AdvMemoFindReplaceDialog1: TAdvMemoFindReplaceDialog;
    AdvMemoFindDialog1: TAdvMemoFindDialog;
    OpenDialog1: TOpenDialog;
    AdvPascalMemoStyler1: TAdvPascalMemoStyler;
    ImageList2: TImageList;
    AdvQuickAccessToolBar1: TAdvQuickAccessToolBar;
    btnMailSend: TAdvToolBarButton;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    imgListMail: TImageList;
    imgListMailHot: TImageList;
    imgListMailDisabled: TImageList;
    btnMailSave: TAdvToolBarButton;
    JanuaDialog1: TJanuaDialog;
    procedure edMailToValueDelete(Sender: TObject; Value: TAdvListValue; var Allow: Boolean);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMailModelVCL: TfrmMailModelVCL;

implementation

{$R *.dfm}

procedure TfrmMailModelVCL.AdvGlowButton1Click(Sender: TObject);
begin
  if self.OpenTextFileDialog1.Execute then
  begin

  end;

end;

procedure TfrmMailModelVCL.AdvGlowButton2Click(Sender: TObject);
var
  pd: TOpenPictureDialog;
begin
  if Assigned(AdvRichEditor1) then
  begin
    pd := TOpenPictureDialog.Create(Self);
    try
      if pd.Execute then
      begin
        AdvRichEditor1.InsertImage(pd.FileName);
        AdvRichEditor1.SetFocus;
      end;
    finally
      pd.Free;
    end;
  end;
end;

procedure TfrmMailModelVCL.AdvGlowButton3Click(Sender: TObject);
var
  url: string;
begin
  url := '';
  InputQuery('Hyperlink','URL',url);
  AdvRichEditor1.SetSelectionHyperlink(url);

end;

procedure TfrmMailModelVCL.edMailToValueDelete(Sender: TObject; Value: TAdvListValue; var Allow: Boolean);
begin
  JanuaDialog1.JMessageDlg('Attenzione cancello la mail?');
  // Allow := MessageDlg('Delete value?',mtConfirmation,[mbYes,mbNo],0) = mrYes;
end;

end.
