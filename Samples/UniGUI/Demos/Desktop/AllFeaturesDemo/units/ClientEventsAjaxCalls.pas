// Ajax Calls = Client Events
unit ClientEventsAjaxCalls;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniGUIBaseClasses, uniPanel;

type
  TUniClientEventsAjaxCalls = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniClientEventsAjaxCalls.UniButton1Click(Sender: TObject);
begin
  Sleep(3000);
end;

procedure TUniClientEventsAjaxCalls.UniButton2Click(Sender: TObject);
begin
  UniSession.SendResponse('New Text', False);
end;

procedure TUniClientEventsAjaxCalls.UniButton3Click(Sender: TObject);
begin
  UniSession.SendResponse('UniClientEventsAjaxCalls.UniButton1.setPosition(40, 40);');
end;

initialization
  RegisterClass(TUniClientEventsAjaxCalls);

end.
