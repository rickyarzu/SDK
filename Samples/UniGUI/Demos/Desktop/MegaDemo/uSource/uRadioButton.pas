unit uRadioButton;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIFrame, StdCtrls, ExtCtrls, UniRadioGroup,
  UniRadioButton, uniGUIBaseClasses, uniGUIClasses;                  
                                                          
type                                                      
  TuRadioButtonFrame = class(TUniFrame)
    UniRadioButton1: TUniRadioButton;
    UniRadioButton2: TUniRadioButton;
    UniRadioGroup1: TUniRadioGroup;
  private                                                 
    { Private declarations }                              
  public                                                  
    { Public declarations }                               
  end;                                                    
                                                          
implementation                                            
                                                          
{$R *.dfm}                                                
                                                          
                                                         
end.                                                      
