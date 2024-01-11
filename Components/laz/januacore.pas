{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit JanuaCore;

interface

uses
  Janua.Core.Functions, Janua.Core.Roundings, LazarusPackageIntf;

implementation

procedure Register;
begin
end;

initialization
  RegisterPackage('JanuaCore', @Register);
end.
