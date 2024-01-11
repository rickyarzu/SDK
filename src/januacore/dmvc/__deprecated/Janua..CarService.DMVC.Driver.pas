unit Janua.CarService.DMVC.Driver;

interface

uses
  MVCFramework, MVCFramework.Commons, MVCFramework.Serializer.Commons, Janua.Core.DB.Types,
  Janua.DMVC.Srv.Template;

type

  [MVCPath('/driver/timetable')]
  TCSDriverController = class(TMVCController)
  public
    [MVCPath]
    [MVCHTTPMethod([httpGET])]
    procedure Index;
  protected
    procedure OnBeforeAction(Context: TWebContext; const AActionName: string; var Handled: Boolean); override;
    procedure OnAfterAction(Context: TWebContext; const AActionName: string); override;
  public
    [MVCPath('/timetable/($aFormat)')]
    [MVCHTTPMethod([httpGET])]
    /// <summary> Gets a Single Timetable Record IJanuaRecord Format </summary>
    procedure GetTimetable(const aFormat: string); overload;

    [MVCPath('/timetable/($id)')]
    [MVCHTTPMethod([httpPUT])]
    /// <summary> Updates Timetable Status and adds some informations </summary>
    procedure TimetableUpdate(id: integer);

    [MVCPath('/timetable/($id)')]
    [MVCHTTPMethod([httpGET])]
    /// <summary> Gets a Single Timetable Record IJanuaRecord Format </summary>
    procedure GetTimetable(const id: integer); overload;

    [MVCPath('/timetable/($aFormat)/($driverid)')]
    [MVCHTTPMethod([httpGET])]
    /// <summary> </summary>
    procedure GetTimetable(const aFormat: string; driverid: integer); overload;

    [MVCPath('/timetable/acr/($id)/($acr)')]
    [MVCHTTPMethod([httpPOST])]
    /// <summary> </summary>
    procedure TimetableAccessReject(const id: integer; const acr: Boolean);

    [MVCPath('/driver/($id)')]
    [MVCHTTPMethod([httpGET])]
    /// <summary> Gets Driver Personal Informations </summary>
    procedure GetDriver(const id: integer);

    [MVCPath('/driver/($id)')]
    [MVCHTTPMethod([httpPUT])]
    /// <summary> Gets Driver Personal Informations </summary>
    procedure DriverUpdate(const id: integer);

  end;

implementation

{ TCSDriverController }

procedure TCSDriverController.DriverUpdate(const id: integer);
begin

end;

procedure TCSDriverController.GetDriver(const id: integer);
begin

end;

procedure TCSDriverController.GetTimetable(const aFormat: string; driverid: integer);
begin

end;

procedure TCSDriverController.GetTimetable(const aFormat: string);
begin

end;

procedure TCSDriverController.GetTimetable(const id: integer);
begin

end;

procedure TCSDriverController.Index;
begin

end;

procedure TCSDriverController.OnAfterAction(Context: TWebContext; const AActionName: string);
begin
  inherited;

end;

procedure TCSDriverController.OnBeforeAction(Context: TWebContext; const AActionName: string;
  var Handled: Boolean);
begin
  inherited;

end;

procedure TCSDriverController.TimetableAccessReject(const id: integer; const acr: Boolean);
begin

end;

procedure TCSDriverController.TimetableUpdate(id: integer);
begin

end;

end.
