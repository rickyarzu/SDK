unit Janua.VCL.Form;

interface

{$I JANUACORE.INC}

uses
  // Windows / System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  System.Bindings.Helper, Spring.Collections, System.Json, System.Types, System.UITypes,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs,
  // Janua
  Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Controls.Intf, Janua.Controls.Forms.Intf;

type
  TJanuaFormModel = class(TForm, IJanuaForm, IJanuaContainer, IJanuaControl)
  private
    FParentControl: IJanuaControl;
    FParentJanuaForm: IJanuaForm;
  protected
    // IJanuaBindable Component
    function JanuaGetComponent: TComponent;
    procedure JanuaSetComponent(const Value: TComponent);
    /// <summary> Component to be connected to object properties or Fields </summary>
    function GetNameJ: TComponentName;
    procedure SetNameJ(const Value: TComponentName);
    // IJanuaInterface
    function GetLogString: string;
    function GetModalResult: TModalResult;
    procedure SetModalResult(const Value: TModalResult);
    function GetShowHint: Boolean;
    procedure SetShowHint(const Value: Boolean);
    // ************************** Standard Procedures *********************************************************
    function GetOnCreate: TNotifyEvent;
    procedure SetOnCreate(const Value: TNotifyEvent);
    function GetOnDestroy: TNotifyEvent;
    procedure SetOnDestroy(const Value: TNotifyEvent);
    function GetOnClose: TJanuaCloseEvent;
    procedure SetOnClose(const Value: TJanuaCloseEvent);
    function GetOnActivate: TNotifyEvent;
    procedure SetOnActivate(const Value: TNotifyEvent);
    function GetOnDeactivate: TNotifyEvent;
    procedure SetOnDeactivate(const Value: TNotifyEvent);
    function GetOnResize: TNotifyEvent;
    procedure SetOnResize(const Value: TNotifyEvent);
    function GetOnShow: TNotifyEvent;
    procedure SetOnShow(const Value: TNotifyEvent);
    function GetOnHide: TNotifyEvent;
    procedure SetOnHide(const Value: TNotifyEvent);
    function GetOnFocusChanged: TNotifyEvent;
    procedure SetOnFocusChanged(const Value: TNotifyEvent);
    function GetOnSaveState: TNotifyEvent;
    procedure SetOnSaveState(const Value: TNotifyEvent);
    function GetOnVirtualKeyboardShown: TVirtualKeyboardEvent;
    procedure SetOnVirtualKeyboardShown(const Value: TVirtualKeyboardEvent);
    function GetOnVirtualKeyboardHidden: TVirtualKeyboardEvent;
    procedure SetOnVirtualKeyboardHidden(const Value: TVirtualKeyboardEvent);
    function GetLeft: Integer;
    function GetTop: Integer;
    procedure SetLeft(const Value: Integer);
    procedure SetTop(const Value: Integer);
    procedure SetHeight(const Value: Integer);
    procedure SetWidth(const Value: Integer);
    procedure SetCaption(const Value: string);
    function GetClientHeight: Integer;
    function GetClientWidth: Integer;
    procedure SetBorderIcons(const Value: TBorderIcons);
    function GetVisible: Boolean;
    procedure SetVisible(const Value: Boolean);
    procedure SetClientHeight(const Value: Integer);
    procedure SetClientWidth(const Value: Integer);
    procedure JanuaSetBiDiMode(const Value: TBiDiMode);
    procedure SetCursor(const Value: TCursor);
    procedure SetWindowState(const Value: TWindowState);
    function GetCaption: string;
    function GetActive: Boolean;
    procedure SetActive(const Value: Boolean);
    function GetTransparency: Boolean;
    procedure SetTransparency(const Value: Boolean);
    function GetHeight: Integer;
    function GetWidth: Integer;
    function GetWindowState: TWindowState;
    function GetTabOrder: TTabOrder;
    procedure SetTabOrder(Value: TTabOrder);
    function GetTabStop: Boolean;
    procedure SetTabStop(Value: Boolean);
    // ************************** Janua Procedures *********************************************************
    function GetFormStyleJanua: TJanuaFormStyle;
    procedure SetFormStyleJanua(Value: TJanuaFormStyle);
    function GetOnCloseQueryJanua: TJanuaCloseQueryEvent;
    procedure SetOnCloseQueryJanua(const Value: TJanuaCloseQueryEvent);
    function GetParentFormJanua: IJanuaForm;
    procedure SetBorderStyleJ(const Value: TJanuaFormBorderStyle);
    procedure SetPositionJ(const Value: TJanuaFormPosition);

    // da IJanuaControl
    function GetHint: string;
    procedure SetHint(const Value: string);
    property Hint: string read GetHint write SetHint;
    function JanuaGetAlign: TJanuaAlign;
    procedure JanuaSetAlign(const Value: TJanuaAlign);
    procedure SetAlignWM(const Value: Boolean);
    function GetAlignWM: Boolean;
    property AlignWithMargins: Boolean read GetAlignWM write SetAlignWM;
    function GetChildControls: IList<IJanuaControl>;
    procedure setChildControls(const Value: IList<IJanuaControl>);
    property ChildControls: IList<IJanuaControl> read GetChildControls write setChildControls;
    function GetControls(const aIndex: Integer): IJanuaControl;
    property Controls[const aIndex: Integer]: IJanuaControl read GetControls;
    function AddControl: IJanuaControl;
    procedure DelControl(const aControl: IJanuaControl);

    procedure JanuaSetParent(const Value: IJanuaControl);
    function JanuaGetParent: IJanuaControl;

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
  public
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: Boolean = false; const ACreateOptions: TBindings.TCreateOptions = [coNotifyOutput,
      coEvaluate]);
    /// <summary> Clears all Bindings to all properties of the object </summary>
    procedure ClearBindings;
    procedure UnBind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string);
  public
    // ************************** Janua Properties ********************************************************
    property ParentFormJ: IJanuaForm read GetParentFormJanua;
    property FormStyleJ: TJanuaFormStyle read GetFormStyleJanua write SetFormStyleJanua;
    property OnCloseQueryJ: TJanuaCloseQueryEvent read GetOnCloseQueryJanua write SetOnCloseQueryJanua;
  end;



implementation

uses Janua.Controls.Forms.Impl;

{$R *.dfm}



{ TJanuaFormModel }

function TJanuaFormModel.AddControl: IJanuaControl;
begin

end;

procedure TJanuaFormModel.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: Boolean; const ACreateOptions: TBindings.TCreateOptions);
begin

end;

procedure TJanuaFormModel.ClearBindings;
begin

end;

procedure TJanuaFormModel.DelControl(const aControl: IJanuaControl);
begin

end;

function TJanuaFormModel.GetActive: Boolean;
begin
  Result := self.Active
end;

function TJanuaFormModel.GetAlignWM: Boolean;
begin
  Result := false;
end;

function TJanuaFormModel.GetAsComponent: TComponent;
begin
  Result := self as TComponent
end;

function TJanuaFormModel.GetCaption: string;
begin

end;

function TJanuaFormModel.GetChildControls: IList<IJanuaControl>;
begin

end;

function TJanuaFormModel.GetClientHeight: Integer;
begin
  Result := self.ClientHeight
end;

function TJanuaFormModel.GetClientWidth: Integer;
begin
  Result := self.ClientWidth
end;

function TJanuaFormModel.GetControls(const aIndex: Integer): IJanuaControl;
begin

end;

function TJanuaFormModel.GetFormStyleJanua: TJanuaFormStyle;
begin
  case self.FormStyle of
    fsNormal:
      Result := TJanuaFormStyle.jfsNormal;
    fsMDIChild:
      Result := TJanuaFormStyle.jfsMDIChild;
    fsMDIForm:
      Result := TJanuaFormStyle.jfsMDIForm;
    fsStayOnTop:
      Result := TJanuaFormStyle.jfsStayOnTop;
  else
    Result := TJanuaFormStyle.jfsNormal
  end;
end;

function TJanuaFormModel.GetHeight: Integer;
begin
  Result := self.Height
end;

function TJanuaFormModel.GetHint: string;
begin
  Result := self.Hint
end;

function TJanuaFormModel.GetLeft: Integer;
begin
  Result := self.Left
end;

function TJanuaFormModel.GetLogString: string;
begin

end;

function TJanuaFormModel.GetModalResult: TModalResult;
begin
  Result := self.ModalResult
end;

function TJanuaFormModel.GetNameJ: TComponentName;
begin
  Result := self.Name
end;

function TJanuaFormModel.GetOnActivate: TNotifyEvent;
begin

end;

function TJanuaFormModel.GetOnClose: TJanuaCloseEvent;
begin

end;

function TJanuaFormModel.GetOnCloseQueryJanua: TJanuaCloseQueryEvent;
begin

end;

function TJanuaFormModel.GetOnCreate: TNotifyEvent;
begin

end;

function TJanuaFormModel.GetOnDeactivate: TNotifyEvent;
begin

end;

function TJanuaFormModel.GetOnDestroy: TNotifyEvent;
begin

end;

function TJanuaFormModel.GetOnFocusChanged: TNotifyEvent;
begin

end;

function TJanuaFormModel.GetOnHide: TNotifyEvent;
begin

end;

function TJanuaFormModel.GetOnKeyDown: TJanuaKeyEvent;
begin

end;

function TJanuaFormModel.GetOnKeyUp: TJanuaKeyEvent;
begin

end;

function TJanuaFormModel.GetOnMouseDown: TJanuaMouseEvent;
begin

end;

function TJanuaFormModel.GetOnMouseMove: TJanuaMouseMoveEvent;
begin

end;

function TJanuaFormModel.GetOnMouseUp: TJanuaMouseEvent;
begin

end;

function TJanuaFormModel.GetOnMouseWheel: TJanuaMouseWheelEvent;
begin

end;

function TJanuaFormModel.GetOnResize: TNotifyEvent;
begin

end;

function TJanuaFormModel.GetOnSaveState: TNotifyEvent;
begin

end;

function TJanuaFormModel.GetOnShow: TNotifyEvent;
begin

end;

function TJanuaFormModel.GetOnVirtualKeyboardHidden: TVirtualKeyboardEvent;
begin

end;

function TJanuaFormModel.GetOnVirtualKeyboardShown: TVirtualKeyboardEvent;
begin

end;

function TJanuaFormModel.GetParentFormJanua: IJanuaForm;
begin
  Result := self.FParentJanuaForm
end;

function TJanuaFormModel.GetShowHint: Boolean;
begin
  Result := self.ShowHint
end;

function TJanuaFormModel.GetTabOrder: TTabOrder;
begin
  Result := self.TabOrder
end;

function TJanuaFormModel.GetTabStop: Boolean;
begin
  Result := self.TabStop
end;

function TJanuaFormModel.GetTop: Integer;
begin
  Result := self.Top
end;

function TJanuaFormModel.GetTransparency: Boolean;
begin
  Result := false
end;

function TJanuaFormModel.GetVisible: Boolean;
begin
  Result := self.Visible
end;

function TJanuaFormModel.GetWidth: Integer;
begin
  Result := self.Width
end;

function TJanuaFormModel.GetWindowState: TWindowState;
begin
  Result := self.WindowState
end;

function TJanuaFormModel.JanuaGetAction: IJanuaAction;
begin

end;

function TJanuaFormModel.JanuaGetAlign: TJanuaAlign;
begin
  case self.Align of
    alNone:
      Result := TJanuaAlign.jalNone;
    alTop:
      Result := TJanuaAlign.jalTop;
    alBottom:
      Result := TJanuaAlign.jalBottom;
    alLeft:
      Result := TJanuaAlign.jalLeft;
    alRight:
      Result := TJanuaAlign.jalRight;
    alClient:
      Result := TJanuaAlign.jalClient;
    alCustom:
      Result := TJanuaAlign.jalCustom;
  else
    Result := TJanuaAlign.jalNone;
  end;
end;

function TJanuaFormModel.JanuaGetComponent: TComponent;
begin
  Result := self as TComponent
end;

function TJanuaFormModel.JanuaGetParent: IJanuaControl;
begin
  Result := self.FParentControl
end;

procedure TJanuaFormModel.JanuaSetAction(const Value: IJanuaAction);
begin

end;

procedure TJanuaFormModel.JanuaSetAlign(const Value: TJanuaAlign);
begin
  case Value of
    jalNone:
      Align := alNone;
    jalTop:
      Align := alTop;
    jalBottom:
      Align := alBottom;
    jalLeft:
      Align := alLeft;
    jalRight:
      Align := alRight;
    jalClient:
      Align := alClient;
    jalCustom:
      Align := alCustom;
  end;
end;

procedure TJanuaFormModel.JanuaSetBiDiMode(const Value: TBiDiMode);
begin
  BiDiMode := Value;
end;

procedure TJanuaFormModel.JanuaSetComponent(const Value: TComponent);
begin

end;

procedure TJanuaFormModel.JanuaSetParent(const Value: IJanuaControl);
begin

end;

procedure TJanuaFormModel.SetActive(const Value: Boolean);
begin

end;

procedure TJanuaFormModel.SetAlignWM(const Value: Boolean);
begin

end;

procedure TJanuaFormModel.SetAsComponent(const Value: TComponent);
begin

end;

procedure TJanuaFormModel.SetBorderIcons(const Value: TBorderIcons);
begin

end;

procedure TJanuaFormModel.SetBorderStyleJ(const Value: TJanuaFormBorderStyle);
begin

end;

procedure TJanuaFormModel.SetCaption(const Value: string);
begin

end;

procedure TJanuaFormModel.setChildControls(const Value: IList<IJanuaControl>);
begin

end;

procedure TJanuaFormModel.SetClientHeight(const Value: Integer);
begin

end;

procedure TJanuaFormModel.SetClientWidth(const Value: Integer);
begin

end;

procedure TJanuaFormModel.SetCursor(const Value: TCursor);
begin

end;

procedure TJanuaFormModel.SetFormStyleJanua(Value: TJanuaFormStyle);
begin

end;

procedure TJanuaFormModel.SetHeight(const Value: Integer);
begin

end;

procedure TJanuaFormModel.SetHint(const Value: string);
begin

end;

procedure TJanuaFormModel.SetLeft(const Value: Integer);
begin

end;

procedure TJanuaFormModel.SetModalResult(const Value: TModalResult);
begin

end;

procedure TJanuaFormModel.SetNameJ(const Value: TComponentName);
begin
  self.Name := Value;
end;

procedure TJanuaFormModel.SetOnActivate(const Value: TNotifyEvent);
begin

end;

procedure TJanuaFormModel.SetOnClose(const Value: TJanuaCloseEvent);
begin

end;

procedure TJanuaFormModel.SetOnCloseQueryJanua(const Value: TJanuaCloseQueryEvent);
begin

end;

procedure TJanuaFormModel.SetOnCreate(const Value: TNotifyEvent);
begin

end;

procedure TJanuaFormModel.SetOnDeactivate(const Value: TNotifyEvent);
begin

end;

procedure TJanuaFormModel.SetOnDestroy(const Value: TNotifyEvent);
begin

end;

procedure TJanuaFormModel.SetOnFocusChanged(const Value: TNotifyEvent);
begin

end;

procedure TJanuaFormModel.SetOnHide(const Value: TNotifyEvent);
begin

end;

procedure TJanuaFormModel.SetOnKeyDown(const Value: TJanuaKeyEvent);
begin

end;

procedure TJanuaFormModel.SetOnKeyUp(const Value: TJanuaKeyEvent);
begin

end;

procedure TJanuaFormModel.SetOnMouseDown(const Value: TJanuaMouseEvent);
begin

end;

procedure TJanuaFormModel.SetOnMouseMove(const Value: TJanuaMouseMoveEvent);
begin

end;

procedure TJanuaFormModel.SetOnMouseUp(const Value: TJanuaMouseEvent);
begin

end;

procedure TJanuaFormModel.SetOnMouseWheel(const Value: TJanuaMouseWheelEvent);
begin

end;

procedure TJanuaFormModel.SetOnResize(const Value: TNotifyEvent);
begin

end;

procedure TJanuaFormModel.SetOnSaveState(const Value: TNotifyEvent);
begin

end;

procedure TJanuaFormModel.SetOnShow(const Value: TNotifyEvent);
begin

end;

procedure TJanuaFormModel.SetOnVirtualKeyboardHidden(const Value: TVirtualKeyboardEvent);
begin

end;

procedure TJanuaFormModel.SetOnVirtualKeyboardShown(const Value: TVirtualKeyboardEvent);
begin

end;

procedure TJanuaFormModel.SetPositionJ(const Value: TJanuaFormPosition);
begin

end;

procedure TJanuaFormModel.SetShowHint(const Value: Boolean);
begin

end;

procedure TJanuaFormModel.SetTabOrder(Value: TTabOrder);
begin

end;

procedure TJanuaFormModel.SetTabStop(Value: Boolean);
begin

end;

procedure TJanuaFormModel.SetTop(const Value: Integer);
begin

end;

procedure TJanuaFormModel.SetTransparency(const Value: Boolean);
begin

end;

procedure TJanuaFormModel.SetVisible(const Value: Boolean);
begin

end;

procedure TJanuaFormModel.SetWidth(const Value: Integer);
begin

end;

procedure TJanuaFormModel.SetWindowState(const Value: TWindowState);
begin

end;

procedure TJanuaFormModel.UnBind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string);
begin

end;



end.
