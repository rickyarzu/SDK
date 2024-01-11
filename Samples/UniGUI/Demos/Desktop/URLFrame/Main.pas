//AllFeatures: URL Frame,Basic Demo,icon-webdesktop
unit Main;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, OleCtrls, SHDocVw,
  UniURLFrame, StdCtrls, UniComboBox, Buttons, UniBitBtn, UniLabel, Menus,
  UniMainMenu, ImgList, UniButton, uniGUIRegClasses,  uniGUIClasses, uniMultiItem, UniPanel,
  uniGUIBaseClasses, uniStatusBar, uniImageList;
                                                          
type                                                      
  TMainForm = class(TUniForm)
    UniURLFrame1: TUniURLFrame;
    UniComboBox1: TUniComboBox;
    UniBitBtn1: TUniBitBtn;
    UniLabel1: TUniLabel;
    UniMainMenu1: TUniMainMenu;
    File1: TUniMenuItem;
    Exit1: TUniMenuItem;
    Favorites1: TUniMenuItem;
    UniBitBtn2: TUniBitBtn;
    ImageList1: TUniImageList;
    httpwwwuniguicom1: TUniMenuItem;
    UniStatusBar1: TUniStatusBar;
    UniNativeImageList1: TUniNativeImageList;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniComboBox1Select(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure FavClick(Sender: TObject);
    procedure UniURLFrame1FrameLoaded(Sender: TObject);
    procedure UniComboBox1AjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure UniComboBox1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure GoURL(AURL: string);
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  UniGUIVars, MainModule, uniGUIJSInterface;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.GoURL(AURL: string);
begin
  UniStatusBar1.Panels[0].Text:='Loading...';
  UniURLFrame1.URL:=AURL;

  if UniComboBox1.Items.IndexOf(AURL)<0 then
    UniComboBox1.Items.Add(AURL);
end;

procedure TMainForm.FavClick(Sender: TObject);
var
  sURL : string;
begin
  sURL:=TMenuItem(Sender).Caption;
  sURL:=StringReplace(sURL, '&', '', [rfReplaceAll]);
  UniComboBox1.Text:=sURL;
  GoURL(sURL);
end;

procedure TMainForm.UniBitBtn1Click(Sender: TObject);
begin
  GoURL(UniComboBox1.Text);
end;

procedure TMainForm.UniBitBtn2Click(Sender: TObject);
var
  M : TUniMenuItem;
begin
  M:=TUniMenuItem.Create(Self);
  M.ImageIndex:=0;
  M.Caption:=UniComboBox1.Text;
  M.OnClick:=FavClick;
  Favorites1.Add(M);
end;

procedure TMainForm.UniComboBox1AjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  if EventName='CR' then
    GoURL(UniComboBox1.Text);
end;

procedure TMainForm.UniComboBox1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
    GoURL(UniComboBox1.Text);
end;

procedure TMainForm.UniComboBox1Select(Sender: TObject);
begin
  GoURL(UniComboBox1.Text);
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  if VCLMode then
    UniComboBox1.OnKeyUp:=UniComboBox1KeyUp;  
end;

procedure TMainForm.UniURLFrame1FrameLoaded(Sender: TObject);
begin
  UniStatusBar1.Panels[0].Text:='Completed.';
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
