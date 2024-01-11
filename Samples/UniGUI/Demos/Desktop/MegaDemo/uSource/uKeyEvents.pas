unit uKeyEvents;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIFrame, StdCtrls, UniEdit, UniLabel, UniMemo,
  uniGUIClasses, uniGUIBaseClasses;
                                                          
type                                                      
  TuKeyEventsFrame = class(TUniFrame)
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniEdit3: TUniEdit;
    UniMemo1: TUniMemo;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    procedure UniEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UniEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure UniEdit3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private                                                 
    { Private declarations }                              
  public                                                  
    { Public declarations }                               
  end;                                                    
                                                          
implementation                                            
                                                          
{$R *.dfm}                                                

procedure TuKeyEventsFrame.UniEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UniMemo1.Lines.Add('Key Down: '+IntToStr(Key));
end;

procedure TuKeyEventsFrame.UniEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  UniMemo1.Lines.Add('Key Press: '+Key);
end;

procedure TuKeyEventsFrame.UniEdit3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UniMemo1.Lines.Add('Key Up: '+IntToStr(Key));
end;

end.
