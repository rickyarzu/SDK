unit udmWpJson;

interface

uses
  System.SysUtils, System.Classes, System.Json, Janua.Core.RESTCloudDatamodule;

type
  TdmWpJson = class(TDataModule)
  public
    { Public declarations }
    function CreatePost(const aToken, aTitle, aText: string): TJsonObject;
  end;

var
  dmWpJson: TdmWpJson;

implementation

{$R *.dfm}
{ TdmClientLNDWpJson }

function TdmWpJson.CreatePost(const aToken, aTitle, aText: string): TJsonObject;
var
  lDM: TJanuaRestCloudDataModule;
begin
  lDM := TJanuaRestCloudDataModule.Create(self);
  try
    Result := lDM.CreateWordpessPost(aToken, aTitle, aText);
  finally
    lDM.Free;
  end;
end;

end.
