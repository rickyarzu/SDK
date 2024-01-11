// MainMenu = Menu
unit MenuMainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniGUIBaseClasses, uniPanel,
  MainMenuUnit;

type
  TUniMenuMainMenu = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniMenuMainMenu.UniButton1Click(Sender: TObject);
begin
  MainMenuForm.Show;
end;

initialization
  RegisterClass(TUniMenuMainMenu);


end.
