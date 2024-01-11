unit Janua.Postgres.Forms;

interface

uses
  System.Classes, Janua.Core.Forms, udmPgForms, System.SysUtils;

type
  TJanuaPgServerForms = class(TJanuaCustomServerForms)
  private
    FdmPgForms: TdmPgForms;
    procedure SetdmPgForms(const Value: TdmPgForms);
  protected
    procedure TranslateFormInternal; override;
    procedure CreateDataModule; override;
    procedure DestroyDataModule(Force: boolean = false); override;
  public
  published
    property dmPgForms: TdmPgForms read FdmPgForms write SetdmPgForms;

  end;

implementation

{ TJanuaPgServerForms }

procedure TJanuaPgServerForms.CreateDataModule;
begin
  inherited;
  if not Assigned(FdmPgForms) then
  begin
    FdmPgForms := TdmPgForms.Create(nil);
    self.IDM := self.FdmPgForms;
    FdmPgForms.TestConnect
  end;
end;

procedure TJanuaPgServerForms.DestroyDataModule(Force: boolean = false);
begin
  if ((not KeepAlive) or Force) and Assigned(FdmPgForms) then
  begin
    FreeAndNil(FdmPgForms);
    self.IDM := nil;
  end;
  inherited;

end;

procedure TJanuaPgServerForms.SetdmPgForms(const Value: TdmPgForms);
begin
  FdmPgForms := Value;
end;

procedure TJanuaPgServerForms.TranslateFormInternal;
begin
  inherited;
  self.dmPgForms.TranslateForm(self.Language);
end;

end.
