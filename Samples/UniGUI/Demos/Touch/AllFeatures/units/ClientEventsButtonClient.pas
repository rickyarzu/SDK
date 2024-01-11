//Button Client = Client Events
unit ClientEventsButtonClient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniBitBtn, unimBitBtn, uniButton, unimButton,
  uniGUIBaseClasses, uniGUImJSForm, uniLabel, unimLabel;

type
  TUniClientEventsButtonClient = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    UnimBitBtn1: TUnimBitBtn;
    UnimLabel1: TUnimLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TUniClientEventsButtonClient);

end.
