unit uframeFMXMobileFinalization;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // Frames
  uframeFMXAnagraphPersonalMobile, uframeFMXMobilePrescription, uframeFMXMobileSummary,
  // Janua
  Janua.Core.Classes, Janua.Core.Functions, Janua.Core.Health, Janua.Core.Cloud, Janua.FMX.HealthThreads,
  Janua.Core.RESTClient.Health, Janua.FMX.Forms, Janua.FMX.Geocoding,
  // Repository
  // uClientModuleHealthREST,
  // FGX    // libreria componenti Firemonkey di
  // FGX.ProgressDialog,
  // Tms
  FMX.TMSWebGMapsWebBrowser, FMX.TMSWebGMaps, FMX.TMSWebOSMapsWebBrowser, FMX.TMSWebOSMaps, FMX.TMSButton,
  // FMX
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.DateTimeCtrls,
  FMX.ScrollBox, FMX.Memo, FMX.Controls.Presentation, FMX.Objects, FMX.TabControl;

type
  TframeFMXMobileFinalization = class(TFrame)
    TabControlFinalization: TTabControl;
    // Frames
    frameFMXMobilePrescription1: TframeFMXMobilePrescription; // Tab12Prescription
    frameFMXAnagraphPersonalMobile1: TframeFMXAnagraphPersonalMobile; // Tab13Person
    frameFMXMobileSummary1: TframeFMXMobileSummary; // Tab14End
    // Tab Controls ....................................................................................................
    Tab11Notes: TTabItem;
    Tab12Prescription: TTabItem;
    Tab13Person: TTabItem;
    Tab14End: TTabItem;
    // Components ......................................................................................................
    Text2: TText;
    pnlBookingNotes: TPanel;
    lbBookingNotes: TLabel;
    memBookingNotes: TMemo;
    pnlBookingUntil: TPanel;
    lbBookingUntil: TLabel;
    dateBookingUntil: TDateEdit;
    pnlBookingSince: TPanel;
    lbBookingSince: TLabel;
    dateBookingSince: TDateEdit;
    btnFinalPrescription: TButton;
    btnFinalPerson: TButton;
    btnFinalBooking: TButton;
    btnFinalUndoBooking: TButton;
    Text3: TText;
    procedure btnFinalPrescriptionClick(Sender: TObject);
    procedure frameFMXMobilePrescription1btnSavePrescriptionClick(Sender: TObject);
    procedure btnFinalBookingClick(Sender: TObject);
    procedure btnFinalizeClick(Sender: TObject);
    procedure frameFMXAnagraphPersonalMobile1btnUndoClick(Sender: TObject);
    procedure frameFMXAnagraphPersonalMobile1btnSave2Click(Sender: TObject);
    procedure btnUndoClick(Sender: TObject);
    procedure frameFMXAnagraphPersonalMobile1btnSave1Click(Sender: TObject);
    procedure btnFinalPersonClick(Sender: TObject);
    procedure TabControlFinalizationChange(Sender: TObject);
    procedure frameFMXMobilePrescription1btnNextClick(Sender: TObject);
    procedure frameFMXMobileSummary1btnUndoClick(Sender: TObject);
    procedure frameFMXMobileSummary1btnFinalizeClick(Sender: TObject);
    procedure dateBookingUntilEnter(Sender: TObject);
  private
    FJanuaRESTHealthClient: TJanuaRESTHealthClient;
    FJanuaFMXFormManager: TJanuaFMXFormManager;
    FChecked: boolean;
    function GetFirst: boolean;
    procedure SetJanuaRESTHealthClient(const Value: TJanuaRESTHealthClient);
    procedure SetChecked(const Value: boolean);
    procedure SetJanuaFMXFormManager(const Value: TJanuaFMXFormManager);
    { Private declarations }
  public
    { Public declarations }
    procedure Previous;
    procedure Next;
    procedure First;
    procedure Default;
    procedure SetupFormManager;
  public
    property IsFirst: boolean read GetFirst;
    property JanuaRESTHealthClient: TJanuaRESTHealthClient read FJanuaRESTHealthClient write SetJanuaRESTHealthClient;
    property Checked: boolean read FChecked write SetChecked;
    property JanuaFMXFormManager: TJanuaFMXFormManager read FJanuaFMXFormManager write SetJanuaFMXFormManager;
  end;

implementation

{$R *.fmx}
{ TframeFMXMobileFinalization }

procedure TframeFMXMobileFinalization.btnFinalBookingClick(Sender: TObject);
begin
  if not Assigned(FJanuaRESTHealthClient) then
    raise Exception.Create('frameFMXMobileFinalization.btnFinalBookingClick FJanuaRESTHealthClient not set ');
  self.TabControlFinalization.Last(TTAbTransition.Slide);
  self.frameFMXMobileSummary1.JanuaRESTHealthClient := self.FJanuaRESTHealthClient;
  self.frameFMXMobileSummary1.RefreshBooking;
  // self.frameFMXMobileSummary1.RefreshBooking;
end;

procedure TframeFMXMobileFinalization.btnFinalPersonClick(Sender: TObject);
begin
  TabControlFinalization.ActiveTab := self.Tab13Person
end;

procedure TframeFMXMobileFinalization.btnFinalPrescriptionClick(Sender: TObject);
begin
  self.frameFMXMobilePrescription1.Default;
  self.TabControlFinalization.Next(TTAbTransition.Slide)
end;

procedure TframeFMXMobileFinalization.btnUndoClick(Sender: TObject);
begin
  FJanuaRESTHealthClient.Booking.Clear;
  self.Previous;
end;

procedure TframeFMXMobileFinalization.dateBookingUntilEnter(Sender: TObject);
begin
  if dateBookingUntil.Date = 0.0 then
    self.dateBookingUntil.Date := Date() + 60;
end;

procedure TframeFMXMobileFinalization.btnFinalizeClick(Sender: TObject);
begin
  if frameFMXMobilePrescription1.JanuaITHealthPrescription.Checked then
  begin
    FJanuaRESTHealthClient.Prescription := frameFMXMobilePrescription1.JanuaITHealthPrescription;
  end;

  FChecked := FJanuaRESTHealthClient.BookingFinalize;

  if FChecked then
  begin
    ShowMessage
      ('Richiesta inviata correttamente a Dico33 entro 24 ore lavorative verrete contattato per scegliere il vostro appuntamento');
    self.FJanuaRESTHealthClient.GetNotifications;
  end
  else
  begin
    ShowMessage('Attenzione Errore di prenotazione: ' + FJanuaRESTHealthClient.LastErrorMessage);
  end;

end;

procedure TframeFMXMobileFinalization.Default;
begin
  // here all settings are taken to Default
  // First Page and Default Values in Every component.
  // Also sub Frames Default should be called
  TabControlFinalization.ActiveTab := self.Tab11Notes;
  SetupFormManager;
  FChecked := False;
  self.dateBookingSince.IsEmpty := True;
  dateBookingUntil.IsEmpty := True;
  // self.dateBookingUntil.Date := Now() + 90;
  frameFMXMobilePrescription1.Default;

  self.dateBookingSince.Date := Date() + 3;
  self.dateBookingUntil.Date := Date() + 60;

  self.dateBookingSince.IsEmpty := True;
  self.dateBookingUntil.IsEmpty := True;

  self.frameFMXMobilePrescription1.edPrescriptionDate.Date := Date() - 3;
end;

procedure TframeFMXMobileFinalization.First;
begin
  if not IsFirst then
    TabControlFinalization.First(TTAbTransition.Slide)
end;

procedure TframeFMXMobileFinalization.frameFMXAnagraphPersonalMobile1btnSave1Click(Sender: TObject);
begin
  frameFMXAnagraphPersonalMobile1.btnSave1Click(Sender);
  if frameFMXAnagraphPersonalMobile1.Checked then
  begin
    FJanuaRESTHealthClient.Relative := self.frameFMXAnagraphPersonalMobile1.Anagraph;
    self.Previous;
  end
  else
  begin
    ShowMessage(frameFMXAnagraphPersonalMobile1.LasErrorMessage);
  end;

end;

procedure TframeFMXMobileFinalization.frameFMXAnagraphPersonalMobile1btnSave2Click(Sender: TObject);
begin
  frameFMXAnagraphPersonalMobile1.btnSave1Click(Sender);
  if frameFMXAnagraphPersonalMobile1.Checked then
  begin
    FJanuaRESTHealthClient.Relative := self.frameFMXAnagraphPersonalMobile1.Anagraph;
  end;
  self.Previous;
end;

procedure TframeFMXMobileFinalization.frameFMXAnagraphPersonalMobile1btnUndoClick(Sender: TObject);
begin
  frameFMXAnagraphPersonalMobile1.btnUndoClick(Sender);
  self.Previous;
end;

procedure TframeFMXMobileFinalization.frameFMXMobilePrescription1btnNextClick(Sender: TObject);
begin
  frameFMXMobilePrescription1.btnNextClick(Sender);
end;

procedure TframeFMXMobileFinalization.frameFMXMobilePrescription1btnSavePrescriptionClick(Sender: TObject);
begin
  frameFMXMobilePrescription1.btnSavePrescriptionClick(Sender);
  if frameFMXMobilePrescription1.Checked then
  begin
    // self.FJanuaRESTHealthClient.Booking.HasPrescription := True;
    FJanuaRESTHealthClient.Prescription := frameFMXMobilePrescription1.JanuaITHealthPrescription;
    self.First;
  end;

end;

procedure TframeFMXMobileFinalization.frameFMXMobileSummary1btnFinalizeClick(Sender: TObject);
begin
  if frameFMXMobilePrescription1.JanuaITHealthPrescription.Checked then
  begin
    FJanuaRESTHealthClient.Prescription := frameFMXMobilePrescription1.JanuaITHealthPrescription;
  end;
  FChecked := FJanuaRESTHealthClient.BookingFinalize;
  if FChecked then
  begin
    ShowMessage
      ('Richiesta inviata correttamente a Dico33 entro 24 ore lavorative verrete contattato per scegliere il vostro appuntamento');
    self.FJanuaRESTHealthClient.GetNotifications;
  end
  else
  begin
    ShowMessage('Attenzione Errore di prenotazione: ' + FJanuaRESTHealthClient.LastErrorMessage);
  end;
end;

procedure TframeFMXMobileFinalization.frameFMXMobileSummary1btnUndoClick(Sender: TObject);
begin
  self.Previous;
end;

function TframeFMXMobileFinalization.GetFirst: boolean;
begin
  // indica se siamo al primo Tab del nostro Frame
  Result := TabControlFinalization.ActiveTab = self.Tab11Notes;
end;

procedure TframeFMXMobileFinalization.Next;
begin
  // funzione disattivata in assenza di navigazione interna in quanto gestita dai pulsanti .................
  SetupFormManager
end;

procedure TframeFMXMobileFinalization.Previous;
begin
  if not IsFirst then
    TabControlFinalization.First(TTAbTransition.Slide)
end;

procedure TframeFMXMobileFinalization.SetChecked(const Value: boolean);
begin
  FChecked := Value;
end;

procedure TframeFMXMobileFinalization.SetJanuaFMXFormManager(const Value: TJanuaFMXFormManager);
begin
  FJanuaFMXFormManager := Value;
  self.frameFMXMobilePrescription1.JanuaFMXFormManager := FJanuaFMXFormManager;
  self.frameFMXAnagraphPersonalMobile1.JanuaFMXFormManager := FJanuaFMXFormManager;
end;

procedure TframeFMXMobileFinalization.SetJanuaRESTHealthClient(const Value: TJanuaRESTHealthClient);
begin
  FJanuaRESTHealthClient := Value;
  frameFMXAnagraphPersonalMobile1.JanuaRESTHealthClient := Value;
  frameFMXMobileSummary1.JanuaRESTHealthClient := Value;
  frameFMXAnagraphPersonalMobile1.JanuaRESTHealthClient := Value;
end;

procedure TframeFMXMobileFinalization.SetupFormManager;
begin
  // While Moving the SetupFormManager should be Called to check if Everything is OK.
  if self.TabControlFinalization.ActiveTab = self.Tab11Notes then
    self.FJanuaFMXFormManager.Active := False
  else if self.TabControlFinalization.ActiveTab = self.Tab12Prescription then
    self.frameFMXMobilePrescription1.SetupFormManager
  else if self.TabControlFinalization.ActiveTab = self.Tab13Person then
    self.frameFMXAnagraphPersonalMobile1.SetupFormManager
  else if self.TabControlFinalization.ActiveTab = self.Tab14End then
    self.FJanuaFMXFormManager.Active := False
  else
    self.FJanuaFMXFormManager.Active := False
end;

procedure TframeFMXMobileFinalization.TabControlFinalizationChange(Sender: TObject);
begin
  self.SetupFormManager;
end;

end.
