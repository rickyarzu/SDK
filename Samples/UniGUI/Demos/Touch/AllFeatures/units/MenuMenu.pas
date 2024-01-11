//Menu = Menu
unit MenuMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniImageList, uniGUIBaseClasses, unimMenu,
  uniButton, uniBitBtn, unimBitBtn, uniGUImJSForm;

type
  TUniMenuMenu = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimBitBtn1: TUnimBitBtn;
    UnimBitBtn2: TUnimBitBtn;
    UnimBitBtn3: TUnimBitBtn;
    UnimBitBtn4: TUnimBitBtn;
    UnimMenu1: TUnimMenu;
    UnimMenu2: TUnimMenu;
    UnimMenu3: TUnimMenu;
    UniImageList1: TUniImageList;
    UnimMenu4: TUnimMenu;
    procedure UnimBitBtn1Click(Sender: TObject);
    procedure UnimBitBtn2Click(Sender: TObject);
    procedure UnimBitBtn3Click(Sender: TObject);
    procedure UnimBitBtn4Click(Sender: TObject);
    procedure UnimMenu1Click(Sender: TUnimMenuItem);
    procedure UnimMenu4Click(Sender: TUnimMenuItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniMenuMenu.UnimBitBtn1Click(Sender: TObject);
begin
  UnimMenu1.Visible := True;
end;

procedure TUniMenuMenu.UnimBitBtn2Click(Sender: TObject);
begin
  UnimMenu2.Visible := True;
end;

procedure TUniMenuMenu.UnimBitBtn3Click(Sender: TObject);
begin
  UnimMenu3.Visible := True;
end;

procedure TUniMenuMenu.UnimBitBtn4Click(Sender: TObject);
begin
  UnimMenu4.Visible := True;
end;

procedure TUniMenuMenu.UnimMenu1Click(Sender: TUnimMenuItem);
begin
  if Sender.MenuId = 2 then
    UnimContainerPanel1.Visible := False
  else
  begin
    ShowMessage(Sender.Caption);
    Sender.Parent.Visible := False;
  end;
end;

procedure TUniMenuMenu.UnimMenu4Click(Sender: TUnimMenuItem);
begin
  ShowMessage(Sender.Caption);
  Sender.Parent.Visible := False;
end;

initialization
  RegisterClass(TUniMenuMenu);

end.
