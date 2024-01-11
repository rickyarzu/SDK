//Edit Events = Form Controls
unit FormControlsEditEvents;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, uniEdit, uniGUIBaseClasses, uniPanel;

type
  TUniFormControlsEditEvents = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniEdit1: TUniEdit;
    UniLabel1: TUniLabel;
    UniEdit2: TUniEdit;
    UniLabel2: TUniLabel;
    UniEdit3: TUniEdit;
    UniEdit4: TUniEdit;
    UniLabel3: TUniLabel;
    UniEdit5: TUniEdit;
    UniEdit6: TUniEdit;
    UniLabel4: TUniLabel;
    UniEdit7: TUniEdit;
    UniEdit8: TUniEdit;
    UniLabel5: TUniLabel;
    UniEdit9: TUniEdit;
    UniEdit10: TUniEdit;
    UniLabel6: TUniLabel;
    UniEdit11: TUniEdit;
    UniEdit12: TUniEdit;
    UniLabel7: TUniLabel;
    UniEdit13: TUniEdit;
    UniEdit14: TUniEdit;
    UniLabel8: TUniLabel;
    UniEdit15: TUniEdit;
    UniEdit16: TUniEdit;
    UniLabel9: TUniLabel;
    UniEdit17: TUniEdit;
    UniEdit18: TUniEdit;
    UniLabel10: TUniLabel;
    UniEdit19: TUniEdit;
    UniEdit20: TUniEdit;
    UniLabel11: TUniLabel;
    UniEdit21: TUniEdit;
    UniEdit22: TUniEdit;
    UniLabel12: TUniLabel;
    UniEdit23: TUniEdit;
    UniEdit24: TUniEdit;
    procedure UniEdit1Change(Sender: TObject);
    procedure UniEdit3Click(Sender: TObject);
    procedure UniEdit5DblClick(Sender: TObject);
    procedure UniEdit7Enter(Sender: TObject);
    procedure UniEdit9Exit(Sender: TObject);
    procedure UniEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UniEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure UniEdit15KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UniEdit17MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure UniEdit19MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure UniEdit21MouseEnter(Sender: TObject);
    procedure UniEdit23MouseLeave(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIForm;

{$R *.dfm}

procedure TUniFormControlsEditEvents.UniEdit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
    UniEdit12.Text := UniEdit11.Text;
end;

procedure TUniFormControlsEditEvents.UniEdit13KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = 'a' then
    UniEdit14.Text := UniEdit13.Text;
end;

procedure TUniFormControlsEditEvents.UniEdit15KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
    UniEdit16.Text := UniEdit15.Text;
end;

procedure TUniFormControlsEditEvents.UniEdit17MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    UniEdit18.Text := UniEdit17.Text;
end;

procedure TUniFormControlsEditEvents.UniEdit19MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    UniEdit20.Text := UniEdit19.Text;
end;

procedure TUniFormControlsEditEvents.UniEdit1Change(Sender: TObject);
begin
  UniEdit2.Text := UniEdit1.Text;
end;

procedure TUniFormControlsEditEvents.UniEdit21MouseEnter(Sender: TObject);
begin
  UniEdit22.Text := UniEdit21.Text;
end;

procedure TUniFormControlsEditEvents.UniEdit23MouseLeave(Sender: TObject);
begin
  UniEdit24.Text := UniEdit23.Text;
end;

procedure TUniFormControlsEditEvents.UniEdit3Click(Sender: TObject);
begin
  UniEdit4.Text := UniEdit3.Text;
end;

procedure TUniFormControlsEditEvents.UniEdit5DblClick(Sender: TObject);
begin
  UniEdit6.Text := UniEdit5.Text;
end;

procedure TUniFormControlsEditEvents.UniEdit7Enter(Sender: TObject);
begin
  UniEdit8.Text := UniEdit7.Text;
end;

procedure TUniFormControlsEditEvents.UniEdit9Exit(Sender: TObject);
begin
  UniEdit10.Text := UniEdit9.Text;
end;

procedure TUniFormControlsEditEvents.UniFrameCreate(Sender: TObject);
begin
  (OwnerForm as TUniForm).ActiveControl := UniEdit1;
end;

initialization
  RegisterClass(TUniFormControlsEditEvents);
end.
