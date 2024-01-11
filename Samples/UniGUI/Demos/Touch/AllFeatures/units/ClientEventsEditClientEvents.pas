//Edit Client Events = Client Events
unit ClientEventsEditClientEvents;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniEdit, unimEdit, uniGUIBaseClasses,
  uniGUImJSForm, uniMemo, unimMemo;

type
  TUniClientEventsEditClientEvents = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimEdit1: TUnimEdit;
    UnimEdit3: TUnimEdit;
    UnimMemo1: TUnimMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TUniClientEventsEditClientEvents);

end.
