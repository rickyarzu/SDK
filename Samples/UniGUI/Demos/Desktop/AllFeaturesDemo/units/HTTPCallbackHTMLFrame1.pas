// HTML Frame 1 = HTTP Callback
unit HTTPCallbackHTMLFrame1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniGUIBaseClasses, uniPanel,
  HTMLFrameTwoUnit, MainModule;

type
  TUniHTTPCallbackHTMLFrame1 = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure CB(Sender: TComponent; AResult:Integer);
  end;

implementation

{$R *.dfm}

procedure TUniHTTPCallbackHTMLFrame1.CB(Sender: TComponent; AResult: Integer);
begin
  if AResult = mrOk then
  begin
    ShowMessage('Operation Succeeded: '+UniMainModule.FirstName+' '+UniMainModule.LastName);
  end
  else if AResult = mrCancel then
  begin
    ShowMessage('Operation Cancelled.');
  end;
end;

procedure TUniHTTPCallbackHTMLFrame1.UniButton1Click(Sender: TObject);
begin
  UniHTMLFrameTwoForm.ShowModal(CB);
end;

initialization
  RegisterClass(TUniHTTPCallbackHTMLFrame1);
end.
