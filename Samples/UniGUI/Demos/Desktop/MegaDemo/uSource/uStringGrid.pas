unit uStringGrid;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIFrame, Grids, UniStringGrid, StdCtrls, UniMemo,
  UniButton, uniGUIBaseClasses, uniGUIClasses, UniBasicGrid;                  
                                                          
type                                                      
  TuStringGridFrame = class(TUniFrame)
    UniStringGrid1: TUniStringGrid;
    UniMemo1: TUniMemo;
    UniButton1: TUniButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private                                                 
    { Private declarations }                              
  public                                                  
    { Public declarations }                               
  end;                                                    
                                                          
implementation                                            
                                                          
{$R *.dfm}                                                

procedure TuStringGridFrame.UniButton1Click(Sender: TObject);
var
  I,J : Integer;
  S : string;
begin
  S:='';
  for I := 0 to UniStringGrid1.ColCount-1 do
    for J := 0 to UniStringGrid1.RowCount-1 do
      S:=S+'['+UniStringGrid1.Cells[I, J]+'], ';

  UniMemo1.Lines.Add(S+#13);
end;

procedure TuStringGridFrame.UniFrameCreate(Sender: TObject);
var
  I,J : Integer;
begin
  for I := 0 to UniStringGrid1.ColCount-1 do
    for J := 0 to UniStringGrid1.RowCount-1 do
      UniStringGrid1.Cells[I, J]:=Format('%d,%d', [I,J]);
end;

end.                                                      
