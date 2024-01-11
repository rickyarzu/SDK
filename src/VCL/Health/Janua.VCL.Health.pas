unit Janua.VCL.Health;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Janua.Core.Classes, Janua.Core.System,
  VCL.Controls, VCL.StdCtrls, Janua.Core.Health, Janua.Core.Functions,
  // Janua.VCL.Controls,
  {TODO : Ricalibrare le funzioni sulla base del componente Parent}
  Janua.VCL.System, VCL.Mask;

{ regdate: TDate;
  regnumber: string;
}

type
  TJanuaVCLDoctor = class(TJanuaCustomDoctor)
  strict protected
    function InternalActivate: boolean; override;
  public
    Constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

{ TJanuaVCLDoctor }

constructor TJanuaVCLDoctor.Create(AOwner: TComponent);
begin
  inherited;
  // self.FController := TJanuaVCLController.Create;
  { TODO : Ricalibrare le funzioni sulla base del componente Parent }
  self.FController.Verbose := self.Verbose;
  // Imposta il Controller definito nella classe Base come  TJanuaVCLController
end;

destructor TJanuaVCLDoctor.Destroy;
begin
  if Assigned(self.FController) then
    JanuaFree(self.FController);
  inherited;
end;

function TJanuaVCLDoctor.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        Result := False;
        self.SetOwner;
        Result := True
      end;
    except
      on e: exception do
        RaiseLocalException('InternalActivate', e);
    end;
end;

end.
