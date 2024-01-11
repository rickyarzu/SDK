// UrlFrame Auto Target= HTTP Callback
unit HTTPCallbackUrlFrameAutoTarget;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniGUIBaseClasses, uniPanel, AutoTargetUnit,
  MainModule;

type
  TUniHTTPCallbackUrlFrameAutoTarget = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
   procedure CB(Sender: TComponent; AResult:Integer);
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniHTTPCallbackUrlFrameAutoTarget.CB(Sender: TComponent; AResult: Integer);
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

procedure TUniHTTPCallbackUrlFrameAutoTarget.UniButton1Click(Sender: TObject);
begin
  AutoTargetForm.ShowModal(CB);
end;

initialization
  RegisterClass(TUniHTTPCallbackUrlFrameAutoTarget);
end.
