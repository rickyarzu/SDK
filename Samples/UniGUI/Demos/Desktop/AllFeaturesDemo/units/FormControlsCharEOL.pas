//CharEOL = Form Controls
unit FormControlsCharEOL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMemo, uniEdit, uniLabel, uniGUIBaseClasses,
  uniPanel;

type
  TUniFormControlsCharEOL = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniEdit1: TUniEdit;
    UniMemo1: TUniMemo;
    procedure UniEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsCharEOL.UniEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  UniMemo1.Lines.Add(UniEdit1.Text);
end;

initialization
  RegisterClass(TUniFormControlsCharEOL);
end.
