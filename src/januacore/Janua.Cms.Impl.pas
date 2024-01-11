unit Janua.Cms.Impl;

interface

uses Janua.Cms.Intf, Janua.Html.Intf, Spring.Collections;

type
  TCmsSettings = class(TInterfacedObject, ICmsSettings)
  private
    FExtensionsList: IDictionary<string, Int64>;
  protected
    function GetExtensionsList: IDictionary<string, Int64>;
    procedure SetExtensionsList(const Value: IDictionary<string, Int64>);
  public
    Constructor Create;
    procedure AddExtension(aExtension: string; aID: Int64);
  public
    property ExtensionsList: IDictionary<string, Int64> read FExtensionsList write SetExtensionsList;
  end;

Type
  TCmsFactory = class
    class function GenerateAttachImage(aAttach, aExtension: string; aLogoID: Int64): string; overload;
    class function GenerateAttachImageObject(aTeam, aExtension: string; aLogoID: Int64): IJanuaHtmlObject; overload;
  end;

implementation

uses System.SysUtils;

{ TCmsSettings }

procedure TCmsSettings.AddExtension(aExtension: string; aID: Int64);
begin
  self.FExtensionsList.Add(aExtension.ToLower, aID);
end;

constructor TCmsSettings.Create;
begin
  FExtensionsList := Spring.Collections.TCollections.CreateDictionary<string, Int64>
end;

function TCmsSettings.GetExtensionsList: IDictionary<string, Int64>;
begin

end;

procedure TCmsSettings.SetExtensionsList(const Value: IDictionary<string, Int64>);
begin
  FExtensionsList := Value;
end;

{ TCmsFactory }

class function TCmsFactory.GenerateAttachImage(aAttach, aExtension: string; aLogoID: Int64): string;
begin

end;

class function TCmsFactory.GenerateAttachImageObject(aTeam, aExtension: string; aLogoID: Int64): IJanuaHtmlObject;
begin

end;

end.
