unit uTreeView;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIFrame, ComCtrls, UniTreeView, ImgList,
  StdCtrls, UniMemo, uniGUIClasses, uniGUIBaseClasses, uniImageList;
                                                          
type                                                      
  TuTreeViewFrame = class(TUniFrame)
    UniTreeView1: TUniTreeView;
    UniMemo1: TUniMemo;
    ImageList1: TUniImageList;
    procedure UniTreeView1Click(Sender: TObject);
  private                                                 
    { Private declarations }                              
  public                                                  
    { Public declarations }                               
  end;                                                    
                                                          
implementation                                            
                                                          
{$R *.dfm}                                                
                                                          
                                                         
procedure TuTreeViewFrame.UniTreeView1Click(Sender: TObject);
begin
  UniMemo1.Lines.Add(UniTreeView1.Selected.Text);
end;

end.                                                      
