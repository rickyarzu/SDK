//Align Anchor = Form Controls
unit FormControlsAlignAnchor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniGroupBox, uniGUIBaseClasses,
  uniPanel, FormAlignUnit, FormAnchorUnit;

type
  TUniFormControlsAlignAnchor = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniGroupBox4: TUniGroupBox;
    UniButton12: TUniButton;
    UniButton11: TUniButton;
    procedure UniButton11Click(Sender: TObject);
    procedure UniButton12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniFormControlsAlignAnchor.UniButton11Click(Sender: TObject);
begin
  FormAlign.Show;
end;

procedure TUniFormControlsAlignAnchor.UniButton12Click(Sender: TObject);
begin
  FormAnchor.Show;
end;

initialization
  RegisterClass(TUniFormControlsAlignAnchor);
end.
