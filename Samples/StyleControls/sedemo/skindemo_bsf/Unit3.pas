unit Unit3;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  bsSkinBoxCtrls, bsSkinCtrls, BusinessSkinForm;

type
  TFrame3 = class(TFrame)
    bsSkinFrame1: TbsSkinFrame;
    bsSkinCheckRadioBox1: TbsSkinCheckRadioBox;
    bsSkinSlider1: TbsSkinSlider;
    bsSkinComboBox1: TbsSkinComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

end.
