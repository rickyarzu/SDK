unit Janua.UniGUI.TextConfirmation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniImage, UniFSToggle, uniLabel;

type
  TframeUniGUITextConfirmation = class(TUniFrame)
    tgSelected: TUniFSToggle;
    ulbTime: TUniLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



end.
