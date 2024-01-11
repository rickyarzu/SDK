//UI Mask = Mask
unit MaskUIMask;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, unimPanel, uniButton, unimButton,
  uniGUIBaseClasses, uniGUImJSForm;

type
  TUniMaskUIMask = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    UnimButton2: TUnimButton;
    UnimPanel1: TUnimPanel;
    procedure UnimButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniMaskUIMask.UnimButton2Click(Sender: TObject);
begin
  Sleep(3000);
end;

initialization
  RegisterClass(TUniMaskUIMask);

end.
