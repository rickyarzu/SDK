unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scStyleManager, scStyledForm, scControls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    scStyledForm1: TscStyledForm;
    scStyleManager1: TscStyleManager;
    scButton1: TscButton;
    scLabel1: TscLabel;
    scEdit1: TscEdit;
    scLabel2: TscLabel;
    scButton2: TscButton;
    scStatusBar1: TscStatusBar;
    scMemo1: TscMemo;
    scButton3: TscButton;
    scCheckBox1: TscCheckBox;
    procedure scButton1DropDown(Sender: TObject);
    procedure scButton1CloseUp(Sender: TObject; AAcceptChanges: Boolean);
    procedure scEdit1RightButtonClick(Sender: TObject);
    procedure scStyledForm1Buttons0DropDown(AIndex, X, Y: Integer);
    procedure scCheckBox1Click(Sender: TObject);
    procedure scButton3DropDown(Sender: TObject);
    procedure scButton2DropDown(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit4;

procedure TForm1.scButton1CloseUp(Sender: TObject; AAcceptChanges: Boolean);
begin
  if AAcceptChanges then
    scButton1.Caption := PopupForm.scListView1.Selected.Caption;
end;

procedure TForm1.scButton1DropDown(Sender: TObject);
begin
  PopupForm.scStyledForm1.DropDown(scButton1);
end;

procedure TForm1.scButton2DropDown(Sender: TObject);
begin
  PopupForm2.scStyledForm1.DropDown(scButton2, True);
end;

procedure TForm1.scButton3DropDown(Sender: TObject);
begin
  MenuPopupForm.scStyledForm1.DropDown(scButton3);
end;

procedure TForm1.scCheckBox1Click(Sender: TObject);
begin
  PopupForm.scStyledForm1.DropDownAnimation := scCheckBox1.Checked;
  PopupForm2.scStyledForm1.DropDownAnimation := scCheckBox1.Checked;
  MenuPopupForm.scStyledForm1.DropDownAnimation := scCheckBox1.Checked;
end;

procedure TForm1.scEdit1RightButtonClick(Sender: TObject);
begin
  PopupForm.scStyledForm1.DropDown(scEdit1);
end;

procedure TForm1.scStyledForm1Buttons0DropDown(AIndex, X, Y: Integer);
begin
  MenuPopupForm.scStyledForm1.DropDown(Self, scStyledForm1.Buttons[0], X, Y);
end;

end.
