unit Janua.Application.Impl;

interface

uses
  System.Classes, Spring.Collections,
  // Januaproject Core Framework
  Janua.Core.Classes.Intf, Janua.Core.Types, Janua.Core.Classes, Janua.Application.Intf;

type
  TJanuaAppFramework = class(TJanuaCoreComponent)
  private
    function GetAppName: string;
    procedure SetAppName(const Value: string);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
    property AppName: string read GetAppName Write SetAppName;
  end;

procedure Register;

implementation

uses Janua.Application.Framework;

procedure Register;
begin
  RegisterComponents('Janua Core Classes', [TJanuaAppFramework]);
end;

{ TJanuaAppFramework }

function TJanuaAppFramework.GetAppName: string;
begin
  Result := TJanuaApplication.AppName;
end;

procedure TJanuaAppFramework.SetAppName(const Value: string);
begin
  if Value <> '' then
    TJanuaApplication.AppName := Value;
end;

end.
