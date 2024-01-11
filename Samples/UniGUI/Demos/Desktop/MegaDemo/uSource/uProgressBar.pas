unit uProgressBar;                                        
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIFrame, ComCtrls, UniProgressBar, StdCtrls,
  Buttons, UniBitBtn, UniButton, uniGUIBaseClasses, uniGUIClasses;
                                                          
type                                                      
  TuProgressBarFrame = class(TUniFrame)
    UniProgressBar1: TUniProgressBar;
    UniBitBtn1: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    procedure UniBitBtn2Click(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TuProgressBarFrame.UniBitBtn1Click(Sender: TObject);
begin
  UniProgressBar1.Position:=UniProgressBar1.Position-5;
end;

procedure TuProgressBarFrame.UniBitBtn2Click(Sender: TObject);
begin
  UniProgressBar1.Position:=UniProgressBar1.Position+5;
end;

end.
