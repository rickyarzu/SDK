unit Janua.Test.DUnitx;

interface

uses DUnitX.Assert.Ex;


type
  // inherit because redeclaration raises ICE
  Assert = class(DUnitX.Assert.Ex.Assert);

implementation

end.
