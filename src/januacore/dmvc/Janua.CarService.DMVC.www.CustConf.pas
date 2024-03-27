unit Janua.CarService.DMVC.www.CustConf;

interface

uses
  System.SysUtils, System.Classes, System.Types, System.UITypes, System.Variants, System.Generics.Collections,
  // Spring
  Spring, Spring.Collections,
  // DB Libraries
  FireDAC.Comp.Client, Data.DB,
  // DMVC Framework
  MVCFramework, MVCFramework.Commons, MVCFramework.Serializer.Commons,
  // Januaproject Interfaces
  Janua.Orm.Dataset.Intf, Janua.Orm.Intf, Janua.Core.Classes.Intf, Janua.Bindings.Intf,
  Janua.ViewModels.Intf, Janua.Core.DB.Intf, JOrm.System.Settings.Intf,
  // Janua DMVC
  Janua.DMVC.Srv.Template,
  // Janua.Libraries
  Janua.Core.Commons, Janua.Core.Classes, Janua.Core.DB.Impl, Janua.Core.Types, Janua.Core.DB.Types,
  Janua.Http.Types;

implementation

type
  [MVCPath('/')]
  TPikappCustConfWWWController = class(TCustomMVVMSrvController)

  end;

end.
