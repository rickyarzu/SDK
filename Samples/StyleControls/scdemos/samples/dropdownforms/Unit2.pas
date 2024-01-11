unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, scControls, scStyledForm;

type
  TPopupForm = class(TForm)
    scStyledForm1: TscStyledForm;
    scListView1: TscListView;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure scListView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure scListView1DblClick(Sender: TObject);
    procedure scStyledForm1CloseUp(ADropDownForm: TCustomForm;
      ADropDownControl: TControl; AAcceptChanges: Boolean);
    procedure scStyledForm1DropDown(ADropDownForm: TCustomForm;
      ADropDownControl: TControl);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PopupForm: TPopupForm;

implementation

{$R *.dfm}

procedure TPopupForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_ESCAPE then
    scStyledForm1.CloseUp(False);
end;

procedure TPopupForm.scListView1DblClick(Sender: TObject);
begin
  if scListView1.Selected <> nil then
   scStyledForm1.CloseUp(True);
end;

procedure TPopupForm.scListView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = VK_RETURN) and (scListView1.Selected <> nil) then
   scStyledForm1.CloseUp(True);
end;

procedure TPopupForm.scStyledForm1CloseUp(ADropDownForm: TCustomForm;
  ADropDownControl: TControl; AAcceptChanges: Boolean);
begin
  if ADropDownControl <> nil then
  begin
    if ADropDownControl is TscButton then
    begin
      TscButton(ADropDownControl).CloseUp(AAcceptChanges);
    end
    else
    if ADropDownControl is TscCustomEdit then
    begin
      if (scListView1.Selected <> nil) and AAcceptChanges then
        TscCustomEdit(ADropDownControl).Text := scListView1.Selected.Caption;
    end;
  end;
end;

procedure TPopupForm.scStyledForm1DropDown(ADropDownForm: TCustomForm;
  ADropDownControl: TControl);
var
  S: String;
begin
  S := '';
  if ADropDownControl <> nil then
  begin
    if ADropDownControl is TscButton then
    begin
      S := TscButton(ADropDownControl).Caption;
    end
    else
    if ADropDownControl is TscCustomEdit then
    begin
      S := TscCustomEdit(ADropDownControl).Text;
    end;
  end;
  if S <> '' then
  begin
    scListView1.Selected := scListView1.FindCaption(0, S, False, True, False);
    if scListView1.Selected <> nil then
      scListView1.ItemIndex := scListView1.Selected.Index;
  end;
end;

end.
