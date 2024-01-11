// Mouse Events = Client Events
unit ClientEventsMouseEvents;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniPanel, uniEdit, uniGUIBaseClasses, uniLabel,
  uniImage, jpeg;

type
  TUniClientEventsMouseEvents = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniEdit1: TUniEdit;
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    UniImage1: TUniImage;
    UniLabel2: TUniLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

 initialization
  RegisterClass(TUniClientEventsMouseEvents);

end.
