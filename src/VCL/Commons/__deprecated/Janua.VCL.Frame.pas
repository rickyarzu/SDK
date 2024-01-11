unit Janua.VCL.Frame;

interface

{$I JANUACORE.INC}

uses
  System.Classes, Spring, Spring.Collections,  System.Bindings.Helper,
  Janua.Controls.Forms.Intf, Janua.Controls.Intf, Janua.Core.Types, Janua.Core.Classes.Intf,
  VCL.Controls,  VCL.Forms;

type
  TJanuaVCLFrameModel = class(TFrame, IJanuaContainer)
  private
    FCAption: string;
  protected
    /// <summary>
    /// Janua Binding Framework. This procedure binds a Field from the record to a property of 'any' Object.
    /// </summary>
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TBindings.TCreateOptions = [coNotifyOutput,
      coEvaluate]);
    /// <summary> Clears all Bindings to all properties of the object </summary>
    procedure ClearBindings;
    procedure UnBind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string);

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
    function GetActive: Boolean;
    procedure SetActive(const Value: Boolean);
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
  public
  end;

implementation

{$R *.dfm}
{ TJanuaVCLFrameModel }

function TJanuaVCLFrameModel.AddControl: IJanuaControl;
begin

end;

procedure TJanuaVCLFrameModel.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: boolean; const ACreateOptions: TBindings.TCreateOptions);
begin

end;

procedure TJanuaVCLFrameModel.ClearBindings;
begin

end;

procedure TJanuaVCLFrameModel.DelControl(const aControl: IJanuaControl);
begin

end;

function TJanuaVCLFrameModel.GetActive: Boolean;
begin
  Result := True;
end;

function TJanuaVCLFrameModel.GetAlignWM: Boolean;
begin
   Result := self.AlignWithMargins
end;

function TJanuaVCLFrameModel.GetAsComponent: TComponent;
begin
   Result := self as TComponent
end;

function TJanuaVCLFrameModel.GetCaption: string;
begin
  Result := self.FCAption
end;

function TJanuaVCLFrameModel.GetChildControls: IList<IJanuaControl>;
begin

end;

function TJanuaVCLFrameModel.GetControls(const aIndex: Integer): IJanuaControl;
begin

end;

function TJanuaVCLFrameModel.GetHeight: Integer;
begin
  Result := self.Height
end;

function TJanuaVCLFrameModel.GetHint: string;
begin

end;

function TJanuaVCLFrameModel.GetLeft: Integer;
begin
  Result := self.Left
end;

function TJanuaVCLFrameModel.GetLogString: string;
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

function TJanuaVCLFrameModel.GetTop: Integer;
begin
  Result := self.Top
end;

function TJanuaVCLFrameModel.GetTransparency: Boolean;
begin
  Result := False;
end;

function TJanuaVCLFrameModel.GetVisible: Boolean;
begin
  Result := self.Visible
end;

function TJanuaVCLFrameModel.GetWidth: Integer;
begin
  Result := self.Width
end;

function TJanuaVCLFrameModel.JanuaGetAction: IJanuaAction;
begin

end;

function TJanuaVCLFrameModel.JanuaGetAlign: TJanuaAlign;
begin
  case self.Align of
    alNone: Result := jalNone ;
    alTop: Result := jalTop ;
    alBottom: Result := jalBottom ;
    alLeft: Result := jalLeft ;
    alRight: Result := jalRight ;
    alClient: Result := jalClient ;
    alCustom: Result := jalCustom ;
  end;
end;

function TJanuaVCLFrameModel.JanuaGetComponent: TComponent;
begin

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

procedure TJanuaVCLFrameModel.SetActive(const Value: Boolean);
begin
  // non fa nulla (x ora).
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

procedure TJanuaVCLFrameModel.SetHeight(const Value: Integer);
begin
  Height := Value
end;

procedure TJanuaVCLFrameModel.SetHint(const Value: string);
begin

end;

procedure TJanuaVCLFrameModel.SetLeft(const Value: Integer);
begin
  self.Left := Value
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

procedure TJanuaVCLFrameModel.SetTop(const Value: Integer);
begin
  self.Top := Value
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

procedure TJanuaVCLFrameModel.UnBind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string);
begin

end;

end.
