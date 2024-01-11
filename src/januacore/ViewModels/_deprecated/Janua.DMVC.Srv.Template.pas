unit Janua.DMVC.Srv.Template;

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
  Janua.Core.Classes, Janua.Core.DB.Impl, Janua.Core.Types, Janua.Core.DB.Types;

type
  // [MVCPath('/')]
  TCustomMVVMSrvController = class(TMVCController)
  public
    procedure Setup; Virtual; Abstract;
  private
    FModel: IJanuaServerModel;
    procedure SetModel(const Value: IJanuaServerModel);
  protected
    property Model: IJanuaServerModel read FModel write SetModel;
  public
    [MVCPath]
    [MVCHTTPMethod([httpGET])]
    procedure Index;

    // Sample CRUD Actions for a "Customer" entity
    [MVCPath('/($aFormat)/($aParams)')]
    [MVCHTTPMethod([httpGET])]
    procedure GetDataset(const aFormat, aParams: string); overload;

    [MVCPath('/record/($aGUID)')]
    [MVCHTTPMethod([httpGET])]
    procedure GetRecord(const aGUID: string);

    [MVCPath('/record')]
    [MVCHTTPMethod([httpPOST])]
    procedure CreateRecord;

    [MVCPath('/record')]
    [MVCHTTPMethod([httpPUT])]
    procedure UpdateRecord;

    [MVCPath('/record')]
    [MVCHTTPMethod([httpHEAD])]
    procedure DescRecord;

  end;

implementation

{ TCustomController }

procedure TCustomMVVMSrvController.CreateRecord;
begin

end;

procedure TCustomMVVMSrvController.DescRecord;
begin

end;

procedure TCustomMVVMSrvController.GetDataset(const aFormat, aParams: string);
begin

end;

procedure TCustomMVVMSrvController.GetRecord(const aGUID: string);
begin

end;

procedure TCustomMVVMSrvController.Index;
begin

end;

procedure TCustomMVVMSrvController.SetModel(const Value: IJanuaServerModel);
begin
  FModel := Value;
end;

procedure TCustomMVVMSrvController.UpdateRecord;
begin

end;

end.
