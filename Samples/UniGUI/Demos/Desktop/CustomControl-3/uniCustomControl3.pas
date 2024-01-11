unit uniCustomControl3;

interface

uses
  SysUtils, Classes, Controls, uniGUIBaseClasses, uniGUIClasses, Graphics,
  uniGUITypes;

type
  TUniMyFlashComponent = class(TUniControl)
  private
    { Private declarations }
    FUrl : string;
    FOnSuccess,
    FOnFailure: TNotifyEvent;
    procedure H_OnSuccess(This: TJSObject; EventName: string; Params: TUniStrings);
    procedure H_OnFailure(This: TJSObject; EventName: string; Params: TUniStrings);
  protected
    { Protected declarations }
    procedure ConfigJSClasses(ALoading: Boolean); override;
    function VCLControlClassName: string; override;

    procedure LoadCompleted; override;

    procedure SetOnSuccess(const Value: TNotifyEvent);
    procedure SetOnFailure(const Value: TNotifyEvent);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
    property Url: string read FUrl write Furl;

    property Align;
    property Anchors;
    property ClientEvents;

    // events
    property OnSuccess: TNotifyEvent read FOnSuccess write SetOnSuccess;
    property OnFailure: TNotifyEvent read FOnFailure write SetOnFailure;
  end;

procedure Register;

implementation

// Here we declare the default Ext JS component class name that we want to use in our control
// The default Ext JS class will be created automatically by uniGUI and displayed on Form
procedure TUniMyFlashComponent.ConfigJSClasses(ALoading: Boolean);
begin
   // http://docs.sencha.com/extjs/4.2.1/#!/api/Ext.flash.Component
  JSObjects.DefaultJSClassName:='Ext.flash.Component';
end;

// VCL Class Name is the control class which will be used in design time
// In this demo we leave it as blank so an empty box will be displayed on Form
function TUniMyFlashComponent.VCLControlClassName: string;
begin
  Result:='';
end;

constructor TUniMyFlashComponent.Create(AOwner: TComponent);
begin
  inherited;

// Define the default height and width for this control
  Width:=256;
  Height:=256;
end;

// Server side handler for success event
procedure TUniMyFlashComponent.H_OnSuccess(This: TJSObject; EventName: string; Params: TUniStrings);
begin
  if Assigned(FOnSuccess) then
    FOnSuccess(Self);
end;

// Server side handler for failure event
procedure TUniMyFlashComponent.H_OnFailure(This: TJSObject; EventName: string; Params: TUniStrings);
begin
  if Assigned(FOnFailure) then
    FOnFailure(Self);
end;

// Mount JS "success" event and assign a server side Handler for it
procedure TUniMyFlashComponent.SetOnSuccess(const Value: TNotifyEvent);
begin
  FOnSuccess:=Value;
  if Assigned(FOnSuccess) then
    JSAddEvent('success', ['This', '%0.nm'], H_OnSuccess)
  else
    JSRemoveEvent('success', H_OnSuccess);
end;

procedure TUniMyFlashComponent.SetOnFailure(const Value: TNotifyEvent);
begin
  FOnFailure:=Value;
  if Assigned(FOnFailure) then
    JSAddEvent('failure', ['This', '%0.nm'], H_OnFailure)
  else
    JSRemoveEvent('failure', H_OnFailure);
end;

// This procedure is called only in web mode
// It will be called when all design time properties are loaded
// and Ext JS compoenent is fully initialized
procedure TUniMyFlashComponent.LoadCompleted;
begin
  inherited;
  JSConfig('url', [FUrl]);
end;

procedure Register;
begin
  RegisterComponents('uniSamples', [TUniMyFlashComponent]);
end;

initialization
  UniAddJSLibrary('/files/swfobject/swfobject.js', True, [upoPlatformDesktop]);

end.
