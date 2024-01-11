unit Unit3;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  SkinCtrls, SkinBoxCtrls, DynamicSkinForm;

type
  TFrame3 = class(TFrame)
    spSkinCheckRadioBox1: TspSkinCheckRadioBox;
    spSkinComboBox1: TspSkinComboBox;
    spSkinFrame1: TspSkinFrame;
    spSkinSlider1: TspSkinSlider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation
   Uses Unit1;
{$R *.DFM}

end.
