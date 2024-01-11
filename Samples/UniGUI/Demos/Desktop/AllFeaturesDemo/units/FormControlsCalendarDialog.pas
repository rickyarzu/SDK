// Calendar Dialog = Form Controls
unit FormControlsCalendarDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniCalendar, uniEdit,
  uniButton, uniPanel;

type
  TUniFormControlsCalendarDialog = class(TUniFrame)
    UniCalendarDialog1: TUniCalendarDialog;
    UniContainerPanel1: TUniContainerPanel;
    UniButton1: TUniButton;
    UniEdit1: TUniEdit;
    procedure UniCalendarDialog1Confirm(Sender: TObject);
    procedure UniCalendar1Click(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsCalendarDialog.UniButton1Click(Sender: TObject);
begin
  UniCalendarDialog1.Execute;
end;

procedure TUniFormControlsCalendarDialog.UniCalendar1Click(Sender: TObject);
begin
  UniCalendarDialog1.Execute;
end;

procedure TUniFormControlsCalendarDialog.UniCalendarDialog1Confirm(Sender: TObject);
begin
  UniEdit1.Text := DateToStr(UniCalendarDialog1.Date);
end;

initialization
  RegisterClass(TUniFormControlsCalendarDialog);
end.
