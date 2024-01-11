// Client Mask = Mask
unit MaskClientMask;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniPanel, uniButton, uniGUIBaseClasses;

type
  TUniMaskClientMask = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniButton1: TUniButton;
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    procedure UniButton1AjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure UniPanel1AjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniMaskClientMask.UniButton1AjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
  Sleep(1000);
end;

procedure TUniMaskClientMask.UniPanel1AjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
  if EventName='panel_click' then
  begin
    Sleep(1000);
  end;
end;

initialization
  RegisterClass(TUniMaskClientMask);
end.
