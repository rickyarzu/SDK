program AdvMemoMainDemo;

uses
  Forms,
  UAdvMemoMainDemo in '..\..\..\tmssoftware\TMS VCL UI Pack\Demos\AdvMemo\Main Demo\UAdvMemoMainDemo.pas' {FAdvMemoDemo01},
  UEvents in '..\..\..\tmssoftware\TMS VCL UI Pack\Demos\AdvMemo\Main Demo\UEvents.pas' {FEvents},
  UGridInput in '..\..\..\tmssoftware\TMS VCL UI Pack\Demos\AdvMemo\Main Demo\UGridInput.pas' {FGridInput},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFAdvMemoDemo01, FAdvMemoDemo01);
  Application.CreateForm(TFEvents, FEvents);
  Application.CreateForm(TFGridInput, FGridInput);
  Application.Run;
end.
