//BMI Calculator = Miscellaneous
unit MiscellaneousBodyMassIndexCalculator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniBitBtn, unimBitBtn, uniLabel, unimLabel,
  unimPanel, uniTrackBar, unimSlider, uniGUImJSForm, uniButton, unimButton,
  uniEdit, unimEdit, uniGUIBaseClasses, unimFieldSet, Math;

type
  TUniMiscellaneousBodyMassIndexCalculator = class(TUniFrame)
    UnimFieldSet1: TUnimFieldSet;
    UnimNumberEdit1: TUnimNumberEdit;
    UnimNumberEdit2: TUnimNumberEdit;
    UnimButton1: TUnimButton;
    UnimContainerPanel2: TUnimContainerPanel;
    UnimSlider1: TUnimSlider;
    UnimButton2: TUnimButton;
    UnimPanel1: TUnimPanel;
    UnimLabel1: TUnimLabel;
    UnimLabel2: TUnimLabel;
    UnimBitBtn1: TUnimBitBtn;
    procedure UnimNumberEdit1Change(Sender: TObject);
    procedure UnimNumberEdit2Change(Sender: TObject);
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimSlider1Change(Sender: TObject);
    procedure UnimButton2Click(Sender: TObject);
    procedure UnimBitBtn1Click(Sender: TObject);
  private
      SliderPos: Real;
    procedure Calculate();
    procedure Write(BMI: Real);
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



{ TUniMiscellaneousBodyMassIndexCalculator }

procedure TUniMiscellaneousBodyMassIndexCalculator.Calculate;
var
  BMI: Real;
begin
  if (UnimNumberEdit2.Value <> 0) and (UnimNumberEdit1.Value <> 0)  then
  begin
    BMI :=  (UnimNumberEdit1.Value/(sqr(UnimNumberEdit2.Value)))*10000;
    UnimSlider1.Position := Trunc(BMI*10);
    UnimLabel1.Caption := 'Your Body-Mass Index: '+FloatToStr(RoundTo (BMI,-2));
    Write(BMI);
  end
end;

procedure TUniMiscellaneousBodyMassIndexCalculator.UnimBitBtn1Click(
  Sender: TObject);
begin
  ShowMessage('The body mass index (BMI) or Quetelet index is a value derived'+
        'from the mass (weight) and height of an individual. The BMI is '+
        'defined as the body mass divided by the square of the body '+
        'height, and is universally expressed in units of kg/cm2, resulting '+
        'from mass in kilograms and height in centimetres. '+
        #13#10+
        '-Usage:'+#13#10+
        '--For Calculating BMI:'+#13#10+
        '*Enter your mass;'+ #13#10+
        '*Enter your height;'+#13#10+
        '*Press Calculate Button'+#13#10+
        #13#10+
        '--For Ideal Mass:'+#13#10+
        '*Enter your height if not wrote'+#13#10+
        '*Press Ideal Button'
        );

end;

procedure TUniMiscellaneousBodyMassIndexCalculator.UnimButton1Click(
  Sender: TObject);
begin
  Calculate;
end;

procedure TUniMiscellaneousBodyMassIndexCalculator.UnimButton2Click(
  Sender: TObject);
var
  SliderPos, AvarageIdealMass : Real;
begin

  UnimSlider1.Position := 249;
  SliderPos := UnimSlider1.Position/10;
  UnimSlider1.FieldLabel := 'BMI: '+FloatToStr(SliderPos);
  AvarageIdealMass := ((SliderPos)* sqr(UnimNumberEdit2.Value))/10000;
  UnimNumberEdit1.Value := RoundTo (AvarageIdealMass,-2);
  UnimLabel1.Caption := 'Ideal Body-Mass Index: '+FloatToStr(RoundTo (SliderPos,-2));
  UnimLabel2.Caption := 'Avarage Ideal Mass: '+ FloatToStr(RoundTo (AvarageIdealMass,-2));
end;

procedure TUniMiscellaneousBodyMassIndexCalculator.UnimNumberEdit1Change(
  Sender: TObject);
begin
  Calculate;
end;

procedure TUniMiscellaneousBodyMassIndexCalculator.UnimNumberEdit2Change(
  Sender: TObject);
begin
  Calculate;
end;

procedure TUniMiscellaneousBodyMassIndexCalculator.UnimSlider1Change(
  Sender: TObject);
begin
  SliderPos := UnimSlider1.Position/10;
  UnimSlider1.FieldLabel := 'BMI: '+FloatToStr(SliderPos);
  UnimNumberEdit1.Value := ((SliderPos)* sqr(UnimNumberEdit2.Value))/10000;
  Calculate;
end;

procedure TUniMiscellaneousBodyMassIndexCalculator.Write(BMI: Real);
var
  RoundedBMI: Integer;
begin
  RoundedBMI := Trunc(BMI);
  case RoundedBMI of
    0..19:  UnimLabel2.Caption := 'Weak';
    20..24 :  UnimLabel2.Caption := 'Normal';
    25..29 :  UnimLabel2.Caption := 'Overweight' ;
    30..34 :  UnimLabel2.Caption := 'Fat';
    35..44 :  UnimLabel2.Caption := 'Obesity Border';
    45..49 :  UnimLabel2.Caption := 'Obese';
  else
    UnimLabel2.Caption := 'Morbidly Obese';
  end;
end;

initialization
  RegisterClass(TUniMiscellaneousBodyMassIndexCalculator);
end.
