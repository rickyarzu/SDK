unit Janua.Core.Http.Intf;

interface

type
  IJanuaUrlGenerator = interface
    ['{50AE34B0-470E-450D-9EAE-A2E6EA319ECF}']
    function GenerateUrl(const aUrl: string): string;
  end;

  IJanuaTinyUrlGenerator = interface(IJanuaUrlGenerator)
    ['{861616A7-976B-4BE9-B10F-040D76479982}']
  end;

  IJanuaTestUrlGenerator = interface(IJanuaUrlGenerator)
    ['{35C7EA1F-E14D-464D-993C-84F434946C72}']
  end;

  TUrlGeneratorEngine = (jgeTinyUrl, jgeTestUrl);

function GetUrlGeneratorEngine(aEngine: TUrlGeneratorEngine): TGUID;

implementation

uses Janua.Core.Types;

function GetUrlGeneratorEngine(aEngine: TUrlGeneratorEngine): TGUID;
begin
  case aEngine of
    jgeTinyUrl:
      Result := IJanuaTinyUrlGenerator;
    jgeTestUrl:
      Result := IJanuaTestUrlGenerator;
  end;
end;

initialization

RegisterInterface(TypeInfo(IJanuaTinyUrlGenerator));
RegisterInterface(TypeInfo(IJanuaTestUrlGenerator));

end.
