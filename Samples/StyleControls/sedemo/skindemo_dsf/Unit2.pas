unit Unit2;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DynamicSkinForm, SkinCtrls, SkinBoxCtrls;

type
  TFrame2 = class(TFrame)
    spSkinFrame1: TspSkinFrame;
    spSkinButton1: TspSkinButton;
    spSkinUpDown1: TspSkinUpDown;
    spSkinScrollBar1: TspSkinScrollBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation
    Uses Unit1;
{$R *.DFM}

end.
