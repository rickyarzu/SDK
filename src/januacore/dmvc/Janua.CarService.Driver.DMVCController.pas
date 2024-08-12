unit Janua.CarService.Driver.DMVCController;

interface

uses
  // MVC Framework
  MVCFramework, MVCFramework.Commons, MVCFramework.Serializer.Commons,
  // ViewModel Interface
  Janua.CarService.Driver.ViewModel.Intf,
  // Janua Classes
  Janua.Core.DB.Types, Janua.DMVC.Controller.Template;

type

  [MVCPath('/driver')]
  TCSDriverController = class(TJanuaCustomDMVCSrvController)
  private
    FDriverModel: IJanuaCSDriversDBModel;
  protected
    procedure OnBeforeAction(Context: TWebContext; const AActionName: string; var Handled: Boolean); override;
    procedure OnAfterAction(Context: TWebContext; const AActionName: string); override;
  public
    procedure Setup; override;
  public
    [MVCPath]
    [MVCHTTPMethod([httpGET])]
    procedure Index; virtual;

    // Sample CRUD Actions for a "Customer" entity
    [MVCPath('/dataset/($aFormat)/($aParams)')]
    [MVCHTTPMethod([httpGET])]
    procedure GetDataset(const aFormat, aParams: string); overload; override;

    [MVCPath('/record/($aGUID)')]
    [MVCHTTPMethod([httpGET])]
    procedure GetRecord(const aGUID: string); override;

    [MVCPath('/record')]
    [MVCHTTPMethod([httpPOST])]
    procedure CreateRecord; override;

    [MVCPath('/record')]
    [MVCHTTPMethod([httpPUT])]
    procedure UpdateRecord; override;

    [MVCPath('/record')]
    [MVCHTTPMethod([httpHEAD])]
    procedure DescRecord; override;

    [MVCPath('/acr/($id)/($acr)')]
    [MVCHTTPMethod([httpPOST])]
    /// <summary> </summary>
    procedure TimetableAccessConfirmReject(const id: integer; const acr: Boolean);

  end;

implementation

uses Janua.ViewModels.Intf, Janua.CarService.Driver.Model.Impl;

{ TCSDriverController }

procedure TCSDriverController.CreateRecord;
begin
  inherited;
end;

procedure TCSDriverController.DescRecord;
begin
  inherited;
end;

procedure TCSDriverController.GetDataset(const aFormat, aParams: string);
begin
  inherited;
end;

procedure TCSDriverController.GetRecord(const aGUID: string);
begin
  inherited;
end;

procedure TCSDriverController.Index;
begin
  inherited;
end;

procedure TCSDriverController.OnAfterAction(Context: TWebContext; const AActionName: string);
begin
  inherited;
end;

procedure TCSDriverController.OnBeforeAction(Context: TWebContext; const AActionName: string;
  var Handled: Boolean);
begin
  inherited;
  Setup;
end;

procedure TCSDriverController.Setup;
begin
  inherited;
  { TryGetInterface(IJanuaCSDriversDBModel, [], FDriverModel); }
  FDriverModel := TJanuaCSDriversDBModel.Create;
  SetModel(FDriverModel as IJanuaServerDBModel);
end;

procedure TCSDriverController.TimetableAccessConfirmReject(const id: integer; const acr: Boolean);
begin

end;

procedure TCSDriverController.UpdateRecord;
begin

end;

end.
