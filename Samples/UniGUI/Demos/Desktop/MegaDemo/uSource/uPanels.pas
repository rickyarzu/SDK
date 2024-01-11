unit uPanels;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIFrame, ExtCtrls, UniPanel, StdCtrls, UniEdit,
  UniButton, UniMemo, uniGUIClasses, uniGUIBaseClasses;                  
                                                          
type                                                      
  TuPanelsFrame = class(TUniFrame)
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniPanel4: TUniPanel;
    UniMemo1: TUniMemo;
    UniButton1: TUniButton;
    UniEdit1: TUniEdit;
    UniPanel5: TUniPanel;
    UniButton2: TUniButton;
    procedure UniButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TuPanelsFrame.UniButton2Click(Sender: TObject);
begin
  UniPanel1.Color:=Random(MaxInt) and $FFFFFF;
  UniPanel2.Color:=Random(MaxInt) and $FFFFFF;
  UniPanel3.Color:=Random(MaxInt) and $FFFFFF;
  UniPanel4.Color:=Random(MaxInt) and $FFFFFF;
  UniPanel5.Color:=Random(MaxInt) and $FFFFFF;
end;

end.
