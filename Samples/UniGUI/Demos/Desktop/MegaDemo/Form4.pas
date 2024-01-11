unit Form4;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, StdCtrls, 
  UniButton, uniGUIBaseClasses, uniGUIClasses;      
                                                          
type                                                      
  TUniForm4 = class(TUniForm)
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    UniButton5: TUniButton;
    UniButton6: TUniButton;
    UniButton7: TUniButton;
  private                                                 
    { Private declarations }                              
  public                                                  
    { Public declarations }                               
  end;                                                    
                                                          
function UniForm4: TUniForm4;                         
                                                          
implementation                                            
                                                          
{$R *.dfm}                                                
                                                          
uses                                                      
  MainModule;                                
                                                          
function UniForm4: TUniForm4;                         
begin                                                     
  Result := TUniForm4(UniMainModule.GetFormInstance(TUniForm4));
end;                                                      
                                                          
end.                                                      
