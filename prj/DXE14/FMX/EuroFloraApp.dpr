program EuroFloraApp;

uses
  System.StartUpCopy,
  FMX.Forms,
  Janua.FMX.Euroflora.frmAppMain in '..\..\..\src\FMX\Custom\Janua.FMX.Euroflora.frmAppMain.pas' {frmEuroFloraAppMain},
  Janua.FMX.Maps in '..\..\..\src\FMX\Janua.FMX.Maps.pas',
  Janua.Eroflora.dmAppLocalData in '..\..\..\src\januacore\custom\Janua.Eroflora.dmAppLocalData.pas' {dmEurofloraAppLocalData: TDataModule},
  Janua.FMX.Euroflora.Resources in '..\..\..\src\FMX\Custom\Janua.FMX.Euroflora.Resources.pas' {dmFMXResources: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmFMXResources, dmFMXResources);
  Application.FormFactor.Orientations := [TFormOrientation.Portrait];
  Application.CreateForm(TdmEurofloraAppLocalData, dmEurofloraAppLocalData);
  Application.CreateForm(TfrmEuroFloraAppMain, frmEuroFloraAppMain);
  Application.Run;
end.
