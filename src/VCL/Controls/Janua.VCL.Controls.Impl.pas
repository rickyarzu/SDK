unit Janua.VCL.Controls.Impl;

interface

uses

  System.Classes, System.UITypes, VCL.Forms, Janua.Controls.Intf, Janua.Core.Types;

type
  TJanuaForm = class(TJanuaCustomForm)
  protected
    // ************************** Janua Procedures *********************************************************
    function GetOnMouseDownJanua: TJanuaMouseEvent;
    procedure SetOnMouseDownJanua(const Value: TJanuaMouseEvent);
    function GetOnMouseMoveJanua: TJanuaMouseMoveEvent;
    procedure SetOnMouseMoveJanua(const Value: TJanuaMouseMoveEvent);
    function GetOnMouseUpJanua: TJanuaMouseEvent;
    procedure SetOnMouseUpJanua(const Value: TJanuaMouseEvent);
    function GetOnMouseWheelJanua: TJanuaMouseWheelEvent;
    procedure SetOnMouseWheelJanua(const Value: TJanuaMouseWheelEvent);
    function GetFormStyleJanua: TJanuaFormStyle;
    procedure SetFormStyleJanua(Value: TJanuaFormStyle);
    function GetOnCloseQueryJanua: TJanuaCloseQueryEvent;
    procedure SetOnCloseQueryJanua(const Value: TJanuaCloseQueryEvent);
    function GetParentFormJanua: IJanuaForm;
    function GetOnKeyDownJanua: TJanuaKeyEvent;
    procedure SetOnKeyDownJanua(const Value: TJanuaKeyEvent);
    function GetOnKeyUpJnau: TJanuaKeyEvent;
    procedure SetOnKeyUpJanua(const Value: TJanuaKeyEvent);
    function GetAsComponent: TComponent;
    procedure SetAsComponent(const Value: TComponent);
    procedure SetBorderStyleJ(const Value: TJanuaFormBorderStyle);
    procedure SetPositionJ(const Value: TJanuaFormPosition);
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
    procedure SetBiDiMode(const Value: TBiDiMode);
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
    function GetModalResult: TModalResult;
    procedure SetModalResult(const Value: TModalResult);
    function GetShowHint: Boolean;
    procedure SetShowHint(const Value: Boolean);
  published
    property ParentFormJ: IJanuaForm read GetParentFormJanua;
    property FormStyleJ: TJanuaFormStyle read GetFormStyleJanua write SetFormStyleJanua;
    property OnKeyUpJ: TJanuaKeyEvent read GetOnKeyUpJnau write SetOnKeyUpJanua;
    property OnMouseDownJ: TJanuaMouseEvent read GetOnMouseDownJanua write SetOnMouseDownJanua;
    property OnMouseMoveJ: TJanuaMouseMoveEvent read GetOnMouseMoveJanua write SetOnMouseMoveJanua;
    property OnMouseUpJ: TJanuaMouseEvent read GetOnMouseUpJanua write SetOnMouseUpJanua;
    property OnCloseQueryJ: TJanuaCloseQueryEvent read GetOnCloseQueryJanua write SetOnCloseQueryJanua;
    property OnMouseWheelJ: TJanuaMouseWheelEvent read GetOnMouseWheelJanua write SetOnMouseWheelJanua;
    property OnKeyDownJanua: TJanuaKeyEvent read GetOnKeyDownJanua write SetOnKeyDownJanua;
    property AsComponent: TComponent read GetAsComponent write SetAsComponent;
  end;

implementation

{ TJanuaForm }

function TJanuaForm.GetActive: Boolean;
begin

end;

function TJanuaForm.GetAsComponent: TComponent;
begin

end;

function TJanuaForm.GetCaption: string;
begin

end;

function TJanuaForm.GetClientHeight: Integer;
begin

end;

function TJanuaForm.GetClientWidth: Integer;
begin

end;

function TJanuaForm.GetFormStyleJanua: TJanuaFormStyle;
begin

end;

function TJanuaForm.GetHeight: Integer;
begin

end;

function TJanuaForm.GetLeft: Integer;
begin

end;

function TJanuaForm.GetModalResult: TModalResult;
begin

end;

function TJanuaForm.GetOnActivate: TNotifyEvent;
begin

end;

function TJanuaForm.GetOnClose: TJanuaCloseEvent;
begin

end;

function TJanuaForm.GetOnCloseQueryJanua: TJanuaCloseQueryEvent;
begin

end;

function TJanuaForm.GetOnCreate: TNotifyEvent;
begin

end;

function TJanuaForm.GetOnDeactivate: TNotifyEvent;
begin

end;

function TJanuaForm.GetOnDestroy: TNotifyEvent;
begin

end;

function TJanuaForm.GetOnFocusChanged: TNotifyEvent;
begin

end;

function TJanuaForm.GetOnHide: TNotifyEvent;
begin

end;

function TJanuaForm.GetOnKeyDownJanua: TJanuaKeyEvent;
begin

end;

function TJanuaForm.GetOnKeyUpJnau: TJanuaKeyEvent;
begin

end;

function TJanuaForm.GetOnMouseDownJanua: TJanuaMouseEvent;
begin

end;

function TJanuaForm.GetOnMouseMoveJanua: TJanuaMouseMoveEvent;
begin

end;

function TJanuaForm.GetOnMouseUpJanua: TJanuaMouseEvent;
begin

end;

function TJanuaForm.GetOnMouseWheelJanua: TJanuaMouseWheelEvent;
begin

end;

function TJanuaForm.GetOnResize: TNotifyEvent;
begin

end;

function TJanuaForm.GetOnSaveState: TNotifyEvent;
begin

end;

function TJanuaForm.GetOnShow: TNotifyEvent;
begin

end;

function TJanuaForm.GetOnVirtualKeyboardHidden: TVirtualKeyboardEvent;
begin

end;

function TJanuaForm.GetOnVirtualKeyboardShown: TVirtualKeyboardEvent;
begin

end;

function TJanuaForm.GetParentFormJanua: IJanuaForm;
begin

end;

function TJanuaForm.GetShowHint: Boolean;
begin

end;

function TJanuaForm.GetTabOrder: TTabOrder;
begin

end;

function TJanuaForm.GetTabStop: Boolean;
begin

end;

function TJanuaForm.GetTop: Integer;
begin

end;

function TJanuaForm.GetTransparency: Boolean;
begin

end;

function TJanuaForm.GetVisible: Boolean;
begin

end;

function TJanuaForm.GetWidth: Integer;
begin

end;

function TJanuaForm.GetWindowState: TWindowState;
begin

end;

procedure TJanuaForm.SetActive(const Value: Boolean);
begin

end;

procedure TJanuaForm.SetAsComponent(const Value: TComponent);
begin

end;

procedure TJanuaForm.SetBiDiMode(const Value: TBiDiMode);
begin

end;

procedure TJanuaForm.SetBorderIcons(const Value: TBorderIcons);
begin

end;

procedure TJanuaForm.SetBorderStyleJ(const Value: TJanuaFormBorderStyle);
begin

end;

procedure TJanuaForm.SetCaption(const Value: string);
begin

end;

procedure TJanuaForm.SetClientHeight(const Value: Integer);
begin

end;

procedure TJanuaForm.SetClientWidth(const Value: Integer);
begin

end;

procedure TJanuaForm.SetCursor(const Value: TCursor);
begin

end;

procedure TJanuaForm.SetFormStyleJanua(Value: TJanuaFormStyle);
begin

end;

procedure TJanuaForm.SetHeight(const Value: Integer);
begin

end;

procedure TJanuaForm.SetLeft(const Value: Integer);
begin

end;

procedure TJanuaForm.SetModalResult(const Value: TModalResult);
begin

end;

procedure TJanuaForm.SetOnActivate(const Value: TNotifyEvent);
begin

end;

procedure TJanuaForm.SetOnClose(const Value: TJanuaCloseEvent);
begin

end;

procedure TJanuaForm.SetOnCloseQueryJanua(const Value: TJanuaCloseQueryEvent);
begin

end;

procedure TJanuaForm.SetOnCreate(const Value: TNotifyEvent);
begin

end;

procedure TJanuaForm.SetOnDeactivate(const Value: TNotifyEvent);
begin

end;

procedure TJanuaForm.SetOnDestroy(const Value: TNotifyEvent);
begin

end;

procedure TJanuaForm.SetOnFocusChanged(const Value: TNotifyEvent);
begin

end;

procedure TJanuaForm.SetOnHide(const Value: TNotifyEvent);
begin

end;

procedure TJanuaForm.SetOnKeyDownJanua(const Value: TJanuaKeyEvent);
begin

end;

procedure TJanuaForm.SetOnKeyUpJanua(const Value: TJanuaKeyEvent);
begin

end;

procedure TJanuaForm.SetOnMouseDownJanua(const Value: TJanuaMouseEvent);
begin

end;

procedure TJanuaForm.SetOnMouseMoveJanua(const Value: TJanuaMouseMoveEvent);
begin

end;

procedure TJanuaForm.SetOnMouseUpJanua(const Value: TJanuaMouseEvent);
begin

end;

procedure TJanuaForm.SetOnMouseWheelJanua(const Value: TJanuaMouseWheelEvent);
begin

end;

procedure TJanuaForm.SetOnResize(const Value: TNotifyEvent);
begin

end;

procedure TJanuaForm.SetOnSaveState(const Value: TNotifyEvent);
begin

end;

procedure TJanuaForm.SetOnShow(const Value: TNotifyEvent);
begin

end;

procedure TJanuaForm.SetOnVirtualKeyboardHidden(const Value: TVirtualKeyboardEvent);
begin

end;

procedure TJanuaForm.SetOnVirtualKeyboardShown(const Value: TVirtualKeyboardEvent);
begin

end;

procedure TJanuaForm.SetPositionJ(const Value: TJanuaFormPosition);
begin

end;

procedure TJanuaForm.SetShowHint(const Value: Boolean);
begin

end;

procedure TJanuaForm.SetTabOrder(Value: TTabOrder);
begin

end;

procedure TJanuaForm.SetTabStop(Value: Boolean);
begin

end;

procedure TJanuaForm.SetTop(const Value: Integer);
begin

end;

procedure TJanuaForm.SetTransparency(const Value: Boolean);
begin

end;

procedure TJanuaForm.SetVisible(const Value: Boolean);
begin

end;

procedure TJanuaForm.SetWidth(const Value: Integer);
begin

end;

procedure TJanuaForm.SetWindowState(const Value: TWindowState);
begin

end;

end.
