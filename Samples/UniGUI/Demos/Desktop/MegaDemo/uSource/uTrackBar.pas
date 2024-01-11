unit uTrackBar;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIFrame, ExtCtrls, UniImage, ComCtrls,
  UniTrackBar, jpeg, UniPanel, uniGUIClasses, uniGUIBaseClasses;                  
                                                          
type                                                      
  TuTrackBarFrame = class(TUniFrame)
    UniTrackBar1: TUniTrackBar;
    UniPanel1: TUniPanel;
    UniImage1: TUniImage;
    UniTrackBar2: TUniTrackBar;
    procedure UniTrackBar1Change(Sender: TObject);
    procedure UniTrackBar2Change(Sender: TObject);
  private
    { Private declarations }                              
  public                                                  
    { Public declarations }                               
  end;                                                    
                                                          
implementation                                            
                                                          
{$R *.dfm}                                                
                                                          
                                                         
procedure TuTrackBarFrame.UniTrackBar1Change(Sender: TObject);
begin
  UniImage1.Width:=32 * UniTrackBar1.Position;
end;

procedure TuTrackBarFrame.UniTrackBar2Change(Sender: TObject);
begin
  UniImage1.Height:=24 * UniTrackBar2.Position;
end;

end.                                                      
