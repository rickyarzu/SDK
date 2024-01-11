//PopUp Menu = Menu
unit MenuPopUpMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, Menus,
  uniMainMenu, uniLabel, MainModule, uniImageList;

type
  TUniMenuPopUpMenu = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniPopupMenu1: TUniPopupMenu;
    CreateButton1: TUniMenuItem;
    CreateEdit1: TUniMenuItem;
    CreatePanel1: TUniMenuItem;
    UniNativeImageList1: TUniNativeImageList;
    procedure UniContainerPanel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CreateButton1Click(Sender: TObject);
    procedure CreateEdit1Click(Sender: TObject);
    procedure CreatePanel1Click(Sender: TObject);
  private
    LastX, LastY : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniButton, uniEdit;

{$R *.dfm}



procedure TUniMenuPopUpMenu.CreateButton1Click(Sender: TObject);
begin
  with InsertControl(TUniButton.Create(Self)) as TUniControl do
  begin
    Left:=LastX;
    Top:=LastY;
    Caption:='Button';
  end;
end;

procedure TUniMenuPopUpMenu.CreateEdit1Click(Sender: TObject);
begin
  with InsertControl(TUniEdit.Create(Self)) as TUniControl do
  begin
    Left:=LastX;
    Top:=LastY;
    Text:='Edit';
  end;
end;

procedure TUniMenuPopUpMenu.CreatePanel1Click(Sender: TObject);
begin
  with InsertControl(TUniPanel.Create(Self)) as TUniControl do
  begin
    Left:=LastX;
    Top:=LastY;
    Caption:='Panel';
  end;
end;

procedure TUniMenuPopUpMenu.UniContainerPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button=mbRight then
  begin
    LastX:=X;
    LastY:=Y;
    UniPopupMenu1.Popup(X, Y, UniContainerPanel1);
  end;
end;

initialization
  RegisterClass(TUniMenuPopUpMenu);
end.
