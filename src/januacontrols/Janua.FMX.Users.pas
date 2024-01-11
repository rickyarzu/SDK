unit Janua.FMX.Users;

interface

uses
  System.SysUtils, System.Classes, FMX.StdCtrls, FMX.Controls, FMX.ListBox, FMX.Edit,
  Janua.Core.CustomControls, Janua.Core.Functions, Janua.Core.System, Janua.Core.Classes,
  Janua.Core.Users, Janua.FMX.Controls;

type
  TJanuaFMXUser = class(TJanuaCustomUser)
  private
  protected
  public
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
  published
  end;

implementation


constructor TJanuaFMXUser.Create(AOwner: TComponent);
begin
  inherited;
  self.FController := TJanuaFMXController.Create;
end;

destructor TJanuaFMXUser.Destroy;
begin
  if Assigned(FController) then
    FreeAndNil(FController);
  inherited;
end;

end.
