// Edit Client Events = Client Events
unit ClientEventsEditClientEvents;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMemo, uniEdit, uniGUIBaseClasses, uniPanel;

type
  TUniClientEventsEditClientEvents = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniEdit3: TUniEdit;
    UniEdit4: TUniEdit;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIForm;

{$R *.dfm}

procedure TUniClientEventsEditClientEvents.UniFrameCreate(Sender: TObject);
begin
  (OwnerForm as TUniForm).ActiveControl := UniEdit1;
end;

initialization
  RegisterClass(TUniClientEventsEditClientEvents);

end.
