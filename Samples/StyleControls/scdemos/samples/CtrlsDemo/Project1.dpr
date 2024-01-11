program Project1;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  Vcl.Themes,
  Vcl.Styles,
  StandardUnit1 in 'StandardUnit1.pas' {StandardFrame1: TFrame},
  StandardUnit2 in 'StandardUnit2.pas' {StandardFrame2: TFrame},
  StandardUnit3 in 'StandardUnit3.pas' {StandardFrame3: TFrame},
  StandardUnit4 in 'StandardUnit4.pas' {StandardFrame4: TFrame},
  StandardUnit5 in 'StandardUnit5.pas' {StandardFrame5: TFrame},
  StandardUnit6 in 'StandardUnit6.pas' {StandardFrame6: TFrame},
  AdvancedUnit1 in 'AdvancedUnit1.pas' {AdvancedFrame1: TFrame},
  AdvancedUnit2 in 'AdvancedUnit2.pas' {AdvancedFrame2: TFrame},
  AboutUnit in 'AboutUnit.pas' {AboutFrame: TFrame},
  AdvancedUnit3 in 'AdvancedUnit3.pas' {AdvancedFrame3: TFrame},
  AdvancedUnit4 in 'AdvancedUnit4.pas' {AdvancedFrame4: TFrame},
  TestFrame1 in 'TestFrame1.pas' {BarFrame1: TFrame},
  TestFrame2 in 'TestFrame2.pas' {BarFrame2: TFrame},
  TestFrame3 in 'TestFrame3.pas' {BarFrame3: TFrame},
  StandardUnit8 in 'StandardUnit8.pas' {StandardFrame8: TFrame},
  StandardUnit7 in 'StandardUnit7.pas' {StandardFrame7: TFrame},
  StandardUnit9 in 'StandardUnit9.pas' {StandardFrame9: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
