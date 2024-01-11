unit uImages;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIFrame, ExtCtrls, UniImage, StdCtrls, Buttons,
  UniBitBtn, jpeg, UniSpeedButton, UniButton, uniGUIBaseClasses, uniGUIClasses;                  
                                                          
type                                                      
  TuImagesFrame = class(TUniFrame)
    UniImage1: TUniImage;
    UniImage2: TUniImage;
    UniImage3: TUniImage;
    UniBitBtn1: TUniBitBtn;
    UniSpeedButton1: TUniSpeedButton;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniSpeedButton1Click(Sender: TObject);
  private                                                 
    { Private declarations }                              
  public                                                  
    { Public declarations }                               
  end;                                                    
                                                          
implementation                                            
                                                          
{$R *.dfm}                                                
                                                          
uses                                                      
  uniWinUtils;

procedure TuImagesFrame.UniBitBtn1Click(Sender: TObject);
begin
  UniImage3.Picture.LoadFromFile(GetModulePath(HInstance)+'\uSource\SunSet.jpg');
end;

procedure TuImagesFrame.UniSpeedButton1Click(Sender: TObject);
begin
  UniImage3.Proportional:=not UniSpeedButton1.Down;
end;

end.
