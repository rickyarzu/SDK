unit Janua.Forms.Types;

interface

uses System.Types, System.UITypes, Janua.Core.Types;

type
  TJanuaFormBorderIcon = (jbiSystemMenu, jbiMinimize, jbiMaximize, jbiHelp);

  TJanuaFormBorderIcons = set of TJanuaFormBorderIcon;

  TJanuaModalResult = (jmrNone, jmrOK, jmrCancel, jmrIgnore);

type
  TJanuaFormStyle = (jfsNormal, jfsPopup, jfsStayOnTop, jfsMDIChild, jfsMDIForm);

  TJanuaCloseEvent = procedure(Sender: TObject; var Action: TCloseAction) of object;
  TJanuaCloseQueryEvent = procedure(Sender: TObject; var CanClose: Boolean) of object;

  TJanuaFormBorderStyle = (jbtNone, jbtSingle, jbtSizeable, jbtToolWindow, jbtSizeToolWin);
  TJanuaFormPosition = (Designed, Default, DefaultPosOnly, DefaultSizeOnly, ScreenCenter, DesktopCenter, MainFormCenter,
    OwnerFormCenter);

  TJanuaTouch = record
    Location: TPointF;
  end;

  TJanuaTouches = array of TJanuaTouch;

  TJanuaTouchAction = (None, Up, Down, Move, Cancel);
  TJanuaTouchActions = set of TJanuaTouchAction;

  TJanuaProcessTickEvent = procedure(Sender: TObject; time, deltaTime: Single) of object;

  // Mobile Specific Events need to be Translated to Janua Intermediate Framework
  TVirtualKeyboardEvent = procedure(Sender: TObject; KeyboardVisible: Boolean; const Bounds: TRect) of object;
  TTapEvent = procedure(Sender: TObject; const Point: TPointF) of object;
  TJanuaTouchEvent = procedure(Sender: TObject; const Touches: TJanuaTouches; const Action: TJanuaTouchAction)
    of object;

implementation

end.
