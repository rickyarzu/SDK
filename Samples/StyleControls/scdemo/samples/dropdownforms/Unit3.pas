unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scStyledForm, scControls, Vcl.StdCtrls,
  Vcl.ComCtrls;

type
  TPopupForm2 = class(TForm)
    scStyledForm1: TscStyledForm;
    scListBox1: TscListBox;
    scButton1: TscButton;
    scButton2: TscButton;
    scCheckBox1: TscCheckBox;
    scCheckBox2: TscCheckBox;
    scTreeView1: TscTreeView;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure scButton1Click(Sender: TObject);
    procedure scButton2Click(Sender: TObject);
    procedure scStyledForm1CloseUp(ADropDownForm: TCustomForm;
      ADropDownControl: TControl; AAcceptChanges: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PopupForm2: TPopupForm2;

implementation

{$R *.dfm}

procedure TPopupForm2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
   scStyledForm1.CloseUp(False);
end;

procedure TPopupForm2.scButton1Click(Sender: TObject);
begin
  scStyledForm1.CloseUp(True);
end;

procedure TPopupForm2.scButton2Click(Sender: TObject);
begin
  scStyledForm1.CloseUp(False);
end;

procedure TPopupForm2.scStyledForm1CloseUp(ADropDownForm: TCustomForm;
  ADropDownControl: TControl; AAcceptChanges: Boolean);
begin
  if ADropDownControl is TscButton then
    TscButton(ADropDownControl).CloseUp(AAcceptChanges);
end;

end.
