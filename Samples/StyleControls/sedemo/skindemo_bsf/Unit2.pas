unit Unit2;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  bsSkinCtrls, bsSkinBoxCtrls, BusinessSkinForm;

type
  TFrame2 = class(TFrame)
    bsSkinFrame1: TbsSkinFrame;
    bsSkinScrollBar1: TbsSkinScrollBar;
    bsSkinUpDown1: TbsSkinUpDown;
    bsSkinButton1: TbsSkinButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

end.
