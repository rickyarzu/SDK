unit uListBox;                                        
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIFrame, StdCtrls, UniListBox, Buttons,
  UniBitBtn, UniButton, uniGUIBaseClasses, uniGUIClasses, uniMultiItem;
                                                          
type                                                      
  TuListBoxFrame = class(TUniFrame)
    UniListBox1: TUniListBox;
    UniListBox2: TUniListBox;
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

procedure TuListBoxFrame.UniBitBtn1Click(Sender: TObject);
var
  Ix : Integer;
  S : string;
begin
  Ix:=UniListBox2.ItemIndex;
  if (Ix>=0) and (Ix<UniListBox2.Items.Count) then
  begin
    S:=UniListBox2.Items[Ix];
    UniListBox2.Items.Delete(Ix);
    UniListBox1.Items.Add(S);
  end;
end;

procedure TuListBoxFrame.UniBitBtn2Click(Sender: TObject);
var
  Ix : Integer;
  S : string;
begin
  Ix:=UniListBox1.ItemIndex;
  if (Ix>=0) and (Ix<UniListBox1.Items.Count) then
  begin
    S:=UniListBox1.Items[Ix];
    UniListBox1.Items.Delete(Ix);
    UniListBox2.Items.Add(S);
  end;
end;

end.                                                      
