unit Form2;                                        
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, StdCtrls, 
  UniButton, jpeg, ExtCtrls, UniImage, UniEdit, UniLabel, uniGUIClasses,
  uniGUIBaseClasses;      
                                                          
type                                                      
  TUniForm2 = class(TUniForm)
    UniButton1: TUniButton;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniImage1: TUniImage;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    procedure UniButton1Click(Sender: TObject);
  private                                                 
    { Private declarations }                              
  public                                                  
    { Public declarations }                               
  end;                                                    
                                                          
function UniForm2: TUniForm2;                         
                                                          
implementation                                            
                                                          
{$R *.dfm}                                                
                                                          
uses                                                      
  MainModule;                                
                                                          
function UniForm2: TUniForm2;                         
begin                                                     
  Result := TUniForm2(UniMainModule.GetFormInstance(TUniForm2));
end;                                                      
                                                          
procedure TUniForm2.UniButton1Click(Sender: TObject);
begin
  Close;
end;

end.
