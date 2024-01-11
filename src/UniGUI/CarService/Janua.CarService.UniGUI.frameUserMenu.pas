unit Janua.CarService.UniGUI.frameUserMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, uniImageList, uniButton, uniBitBtn, UniFSButton;

type
  TframeCarServiceUniGUIUserMenu = class(TUniFrame)
    cntrMenu: TUniContainerPanel;
    imgl32: TUniNativeImageList;
    btnNewBooking: TUniFSButton;
  private
    FOnNewBookingClick: TNotifyEvent;
    procedure SetOnNewBookingClick(const Value: TNotifyEvent);
    { Private declarations }
  public
    { Public declarations }
    property OnNewBookingClick: TNotifyEvent read FOnNewBookingClick write SetOnNewBookingClick;
  end;

implementation

{$R *.dfm}



{ TframeCarServiceUniGUIUserMenu }

procedure TframeCarServiceUniGUIUserMenu.SetOnNewBookingClick(const Value: TNotifyEvent);
begin
  FOnNewBookingClick := Value;
end;

end.
