//Property Grid = Form Controls
unit FormControlsPropertyGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, uniImageList,
  Menus, uniMainMenu, uniPropertyGrid, uniComboBox, uniPageControl,
  uniLabel, uniMultiItem, uniListBox, uniProgressBar;

type
  TUniFormControlsPropertyGrid = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniContainerPanel2: TUniContainerPanel;
    UniProgressBar1: TUniProgressBar;
    UniListBox1: TUniListBox;
    UniLabel1: TUniLabel;
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    UniContainerPanel3: TUniContainerPanel;
    UniComboBox1: TUniComboBox;
    UniPropertyGrid1: TUniPropertyGrid;
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
    procedure UniContainerPanel2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CreateUniStringGrid1Click(Sender: TObject);
    procedure CreateEdit1Click(Sender: TObject);
    procedure CreateButton1Click(Sender: TObject);
    procedure CreateUniComboBox1Click(Sender: TObject);
    procedure CreateUniMemo1Click(Sender: TObject);
    procedure CreateUniPanel1Click(Sender: TObject);
    procedure CreateUniTreeView1Click(Sender: TObject);
    procedure CreateUniRadioGroup1Click(Sender: TObject);
    procedure UniComboBox1Change(Sender: TObject);
  private
    B1,E1,P1,C1,M1,R1,S1,T1: Integer;
    LastX, LastY : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniStringGrid, uniTreeView, uniRadioGroup, uniMemo, uniEdit, uniButton;

{$R *.dfm}



procedure TUniFormControlsPropertyGrid.CreateButton1Click(Sender: TObject);
begin
  B1:=B1+1;
  with TUniButton.Create(Self) as TUniButton do
  begin
    Left := LastX;
    Top := LastY;
    Parent := UniContainerPanel2;
    Caption := 'Button'+IntToStr(B1);
    Name := Caption;
    UniComboBox1.Items.Add(Name);
  end;
end;

procedure TUniFormControlsPropertyGrid.CreateEdit1Click(Sender: TObject);
begin
  E1 := E1 +1;
  with TUniEdit.Create(Self) as TUniEdit do
  begin
    Left := LastX;
    Top := LastY;
    Parent := UniContainerPanel2;
    Text := 'Edit'+IntToStr(E1);
    Name := Text;
    UniComboBox1.Items.Add(Name);
  end;
end;

procedure TUniFormControlsPropertyGrid.CreateUniComboBox1Click(Sender: TObject);
begin
  C1 := C1+1;
  with TUniComboBox.Create(Self) as TUniComboBox do
  begin
    Left := LastX;
    Top := LastY;
    Parent := UniContainerPanel2;
    Text := 'ComboBox'+IntToStr(C1);
    Name := Text;
    UniComboBox1.Items.Add(Name);
  end;
end;

procedure TUniFormControlsPropertyGrid.CreateUniMemo1Click(Sender: TObject);
begin
  M1 := M1+1;
  with TUniMemo.Create(Self) as TUniMemo do
  begin
    Left := LastX;
    Top := LastY;
    Parent := UniContainerPanel2;
    Lines.Add('Memo'+IntToStr(M1));
    Name := 'Memo'+IntToStr(M1);
    UniComboBox1.Items.Add(Name);
  end;
end;

procedure TUniFormControlsPropertyGrid.CreateUniPanel1Click(Sender: TObject);
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
    UniComboBox1.Items.Add(Name);
  end;
end;

procedure TUniFormControlsPropertyGrid.CreateUniRadioGroup1Click(Sender: TObject);
begin
  R1 := R1+1;
  with TUniRadioGroup.Create(Self) as TUniRadioGroup do
  begin
    Left := LastX;
    Top := LastY;
    Parent := UniContainerPanel2;
    Items.Add('Radio1');
    Items.Add('Radio2');
    ItemIndex := 0;
    Width := 150;
    Height := 80;
    Caption := 'RadioGroup'+IntToStr(R1);
    Name := Caption;
    UniComboBox1.Items.Add(Name);
  end;
end;

procedure TUniFormControlsPropertyGrid.CreateUniStringGrid1Click(Sender: TObject);
begin
  S1 := S1+1;
  with TUniStringGrid.Create(Self) as TUniStringGrid do
  begin
    Left := LastX;
    Top := LastY;
    Parent := UniContainerPanel2;
    HeaderTitle := 'StringGrid'+IntToStr(S1);
    Height := 150;
    Name := HeaderTitle;
    UniComboBox1.Items.Add(Name);
  end;
end;

procedure TUniFormControlsPropertyGrid.CreateUniTreeView1Click(Sender: TObject);
var
  LDestNode: TUniTreeNode;
begin
  T1 := T1+1;
  with TUniTreeView.Create(Self) as TUniTreeView do
  begin
    Left := LastX;
    Top := LastY;
    Parent := UniContainerPanel2;
    Title := 'TreeView'+IntToStr(T1);
    Name := Title;
    LDestNode := Items.Add(nil,'My Root Node') ;
    Items.AddChild(LDestNode,'Node1');
    UniComboBox1.Items.Add(Name);
  end;

end;

procedure TUniFormControlsPropertyGrid.UniComboBox1Change(Sender: TObject);
var
  componentName:string;
begin
  componentName := UniComboBox1.Items[UniComboBox1.ItemIndex];
  UniPropertyGrid1.AttachedComponent := FindComponent(componentName);
end;

procedure TUniFormControlsPropertyGrid.UniContainerPanel2MouseDown(Sender: TObject;
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
  RegisterClass(TUniFormControlsPropertyGrid);
end.
