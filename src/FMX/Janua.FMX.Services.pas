unit Janua.FMX.Services;

interface

uses
  FMX.Platform, FMX.PhoneDialer, Janua.Core.Classes, System.Classes;

type
  TJanuaDialer = class(TJanuaCoreComponent)
  private // User declarations
    PhoneDialerService: IFMXPhoneDialerService;
    FPhoneToCall: string;
    procedure SetCarrierName(const Value: string);
    procedure SetISOCountryCode(const Value: string);
    function GetCarrierName: string;
    function GetISOCountryCode: string;
    procedure SetPhoneToCall(const Value: string);
  public
    constructor Create(AOwner: TComponent); override;
    procedure MakeACall; overload;
    procedure MakeACall(aNumber: string); overload;
    procedure AskACall(aNumber: string); overload;
    procedure AskACall; overload;
  published
    property CarrierName: string read GetCarrierName write SetCarrierName;
    property ISOCountryCode: string read GetISOCountryCode write SetISOCountryCode;
    property PhoneToCall: string read FPhoneToCall write SetPhoneToCall;
  end;

implementation

uses
  System.UITypes, FMX.DialogService, System.SysUtils;

{ TJanuaDialer }

procedure TJanuaDialer.AskACall(aNumber: string);
begin
  self.SetPhoneToCall(aNumber);
  self.AskACall;
end;

procedure TJanuaDialer.AskACall;
begin
  { MessageDialog(const AMessage: string; const ADialogType: TMsgDlgType;
    const AButtons: TMsgDlgButtons; const ADefaultButton: TMsgDlgBtn; const AHelpCtx: THelpContext;
    const ACloseDialogProc: TInputCloseDialogProc);
  }
  TDialogService.MessageDialog('Volete chiamare il numero:' + self.FPhoneToCall + '?' { AMessage: string } ,
    TMsgDlgType.mtInformation { const  ADialogType: TMsgDlgType } ,
    [System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo] { const AButtons: TMsgDlgButtons } ,
    System.UITypes.TMsgDlgBtn.mbYes { ADefaultButton: TMsgDlgBtn } , 0 { AHelpCtx: THelpContext } ,
    procedure(const AResult: TModalResult) { ACloseDialogProc: }
    begin
      case AResult of
        { Detect which button was pushed and show a different message }
        mrYes:
          begin
            self.MakeACall
          end;
        mrNo:
          begin
            // pressed no
          end;
      end;
    end);
  // code here would get executed right away
end;

constructor TJanuaDialer.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  TPlatformServices.Current.SupportsPlatformService(IFMXPhoneDialerService, IInterface(PhoneDialerService));
end;

function TJanuaDialer.GetCarrierName: string;
begin
  if Assigned(PhoneDialerService) then
    Result := PhoneDialerService.GetCarrier.GetCarrierName
end;

function TJanuaDialer.GetISOCountryCode: string;
begin
  if Assigned(PhoneDialerService) then
    Result := PhoneDialerService.GetCarrier.GetISOCountryCode
end;

procedure TJanuaDialer.MakeACall;
begin
  if Assigned(PhoneDialerService) then
  begin
    { if the Telephone Number is entered in the edit box then make the call, else
      display an error message }
    if FPhoneToCall <> '' then
      PhoneDialerService.Call(FPhoneToCall)
    else
    begin
      raise Exception.Create('Phone not set');
    end;
  end;
end;

procedure TJanuaDialer.MakeACall(aNumber: string);
begin
  self.SetPhoneToCall(aNumber);
  self.MakeACall
end;

procedure TJanuaDialer.SetCarrierName(const Value: string);
begin

end;

procedure TJanuaDialer.SetISOCountryCode(const Value: string);
begin

end;

procedure TJanuaDialer.SetPhoneToCall(const Value: string);
begin
  FPhoneToCall := Value;
end;

end.
