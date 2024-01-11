unit uMemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIFrame, StdCtrls, UniMemo, UniButton,
  uniGUIBaseClasses, uniGUIClasses;
                                                          
type                                                      
  TuMemoFrame = class(TUniFrame)
    UniMemo1: TUniMemo;
    UniMemo2: TUniMemo;
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
  private                                                 
    { Private declarations }                              
  public                                                  
    { Public declarations }                               
  end;                                                    
                                                          
implementation                                            
                                                          
{$R *.dfm}                                                
                                                          
                                             
procedure TuMemoFrame.UniButton1Click(Sender: TObject);
begin
  UniMemo2.Text:=UniMemo1.Text;
end;

end.
