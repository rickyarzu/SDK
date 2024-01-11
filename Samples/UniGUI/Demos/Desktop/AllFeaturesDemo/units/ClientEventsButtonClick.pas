// Button Click = Client Events
unit ClientEventsButtonClick;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, uniButton, uniGUIBaseClasses, uniPanel;

type
  TUniClientEventsButtonClick = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniButton1: TUniButton;
    UniLabel1: TUniLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TUniClientEventsButtonClick);

end.
