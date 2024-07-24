unit uFrmMenuButton;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniButton, uniBitBtn,
  UniFSButton, uniPanel, uniImageList, uniGroupBox, uniEdit, uniRadioGroup,
  uniMenuButton, UniFSMenuButton, Vcl.Menus, uniMainMenu, uniLabel, uniScrollBox;

type
  TfrmMenuButton = class(TUniFrame)
    pnlPrincipal: TUniPanel;
    unfsmnbtn1: TUniFSMenuButton;
    unfsmnbtn2: TUniFSMenuButton;
    unfsmnbtn3: TUniFSMenuButton;
    unfsmnbtn4: TUniFSMenuButton;
    unfsmnbtn5: TUniFSMenuButton;
    unfsmnbtn6: TUniFSMenuButton;
    unfsmnbtn7: TUniFSMenuButton;
    unfsmnbtn8: TUniFSMenuButton;
    unfsmnbtn9: TUniFSMenuButton;
    unfsmnbtn10: TUniFSMenuButton;
    unfsmnbtn11: TUniFSMenuButton;
    unfsmnbtn12: TUniFSMenuButton;
    lbl1: TUniLabel;
    lbl2: TUniLabel;
    unfsmnbtn13: TUniFSMenuButton;
    unfsmnbtn14: TUniFSMenuButton;
    UniFSMenuButton1: TUniFSMenuButton;
    UniFSMenuButton2: TUniFSMenuButton;
    UniFSMenuButton4: TUniFSMenuButton;
    UniFSMenuButton5: TUniFSMenuButton;
    UniFSMenuButton6: TUniFSMenuButton;
    UniFSMenuButton3: TUniFSMenuButton;
    btn1: TUniFSMenuButton;
    btn2: TUniFSMenuButton;
    btn3: TUniFSMenuButton;
    btn4: TUniFSMenuButton;
    lbl3: TUniLabel;
    btn5: TUniFSMenuButton;
    btn6: TUniFSMenuButton;
    UniScrollBox1: TUniScrollBox;
    btn7: TUniFSMenuButton;
    btn8: TUniFSMenuButton;
    btn9: TUniFSMenuButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure pnlPrincipalAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  Main, uniGUIDialogs;

{$R *.dfm}

procedure TfrmMenuButton.pnlPrincipalAjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
  if EventName = '_get_param' then
  begin
    pnlPrincipal.Top    := Self.Top;
    pnlPrincipal.Left   := (MainForm.Width div 2) - (pnlPrincipal.Width div 2);
  end;
end;

procedure TfrmMenuButton.UniFrameCreate(Sender: TObject);
var
  vI: Integer;
  Popup: TUniPopupMenu;
  Item: TUniMenuItem;
begin
  Self.Align := alClient;
  Self.Anchors := [akTop,akBottom];

  for vI := 0 to ComponentCount -1 do
  begin
    if Components[vI] is TUniFSMenuButton then
    begin
      Popup := TUniPopupMenu.Create(Self);
      Popup.Name := 'Popup'+vI.ToString;
      Item := TUniMenuItem.Create(Self);
      Item.Caption := 'Falcon Sistemas ';
      Popup.Items.Add(Item);

      TUniFSMenuButton(Components[vI]).DropdownMenu := Popup;
    end;
  end;
end;

initialization
  RegisterClass(TfrmMenuButton)

end.
