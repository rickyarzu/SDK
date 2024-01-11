unit Form3;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, ExtCtrls, UniPanel,
  StdCtrls, UniLabel, uniGUIBaseClasses, uniGUIClasses;      
                                                          
type                                                      
  TUniForm3 = class(TUniForm)
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniPanel4: TUniPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
  private                                                 
    { Private declarations }                              
  public                                                  
    { Public declarations }                               
  end;                                                    
                                                          
function UniForm3: TUniForm3;                         
                                                          
implementation                                            
                                                          
{$R *.dfm}                                                
                                                          
uses                                                      
  MainModule;                                
                                                          
function UniForm3: TUniForm3;                         
begin                                                     
  Result := TUniForm3(UniMainModule.GetFormInstance(TUniForm3));
end;                                                      
                                                          
end.
