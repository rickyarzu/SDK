unit Janua.System.DMVC.Session.Controller;

interface

uses
  System.SysUtils, System.Classes, System.Types, System.UITypes, System.Variants, Spring.Collections,
  // DB Libraries
  FireDAC.Comp.Client, Data.DB,
  // DMVC Framework
  MVCFramework, MVCFramework.Commons, MVCFramework.Serializer.Commons,
  // Januaproject Interfaces
  Janua.Orm.Dataset.Intf, Janua.Orm.Intf, Janua.Core.Classes.Intf,
  Janua.Bindings.Intf, Janua.ViewModels.Intf, Janua.Core.DB.Intf, JOrm.System.Settings.Intf,
  // Janua.Libraries
  Janua.DMVC.Controller.Template, Janua.Core.Classes, Janua.Core.DB.Impl, Janua.Core.Types, Janua.Core.DB.Types;

type

  [MVCPath('/session')]
  TSystemSessionMVCController = class(TCustomMVVMSrvController)
  public
    procedure Setup; override;
  private
  protected
  public
  end;

implementation

{ TSystemSessionMVCController }

procedure TSystemSessionMVCController.Setup;
begin
  inherited;

end;

end.
