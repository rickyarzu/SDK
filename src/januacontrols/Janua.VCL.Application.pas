unit Janua.VCL.Application;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Classes, AdvOfficeTabSet, VCL.Forms,
  Janua.VCL.TMSStyles, Janua.Core.System, AdvAppStyler;

type
  TJanuaVCLApplication = class(TJanuaCoreComponent)
  private
    { Private declarations }
    FAdvOfficeMDITabSet: TAdvOfficeMDITabSet;
    FJanuaCoreOS: TJanuaCoreOS;
    FAppStyler: TAdvAppStyler;
    procedure SetAdvOfficeMDITabSet(const Value: TAdvOfficeMDITabSet);
    procedure SetJanuaTMSStyleManager(const Value: TJanuaTMSStyleManager);
    procedure SetJanuaCoreOS(const Value: TJanuaCoreOS);
    procedure SetAppStyler(const Value: TAdvAppStyler);
    procedure SetJanuaSystem(const Value: TJanuaCustomServerSystem);
  protected
    { Protected declarations }
    FJanuaSystem: TJanuaCustomServerSystem;
    FJanuaTMSStyleManager: TJanuaTMSStyleManager;
    procedure RegisterForm(aForm: TForm);
    procedure ShowForm(aForm: TForm);
  public
    { Public declarations }
  published
    { Published declarations }
    property AdvOfficeMDITabSet: TAdvOfficeMDITabSet read FAdvOfficeMDITabSet
      write SetAdvOfficeMDITabSet;
    property JanuaTMSStyleManager: TJanuaTMSStyleManager read FJanuaTMSStyleManager
      write SetJanuaTMSStyleManager;
    property JanuaCoreOS: TJanuaCoreOS read FJanuaCoreOS write SetJanuaCoreOS;
    property AppStyler: TAdvAppStyler read FAppStyler write SetAppStyler;
    property JanuaSystem: TJanuaCustomServerSystem read FJanuaSystem write SetJanuaSystem;
  end;

implementation

procedure TJanuaVCLApplication.RegisterForm(aForm: TForm);
begin

end;

procedure TJanuaVCLApplication.SetAdvOfficeMDITabSet(const Value: TAdvOfficeMDITabSet);
begin
  FAdvOfficeMDITabSet := Value;
end;

procedure TJanuaVCLApplication.SetAppStyler(const Value: TAdvAppStyler);
begin
  FAppStyler := Value;
end;

procedure TJanuaVCLApplication.SetJanuaCoreOS(const Value: TJanuaCoreOS);
begin
  FJanuaCoreOS := Value;
end;

procedure TJanuaVCLApplication.SetJanuaSystem(const Value: TJanuaCustomServerSystem);
begin
  FJanuaSystem := Value;
end;

procedure TJanuaVCLApplication.SetJanuaTMSStyleManager(const Value: TJanuaTMSStyleManager);
begin
  FJanuaTMSStyleManager := Value;
end;

procedure TJanuaVCLApplication.ShowForm(aForm: TForm);
begin

end;

end.


