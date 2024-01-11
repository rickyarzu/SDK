// Dynamic Form = Forms
unit FormsDynamicForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniStatusBar, uniButton, uniGUIBaseClasses,
  uniPanel,   StdCtrls,  ComCtrls,  uniGUIRegClasses, DynamicUnit;

type
  TUniFormsDynamicForm = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  UniGUIVars, MainModule, uniGUIApplication;

{$R *.dfm}


procedure TUniFormsDynamicForm.UniButton1Click(Sender: TObject);
begin
  UniForm4.Show;
end;

initialization
  RegisterClass(TUniFormsDynamicForm);

end.
