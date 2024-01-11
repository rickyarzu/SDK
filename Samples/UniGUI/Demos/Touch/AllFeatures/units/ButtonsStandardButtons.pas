// Standard Buttons = Buttons
unit ButtonsStandardButtons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, unimButton, uniGUIBaseClasses,
  uniGUImJSForm, unimPanel;

type
  TUniButtonsStandardButtons = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    UnimButton2: TUnimButton;
    UnimButton3: TUnimButton;
    UnimPanel1: TUnimContainerPanel;
    UnimPanel2: TUnimContainerPanel;
    procedure UnimButton1Click(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure UnimButton2Click(Sender: TObject);
    procedure UnimButton3Click(Sender: TObject);
  private
    BadgeCounter: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


procedure TUniButtonsStandardButtons.UniFrameCreate(Sender: TObject);
begin
  UnimButton1.BadgeText := IntToStr(BadgeCounter);
end;

procedure TUniButtonsStandardButtons.UnimButton1Click(Sender: TObject);
begin
  BadgeCounter := BadgeCounter + 1;
  UnimButton1.BadgeText := IntToStr(BadgeCounter);
end;

procedure TUniButtonsStandardButtons.UnimButton2Click(Sender: TObject);
begin
  if UnimButton2.Enabled then
  begin
    UnimButton2.Enabled := False;
    UnimButton3.Enabled := True;
    UnimButton2.Caption := 'Disable Button';
    UnimButton3.Caption := 'Enable Button';
  end;
end;

procedure TUniButtonsStandardButtons.UnimButton3Click(Sender: TObject);
begin
 if UnimButton3.Enabled then
  begin
    UnimButton3.Enabled := False;
    UnimButton2.Enabled := True;
    UnimButton3.Caption := 'Disable Button';
    UnimButton2.Caption := 'Enable Button';
  end;
end;

initialization
  RegisterClass(TUniButtonsStandardButtons);

end.
