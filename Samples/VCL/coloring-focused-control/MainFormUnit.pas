unit MainFormUnit;

{
Generic Solution to Coloring the Focused Entry Control in Delphi Applications

Looking for the best approach to change the background color (and other properties) of the focused data entry control in a Delphi application?

http://zarko-gajic.iz.hr/generic-solution-to-coloring-the-focused-entry-control-in-delphi-applications/

}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.ToolWin;

type
  TMainForm = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    Memo1: TMemo;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    activeControl : TWinControl;
    prevInactiveColor : TColor;
    procedure ScreenOnActiveControlChange(Sender : TObject);
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation
{$R *.dfm}

uses System.TypInfo; // for IsPublishedProp and SetOrdProp

procedure TMainForm.Button1Click(Sender: TObject);
begin
  ShowMessage('message');
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  Screen.OnActiveControlChange := ScreenOnActiveControlChange;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  Screen.OnActiveControlChange := nil;
end;

procedure TMainForm.ScreenOnActiveControlChange(Sender: TObject);
var
  noEnter, noExit : boolean;
  prevActiveControl : TWinControl;

  procedure ColorEnter(Sender : TObject);
  begin
    if Assigned(Sender) AND IsPublishedProp(Sender,'Color') then
    begin
      prevInactiveColor := GetOrdProp(Sender, 'Color');
      SetOrdProp(Sender, 'Color', clSkyBlue); //change clSkyBlue to something else or read from some application configuration :)
    end;
  end; (*ColorEnter*)

  procedure ColorExit(Sender : TObject);
  begin
    if Assigned(Sender) AND IsPublishedProp(Sender,'Color') then
      SetOrdProp(Sender, 'Color', prevInactiveColor);
  end; (*ColorExit*)
begin
  if Screen.ActiveControl = nil then
  begin
    activeControl := nil;
    Exit;
  end;

  noExit := false;

  noEnter := NOT Screen.ActiveControl.Enabled;
  noEnter := noEnter OR (Screen.ActiveControl is TForm); //disabling active control focuses the form
  noEnter := noEnter OR (Screen.ActiveControl is TCheckBox); // skip checkboxes

  prevActiveControl := activeControl;

  if prevActiveControl <> nil then
  begin
    noExit := (prevActiveControl is TForm);
    noExit := noExit OR (prevActiveControl is TCheckBox);
  end;

  activeControl := Screen.ActiveControl;

  if NOT noExit then ColorExit(prevActiveControl);
  if NOT noEnter then ColorEnter(activeControl);
end;

procedure TMainForm.SpeedButton1Click(Sender: TObject);
begin
  Edit2.Enabled := false;
end;

end.
