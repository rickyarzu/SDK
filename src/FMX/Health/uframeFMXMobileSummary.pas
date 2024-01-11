unit uframeFMXMobileSummary;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // JanuaProject
  Janua.Core.Classes, Janua.Core.Functions, Janua.Core.Health, Janua.Core.Anagraph, Janua.Anagraph.Types,
  Janua.Core.RESTClient.Health,
  //
  FMX.ListView.Types, FMX.Forms,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView, FMX.StdCtrls, FMX.Objects,
  FMX.Controls.Presentation, FMX.Types, FMX.Controls, FMX.Layouts;

type
  TframeFMXMobileSummary = class(TFrame)
    VertScrollBox1: TVertScrollBox;
    Layout1: TLayout;
    btnFinalize: TButton;
    btnUndo: TButton;
    Label11: TLabel;
    ListViewInstitutes: TListView;
    Panel1: TPanel;
    Label1: TLabel;
    SwitchRelative: TSwitch;
    Panel7: TPanel;
    lbBooking: TLabel;
    txtPrestazione: TText;
    Label10: TLabel;
    txtFirstName: TLabel;
    Panel8: TPanel;
    Label12: TLabel;
    SwitchHasPrescription: TSwitch;
    Panel9: TPanel;
    txtNotes: TText;
    Label13: TLabel;
  private
    FJanuaRESTHealthClient: TJanuaRESTHealthClient;
    procedure SetJanuaRESTHealthClient(const Value: TJanuaRESTHealthClient);
    { Private declarations }
  public
    procedure RefreshBooking;
  public
    { Public declarations }
    property JanuaRESTHealthClient: TJanuaRESTHealthClient read FJanuaRESTHealthClient write SetJanuaRESTHealthClient;
  end;

implementation

{$R *.fmx}
{ TframeFMXMobileSummary }

procedure TframeFMXMobileSummary.RefreshBooking;
var
  a: TJanuaAnagraphRecord;
begin
  if not Assigned(FJanuaRESTHealthClient) then
    raise Exception.Create('frameFMXMobileSummary.RefreshBooking JanuaRESTHealthClient not Assigned ');

  ListViewInstitutes.Items.Clear;
  for a in FJanuaRESTHealthClient.Booking.Institutes.Items do
  begin
    // TMSFMXWebGMaps2.Markers.Add(a.Latitude, a.Longitude, a.LastName, '', False, true, False, False, true, 0);
    with ListViewInstitutes.Items.Add do
    begin
      Data['Text1'] := a.LastName;
      Data['Text2'] := a.Address.AddressFull;
    end;
  end;
  {
    -- 1 - quando viene inserita la ricetta alla pressione del pulsante occorre salvarla su JanuaHealthClient....
    -- 2 - verificare che l'utente del booking Profile sia il profile di ClientRecord............................
    -- 3 - Premendo Registra Ricetta accodare la ricetta al Booking centrale e  attivato il check HasPrescription
    4 - Premendo salva per il Relative attivare il check Relative e accodarlo se dati sono validati ............
    5 - al display dei dati del prenotato se attivo il flag relative sostituire i dati dell'altra persona ......
  }
  self.lbBooking.Text := 'Prenotazione Numero: ' + FJanuaRESTHealthClient.Booking.id.ToString;
  SwitchRelative.IsChecked := FJanuaRESTHealthClient.Booking.HasRelative;
  SwitchHasPrescription.IsChecked := FJanuaRESTHealthClient.Booking.HasPrescription;
  self.txtNotes.Text := FJanuaRESTHealthClient.Booking.notes;
  // se la prenotazione la faccio a nome di un'altra persona sostituisco i dati dell'altra persona in elenco.
  if FJanuaRESTHealthClient.Booking.HasRelative then
    txtFirstName.Text := FJanuaRESTHealthClient.Booking.Relative.FirstName +
      FJanuaRESTHealthClient.Booking.Relative.LastName
  else
    self.txtFirstName.Text := FJanuaRESTHealthClient.Booking.UserProfile.FirstName +
      FJanuaRESTHealthClient.Booking.UserProfile.LastName;
  if FJanuaRESTHealthClient.Booking.Service.Title > '' then
    self.txtPrestazione.Text := FJanuaRESTHealthClient.Booking.Service.Title
  else
    self.txtPrestazione.Text := FJanuaRESTHealthClient.Booking.Search.Search;
end;

procedure TframeFMXMobileSummary.SetJanuaRESTHealthClient(const Value: TJanuaRESTHealthClient);
begin
  self.FJanuaRESTHealthClient := Value;
  if Assigned(FJanuaRESTHealthClient) then
    self.RefreshBooking;

end;

end.

