program JanuaMapsDirections;



{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  UDemo in '..\..\..\..\tmssoftware\TMS FNC Maps\Demos\Shared Code\Form Unit\Directions\UDemo.pas' {Form1: TWebForm},
  UBL in '..\..\..\..\tmssoftware\TMS FNC Maps\Demos\Shared Code\Business Logic\Directions\UBL.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
