unit Unit1;                                        
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, Main, StdCtrls, UniMemo,
  UniLabel, UniButton, uniGUIClasses, uniGUIBaseClasses;      
                                                          
type                                                      
  TMainForm1 = class(TMainForm)
    UniLabel2: TUniLabel;
  private                                                 
    { Private declarations }                              
  public                                                  
    { Public declarations }                               
  end;                                                    
                                                          
function MainForm1: TMainForm1;                         
                                                          
implementation                                            
                                                          
{$R *.dfm}                                                
                                                          
uses                                                      
  MainModule;                    
                                                          
function MainForm1: TMainForm1;                         
begin                                                     
  Result := TMainForm1(UniMainModule.GetFormInstance(TMainForm1));
end;                                                      
                                                          
end.                                                      
