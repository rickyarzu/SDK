program DynRibbonToolBar;

uses
  Forms,
  DynRibbonmainform in '..\src\DynRibbonmainform.pas' {Form5},
  uRibbonFrame in '..\src\uRibbonFrame.pas' {ribbonframe: TFrame},
  uToolBarFrame in '..\src\uToolBarFrame.pas' {ToolBarFrame: TFrame},
  UMenuFrame in '..\src\UMenuFrame.pas' {TMSFrame1: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
