unit Main;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, UniMainMenu,
  UniPanel, UniEdit, UniMemo, UniListBox, ComCtrls,
  UniProgressBar, UniSpinEdit, Buttons, UniSpeedButton, UniBitBtn,
  UniButton, UniLabel, UniComboBox, UniToolBar,
  UniStatusBar, UniTrackBar, uniGUIRegClasses,  uniGUIClasses,
  uniMultiItem, uniGUIBaseClasses, uniImageList, Menus;
                                                          
type                                                      
  TMainForm = class(TUniForm)
    UniMainMenu1: TUniMainMenu;
    tem01: TUniMenuItem;
    SubItem01: TUniMenuItem;
    SubItem11: TUniMenuItem;
    Exit1: TUniMenuItem;
    SubMenu01: TUniMenuItem;
    SubMeno11: TUniMenuItem;
    SubMenu21: TUniMenuItem;
    Item11: TUniMenuItem;
    Item12: TUniMenuItem;
    UniMemo1: TUniMemo;
    UniLabel1: TUniLabel;
    UniButton1: TUniButton;
    UniBitBtn1: TUniBitBtn;
    UniSpeedButton1: TUniSpeedButton;
    UniEdit1: TUniEdit;
    UniSpinEdit1: TUniSpinEdit;
    UniProgressBar1: TUniProgressBar;
    UniListBox1: TUniListBox;
    UniComboBox1: TUniComboBox;
    UniStatusBar1: TUniStatusBar;
    UniToolBar1: TUniToolBar;
    UniToolButton1: TUniToolButton;
    UniToolButton2: TUniToolButton;
    UniToolButton3: TUniToolButton;
    ImageList1: TUniImageList;
    UniTrackBar1: TUniTrackBar;
    UniNativeImageList1: TUniNativeImageList;
    procedure Exit1Click(Sender: TObject);
    procedure SubItem01Click(Sender: TObject);
  private                                                 
    { Private declarations }                              
  public                                                  
    { Public declarations }                               
  end;                                                    
                                                          
function MainForm: TMainForm;                         
                                                          
implementation                                            
                                                          
{$R *.dfm}                                                
                                                          
uses                                                      
  UniGUIVars, MainModule;                    
                                                          
function MainForm: TMainForm;                         
begin                                                     
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;                                                      
                                                          
procedure TMainForm.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.SubItem01Click(Sender: TObject);
begin
  UniMemo1.Lines.Add(TMenuItem(Sender).Caption);
end;

initialization
  RegisterMainFormClass(TMainForm);                     
end.                                                      
