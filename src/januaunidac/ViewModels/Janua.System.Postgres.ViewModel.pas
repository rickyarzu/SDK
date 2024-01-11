unit Janua.System.Postgres.ViewModel;

interface

uses System.Classes, Janua.System.ViewModel;

type
  TJanuaPgSystemViewModel = class(TJanuaDBSystemViewModel)
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses Janua.Postgres.System.Impl;

{ TJanuaPgSystemViewModel }

constructor TJanuaPgSystemViewModel.Create(AOwner: TComponent);
begin
  inherited;
  self.SystemStorage := Janua.Postgres.System.Impl.TJanuaServerPgSystemFactory.
end;

end.
