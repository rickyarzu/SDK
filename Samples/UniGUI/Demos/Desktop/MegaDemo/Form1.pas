unit Form1;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, StdCtrls, UniMemo, UniEdit,
  uniGUIBaseClasses, uniGUIClasses;      
                                                          
type                                                      
  TUniForm1 = class(TUniForm)
    UniEdit1: TUniEdit;
    UniMemo1: TUniMemo;
  private                                                 
    { Private declarations }                              
  public                                                  
    { Public declarations }                               
  end;                                                    
                                                          
function UniForm1: TUniForm1;                         
                                                          
implementation                                            
                                                          
{$R *.dfm}                                                
                                                          
uses
  MainModule;                                
                                                          
function UniForm1: TUniForm1;                         
begin                                                     
  Result := TUniForm1(UniMainModule.GetFormInstance(TUniForm1));
end;                                                      
                                                          
end.                                                      
