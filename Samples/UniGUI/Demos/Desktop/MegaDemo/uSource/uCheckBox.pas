unit uCheckBox;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIFrame, StdCtrls, UniCheckBox,
  uniGUIBaseClasses, uniGUIClasses;                  
                                                          
type                                                      
  TuCheckBoxFrame = class(TUniFrame)
    UniCheckBox1: TUniCheckBox;
    procedure UniCheckBox1Click(Sender: TObject);
  private                                                 
    { Private declarations }                              
  public                                                  
    { Public declarations }                               
  end;                                                    
                                                          
implementation                                            
                                                          
{$R *.dfm}                                                

procedure TuCheckBoxFrame.UniCheckBox1Click(Sender: TObject);
begin
  if UniCheckBox1.Checked then
  begin
    UniCheckBox1.Caption:='Checked';
    UniCheckBox1.Font.Color:=clRed;
  end
  else
  begin
    UniCheckBox1.Caption:='UnChecked';
    UniCheckBox1.Font.Color:=clBlue;
  end;
end;

end.
