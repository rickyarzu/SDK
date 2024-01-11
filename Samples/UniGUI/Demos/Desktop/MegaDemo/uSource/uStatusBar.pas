unit uStatusBar;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIFrame, ComCtrls, UniStatusBar, Menus,
  StdCtrls, UniButton, uniGUIBaseClasses, uniGUIClasses;

type                                                      
  TuStatusBarFrame = class(TUniFrame)
    UniStatusBar1: TUniStatusBar;
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TuStatusBarFrame.UniButton1Click(Sender: TObject);
begin
  UniStatusBar1.Panels[0].Text:=TimeToStr(Time);
  UniStatusBar1.Panels[1].Text:=DateToStr(Date);
  UniStatusBar1.Panels[2].Text:=IntToStr(Random(1000));
  UniStatusBar1.Panels[3].Text:=IntToStr(Random(1000));
end;

end.
