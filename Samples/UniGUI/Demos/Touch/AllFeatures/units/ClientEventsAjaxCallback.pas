//Ajax Callback = Client Events
unit ClientEventsAjaxCallback;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniGUImJSForm, uniLabel,
  unimLabel, uniMemo, unimMemo, unimPanel, uniButton, unimButton;

type
  TUniClientEventsAjaxCallback = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    UnimButton2: TUnimButton;
    UnimButton3: TUnimButton;
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimButton2Click(Sender: TObject);
    procedure UnimButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniClientEventsAjaxCallback.UnimButton1Click(Sender: TObject);
begin
  Sleep(3000);
end;

procedure TUniClientEventsAjaxCallback.UnimButton2Click(Sender: TObject);
begin
  UniSession.SendResponse('New Text', False);
end;

procedure TUniClientEventsAjaxCallback.UnimButton3Click(Sender: TObject);
begin
  UniSession.SendResponse('UniClientEventsAjaxCallback.UnimButton1.setUi("action");');
end;

initialization
  RegisterClass(TUniClientEventsAjaxCallback);

end.
