// Select Events   = Form Controls
unit FormControlsSelectEvents;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, unimButton, uniMultiItem, unimSelect,
  uniGUIBaseClasses, uniGUImJSForm, unimPanel, uniLabel, unimLabel, uniMemo,
  unimMemo;

type
  TUniFormControlsSelectEvents = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimSelect1: TUnimSelect;
    UnimLabel1: TUnimLabel;
    UnimMemo1: TUnimMemo;
    UnimPanel1: TUnimPanel;
    procedure UnimSelect1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsSelectEvents.UnimSelect1Change(Sender: TObject);
begin
   UnimMemo1.Lines.Add(UnimSelect1.Text);
end;

initialization
  RegisterClass(TUniFormControlsSelectEvents);
end.
