//Draggable Component = Miscellaneous
unit MiscellaneousDraggableComponent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, Menus, uniMainMenu, uniLabel, uniMemo,
  uniGUIBaseClasses, uniPanel, UniComboBox, UniButton,
  UniRadioGroup, UniStringGrid, UniTreeView, UniEdit, uniImageList,
  uniBasicGrid;

type
  TUniMiscellaneousDraggableComponent = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniMemo1: TUniMemo;
    UniLabel1: TUniLabel;
    UniPopupMenu1: TUniPopupMenu;
    CreateEdit1: TUniMenuItem;
    CreateButton1: TUniMenuItem;
    CreateUniComboBox1: TUniMenuItem;
    CreateUniMemo1: TUniMenuItem;
    CreateUniPanel1: TUniMenuItem;
    CreateUniTreeView1: TUniMenuItem;
    CreateUniRadioGroup1: TUniMenuItem;
    CreateUniStringGrid1: TUniMenuItem;
    UniNativeImageList1: TUniNativeImageList;
    UniContainerPanel2: TUniContainerPanel;
    UniContainerPanel3: TUniContainerPanel;
    UniButton1: TUniButton;
    procedure CreateEdit1Click(Sender: TObject);
    procedure CreateButton1Click(Sender: TObject);
    procedure CreateUniComboBox1Click(Sender: TObject);
    procedure CreateUniMemo1Click(Sender: TObject);
    procedure CreateUniPanel1Click(Sender: TObject);
    procedure CreateUniTreeView1Click(Sender: TObject);
    procedure CreateUniRadioGroup1Click(Sender: TObject);
    procedure CreateUniStringGrid1Click(Sender: TObject);
    procedure UniContainerPanel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure UniButton1Click(Sender: TObject);
  private
      B1,E1,P1,C1,M1,R1,S1,T1: Integer;
    LastX, LastY : Integer;
    procedure AnyComponentsEndDrag(Sender: TUniControl; Left, Top: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniMiscellaneousDraggableComponent.AnyComponentsEndDrag(Sender: TUniControl; Left, Top: Integer);
begin
  UniMemo1.Lines.Add(Sender.Name+'''s PositionX: '+IntToStr(Left)+' PositionY: '+IntToStr(Top));
  UniMemo1.Lines.Add('--------------------------------------------------');
end;

procedure TUniMiscellaneousDraggableComponent.CreateButton1Click(Sender: TObject);
begin
  B1:=B1+1;
  with TUniButton.Create(Self) as TUniButton do
  begin
    Left := LastX;
    Top := LastY;
    Parent := UniContainerPanel2;
    Caption := 'Button'+IntToStr(B1);
    Name := Caption;
    Draggable.Enabled := True;
    Cursor := crDrag;
    OnEndDrag := AnyComponentsEndDrag;
  end;
end;

procedure TUniMiscellaneousDraggableComponent.CreateEdit1Click(Sender: TObject);
begin
  E1 := E1 +1;
  with TUniEdit.Create(Self) as TUniEdit do
  begin
    Left := LastX;
    Top := LastY;
    Parent := UniContainerPanel2;
    Text := 'Edit'+IntToStr(E1);
    Name := Text;
    Draggable.Enabled := True;
    Cursor := crDrag;
    OnEndDrag := AnyComponentsEndDrag;
  end;
end;

procedure TUniMiscellaneousDraggableComponent.CreateUniComboBox1Click(Sender: TObject);
begin
  C1 := C1+1;
  with TUniComboBox.Create(Self) as TUniComboBox do
  begin
    Left := LastX;
    Top := LastY;
    Parent := UniContainerPanel2;
    Text := 'ComboBox'+IntToStr(C1);
    Name := Text;
    Draggable.Enabled := True;
    Cursor := crDrag;
    OnEndDrag := AnyComponentsEndDrag;
  end;
end;

procedure TUniMiscellaneousDraggableComponent.CreateUniMemo1Click(Sender: TObject);
begin
  M1 := M1+1;
  with TUniMemo.Create(Self) as TUniMemo do
  begin
    Left := LastX;
    Top := LastY;
    Parent := UniContainerPanel2;
    Lines.Add('Memo'+IntToStr(M1));
    Name := 'Memo'+IntToStr(M1);
    Draggable.Enabled := True;
    Cursor := crDrag;
    OnEndDrag := AnyComponentsEndDrag;
  end;
end;

procedure TUniMiscellaneousDraggableComponent.CreateUniPanel1Click(Sender: TObject);
begin
  P1 := P1+1;
  with TUniPanel.Create(Self) as TUniPanel do
  begin
    Left := LastX;
    Top := LastY;
    Parent := UniContainerPanel2;
    TitleVisible := True;
    Title := 'Panel'+IntToStr(P1);
    Name := Title;
    Draggable.Enabled := True;
    Cursor := crDrag;
    OnEndDrag := AnyComponentsEndDrag;
  end;
end;

procedure TUniMiscellaneousDraggableComponent.CreateUniRadioGroup1Click(Sender: TObject);
begin
  R1 := R1+1;
  with TUniRadioGroup.Create(Self) as TUniRadioGroup do
  begin
    Left := LastX;
    Top := LastY;
    Items.Add('Radio1');
    Items.Add('Radio2');
    ItemIndex := 0;
    Width := 150;
    Height := 80;
    Parent := UniContainerPanel2;
    Caption := 'RadioGroup'+IntToStr(R1);
    Name := Caption;
    Draggable.Enabled := True;
    Cursor := crDrag;
    OnEndDrag := AnyComponentsEndDrag;
  end;
end;

procedure TUniMiscellaneousDraggableComponent.CreateUniStringGrid1Click(Sender: TObject);
begin
  S1 := S1+1;
  with TUniStringGrid.Create(Self) as TUniStringGrid do
  begin
    Left := LastX;
    Top := LastY;
    HeaderTitle := 'StringGrid'+IntToStr(S1);
    Height := 150;
    Parent := UniContainerPanel2;
    Name := HeaderTitle;
    Draggable.Enabled := True;
    Cursor := crDrag;
    OnEndDrag := AnyComponentsEndDrag;
  end;
end;

procedure TUniMiscellaneousDraggableComponent.CreateUniTreeView1Click(Sender: TObject);
var
  LDestNode: TUniTreeNode;
begin
  T1 := T1+1;
  with TUniTreeView.Create(Self) as TUniTreeView do
  begin
    Left := LastX;
    Top := LastY;
    Title := 'TreeView'+IntToStr(T1);
    Name := Title;
    Parent := UniContainerPanel2;
    LDestNode := Items.Add(nil,'My Root Node') ;
    Items.AddChild(LDestNode,'Node1');
    Draggable.Enabled := True;
    Cursor := crDrag;
    OnEndDrag := AnyComponentsEndDrag;
  end;
end;

procedure TUniMiscellaneousDraggableComponent.UniButton1Click(Sender: TObject);
var
  I : Integer;
  uControl : TUniControl;
begin
  for I := 0 to UniContainerPanel2.ControlCount - 1  do
    if UniContainerPanel2.Controls[I] is TUniControl then
    begin
      uControl := UniContainerPanel2.Controls[I] as TUniControl;

      if (uControl = UniLabel1) or (uControl = UniButton1) then Continue;

      uControl.Draggable.Enabled := not uControl.Draggable.Enabled;
      if uControl.Draggable.Enabled then
        uControl.Cursor := crDrag
      else
        uControl.Cursor := crDefault;
    end;
end;

procedure TUniMiscellaneousDraggableComponent.UniContainerPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button=mbRight then
  begin
    LastX := X;
    LastY := Y;
    UniPopupMenu1.Popup(X, Y, UniContainerPanel2);
  end;
end;

initialization
  RegisterClass(TUniMiscellaneousDraggableComponent);
end.
