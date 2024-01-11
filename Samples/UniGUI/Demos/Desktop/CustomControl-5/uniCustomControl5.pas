unit uniCustomControl5;

interface

uses
  SysUtils, Classes, Controls, uniGUIBaseClasses, uniGUIClasses, Graphics,
  uniGUITypes, uniPanel;

type
  TUniRadiusChangeEvent = procedure(Sender: TComponent; NewRadius: Integer; OldRadius: Integer) of object;

  TUniRoundPanel = class(TUniCustomPanel)
  private
    FRadius: Integer;
    FOnChangeRadius: TUniRadiusChangeEvent;
    procedure SetRadius(const Value: Integer);
    { Private declarations }
  protected
    { Protected declarations }
    procedure SetOnChangeRadius(const Value: TUniRadiusChangeEvent);
    procedure ConfigJSClasses(ALoading: Boolean); override;
    function VCLControlClassName: string; override;

    function GetDesignJSClassName(const AJSClassName: string): string; override;
    procedure GetDesignJSEventList(Proc: TUniJSDesignEventProc); override;

    procedure LoadCompleted; override;
    procedure SetJSRadius(const Value: Integer);

    procedure H_JSOnChangeRadius(This: TJSObject; EventName: string; Params: TUniStrings);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property Align;
    property Anchors;
    property ClientEvents;

    property Radius: Integer read FRadius write SetRadius default 5;

    // events
    property OnChangeRadius: TUniRadiusChangeEvent read FOnChangeRadius write SetOnChangeRadius;
  end;

procedure Register;

implementation


// Here we declare the default Ext JS component class name that we want to use in our control
// The default Ext JS class will be created automatically by uniGUI and displayed on Form
procedure TUniRoundPanel.ConfigJSClasses(ALoading: Boolean);
begin
  JSObjects.DefaultJSClassName := 'Ext.panel.Round';  // declared in "files/js/Ext.panel.Round.js"
end;

// VCL Class Name is the control class which will be used in design time
function TUniRoundPanel.VCLControlClassName: string;
begin
  Result := 'TVCLPanel';
end;

constructor TUniRoundPanel.Create(AOwner: TComponent);
begin
  inherited;

  Height := 128;
  Width := 128;
  Radius := 5;
end;

destructor TUniRoundPanel.Destroy;
begin
  inherited;
end;

// used to change/define JS class name for design time ClientEvents.ExtEvents
function TUniRoundPanel.GetDesignJSClassName(const AJSClassName: string): string;
begin
  // base class used for 'Ext.panel.Round'
  Result := 'Ext.panel.Panel';
end;

// used to add new events to design time ClientEvents.ExtEvents
procedure TUniRoundPanel.GetDesignJSEventList(Proc: TUniJSDesignEventProc);
begin
  // add additional js events which are not available in base class
  Proc('changeradius', 'this=Object,newRadius=Integer,oldRadius=Integer');

  // ...
  // Proc( ... )
  // Proc( ... ) You can make multiple calls to Proc() to add additional events
  // ...
end;

procedure TUniRoundPanel.H_JSOnChangeRadius(This: TJSObject; EventName: string;
  Params: TUniStrings);
begin
  if Assigned(FOnChangeRadius) then
    FOnChangeRadius(Self, Params['new'].AsInteger, Params['old'].AsInteger);
end;

procedure TUniRoundPanel.LoadCompleted;
begin
  inherited;
end;

procedure TUniRoundPanel.SetJSRadius(const Value: Integer);
begin
  JSProperty('radius', [Value], 'setRadius');
end;

procedure TUniRoundPanel.SetOnChangeRadius(const Value: TUniRadiusChangeEvent);
begin
  FOnChangeRadius := Value;
  if Assigned(FOnChangeRadius) then
    JSAddEvent('changeradius', ['this', '%0', 'new', '%1', 'old', '%2'], H_JSOnChangeRadius)
  else
    JSRemoveEvent('changeradius', H_JSOnChangeRadius);
end;

procedure TUniRoundPanel.SetRadius(const Value: Integer);
begin
  if FRadius <> Value then
  begin
    FRadius := Value;
    SetJSRadius(FRadius);
  end;
end;

procedure Register;
begin
  RegisterComponents('uniSamples', [TUniRoundPanel]);
end;

initialization
  UniAddJSLibrary('js/Ext.panel.Round.js', False, [upoFolderFiles, upoPlatformDesktop]);

end.
