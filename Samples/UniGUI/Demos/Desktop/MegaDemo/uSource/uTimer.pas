unit uTimer;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIFrame, ExtCtrls, uniTimer, StdCtrls, UniLabel,
  UniPanel, uniGUIClasses, uniGUIBaseClasses;
                                                          
type                                                      
  TuTimerFrame = class(TUniFrame)
    UniTimer1: TUniTimer;
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    procedure UniTimer1Timer(Sender: TObject);
  private                                                 
    { Private declarations }
    FCnt : Integer;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TuTimerFrame.UniTimer1Timer(Sender: TObject);
begin
  Inc(FCnt);
  UniLabel1.Caption:=IntToStr(FCnt);
end;

end.
