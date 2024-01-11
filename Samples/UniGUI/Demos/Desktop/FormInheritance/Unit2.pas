unit Unit2;                                        
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, Unit1, StdCtrls, UniMemo,
  UniLabel, UniButton, uniGUIClasses, uniGUIBaseClasses;      
                                                          
type                                                      
  TMainForm2 = class(TMainForm1)
    UniLabel3: TUniLabel;                    
  private                                                 
    { Private declarations }                              
  public                                                  
    { Public declarations }                               
  end;                                                    
                                                          
function MainForm2: TMainForm2;                         
                                                          
implementation                                            
                                                          
{$R *.dfm}                                                
                                                          
uses                                                      
  UniGUIVars, MainModule;                    
                                                          
function MainForm2: TMainForm2;                         
begin                                                     
  Result := TMainForm2(UniMainModule.GetFormInstance(TMainForm2));
end;                                                      
                                                          
end.                                                      
