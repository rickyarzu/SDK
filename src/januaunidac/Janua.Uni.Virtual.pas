unit Janua.Uni.Virtual;

interface

uses
  System.Classes, System.SysUtils,
  // Database
  Data.DB, Uni, VirtualTable,
  // Janua
  Janua.Core.Classes, Janua.Server.Impl, Janua.Server.Intf, Janua.Core.Types, Janua.Orm.Types, Janua.Orm.Intf,
  Janua.Orm.Impl, Janua.Uni.Impl;

implementation

uses System.StrUtils, Spring, Janua.Application.Framework, System.Math, Janua.UniDac.Commons;

initialization

end.
