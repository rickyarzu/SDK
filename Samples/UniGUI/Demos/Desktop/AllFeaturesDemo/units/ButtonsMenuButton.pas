//Menu Button = Buttons
unit ButtonsMenuButton;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMainMenu, uniButton, uniBitBtn,
  uniMenuButton, uniGUIBaseClasses, uniPanel, uniMultiItem, uniListBox, Menus;

type
  TUniButtonsMenuButton = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniMenuButton1: TUniMenuButton;
    UniPopupMenu1: TUniPopupMenu;
    SubMenu11: TUniMenuItem;
    SubMenu21: TUniMenuItem;
    SubMenu31: TUniMenuItem;
    UniListBox1: TUniListBox;
    Clear1: TUniMenuItem;
    procedure UniMenuButton1Click(Sender: TObject);
    procedure SubMenu11Click(Sender: TObject);
    procedure SubMenu21Click(Sender: TObject);
    procedure SubMenu31Click(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

 procedure TUniButtonsMenuButton.Clear1Click(Sender: TObject);
begin
  UniListBox1.Clear;
end;

procedure TUniButtonsMenuButton.SubMenu11Click(Sender: TObject);
begin
  UniListBox1.Items.Add('SubMenu1');
end;

procedure TUniButtonsMenuButton.SubMenu21Click(Sender: TObject);
begin
  UniListBox1.Items.Add('SubMenu2');
end;

procedure TUniButtonsMenuButton.SubMenu31Click(Sender: TObject);
begin
  UniListBox1.Items.Add('SubMenu3');
end;

procedure TUniButtonsMenuButton.UniMenuButton1Click(Sender: TObject);
begin
  UniListBox1.Items.Add('Menu');
end;

initialization
  RegisterClass(TUniButtonsMenuButton);

end.
