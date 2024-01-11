unit Janua.Mock.Container;

interface

{$I JANUACORE.INC}

uses System.Bindings.Helper, System.Classes, Spring, Spring.Collections, Janua.Core.Types,
  Janua.Controls.Forms.Intf, Janua.Controls.Intf, Janua.Core.Classes.Intf;

type
  TJanuaMockContainer = class(TComponent, IJanuaContainer, IJanuaControl, IJanuaBindable)
  private
    FBindCount: Byte;
  public
    /// <summary>
    /// Janua Binding Framework. This procedure binds a Field from the record to a property of 'any' Object.
    /// </summary>
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    /// <summary> Clears all Bindings to all properties of the object </summary>
    procedure ClearBindings;
    procedure UnBind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string);
    procedure IncBindCount;
    procedure DecBindCount;
  protected
    function GetBindCount: Byte;
    function GetHasBindings: boolean;
  protected
    /// <summary> Read record logs and Builds a string separating logs with line breaks </summary>
    function GetLogString: string;
    /// <summary> Expose internal Log as String </summary>
    property LogString: string read GetLogString;
    function GetLeft: Integer;
    function GetTop: Integer;
    procedure SetLeft(const Value: Integer);
    procedure SetTop(const Value: Integer);
    procedure SetHeight(const Value: Integer);
    procedure SetWidth(const Value: Integer);
    procedure SetCaption(const Value: string);
    function GetCaption: string;
    function GetActive: boolean;
    procedure SetActive(const Value: boolean);
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
    function JanuaGetComponent: TComponent;
    procedure JanuaSetComponent(const Value: TComponent);
    function GetNameJ: TComponentName;
    procedure SetNameJ(const Value: TComponentName);

    function GetParams: TVariantArray;
    procedure SetParams(const Value: TVariantArray);
  public
    procedure initialize;
    procedure Activate;
    function GetSelf: TObject;
  public
    /// <summary> Component to be connected to object properties or Fields </summary>
    property Component: TComponent read JanuaGetComponent write JanuaSetComponent;
    property Name: TComponentName read GetNameJ write SetNameJ;
    property OnKeyUp: TJanuaKeyEvent read GetOnKeyUp write SetOnKeyUp;
    property OnMouseDown: TJanuaMouseEvent read GetOnMouseDown write SetOnMouseDown;
    property OnMouseMove: TJanuaMouseMoveEvent read GetOnMouseMove write SetOnMouseMove;
    property OnMouseUp: TJanuaMouseEvent read GetOnMouseUp write SetOnMouseUp;
    property OnMouseWheel: TJanuaMouseWheelEvent read GetOnMouseWheel write SetOnMouseWheel;
    property OnKeyDownJanua: TJanuaKeyEvent read GetOnKeyDown write SetOnKeyDown;
  end;

implementation

{ TJanuaMockContainer }

procedure TJanuaMockContainer.Activate;
begin

end;

function TJanuaMockContainer.AddControl: IJanuaControl;
begin

end;

procedure TJanuaMockContainer.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: boolean = false;
  const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput, jbcEvaluate]);
begin

end;

procedure TJanuaMockContainer.ClearBindings;
begin

end;

procedure TJanuaMockContainer.DecBindCount;
begin

end;

procedure TJanuaMockContainer.DelControl(const aControl: IJanuaControl);
begin

end;

function TJanuaMockContainer.GetActive: boolean;
begin
  Result := True;
end;

function TJanuaMockContainer.GetAlignWM: boolean;
begin
  Result := True;
end;

function TJanuaMockContainer.GetAsComponent: TComponent;
begin
  Result := self
end;

function TJanuaMockContainer.GetBindCount: Byte;
begin
  Result := self.FBindCount
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

function TJanuaMockContainer.GetHasBindings: boolean;
begin

end;

function TJanuaMockContainer.GetHeight: Integer;
begin

end;

function TJanuaMockContainer.GetHint: string;
begin

end;

function TJanuaMockContainer.GetLeft: Integer;
begin

end;

function TJanuaMockContainer.GetLogString: string;
begin

end;

function TJanuaMockContainer.GetNameJ: TComponentName;
begin

end;

function TJanuaMockContainer.GetOnKeyDown: TJanuaKeyEvent;
begin

end;

function TJanuaMockContainer.GetOnKeyUp: TJanuaKeyEvent;
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

function TJanuaMockContainer.GetParams: TVariantArray;
begin

end;

function TJanuaMockContainer.GetSelf: TObject;
begin
  Result := self as TObject;
end;

function TJanuaMockContainer.GetTop: Integer;
begin

end;

function TJanuaMockContainer.GetTransparency: boolean;
begin

end;

function TJanuaMockContainer.GetVisible: boolean;
begin

end;

function TJanuaMockContainer.GetWidth: Integer;
begin

end;

procedure TJanuaMockContainer.IncBindCount;
begin

end;

procedure TJanuaMockContainer.initialize;
begin

end;

function TJanuaMockContainer.JanuaGetAction: IJanuaAction;
begin

end;

function TJanuaMockContainer.JanuaGetAlign: TJanuaAlign;
begin

end;

function TJanuaMockContainer.JanuaGetComponent: TComponent;
begin
  Result := self
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

procedure TJanuaMockContainer.SetActive(const Value: boolean);
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

procedure TJanuaMockContainer.SetOnKeyDown(const Value: TJanuaKeyEvent);
begin

end;

procedure TJanuaMockContainer.SetOnKeyUp(const Value: TJanuaKeyEvent);
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

procedure TJanuaMockContainer.SetParams(const Value: TVariantArray);
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

procedure TJanuaMockContainer.UnBind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string);
begin

end;

end.
