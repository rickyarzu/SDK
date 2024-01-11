unit udmAppConf;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Types, Janua.Core.Classes, Janua.Core.Conf;

type
  TdmAppConf = class(TDataModule)
    JanuaCoreLogger1: TJanuaCoreLogger;
    JanuaConf1: TJanuaConf;
  private
    function GetAppName: string;
    procedure SetAppName(const Value: string);
  protected
    FActive: boolean;
    { Private declarations }
  public
    { Public declarations }
    function Activate(aApptype: Janua.Core.Types.TJanuaApplicationType): boolean; virtual;
    property Active: boolean read FActive;
    property AppName: string read GetAppName write SetAppName;
  end;

var
  dmAppConf: TdmAppConf;

implementation

uses Janua.Application.Framework;

{$R *.dfm}
{ TdmAppConf }

function TdmAppConf.Activate(aApptype: Janua.Core.Types.TJanuaApplicationType): boolean;
begin
  TJanuaApplication.ApplicationType := aApptype;
  self.JanuaCoreLogger1.ApplicationType := aApptype;
  self.JanuaConf1.ApplicationType := aApptype;
  Result := False;
  if not(csDesigning in ComponentState) then
      Result := self.JanuaConf1.Activate;

  self.FActive := Result;
end;

function TdmAppConf.GetAppName: string;
begin
  Result := TJanuaApplication.AppName
end;

procedure TdmAppConf.SetAppName(const Value: string);
begin
  if Value <> '' then
  begin
    self.JanuaConf1.AppUrl := Value;
    TJanuaApplication.AppName := Value;
  end;

end;

end.
