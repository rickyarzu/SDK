unit uSplitter;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIFrame, ExtCtrls, UniSplitter, UniPanel,
  uniGUIClasses, uniGUIBaseClasses;                  
                                                          
type                                                      
  TuSplitterFrame = class(TUniFrame)
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniSplitter1: TUniSplitter;
    UniSplitter2: TUniSplitter;
    UniSplitter3: TUniSplitter;
    UniPanel4: TUniPanel;
    UniSplitter4: TUniSplitter;
    UniPanel5: TUniPanel;
  private                                                 
    { Private declarations }                              
  public                                                  
    { Public declarations }                               
  end;                                                    
                                                          
implementation                                            
                                                          
{$R *.dfm}                                                

                                                         
end.                                                      
