program JanuaTmsForms;

uses
  Vcl.Forms,
  udlgVCLPlannerActivities in '..\..\src\VCL\Planner\udlgVCLPlannerActivities.pas' {dlgVCLPlannerActivities},
  udlgVCLPlannerEvent in '..\..\src\VCL\Planner\udlgVCLPlannerEvent.pas' {dlgVCLPlannerEvent},
  udlgVCLPlannerAnagraph in '..\..\src\VCL\Planner\udlgVCLPlannerAnagraph.pas' {dlgVCLPlannerAnagraph},
  ufrmMDIRibbonToolbar in '..\..\src\TMS\ufrmMDIRibbonToolbar.pas' {frmMDIRibbonToolbar},
  udmTmsMainApplication in '..\..\src\TMS\udmTmsMainApplication.pas' {dmTmsMainApplication: TDataModule},
  uToolPanelModel in '..\..\src\TMS\uToolPanelModel.pas' {Form1},
  uFrameToolbarMenu in '..\..\src\TMS\uFrameToolbarMenu.pas' {frameTMSToolbarMenu: TFrame},
  udmVCLPlannerController in '..\..\src\VCL\Planner\udmVCLPlannerController.pas' {dmVCLPlannerController: TDataModule},
  ufrmVCLAnagraphPlanner in '..\..\src\VCL\Planner\ufrmVCLAnagraphPlanner.pas' {frmVCLAnagraphPlanner},
  Janua.TMS.frmPgJormGenerator in '..\..\src\TMS\Janua.TMS.frmPgJormGenerator.pas' {frmVCLPgJormGenerator};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVCLPgJormGenerator, frmVCLPgJormGenerator);
  Application.Run;
end.
