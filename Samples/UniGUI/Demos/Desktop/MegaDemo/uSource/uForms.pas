unit uForms;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIFrame, StdCtrls, UniButton, uniGUIBaseClasses,
  uniGUIClasses;
                                                          
type                                                      
  TuFormsFrame = class(TUniFrame)
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    UniButton5: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure UniButton5Click(Sender: TObject);
  private                                                 
    { Private declarations }                              
  public                                                  
    { Public declarations }                               
  end;                                                    
                                                          
implementation                                            
                                                          
{$R *.dfm}                                                
                                                          
uses                                                      
  Form1, Form2, Form3, Form4;

procedure TuFormsFrame.UniButton1Click(Sender: TObject);
begin
  UniForm1.Show;
end;

procedure TuFormsFrame.UniButton2Click(Sender: TObject);
begin
  UniForm1.ShowModal;
end;

procedure TuFormsFrame.UniButton3Click(Sender: TObject);
begin
  UniForm2.ShowModal;
end;

procedure TuFormsFrame.UniButton4Click(Sender: TObject);
begin
  UniForm3.ShowModal;
end;

procedure TuFormsFrame.UniButton5Click(Sender: TObject);
begin
  UniForm4.ShowModal;
end;

end.
