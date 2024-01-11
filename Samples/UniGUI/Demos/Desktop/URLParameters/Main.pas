//AllFeatures: URL Frame,URL Parameters,icon-webdesktop
unit Main;                                        
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, StdCtrls, UniEdit,
  UniButton, UniMemo, uniGUIRegClasses,  uniguiclasses, uniGUIBaseClasses,
  uniSpinEdit;
                                                          
type                                                      
  TMainForm = class(TUniForm)
    UniButton1: TUniButton;
    UniEdit1: TUniEdit;
    UniMemo1: TUniMemo;
    UniSpinEdit1: TUniSpinEdit;
    procedure UniFormShow(Sender: TObject);
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
                                                          
procedure TMainForm.UniFormShow(Sender: TObject);
begin
  UniButton1.Caption := UniApplication.Parameters.Values['Button'];
  UniEdit1.Text := UniApplication.Parameters['Edit'].AsString; // alternate syntax
  UniSpinEdit1.Value := UniApplication.Parameters['spin'].AsInteger;
end;

initialization
  RegisterMainFormClass(TMainForm);                     
                                                          
end.                                                      
