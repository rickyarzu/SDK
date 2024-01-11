unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, Menus, uniMainMenu, uniPanel,
  uniGUIBaseClasses, uniButton, uniImageList;

type
  TUniFrame1 = class(TUniFrame)
    UniFrameMenu: TUniMainMenu;
    MenuinFrame1: TUniMenuItem;
    Item11: TUniMenuItem;
    Item21: TUniMenuItem;
    UniImageList1: TUniImageList;
    UniNativeImageList1: TUniNativeImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



end.
