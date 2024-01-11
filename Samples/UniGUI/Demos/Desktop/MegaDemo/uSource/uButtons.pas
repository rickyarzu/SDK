unit uButtons;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIFrame, Buttons, UniBitBtn, StdCtrls,
  UniButton, UniSpeedButton, ExtCtrls, UniPanel, UniMemo, uniGUIClasses,
  uniGUIBaseClasses;
                                                          
type                                                      
  TuButtonsFrame = class(TUniFrame)
    UniPanel1: TUniPanel;
    UniButton1: TUniButton;
    UniPanel2: TUniPanel;
    UniBitBtn1: TUniBitBtn;
    UniPanel3: TUniPanel;
    UniSpeedButton1: TUniSpeedButton;
    UniSpeedButton2: TUniSpeedButton;
    UniSpeedButton3: TUniSpeedButton;
    UniSpeedButton4: TUniSpeedButton;
    UniMemo1: TUniMemo;
    UniButton2: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniSpeedButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
  private                                                 
    { Private declarations }                              
  public                                                  
    { Public declarations }                               
  end;                                                    
                                                          
implementation                                            
                                                          
{$R *.dfm}                                                

procedure TuButtonsFrame.UniBitBtn1Click(Sender: TObject);
begin
  UniBitBtn1.Caption:='Clicked';
end;

procedure TuButtonsFrame.UniButton1Click(Sender: TObject);
begin
  UniButton1.Caption:='Clicked';
end;

procedure TuButtonsFrame.UniButton2Click(Sender: TObject);
begin
  UniButton2.Caption:='Clicked';
end;

procedure TuButtonsFrame.UniSpeedButton1Click(Sender: TObject);
begin
  UniMemo1.Lines.Add(TUniSpeedButton(Sender).Name);
  if TUniSpeedButton(Sender).Down then
    UniMemo1.Lines.Add('Down')
  else
    UniMemo1.Lines.Add('Up');
end;

end.
