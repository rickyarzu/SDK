// UniTreeView Sample = TreeView
unit TreeViewUniTreeViewSample;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIFrame, ComCtrls, UniTreeView, ImgList,
  StdCtrls, UniMemo, uniGUIClasses, uniGUIBaseClasses, uniImageList, uniPanel;
                                                          
type                                                      
  TUniTreeViewUniTreeViewSample = class(TUniFrame)
    UniTreeView1: TUniTreeView;
    UniMemo1: TUniMemo;
    UniContainerPanel1: TUniContainerPanel;
    UniNativeImageList1: TUniNativeImageList;
    procedure UniTreeView1Click(Sender: TObject);
  private                                                 
    { Private declarations }                              
  public                                                  
    { Public declarations }                               
  end;                                                    
                                                          
implementation                                            
                                                          
{$R *.dfm}                                                
                                                          
                                                         
procedure TUniTreeViewUniTreeViewSample.UniTreeView1Click(Sender: TObject);
begin
  UniMemo1.Lines.Add(UniTreeView1.Selected.Text);
end;

initialization
  RegisterClass(TUniTreeViewUniTreeViewSample);
end.                                                      
