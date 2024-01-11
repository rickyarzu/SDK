//ListBox = Form Controls
unit FormControlsListBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniLabel, uniMultiItem, uniListBox,
  uniGUIBaseClasses, uniPanel;

type
  TUniFormControlsListBox = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniListBox1: TUniListBox;
    UniListBox2: TUniListBox;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniListBox3: TUniListBox;
    UniButton4: TUniButton;
    UniListBox4: TUniListBox;
    UniListBox5: TUniListBox;
    UniLabel3: TUniLabel;
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsListBox.UniButton1Click(Sender: TObject);
begin
  UniListBox2.ClearSelection;
end;

procedure TUniFormControlsListBox.UniButton2Click(Sender: TObject);
begin
  UniListBox2.ClearSelection;
  UniListBox2.Selected[1]:=True;
  UniListBox2.Selected[4]:=True;
  UniListBox2.Selected[5]:=True;
  UniListBox2.Selected[7]:=True;
end;

procedure TUniFormControlsListBox.UniButton3Click(Sender: TObject);
begin
  if UniListBox1.ItemIndex>=0 then
  begin
    UniListBox3.Items.Add(UniListBox1.Items[UniListBox1.ItemIndex]);
    UniListBox1.Items.Delete(UniListBox1.ItemIndex);
  end;
end;

procedure TUniFormControlsListBox.UniButton4Click(Sender: TObject);
var
  I: Integer;
begin
  UniListBox4.Items.Clear;
  for I := 0 to UniListBox2.Items.Count - 1 do
    if UniListBox2.Selected[I] then
      UniListBox4.Items.Add(UniListBox2.Items[I]);
end;

initialization
  RegisterClass(TUniFormControlsListBox);
end.
