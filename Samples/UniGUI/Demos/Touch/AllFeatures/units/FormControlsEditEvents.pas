// Edit Events   = Form Controls
unit FormControlsEditEvents;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniEdit, unimEdit, uniGUIBaseClasses,
  uniGUImJSForm, unimPanel, uniMemo, unimMemo;

type
  TUniFormControlsEditEvents = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimEdit1: TUnimEdit;
    UnimEdit2: TUnimEdit;
    UnimEdit3: TUnimEdit;
    UnimEdit4: TUnimEdit;
    UnimMemo1: TUnimMemo;
    UnimPanel1: TUnimPanel;
    UnimPanel2: TUnimContainerPanel;
    UnimPanel3: TUnimContainerPanel;
    UnimPanel4: TUnimContainerPanel;
    procedure UnimEdit1Change(Sender: TObject);
    procedure UnimEdit2Enter(Sender: TObject);
    procedure UnimEdit4KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UnimEdit3Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniFormControlsEditEvents.UnimEdit1Change(Sender: TObject);
begin
  UnimMemo1.Lines.Add('Change Value: '+UnimEdit1.Text);
end;

procedure TUniFormControlsEditEvents.UnimEdit2Enter(Sender: TObject);
begin
  UnimMemo1.Lines.Add('Enter Value: '+UnimEdit2.Text);
end;

procedure TUniFormControlsEditEvents.UnimEdit3Exit(Sender: TObject);
begin
  UnimMemo1.Lines.Add('Exit Value: '+UnimEdit3.Text);
end;

procedure TUniFormControlsEditEvents.UnimEdit4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UnimMemo1.Lines.Add('Keyup Value: '+UnimEdit4.Text);
end;

initialization
  RegisterClass(TUniFormControlsEditEvents);
end.
