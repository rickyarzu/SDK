unit Janua.VCL.Health;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Janua.Core.Classes, Janua.Core.System,
  VCL.Controls, VCL.StdCtrls, Janua.VCL.Dialogs, Janua.Core.Health, Janua.VCL.Controls,
  Janua.VCL.System, VCL.Mask, Janua.Core.Anagraph;

{ regdate: TDate;
  regnumber: string;
}

type
  TJanuaVCLDoctor = class(TJanuaCustomDoctor)
  private
  protected
    procedure SetOwner; override;
  public
    Constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function Activate: boolean; override;
  published

  end;

implementation

{ TJanuaVCLDoctor }

function TJanuaVCLDoctor.Activate: boolean;
begin
  self.SetOwner;
end;

constructor TJanuaVCLDoctor.Create(AOwner: TComponent);
begin
  inherited;
  self.FController := TJanuaVCLController.Create;
  self.FController.Verbose := self.FVerbose;
  // Imposta il Controller definito nella classe Base come  TJanuaVCLController
end;

destructor TJanuaVCLDoctor.Destroy;
begin
  if Assigned(self.FController) then
    JanuaFreeAndNil(self.FController);
  inherited;
end;

procedure TJanuaVCLDoctor.SetOwner;
begin
  inherited;

end;

end.
