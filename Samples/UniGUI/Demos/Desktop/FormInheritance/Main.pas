unit Main;                                        
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, StdCtrls, UniMemo, UniLabel,
  UniButton, uniGUIRegClasses,  uniguiclasses, uniGUIBaseClasses;      
                                                          
type                                                      
  TMainForm = class(TUniForm)
    UniLabel1: TUniLabel;
    UniMemo1: TUniMemo;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
  private                                                 
    { Private declarations }                              
  public                                                  
    { Public declarations }                               
  end;                                                    
                                                          
function MainForm: TMainForm;                         
                                                          
implementation                                            
                                                          
{$R *.dfm}                                                
                                                          
uses                                                      
  UniGUIVars, MainModule, Unit1, Unit2, Unit3;
                                                          
function MainForm: TMainForm;                         
begin                                                     
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;                                                      
                                                          
procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  MainForm1.Show;
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  MainForm2.Show;
end;

procedure TMainForm.UniButton3Click(Sender: TObject);
begin
  MainForm3.Show;
end;

procedure TMainForm.UniFormShow(Sender: TObject);
begin
  UniButton1.Enabled:=(ClassType=TMainForm);
  UniButton2.Enabled:=(ClassType=TMainForm);
  UniButton3.Enabled:=(ClassType=TMainForm);
end;

initialization
  RegisterMainFormClass(TMainForm);                     
end.                                                      
