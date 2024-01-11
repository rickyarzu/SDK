unit uTabControl;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIFrame, ComCtrls, UniTabControl, StdCtrls,
  UniLabel, uniGUIBaseClasses, uniGUIClasses;
                                                          
type                                                      
  TuTabControlFrame = class(TUniFrame)
    UniTabControl1: TUniTabControl;
    UniLabel1: TUniLabel;
    procedure UniTabControl1Change(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TuTabControlFrame.UniFrameCreate(Sender: TObject);
begin
  UniTabControl1Change(nil);
end;

procedure TuTabControlFrame.UniTabControl1Change(Sender: TObject);
begin
  UniLabel1.Caption:='Tab-'+IntToStr(UniTabControl1.TabIndex);
end;

end.
