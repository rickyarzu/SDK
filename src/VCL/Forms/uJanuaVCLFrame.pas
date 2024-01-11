unit uJanuaVCLFrame;

interface

{$I JANUACORE.INC}

uses
  // Windows / System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Spring.Collections, System.Json, System.Types, System.UITypes,
  VCL.Controls, VCL.Forms, {Janua.Bindings.Impl,} Janua.Bindings.Intf,
  Janua.Controls.Forms.Intf, Janua.Controls.Intf, Janua.Core.Types, Janua.Core.Classes.Intf;

type
  TJanuaVCLFrameModel = class(TFrame, IJanuaContainer, IJanuaBindable)
    // ------- Observer
  private
    FObserversList: IDictionary<IJanuaBindable, TProc>;
    FJActive: Boolean;
  protected
    function GetActive: Boolean;
    procedure SetActive(const aValue: Boolean);
    function InternalActivate: Boolean; virtual;
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const aObserver: TObject; aProc: TProc);
    procedure Detach(const aObserver: TObject);
    // ----- Initialization
    // ------------ IJanuaBindable Object Interface implementation ---------------------------------
    procedure ClearBindings;
    destructor Destroy; override;
    constructor Create(AOwner: TComponent); override;
    // ************************************* Bindings Procedures ***********************************
  private
    FBindManager: IJanuaBindManager;
    function GetBindManager: IJanuaBindManager;
  protected
    function GetSelf: TObject;
    procedure Notify(const AProperty: string);
  public
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: Boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput, jbcEvaluate]);
    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************

    // Initialization
  strict protected
    FInitialized: Boolean;
    FAfterActivate: TProc;
    function GetAfterActivate: TProc;
    procedure SetAfterActivate(const Value: TProc);
    function GetInitialized: Boolean;
    procedure SetInitialized(const Value: Boolean);
  public
    procedure Initialize; virtual;
    /// <summary> Can be Set to initialize the Object (after creating it or in a IInd time) </summary>
    Property Initialized: Boolean read GetInitialized write SetInitialized;
    // End Initialization
    property Active: Boolean read GetActive write SetActive;
    function Activate: Boolean; reintroduce;
    procedure DeActivate; virtual;
    procedure Terminate; virtual;
    // *********************************** Logging Procedures **************************************
  private
    FLogError: TJanuaLogRecord;
    FLogToFile: Boolean;
    FHasMessage: Boolean;
    FLastMessage: string;
    FVerbose: Boolean;
    procedure SetLogToFile(const Value: Boolean);
    function GetLogText: string;
  strict protected
    FHasErrors: Boolean;
    FLastErrorMessage: string;
    // Profile : TJanuaRecordProfile;
    procedure SetHasErrors(const Value: Boolean);
    function GetLocalLog: string;
  public
    procedure ClearMessage;
    procedure ClearErrors;
    procedure AddLog(aLog: string);
    procedure WriteLog(LogMessage: string; isError: Boolean = false); overload; virtual;
    procedure WriteLog(ProcedureName, LogMessage: string; isError: Boolean = false); overload; virtual;
    procedure WriteError(LogMessage: string; E: Exception; doraise: Boolean = true); overload; virtual;
    procedure WriteError(ProcedureName, LogMessage: string; E: Exception; doraise: Boolean = true); overload; virtual;
    property LocalLog: string read GetLocalLog;
    property LogText: string read GetLogText;
    // *********************************** end Logging Procedures ********************************************

  private
    FCAption: string;
    FParams: TJanuaVariantArray;
    procedure IncBindCount;
  protected
    function GetParams: TJanuaVariantArray;
    procedure SetParams(const Value: TJanuaVariantArray);
    /// <summary> Read record logs and Builds a string separating logs with line breaks </summary>
    function GetLogString: string;
    /// <summary> Expose internal Log as String </summary>
    property LogString: string read GetLogString;
    function JanuaGetComponent: TComponent;
    procedure JanuaSetComponent(const Value: TComponent);
    /// <summary> Component to be connected to object properties or Fields </summary>
    property Component: TComponent read JanuaGetComponent write JanuaSetComponent;
    function GetNameJ: TComponentName;
    procedure SetNameJ(const Value: TComponentName);

    function GetLeft: Integer;
    function GetTop: Integer;
    procedure SetLeft(const Value: Integer);
    procedure SetTop(const Value: Integer);
    procedure SetHeight(const Value: Integer);
    procedure SetWidth(const Value: Integer);
    procedure SetCaption(const Value: string);
    function GetCaption: string;
    function GetTransparency: Boolean;
    procedure SetTransparency(const Value: Boolean);
    function GetHeight: Integer;
    function GetWidth: Integer;
    function GetVisible: Boolean;
    procedure SetVisible(const Value: Boolean);
    function GetHint: string;
    procedure SetHint(const Value: string);
    property Hint: string read GetHint write SetHint;
    function JanuaGetAlign: TJanuaAlign;
    procedure JanuaSetAlign(const Value: TJanuaAlign);
    /// <summary> Determines how the control aligns within its container (parent control). </summary>
    /// <summary> Determines how the control aligns within its container (parent control). </summary>
    procedure SetAlignWM(const Value: Boolean);
    function GetAlignWM: Boolean;
    function GetChildControls: IList<IJanuaControl>;
    procedure setChildControls(const Value: IList<IJanuaControl>);
{$IFDEF fpc}
    function GetChildControls: TList<IJanuaControl>;
    procedure setChildControls(const Value: TList<IJanuaControl>);
{$ENDIF fpc}
    function GetControls(const aIndex: Integer): IJanuaControl;
    property Controls[const aIndex: Integer]: IJanuaControl read GetControls;
    function AddControl: IJanuaControl;
    procedure DelControl(const aControl: IJanuaControl);

    procedure JanuaSetParent(const Value: IJanuaControl);
    function JanuaGetParent: IJanuaControl;

    function GetAsComponent: TComponent;
    procedure SetAsComponent(const Value: TComponent);

    function JanuaGetAction: IJanuaAction;
    procedure JanuaSetAction(const Value: IJanuaAction);

    function GetOnKeyDown: TJanuaKeyEvent;
    procedure SetOnKeyDown(const Value: TJanuaKeyEvent);
    function GetOnKeyUp: TJanuaKeyEvent;
    procedure SetOnKeyUp(const Value: TJanuaKeyEvent);
    function GetOnMouseDown: TJanuaMouseEvent;
    procedure SetOnMouseDown(const Value: TJanuaMouseEvent);
    function GetOnMouseMove: TJanuaMouseMoveEvent;
    procedure SetOnMouseMove(const Value: TJanuaMouseMoveEvent);
    function GetOnMouseUp: TJanuaMouseEvent;
    procedure SetOnMouseUp(const Value: TJanuaMouseEvent);
    function GetOnMouseWheel: TJanuaMouseWheelEvent;
    procedure SetOnMouseWheel(const Value: TJanuaMouseWheelEvent);
  end;

implementation

uses Janua.Core.Classes, Janua.Controls.Forms.Impl, System.TypInfo, Janua.Application.Framework;

{$R *.dfm}
{ TJanuaVCLFrameModel }

function TJanuaVCLFrameModel.Activate: Boolean;
begin
  if not GetActive then
    FJActive := InternalActivate;

  Result := FJActive;
end;

function TJanuaVCLFrameModel.AddControl: IJanuaControl;
begin

end;

procedure TJanuaVCLFrameModel.AddLog(aLog: string);
begin

end;

procedure TJanuaVCLFrameModel.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TJanuaVCLFrameModel.Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
  const AReadOnly: Boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on E: Exception do
      RaiseException('Bind', E, Self);
  end;
end;

procedure TJanuaVCLFrameModel.CallObservers;
begin

end;

procedure TJanuaVCLFrameModel.ClearBindings;
begin
  FBindManager.ClearBindings;
end;

procedure TJanuaVCLFrameModel.ClearErrors;
begin

end;

procedure TJanuaVCLFrameModel.ClearMessage;
begin

end;

constructor TJanuaVCLFrameModel.Create(AOwner: TComponent);
begin
  inherited;
  FJActive := false;
  FBindManager := TJanuaBindManager.Create(self);
end;

procedure TJanuaVCLFrameModel.DeActivate;
begin
  FJActive := false;
end;

procedure TJanuaVCLFrameModel.DelControl(const aControl: IJanuaControl);
begin

end;

destructor TJanuaVCLFrameModel.Destroy;
begin
  if Assigned(FBindManager) then
    FBindManager.ClearBindings;
  FBindManager := nil;
  inherited;
end;

procedure TJanuaVCLFrameModel.Detach(const aObserver: TObject);
begin

end;

procedure TJanuaVCLFrameModel.DetachObservers;
begin

end;

function TJanuaVCLFrameModel.GetActive: Boolean;
begin
  Result := FJActive;
end;

function TJanuaVCLFrameModel.GetAfterActivate: TProc;
begin
   Result := FAfterActivate
end;

function TJanuaVCLFrameModel.GetAlignWM: Boolean;
begin
  Result := AlignWithMargins
end;

function TJanuaVCLFrameModel.GetAsComponent: TComponent;
begin
  Result := Self as TComponent
end;

function TJanuaVCLFrameModel.GetBindManager: IJanuaBindManager;
begin
  Result := FBindManager
end;

function TJanuaVCLFrameModel.GetCaption: string;
begin
  Result := Self.FCAption
end;

function TJanuaVCLFrameModel.GetChildControls: IList<IJanuaControl>;
begin

end;

function TJanuaVCLFrameModel.GetControls(const aIndex: Integer): IJanuaControl;
begin

end;

function TJanuaVCLFrameModel.GetHeight: Integer;
begin
  Result := Self.Height
end;

function TJanuaVCLFrameModel.GetHint: string;
begin

end;

function TJanuaVCLFrameModel.GetInitialized: Boolean;
begin
  Result := FInitialized
end;

function TJanuaVCLFrameModel.GetLeft: Integer;
begin
  Result := Self.Left
end;

function TJanuaVCLFrameModel.GetLocalLog: string;
begin

end;

function TJanuaVCLFrameModel.GetLogString: string;
begin
  Result := TJanuaLogger.LogString(Self);
end;

function TJanuaVCLFrameModel.GetLogText: string;
begin

end;

function TJanuaVCLFrameModel.GetNameJ: TComponentName;
begin

end;

function TJanuaVCLFrameModel.GetOnKeyDown: TJanuaKeyEvent;
begin

end;

function TJanuaVCLFrameModel.GetOnKeyUp: TJanuaKeyEvent;
begin

end;

function TJanuaVCLFrameModel.GetOnMouseDown: TJanuaMouseEvent;
begin

end;

function TJanuaVCLFrameModel.GetOnMouseMove: TJanuaMouseMoveEvent;
begin

end;

function TJanuaVCLFrameModel.GetOnMouseUp: TJanuaMouseEvent;
begin

end;

function TJanuaVCLFrameModel.GetOnMouseWheel: TJanuaMouseWheelEvent;
begin

end;

function TJanuaVCLFrameModel.GetParams: TJanuaVariantArray;
begin
  Result := Self.FParams
end;

function TJanuaVCLFrameModel.GetSelf: TObject;
begin
  Result := Self as TObject;
end;

function TJanuaVCLFrameModel.GetTop: Integer;
begin
  Result := Self.Top
end;

function TJanuaVCLFrameModel.GetTransparency: Boolean;
begin
  Result := false;
end;

function TJanuaVCLFrameModel.GetVisible: Boolean;
begin
  Result := Self.Visible
end;

function TJanuaVCLFrameModel.GetWidth: Integer;
begin
  Result := Self.Width
end;

procedure TJanuaVCLFrameModel.IncBindCount;
begin

end;

procedure TJanuaVCLFrameModel.Initialize;
begin
  FInitialized := true;
end;

function TJanuaVCLFrameModel.InternalActivate: Boolean;
begin
  Result := true;
end;

function TJanuaVCLFrameModel.JanuaGetAction: IJanuaAction;
begin

end;

function TJanuaVCLFrameModel.JanuaGetAlign: TJanuaAlign;
begin
  case Self.Align of
    alNone:
      Result := jalNone;
    alTop:
      Result := jalTop;
    alBottom:
      Result := jalBottom;
    alLeft:
      Result := jalLeft;
    alRight:
      Result := jalRight;
    alClient:
      Result := jalClient;
    alCustom:
      Result := jalCustom;
  else
    Result := jalNone
  end;
end;

function TJanuaVCLFrameModel.JanuaGetComponent: TComponent;
begin
  Result := Self as TComponent;
end;

function TJanuaVCLFrameModel.JanuaGetParent: IJanuaControl;
begin

end;

procedure TJanuaVCLFrameModel.JanuaSetAction(const Value: IJanuaAction);
begin

end;

procedure TJanuaVCLFrameModel.JanuaSetAlign(const Value: TJanuaAlign);
begin

end;

procedure TJanuaVCLFrameModel.JanuaSetComponent(const Value: TComponent);
begin

end;

procedure TJanuaVCLFrameModel.JanuaSetParent(const Value: IJanuaControl);
begin

end;

procedure TJanuaVCLFrameModel.Notify(const AProperty: string);
begin
  BindManager.Notify(AProperty);
end;

procedure TJanuaVCLFrameModel.SetActive(const aValue: Boolean);
begin
  // non fa nulla (x ora).
  if aValue and not FJActive then
    Activate
  else if FJActive and not aValue then
    DeActivate;
end;

procedure TJanuaVCLFrameModel.SetAfterActivate(const Value: TProc);
begin
  FAfterActivate := Value
end;

procedure TJanuaVCLFrameModel.SetAlignWM(const Value: Boolean);
begin

end;

procedure TJanuaVCLFrameModel.SetAsComponent(const Value: TComponent);
begin

end;

procedure TJanuaVCLFrameModel.SetCaption(const Value: string);
begin
  FCAption := Value
end;

procedure TJanuaVCLFrameModel.setChildControls(const Value: IList<IJanuaControl>);
begin

end;

procedure TJanuaVCLFrameModel.SetHasErrors(const Value: Boolean);
begin

end;

procedure TJanuaVCLFrameModel.SetHeight(const Value: Integer);
begin
  Height := Value
end;

procedure TJanuaVCLFrameModel.SetHint(const Value: string);
begin

end;

procedure TJanuaVCLFrameModel.SetInitialized(const Value: Boolean);
begin
  if Value <> FInitialized then
  begin
    if Value then
      Self.Initialize
    else
    begin
      FInitialized := false;
      DeActivate;
    end;
  end;
end;

procedure TJanuaVCLFrameModel.SetLeft(const Value: Integer);
begin
  Self.Left := Value
end;

procedure TJanuaVCLFrameModel.SetLogToFile(const Value: Boolean);
begin

end;

procedure TJanuaVCLFrameModel.SetNameJ(const Value: TComponentName);
begin

end;

procedure TJanuaVCLFrameModel.SetOnKeyDown(const Value: TJanuaKeyEvent);
begin

end;

procedure TJanuaVCLFrameModel.SetOnKeyUp(const Value: TJanuaKeyEvent);
begin

end;

procedure TJanuaVCLFrameModel.SetOnMouseDown(const Value: TJanuaMouseEvent);
begin

end;

procedure TJanuaVCLFrameModel.SetOnMouseMove(const Value: TJanuaMouseMoveEvent);
begin

end;

procedure TJanuaVCLFrameModel.SetOnMouseUp(const Value: TJanuaMouseEvent);
begin

end;

procedure TJanuaVCLFrameModel.SetOnMouseWheel(const Value: TJanuaMouseWheelEvent);
begin

end;

procedure TJanuaVCLFrameModel.SetParams(const Value: TJanuaVariantArray);
begin
  FParams := Value;
end;

procedure TJanuaVCLFrameModel.SetTop(const Value: Integer);
begin
  Self.Top := Value
end;

procedure TJanuaVCLFrameModel.SetTransparency(const Value: Boolean);
begin

end;

procedure TJanuaVCLFrameModel.SetVisible(const Value: Boolean);
begin

end;

procedure TJanuaVCLFrameModel.SetWidth(const Value: Integer);
begin

end;

procedure TJanuaVCLFrameModel.Terminate;
begin
  DeActivate;

end;

procedure TJanuaVCLFrameModel.WriteError(LogMessage: string; E: Exception; doraise: Boolean);
begin

end;

procedure TJanuaVCLFrameModel.WriteError(ProcedureName, LogMessage: string; E: Exception; doraise: Boolean);
begin

end;

procedure TJanuaVCLFrameModel.WriteLog(LogMessage: string; isError: Boolean);
begin

end;

procedure TJanuaVCLFrameModel.WriteLog(ProcedureName, LogMessage: string; isError: Boolean);
begin

end;

end.
