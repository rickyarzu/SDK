{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit januacorelaz;

{$warn 5023 off : no warning about unused units}
interface

uses
  Janua.Core.Types, Janua.Core.Functions, Janua.Html.Types, Janua.Orm.Types, 
  Janua.Core.Classes.Intf, Janua.Http.Intf, Janua.Controls.Standard.Intf, 
  Janua.Core.Classes, LazarusPackageIntf;

implementation

procedure Register;
begin
end;

initialization
  RegisterPackage('januacorelaz', @Register);
end.
