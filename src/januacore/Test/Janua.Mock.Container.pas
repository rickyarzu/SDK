unit Janua.Mock.Container;

interface

{$I JANUACORE.INC}

uses System.Classes, System.SysUtils, Spring, Spring.Collections, Janua.Core.Types, Janua.Core.Classes,
  Janua.Bindings.Intf, Janua.Controls.Forms.Intf, Janua.Controls.Intf, Janua.Core.Classes.Intf;

type
  TJanuaMockContainer = class(TJanuaCoreComponent, IJanuaContainer, IJanuaControl, IJanuaBindable)
    // ------------ IJanuaBindable Object Interface implementation ---------------------------------------------
    destructor Destroy; override;
    constructor Create(AOwner: TComponent); override;
    // ************************************* Bindings Procedures ***********************************
  private
    FJanuaOnKeyDown: TJanuaKeyEvent;
  protected

  protected
    function GetLeft: Integer;
    function GetTop: Integer;
    procedure SetLeft(const Value: Integer);
    procedure SetTop(const Value: Integer);
    procedure SetHeight(const Value: Integer);
    procedure SetWidth(const Value: Integer);
    procedure SetCaption(const Value: string);
    function GetCaption: string;
    function GetTransparency: boolean;
    procedure SetTransparency(const Value: boolean);
    function GetHeight: Integer;
    function GetWidth: Integer;
    function GetVisible: boolean;
    procedure SetVisible(const Value: boolean);
    function GetHint: string;
    procedure SetHint(const Value: string);
    property Hint: string read GetHint write SetHint;
    function JanuaGetAlign: TJanuaAlign;
    procedure JanuaSetAlign(const Value: TJanuaAlign);
    /// <summary> Determines how the control aligns within its container (parent control). </summary>
    /// <summary> Determines how the control aligns within its container (parent control). </summary>
    property Align: TJanuaAlign read JanuaGetAlign write JanuaSetAlign;
    procedure SetAlignWM(const Value: boolean);
    function GetAlignWM: boolean;
    property AlignWithMargins: boolean read GetAlignWM write SetAlignWM;
    function GetChildControls: IList<IJanuaControl>;
    procedure setChildControls(const Value: IList<IJanuaControl>);
    property ChildControls: IList<IJanuaControl> read GetChildControls write setChildControls;
{$IFDEF fpc}
    function GetChildControls: TList<IJanuaControl>;
    procedure setChildControls(const Value: TList<IJanuaControl>);
    property ChildControls: TList<IJanuaControl> read GetChildControls write setChildControls;
{$ENDIF fpc}
    function GetControls(const aIndex: Integer): IJanuaControl;
    property Controls[const aIndex: Integer]: IJanuaControl read GetControls;
    function AddControl: IJanuaControl;
    procedure DelControl(const aControl: IJanuaControl);

    procedure JanuaSetParent(const Value: IJanuaControl);
    function JanuaGetParent: IJanuaControl;
    /// <summary> Defines the container control (parent control). </summary>
    property JanuaParent: IJanuaControl read JanuaGetParent write JanuaSetParent;

    function GetAsComponent: TComponent;
    procedure SetAsComponent(const Value: TComponent);
    property AsComponent: TComponent read GetAsComponent write SetAsComponent;

    function JanuaGetAction: IJanuaAction;
    procedure JanuaSetAction(const Value: IJanuaAction);
    property JanuaAction: IJanuaAction read JanuaGetAction Write JanuaSetAction;

    function JanuaOnKeyDown: TJanuaKeyEvent;
    procedure SetJanuaOnKeyDown(const Value: TJanuaKeyEvent);
    function GetJanuaOnKeyUp: TJanuaKeyEvent;
    procedure SetJanuaOnKeyUp(const Value: TJanuaKeyEvent);
    function GetOnMouseDown: TJanuaMouseEvent;
    procedure SetOnMouseDown(const Value: TJanuaMouseEvent);
    function GetOnMouseMove: TJanuaMouseMoveEvent;
    procedure SetOnMouseMove(const Value: TJanuaMouseMoveEvent);
    function GetOnMouseUp: TJanuaMouseEvent;
    procedure SetOnMouseUp(const Value: TJanuaMouseEvent);
    function GetOnMouseWheel: TJanuaMouseWheelEvent;
    procedure SetOnMouseWheel(const Value: TJanuaMouseWheelEvent);
    function JanuaGetComponent: TComponent;
    procedure JanuaSetComponent(const Value: TComponent);
    function GetNameJ: TComponentName;
    procedure SetNameJ(const Value: TComponentName);

    function GetParams: TJanuaVariantArray;
    procedure SetParams(const Value: TJanuaVariantArray);
  public
    /// <summary> Component to be connected to object properties or Fields </summary>
    property Component: TComponent read JanuaGetComponent write JanuaSetComponent;
    property Name: TComponentName read GetNameJ write SetNameJ;
    property JanuaOnKeyUp: TJanuaKeyEvent read GetJanuaOnKeyUp write SetJanuaOnKeyUp;
    property OnMouseDown: TJanuaMouseEvent read GetOnMouseDown write SetOnMouseDown;
    property OnMouseMove: TJanuaMouseMoveEvent read GetOnMouseMove write SetOnMouseMove;
    property OnMouseUp: TJanuaMouseEvent read GetOnMouseUp write SetOnMouseUp;
    property OnMouseWheel: TJanuaMouseWheelEvent read GetOnMouseWheel write SetOnMouseWheel;
    property JanuaOnKeyDownJanua: TJanuaKeyEvent read JanuaOnKeyDown write SetJanuaOnKeyDown;
  end;

implementation

uses Janua.Application.Framework{, Janua.Core.Commons};


{ TJanuaMockContainer }


function TJanuaMockContainer.AddControl: IJanuaControl;
begin

end;

constructor TJanuaMockContainer.Create(AOwner: TComponent);
begin
  TJanuaApplicationFactory.CreateBindManager(self);
  inherited;
end;

procedure TJanuaMockContainer.DelControl(const aControl: IJanuaControl);
begin

end;

destructor TJanuaMockContainer.Destroy;
begin

  inherited;
end;

function TJanuaMockContainer.GetAlignWM: boolean;
begin
  Result := True;
end;

function TJanuaMockContainer.GetAsComponent: TComponent;
begin
  Result := Self
end;

function TJanuaMockContainer.GetCaption: string;
begin

end;

function TJanuaMockContainer.GetChildControls: IList<IJanuaControl>;
begin

end;

function TJanuaMockContainer.GetControls(const aIndex: Integer): IJanuaControl;
begin

end;

function TJanuaMockContainer.GetHeight: Integer;
begin
  Result := 800
end;

function TJanuaMockContainer.GetHint: string;
begin
  Result := '';
end;

function TJanuaMockContainer.GetLeft: Integer;
begin
  Result := 0;
end;

function TJanuaMockContainer.GetNameJ: TComponentName;
begin
  Result := Self.Name;
end;

function TJanuaMockContainer.JanuaOnKeyDown: TJanuaKeyEvent;
begin
  Result := FJanuaOnKeyDown
end;

function TJanuaMockContainer.GetJanuaOnKeyUp: TJanuaKeyEvent;
begin

end;

function TJanuaMockContainer.GetOnMouseDown: TJanuaMouseEvent;
begin

end;

function TJanuaMockContainer.GetOnMouseMove: TJanuaMouseMoveEvent;
begin

end;

function TJanuaMockContainer.GetOnMouseUp: TJanuaMouseEvent;
begin

end;

function TJanuaMockContainer.GetOnMouseWheel: TJanuaMouseWheelEvent;
begin

end;

function TJanuaMockContainer.GetParams: TJanuaVariantArray;
begin

end;

function TJanuaMockContainer.GetTop: Integer;
begin
  Result := 0;
end;

function TJanuaMockContainer.GetTransparency: boolean;
begin
  Result := FAlse;
end;

function TJanuaMockContainer.GetVisible: boolean;
begin
  Result := True;
end;

function TJanuaMockContainer.GetWidth: Integer;
begin
  Result := 800;
end;

function TJanuaMockContainer.JanuaGetAction: IJanuaAction;
begin

end;

function TJanuaMockContainer.JanuaGetAlign: TJanuaAlign;
begin
  Result := TJanuaAlign.jalNone
end;

function TJanuaMockContainer.JanuaGetComponent: TComponent;
begin
  Result := Self
end;

function TJanuaMockContainer.JanuaGetParent: IJanuaControl;
begin

end;

procedure TJanuaMockContainer.JanuaSetAction(const Value: IJanuaAction);
begin

end;

procedure TJanuaMockContainer.JanuaSetAlign(const Value: TJanuaAlign);
begin

end;

procedure TJanuaMockContainer.JanuaSetComponent(const Value: TComponent);
begin

end;

procedure TJanuaMockContainer.JanuaSetParent(const Value: IJanuaControl);
begin

end;

procedure TJanuaMockContainer.SetAlignWM(const Value: boolean);
begin

end;

procedure TJanuaMockContainer.SetAsComponent(const Value: TComponent);
begin

end;

procedure TJanuaMockContainer.SetCaption(const Value: string);
begin

end;

procedure TJanuaMockContainer.setChildControls(const Value: IList<IJanuaControl>);
begin

end;

procedure TJanuaMockContainer.SetHeight(const Value: Integer);
begin

end;

procedure TJanuaMockContainer.SetHint(const Value: string);
begin

end;

procedure TJanuaMockContainer.SetLeft(const Value: Integer);
begin

end;

procedure TJanuaMockContainer.SetNameJ(const Value: TComponentName);
begin

end;

procedure TJanuaMockContainer.SetJanuaOnKeyDown(const Value: TJanuaKeyEvent);
begin

end;

procedure TJanuaMockContainer.SetJanuaOnKeyUp(const Value: TJanuaKeyEvent);
begin

end;

procedure TJanuaMockContainer.SetOnMouseDown(const Value: TJanuaMouseEvent);
begin

end;

procedure TJanuaMockContainer.SetOnMouseMove(const Value: TJanuaMouseMoveEvent);
begin

end;

procedure TJanuaMockContainer.SetOnMouseUp(const Value: TJanuaMouseEvent);
begin

end;

procedure TJanuaMockContainer.SetOnMouseWheel(const Value: TJanuaMouseWheelEvent);
begin

end;

procedure TJanuaMockContainer.SetParams(const Value: TJanuaVariantArray);
begin

end;

procedure TJanuaMockContainer.SetTop(const Value: Integer);
begin

end;

procedure TJanuaMockContainer.SetTransparency(const Value: boolean);
begin

end;

procedure TJanuaMockContainer.SetVisible(const Value: boolean);
begin

end;

procedure TJanuaMockContainer.SetWidth(const Value: Integer);
begin

end;

end.
