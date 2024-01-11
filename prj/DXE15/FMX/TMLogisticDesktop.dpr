program TMLogisticDesktop;

uses
  System.StartUpCopy,
  FMX.Forms,
  Janua.Logistic.FMX.TMMain in '..\..\..\src\FMX\Logistic\Janua.Logistic.FMX.TMMain.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
