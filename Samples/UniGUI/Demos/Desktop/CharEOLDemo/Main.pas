//AllFeatures: Miscellaneous,Char EOL,icon-nested-list
unit Main;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, StdCtrls, UniMemo,
  UniLabel, UniEdit, uniGUIRegClasses,  uniguiclasses, uniGUIBaseClasses;      
                                                          
type                                                      
  TMainForm = class(TUniForm)
    UniEdit1: TUniEdit;
    UniLabel1: TUniLabel;
    UniMemo1: TUniMemo;
    procedure UniEdit1KeyPress(Sender: TObject; var Key: Char);
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
                                                          
procedure TMainForm.UniEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  UniMemo1.Lines.Add(UniEdit1.Text);
end;

initialization
  RegisterMainFormClass(TMainForm);                     
                                                          
end.                                                      
