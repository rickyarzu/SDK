unit Janua.CarService.UniGUI.frameCustomerSelection;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Spring.Collections,
  // Controls
  Vcl.Forms, Vcl.Controls, uniMultiItem, uniComboBox,
  // UniGUI
  uniLabel, uniGUITypes, uniGUIAbstractClasses, uniGUIBaseClasses, uniGUIClasses, uniDateTimePicker,
  uniGUIFrame, uniDBComboBox, uniDBLookupComboBox, uniEdit, uniMemo,
  // Januaproject
  Janua.UniGUI.Interposers, Janua.CarService.UniGUI.frameSlotSelection, JOrm.CarService.Booking.Intf;

type
  TframeUniGUICarServiceCustomerSelection = class(TUniFrame)
    cboAnagraphCustomers: TUniDBLookupComboBox;
    edtFirstName: TUniEdit;
    edtEdLastName: TUniEdit;
    unmFullAddress: TUniMemo;
    lbCustomerHeading: TUniLabel;
  private
    FBooking: IBookingHeadView;
    procedure SetBooking(const Value: IBookingHeadView);
    { Private declarations }
  public
    { Public declarations }
    property Booking: IBookingHeadView read FBooking write SetBooking;
  end;

implementation

{$R *.dfm}

{ TframeUniGUICarServiceCustomerSelection }

procedure TframeUniGUICarServiceCustomerSelection.SetBooking(const Value: IBookingHeadView);
begin
  FBooking := Value;
end;

end.
