unit uPageControl;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIFrame, ComCtrls, UniPageControl, Grids,
  UniStringGrid, StdCtrls, UniMemo, UniButton, jpeg, ExtCtrls,
  UniImage, UniBasicGrid, uniGUIClasses, UniPanel, uniGUIBaseClasses;                  
                                                          
type                                                      
  TuPageControlFrame = class(TUniFrame)
    UniPageControl1: TUniPageControl;
    TabSheet1: TUniTabSheet;
    TabSheet2: TUniTabSheet;
    TabSheet3: TUniTabSheet;
    UniButton1: TUniButton;
    UniMemo1: TUniMemo;
    UniStringGrid1: TUniStringGrid;
    TabSheet4: TUniTabSheet;
    UniImage1: TUniImage;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private                                                 
    { Private declarations }                              
  public                                                  
    { Public declarations }                               
  end;                                                    
                                                          
implementation                                            
                                                          
{$R *.dfm}                                                
                                                          
procedure TuPageControlFrame.UniButton1Click(Sender: TObject);
begin
  UniPageControl1.TabIndex:= 1;
end;

procedure TuPageControlFrame.UniFrameCreate(Sender: TObject);
var
  I,J : Integer;
begin
  for I := 0 to UniStringGrid1.ColCount-1 do
    for J := 0 to UniStringGrid1.RowCount-1 do
      UniStringGrid1.Cells[I, J]:=Format('%d,%d', [I,J]);
end;

end.                                                      
