unit Janua.Virtual.Anagraph;

interface

uses Janua.Orm.Intf, Janua.Core.DB.Intf, Janua.Server.Intf, Janua.Core.Types,
  // Orm

  // DM
  udmVirtualAnagraph,
  // Parent
  Janua.Anagraph.Server.Intf, Janua.Anagraph.Server.Impl;

type
  TJanuaVirtualAnagraphStorage = class(TJanuaDBAnagraphStorage, IJanuaStorage, IJanuaAnagraphStorage)
  private
    FDM: TdmVirtualAnagraph;
  public
    function OpenAnagraphs: Integer;
    function OpenGroups: Integer;
  public
    constructor Create; override;
  end;

implementation

{ TJanuaVirtualAnagraphStorage }

constructor TJanuaVirtualAnagraphStorage.Create;
begin
  inherited;

end;

function TJanuaVirtualAnagraphStorage.OpenAnagraphs: Integer;
begin
  if not self.FDM.vtAnagraphs.Active then
    FDM.vtAnagraphs.Open;
  Result := self.FDM.vtAnagraphs.RecordCount
end;

function TJanuaVirtualAnagraphStorage.OpenGroups: Integer;
begin
  if not FDM.vtGroups.Active then
    FDM.vtGroups.Open;
  Result := FDM.vtGroups.RecordCount
end;

end.
