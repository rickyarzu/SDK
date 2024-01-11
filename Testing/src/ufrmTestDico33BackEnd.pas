unit ufrmTestDico33BackEnd;

interface

uses
  // system
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.ImageList,
  // VCL
  Vcl.Graphics, Vcl.ImgList, Vcl.Menus, Vcl.DBCGrids, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Imaging.pngimage,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, AdvPanel, AdvGlowButton, AdvBadge, AdvOfficeImage,
  // Tms
  UWebGMapsLookupEdit, JvExControls, JvSpeedButton, AdvToolBar, AdvToolBarExt,
  AdvMenus, AdvStickyPopupMenu, CurvyControls, Shader, AdvMenuStylers, UWebGMapsCommon, UWebGMaps,
  AdvSmoothButton, Vcl.StdCtrls, AdvEdit, udmTestHealthBooking, AdvAppStyler,
  AdvRichEditorToolBar, AdvScrollControl, AdvRichEditorBase, AdvRichEditor, ufrmTestRicettaSSN, AdvOfficeButtons,
  // Devart & DB Controls ....
  Uni, Data.DB, CRGrid,
  // Janua
  Janua.Core.Health, Janua.Vcl.Dialogs, Janua.Core.Cloud, Janua.Core.Functions, Janua.Core.Classes,
  Janua.Core.Customcontrols, Janua.Vcl.Functions,

  // Forms
  Vcl.Mask, JvExMask, JvToolEdit, ufrmTestingLogs, Vcl.Samples.Spin;

type
  TfrmTestDico33BackEnd = class(TForm)
    pgDico33: TPageControl;
    AdvPanel1: TShader;
    AdvOfficeImage1: TAdvOfficeImage;
    AdvOfficeImage2: TAdvOfficeImage;
    tabHome: TTabSheet;
    tabBooking: TTabSheet;
    tabConfirm: TTabSheet;
    ImageList24: TImageList;
    AdvStickyPopupMenu1: TAdvStickyPopupMenu;
    PopUser: TAdvPopupMenu;
    Schedautente1: TMenuItem;
    Messaggi1: TMenuItem;
    N1: TMenuItem;
    Login1: TMenuItem;
    Image1: TImage;
    Image2: TImage;
    AdvSmoothButton1: TAdvSmoothButton;
    Panel1: TPanel;
    grdServices: TCRDBGrid;
    edSearch: TAdvEdit;
    edAddress: TAdvEdit;
    DataSource1: TDataSource;
    popNotifications: TAdvPopupMenu;
    popMeetings: TAdvPopupMenu;
    AdvOfficeImage3: TAdvOfficeImage;
    AdvOfficeImage4: TAdvOfficeImage;
    AdvOfficeImage5: TAdvOfficeImage;
    AdvFormStyler1: TAdvFormStyler;
    AdvPanelStyler1: TAdvPanelStyler;
    ImageList16: TImageList;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    N2: TMenuItem;
    Registrati1: TMenuItem;
    DBCtrlGrid1: TDBCtrlGrid;
    WebGMaps1: TWebGMaps;
    Panel2: TPanel;
    JanuaDialog1: TJanuaDialog;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText6: TDBText;
    Label1: TLabel;
    ScrollBox1: TScrollBox;
    Image6: TImage;
    JvSpeedButton1: TJvSpeedButton;
    AdvBadgeGlowButton1: TAdvBadgeGlowButton;
    Label2: TLabel;
    Label3: TLabel;
    DBCheckBox1: TDBCheckBox;
    Shader1: TShader;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    Panel3: TPanel;
    edSearch2: TAdvEdit;
    grdSearchBooking: TCRDBGrid;
    edAddress2: TAdvEdit;
    AdvSmoothButton2: TAdvSmoothButton;
    Label4: TLabel;
    Label5: TLabel;
    Panel4: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Shader2: TShader;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    DBCtrlGrid2: TDBCtrlGrid;
    DBText5: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    JvSpeedButton2: TJvSpeedButton;
    DBCheckBox2: TDBCheckBox;
    lbPrestazione: TLabel;
    lbIndirizzo: TLabel;
    Panel5: TPanel;
    pgcAnnotazioni: TPageControl;
    tabAnnotazioni: TTabSheet;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    memBookingNotes: TAdvRichEditor;
    edBoookingSince: TJvDateEdit;
    edBookingUntil: TJvDateEdit;
    tabPersona: TTabSheet;
    ckbRelative: TAdvOfficeCheckBox;
    pnlNotes: TAdvPanel;
    PnlPersona: TAdvPanel;
    edPersonaCognome: TEdit;
    edPersonaNome: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label16: TLabel;
    edPersonaCodiceFiscale: TEdit;
    edLuogoNascita: TEdit;
    Label17: TLabel;
    edDataNascita: TJvDateEdit;
    Label18: TLabel;
    Label19: TLabel;
    edIndirizzoResidenza: TEdit;
    edCap: TEdit;
    Label23: TLabel;
    edComune: TEdit;
    Label24: TLabel;
    AdvMainMenu1: TAdvMainMenu;
    Programma1: TMenuItem;
    estRegistration1: TMenuItem;
    estLogin1: TMenuItem;
    N3: TMenuItem;
    Esci1: TMenuItem;
    AdvGlowButton5: TAdvGlowButton;
    DatiPersonali1: TMenuItem;
    N4: TMenuItem;
    Log1: TMenuItem;
    ListBox1: TListBox;
    JanuaGoogleGeoCoding1: TJanuaGoogleGeoCoding;
    edSiglaProv: TEdit;
    Label11: TLabel;
    tabPrescription: TTabSheet;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    GroupBox1: TGroupBox;
    Label31: TLabel;
    ckbExemption: TCheckBox;
    edExemptionCode: TEdit;
    ckbIncomeExemption: TCheckBox;
    edFirstBarcode: TEdit;
    edLastBarcode: TEdit;
    edLastName: TEdit;
    edFirstName: TEdit;
    edFiscalCode: TEdit;
    advSpinPrestazioni: TSpinEdit;
    edPrescriptionDate: TJvDateEdit;
    edPrescriptionType: TEdit;
    grpPrescriptionPriority: TDBRadioGroup;
    edProvince: TEdit;
    edCodAsl: TEdit;
    ckbPrescription: TAdvOfficeCheckBox;
    pnlRicetta: TAdvPanel;
    edAgreement: TEdit;
    lbAgreement: TLabel;
    edInsurance: TEdit;
    Label12: TLabel;
    rgPersonaSesso: TRadioGroup;
    est1: TMenuItem;
    WebServices1: TMenuItem;
    pnlRicerca: TPanel;
    btnForward: TAdvGlowButton;
    btnBack: TAdvGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edSearchChange(Sender: TObject);
    procedure grdServicesDblClick(Sender: TObject);
    procedure edSearchKeyPress(Sender: TObject; var Key: Char);
    procedure edAddressExit(Sender: TObject);
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure JvSpeedButton1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure ckbRelativeClick(Sender: TObject);
    procedure PnlPersonaClick(Sender: TObject);
    procedure pnlNotesClick(Sender: TObject);
    procedure estRegistration1Click(Sender: TObject);
    procedure edAddress2Exit(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure Login1Click(Sender: TObject);
    procedure estLogin1Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure DatiPersonali1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Log1Click(Sender: TObject);
    procedure edAddressChange(Sender: TObject);
    procedure edAddressKeyPress(Sender: TObject; var Key: Char);
    procedure ListBox1Click(Sender: TObject);
    procedure edAddress2Change(Sender: TObject);
    procedure edSearch2Change(Sender: TObject);
    procedure edSearch2KeyPress(Sender: TObject; var Key: Char);
    procedure grdServicesCellClick(Column: TColumn);
    procedure AdvSmoothButton2Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure ckbPrescriptionClick(Sender: TObject);
    procedure pnlRicettaClick(Sender: TObject);
    procedure WebServices1Click(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure btnForwardClick(Sender: TObject);
    procedure pgDico33Change(Sender: TObject);
    procedure tabBookingShow(Sender: TObject);
  private
    { Private declarations }
    DM: TdmTestHealthBooking;
    Institutes: array [0 .. 2] of integer;
    Icounter: integer;
    FUserProfile: Janua.Core.Classes.TJanuaRecordUserProfile;
    FSessionKey: string;
    FLogs: TStrings;
    procedure SetUser;
    procedure SearchInstitutes(aAddress, aService: string);
    procedure PageUpdate;
  public
    { Public declarations }
    procedure SearchClick;
    procedure Search2Click;
    function RegisterUser: boolean;
    procedure EditUser;
    function LoginUser: boolean;
    procedure AddressClick;
    procedure Address2Click;
    procedure ShowGMaps;
  end;

var
  frmTestDico33BackEnd: TfrmTestDico33BackEnd;

implementation

{$R *.dfm}

uses udlgTestDico33DatiParente, udlgDico33RegistrationForm, udlgDico33Login, ufrmTestWebServices;

procedure TfrmTestDico33BackEnd.Address2Click;
begin
  if ListBox1.ItemIndex > 0 then
    self.edAddress2.Text := ListBox1.Items[ListBox1.ItemIndex]
  else if ListBox1.Items.Count > 0 then
    self.edAddress2.Text := ListBox1.Items[0];

  self.ListBox1.Visible := False;
end;

procedure TfrmTestDico33BackEnd.AddressClick;
begin
  if ListBox1.ItemIndex > 0 then
    self.edAddress.Text := ListBox1.Items[ListBox1.ItemIndex]
  else if ListBox1.Items.Count > 0 then
    self.edAddress.Text := ListBox1.Items[0];

  self.ListBox1.Visible := False;
end;

procedure TfrmTestDico33BackEnd.SetUser;
begin
  self.FUserProfile := self.DM.JanuaPostgresSystem.UserProfile;
  self.FSessionKey := self.DM.JanuaPostgresSystem.SessionKey;
  self.Caption := 'Utente: ' + self.FUserProfile.FirstName + ' ' + self.FUserProfile.LastName;
  estRegistration1.Enabled := False;
  DatiPersonali1.Enabled := True;
end;

procedure TfrmTestDico33BackEnd.ShowGMaps;
begin
  WebGMaps1.MapOptions.DefaultLatitude := self.DM.JanuaServerHealthBooking1.Coordinates.Latitude;
  WebGMaps1.MapOptions.DefaultLongitude := DM.JanuaServerHealthBooking1.Coordinates.Longitude;
  if Assigned(DM.dsInstitutes.DataSet) then
  begin
    // impostazione delle mappe di Ricerca di Dico33.
    if self.WebGMaps1.Launch then
    begin
      WebGMaps1.Markers.Clear;
      WebGMaps1.Markers.Add(DM.JanuaServerHealthBooking1.Coordinates.Latitude,
        DM.JanuaServerHealthBooking1.Coordinates.Longitude, DM.JanuaServerHealthBooking1.SearchAddress, '', False, True,
        False, False, True, 0);
      WebGMaps1.MapPanTo(WebGMaps1.MapOptions.DefaultLatitude, WebGMaps1.MapOptions.DefaultLongitude);
    end;

    DM.dsInstitutes.DataSet.First;
    while not DM.dsInstitutes.DataSet.Eof do
    begin
      WebGMaps1.Markers.Add(DM.dsInstitutes.DataSet.FieldByName('latitude').AsFloat,
        DM.dsInstitutes.DataSet.FieldByName('longitude').AsFloat, DM.dsInstitutes.DataSet.FieldByName('an_last_name')
        .AsWideString, '', False, True, False, False, True, 0);

      DM.dsInstitutes.DataSet.Next;

    end;
    DM.dsInstitutes.DataSet.First;

    WebGMaps1.MapOptions.DefaultLatitude := self.DM.JanuaServerHealthBooking1.Coordinates.Latitude;
    WebGMaps1.MapOptions.DefaultLongitude := DM.JanuaServerHealthBooking1.Coordinates.Latitude;
    WebGMaps1.MapPanTo(WebGMaps1.MapOptions.DefaultLatitude, WebGMaps1.MapOptions.DefaultLongitude);

    WebGMaps1.MapOptions.DefaultLatitude := self.DM.JanuaServerHealthBooking1.Coordinates.Latitude;
    WebGMaps1.MapOptions.DefaultLongitude := DM.JanuaServerHealthBooking1.Coordinates.Latitude;
    WebGMaps1.MapPanTo(WebGMaps1.MapOptions.DefaultLatitude, WebGMaps1.MapOptions.DefaultLongitude);
  end;
end;

procedure TfrmTestDico33BackEnd.tabBookingShow(Sender: TObject);
begin
  self.PageUpdate
end;

procedure TfrmTestDico33BackEnd.PageUpdate;
begin
  self.btnForward.Enabled := not(self.pgDico33.ActivePageIndex = self.pgDico33.PageCount - 1);
  self.btnBack.Enabled := not(self.pgDico33.ActivePageIndex = 0);
  case self.pgDico33.ActivePageIndex of
    0:
      pnlRicerca.Caption := 'Cerca e prenota la tua visita con Dico33';
    1:
      pnlRicerca.Caption := 'Seleziona fino a 3 istitui presso cui prenotare';
    2:
      pnlRicerca.Caption := 'Completa e conferma la tua richiesta di prenotazione';
  end;
end;

procedure TfrmTestDico33BackEnd.WebServices1Click(Sender: TObject);
begin
  frmTestBookingJson.ShowModal;
end;

procedure TfrmTestDico33BackEnd.AdvGlowButton1Click(Sender: TObject);
var
  i: Int64;
  TempSession: TJanuaServerSession;
begin
  i := 0;
  if self.Icounter = 0 then
    self.JanuaDialog1.JShowMessage('Attenzione dovete selezionare almeno un istituto', '', '')
  else
  begin
    DM.JanuaServerHealthBooking1.CheckSessionKey(self.FSessionKey);
    self.FLogs.Add('Avvio prenotazione ..................................');
    self.FLogs.Add('SessionKey: ' + DM.JanuaServerHealthBooking1.SessionKey);
    self.DM.JanuaServerHealthBooking1.select1 := self.Institutes[0];
    self.FLogs.Add('Istituto1:' + DM.JanuaServerHealthBooking1.select1.ToString);
    self.DM.JanuaServerHealthBooking1.select2 := self.Institutes[1];
    self.FLogs.Add('Istituto2:' + DM.JanuaServerHealthBooking1.select2.ToString);
    self.DM.JanuaServerHealthBooking1.select3 := self.Institutes[2];
    self.FLogs.Add('Istituto3:' + DM.JanuaServerHealthBooking1.select3.ToString);
    i := self.DM.JanuaServerHealthBooking1.DoBooking;
    self.FLogs.Add('SearchID: ' + self.DM.JanuaServerHealthBooking1.SearchID.ToString);
    self.FLogs.Add('BookingID: ' + self.DM.JanuaServerHealthBooking1.BookingID.ToString);
    self.FLogs.Add('IsPublic: ' + self.DM.JanuaServerHealthBooking1.IsPublic.ToString);
  end;

  if (i > 0) then
  begin
    if self.DM.JanuaServerHealthBooking1.IsPublic then
    begin
      TempSession := DM.JanuaServerHealthBooking1.JanuaServerSession;
      self.FLogs.Add('Effettuo Login ..................................');
      if LoginUser then
        if DM.JanuaServerHealthBooking1.CheckSessionKey(self.FSessionKey) then
        begin
          self.FLogs.Add('Riassegno la Sessione: ' + self.FSessionKey);
          self.FLogs.Add('Assegnazione ad Utente: ' + self.FUserProfile.User.ID.ToString);
          // in base a BookingID e al SessionKey del Nuovo utente riassegna la sessione
          DM.JanuaServerHealthBooking1.AssignSessionBooking;
        end;
    end;
    if DM.JanuaServerHealthBooking1.OpenBooking then
    begin
      self.FLogs.Add('Booking Institutes: ' + self.DM.dsBookingInstitutes.DataSet.RecordCount.ToString);
      self.pgDico33.ActivePage := self.tabConfirm
    end
    else
      self.JanuaDialog1.JShowError('Attenzione errore di prenotazione Istituti',
        DM.JanuaServerHealthBooking1.LastErrorMessage, '');
  end;

end;

procedure TfrmTestDico33BackEnd.AdvGlowButton2Click(Sender: TObject);
begin
  self.pgDico33.ActivePageIndex := self.pgDico33.ActivePageIndex + 1;
end;

procedure TfrmTestDico33BackEnd.AdvGlowButton3Click(Sender: TObject);
begin
  if self.JanuaDialog1.JMessageDlg('Attenzione volete ripetere la ricerca?') then
  begin
    self.pgDico33.ActivePage := self.tabBooking;
  end;
end;

procedure TfrmTestDico33BackEnd.AdvGlowButton4Click(Sender: TObject);
var
  Booking: Janua.Core.Health.TJanuaHealthBooking;
begin
  // Gestione delle componenti della Prenotazione (Booking):
  // Per prima cosa carico il Booking dalla memoria della HealtBooking

  Booking := self.DM.JanuaServerHealthBooking1.Booking;

  // Gestione Ricetta:

  Booking.Notes := self.memBookingNotes.Text;
  Booking.Book_Since := self.edBoookingSince.Date;
  Booking.Book_Until := self.edBoookingSince.Date;
  Booking.Insurance := self.edInsurance.Text;
  Booking.Agreement := self.edAgreement.Text;

  Booking.HasPrescription := Janua.Vcl.Functions.GetBool(ckbPrescription);

  if Booking.HasPrescription then
  begin
    Booking.HealthPrescription.first_code := self.edFirstBarcode.Text;
    Booking.HealthPrescription.second_code := self.edLastBarcode.Text;
    Booking.HealthPrescription.province := self.edProvince.Text;
    Booking.HealthPrescription.first_name := self.edFirstName.Text;
    Booking.HealthPrescription.last_name := self.edLastName.Text;
    Booking.HealthPrescription.fiscal_code := self.edFiscalCode.Text;
    Booking.HealthPrescription.exemption := not self.ckbExemption.Checked;
    Booking.HealthPrescription.exemption_code := self.edExemptionCode.Text;
    Booking.HealthPrescription.exemption_income := self.ckbIncomeExemption.Checked;
    Booking.HealthPrescription.services := self.advSpinPrestazioni.Value;
    Booking.HealthPrescription.Date := self.edPrescriptionDate.Date;
    Booking.HealthPrescription.priority := grpPrescriptionPriority.Items[grpPrescriptionPriority.ItemIndex - 1];
  end
  else
  begin
    Booking.HealthPrescription.Clear;
  end;

  if Booking.HasPrescription and not Booking.HealthPrescription.Check then
    self.JanuaDialog1.JShowMessage(Booking.HealthPrescription.LastMessage);

  Booking.HasRelative := self.ckbRelative.Checked;

  if Booking.HasRelative then
  begin

  end
  else
  begin
    Booking.Relative.Clear;
  end;

end;

procedure TfrmTestDico33BackEnd.AdvGlowButton5Click(Sender: TObject);
begin
  AdvGlowButton5.Visible := False;

end;

procedure TfrmTestDico33BackEnd.btnForwardClick(Sender: TObject);
begin
  self.pgDico33.ScrollTabs(1);
  self.PageUpdate
end;

procedure TfrmTestDico33BackEnd.btnBackClick(Sender: TObject);
begin
  self.pgDico33.ScrollTabs(-1);
  self.PageUpdate
end;

procedure TfrmTestDico33BackEnd.PnlPersonaClick(Sender: TObject);
begin
  pgcAnnotazioni.ActivePage := self.tabPersona;
  self.pnlNotes.Align := alTop;
  self.PnlPersona.Align := alTop;
  self.pnlRicetta.Align := alBottom;
end;

procedure TfrmTestDico33BackEnd.AdvSmoothButton1Click(Sender: TObject);
begin
  /// codice di prenotazione istituti .................................
  self.edSearch2.EmptyText := self.edSearch.Text;
  self.edAddress2.EmptyText := self.edAddress.Text;
  self.edSearch2.Invalidate;
  self.edAddress2.Invalidate;
  self.SearchInstitutes(self.edAddress.Text, self.edSearch.Text);
  self.PageUpdate
end;

procedure TfrmTestDico33BackEnd.AdvSmoothButton2Click(Sender: TObject);
begin
  /// codice di prenotazione istituti .................................
  self.SearchInstitutes(self.edAddress2.Text, self.edSearch2.Text);
end;

procedure TfrmTestDico33BackEnd.ckbPrescriptionClick(Sender: TObject);
begin
  if self.ckbPrescription.Checked then
    frmTestRicettaSSN.ShowModal;

end;

procedure TfrmTestDico33BackEnd.ckbRelativeClick(Sender: TObject);
begin
  {
    if self.AdvOfficeCheckBox1.Checked then
    dlgTestDico33DatiParente.ShowModal;
  }

  self.JanuaDialog1.JShowMessage('Attenzione occorre compilare ineramente la scheda con i dati altro utente');

  { TODO : Aggiungere la gestione di una agenda utente da cui recuperare eventualmente i dati dell'altro utente ..... }
end;

procedure TfrmTestDico33BackEnd.DatiPersonali1Click(Sender: TObject);
begin
  EditUser
end;

procedure TfrmTestDico33BackEnd.edAddress2Change(Sender: TObject);
begin
  if self.edAddress2.Text > '' then
  begin

    if (Length(edAddress2.Text) > 4) and
      ((ListBox1.ItemIndex = -1) or (edAddress2.Text <> ListBox1.Items[ListBox1.ItemIndex])) then
    begin
      JanuaGoogleGeoCoding1.Address := edAddress2.Text;
      if JanuaGoogleGeoCoding1.GetSuggestions then
      begin
        ListBox1.Left := self.edAddress2.Left;
        ListBox1.Width := self.edAddress2.Width;
        ListBox1.Height := 100;
        ListBox1.Visible := True;
        ListBox1.Items.Clear;
        ListBox1.Items.AddStrings(JanuaGoogleGeoCoding1.AddressText);
      end
      else
      begin
        self.ListBox1.Visible := False;
      end;
    end;
  end
  else
  begin
    self.ListBox1.Visible := False;
  end;
end;

procedure TfrmTestDico33BackEnd.edAddress2Exit(Sender: TObject);
begin
  if edAddress2.Text <> '' then
  begin
    self.DM.JanuaServerHealthBooking1.GeoCoding(DM.SearchPostalCode(self.edAddress2.Text));
  end;
end;

procedure TfrmTestDico33BackEnd.edAddressChange(Sender: TObject);
begin
  if self.edAddress.Text > '' then
  begin

    if (Length(edAddress.Text) > 4) and
      ((ListBox1.ItemIndex = -1) or (edAddress.Text <> ListBox1.Items[ListBox1.ItemIndex])) then
    begin
      JanuaGoogleGeoCoding1.Address := edAddress.Text;
      if JanuaGoogleGeoCoding1.GetSuggestions then
      begin
        ListBox1.Left := self.edAddress.Left;
        ListBox1.Width := self.edAddress.Width;
        ListBox1.Height := 100;
        ListBox1.Visible := True;
        ListBox1.Items.Clear;
        ListBox1.Items.AddStrings(JanuaGoogleGeoCoding1.AddressText);
      end
      else
      begin
        self.ListBox1.Visible := False;
      end;
    end;
  end
  else
  begin
    self.ListBox1.Visible := False;
  end;
end;

procedure TfrmTestDico33BackEnd.edAddressExit(Sender: TObject);
begin
  if edAddress.Text <> '' then
  begin
    AddressClick;
    self.DM.JanuaServerHealthBooking1.GeoCoding(DM.SearchPostalCode(self.edAddress.Text));
  end;
end;

procedure TfrmTestDico33BackEnd.edAddressKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
  begin
    self.AddressClick;
  end;
end;

procedure TfrmTestDico33BackEnd.EditUser;
var
  RF: udlgDico33RegistrationForm.TdlgDico33RegistrationForm;
begin
  RF := udlgDico33RegistrationForm.TdlgDico33RegistrationForm.Create(nil);
  try
    RF.DM := self.DM;
    RF.UserProfile := DM.JanuaPostgresSystem.UserProfile;
    RF.LoadFromSystem;
    RF.ShowModal;
    self.FUserProfile.Clear;
    self.FUserProfile := RF.UserProfile;
  finally
    RF.Free;
  end;

  if DM.JanuaPostgresSystem.CheckNewUser(self.FUserProfile) then
  begin
    DM.JanuaPostgresSystem.CreateNewUser(self.FUserProfile);
    self.FUserProfile := DM.JanuaPostgresSystem.UserProfile;
  end;

end;

procedure TfrmTestDico33BackEnd.edSearch2Change(Sender: TObject);
var
  sSearch: string;
begin
  self.grdServices.Visible := (edSearch2.Text > '') and
    not(self.edSearch2.Text = DM.dsServices.DataSet.FieldByName('title').AsWideString);

  self.grdServices.Height := 250;

  if self.edSearch2.Text = '' then
  begin
    TCustomPgDataset(DM.dsServices.DataSet).Filter := '';
    TCustomPgDataset(DM.dsServices.DataSet).Filtered := False;
  end
  else
  begin
    sSearch := 'search like ' + QuotedStr('%' + LowerCase(Janua.Core.Functions.StripString(edSearch2.Text)) + '%');
    // ShowMessage(sSearch);
    TCustomPgDataset(DM.dsServices.DataSet).Filter := sSearch;
    TCustomPgDataset(DM.dsServices.DataSet).Filtered := True;
  end;

end;

procedure TfrmTestDico33BackEnd.edSearch2KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
  begin
    self.SearchClick;
    self.edSearch2.Text := DM.dsServices.DataSet.FieldByName('title').AsWideString;
    self.edSearch.EmptyText := DM.dsServices.DataSet.FieldByName('title').AsWideString;
    self.lbPrestazione.Caption := edSearch2.Text;
    self.FLogs.Add('Avviata Ricerca: ' + self.edSearch2.Text)
  end;
end;

procedure TfrmTestDico33BackEnd.edSearchChange(Sender: TObject);
var
  sSearch: string;
begin
  self.grdServices.Visible := (edSearch.Text > '') and
    not(self.edSearch.Text = DM.dsServices.DataSet.FieldByName('title').AsWideString);

  self.grdServices.Height := 250;

  if self.edSearch.Text = '' then
  begin
    TCustomPgDataset(DM.dsServices.DataSet).Filter := '';
    TCustomPgDataset(DM.dsServices.DataSet).Filtered := False;
  end
  else
  begin
    sSearch := 'search like ' + QuotedStr('%' + LowerCase(Janua.Core.Functions.StripString(edSearch.Text)) + '%');
    // ShowMessage(sSearch);
    TCustomPgDataset(DM.dsServices.DataSet).Filter := sSearch;
    TCustomPgDataset(DM.dsServices.DataSet).Filtered := True;
  end;

end;

procedure TfrmTestDico33BackEnd.edSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
  begin
    self.SearchClick;

  end;
end;

procedure TfrmTestDico33BackEnd.estLogin1Click(Sender: TObject);
begin
  LoginUser
end;

procedure TfrmTestDico33BackEnd.estRegistration1Click(Sender: TObject);
begin
  self.RegisterUser

end;

procedure TfrmTestDico33BackEnd.FormCreate(Sender: TObject);
begin
  DM := TdmTestHealthBooking.Create(self);
  self.pgDico33.ActivePageIndex := 0;
  self.Icounter := 0;
  FLogs := TStringList.Create;
end;

procedure TfrmTestDico33BackEnd.FormDestroy(Sender: TObject);
begin
  FLogs.Free
end;

procedure TfrmTestDico33BackEnd.FormShow(Sender: TObject);
begin
  DM.JanuaServerHealthBooking1.SetServices;
  self.grdServices.DataSource := DM.dsServices;
  self.PageUpdate;

end;

procedure TfrmTestDico33BackEnd.grdServicesCellClick(Column: TColumn);
begin
  if self.pgDico33.ActivePage = self.tabHome then
    self.SearchClick
  else
    self.Search2Click
end;

procedure TfrmTestDico33BackEnd.grdServicesDblClick(Sender: TObject);
begin
  if self.pgDico33.ActivePage = self.tabHome then
    self.SearchClick
  else
    self.Search2Click
end;

procedure TfrmTestDico33BackEnd.JvSpeedButton1Click(Sender: TObject);
begin
  if self.Icounter = 3 then
  begin
    self.JanuaDialog1.JShowError('Attenzione non potete selezionare pi? di 3 istituti', '', '');
  end
  else
  begin
    self.JanuaDialog1.JShowMessage('Selezionato Istituto: ' + DM.dsInstitutes.DataSet.FieldByName('an_last_name')
      .AsWideString, '', '');
    self.Institutes[Icounter] := DM.dsInstitutes.DataSet.FieldByName('anagraph_id').AsInteger;
    DM.dsInstitutes.DataSet.Edit;
    DM.dsInstitutes.DataSet.FieldByName('selected').AsBoolean := True;
    DM.dsInstitutes.DataSet.Post;
    Inc(Icounter);
  end;
end;

procedure TfrmTestDico33BackEnd.ListBox1Click(Sender: TObject);
begin
  AddressClick
end;

procedure TfrmTestDico33BackEnd.Log1Click(Sender: TObject);
begin
  frmTestingLogs.AdvMemo1.Lines.Clear;
  frmTestingLogs.AdvMemo1.Lines.AddStrings(self.FLogs);
  frmTestingLogs.ShowModal;
end;

procedure TfrmTestDico33BackEnd.Login1Click(Sender: TObject);
begin
  LoginUser
end;

function TfrmTestDico33BackEnd.LoginUser: boolean;
var
  a: TdlgDico33Login;
begin
  Result := False;
  a := TdlgDico33Login.Create(nil);
  try
    a.ShowModal;
    self.FLogs.Add('Login Utente: -------------------------------------------');
    if a.ModalResult = mrOk then
    begin
      if (a.edUsername.Text = '') or (a.edPassword.Text = '') then
      begin
        self.JanuaDialog1.JShowError('Attenzione occorre inserire nome utente e password');
        self.FLogs.Add('Attenzione occorre inserire nome utente e password');
      end
      else if not IsValidEmail(a.edUsername.Text) then
      begin
        self.JanuaDialog1.JShowError('Attenzione ? stato inserito un indirizzo email non valido');
        self.FLogs.Add('Attenzione ? stato inserito un indirizzo email non valido: ' + a.edUsername.Text)
      end
      else
      begin
        // per prima cosa fare un RESET della sessione di System per cancellare eventuali dati sporchi.
        FUserProfile.Clear;
        FUserProfile.User.Email := a.edUsername.Text;
        FUserProfile.User.Password := a.edPassword.Text;
        DM.JanuaPostgresSystem.ClearSession;
        if self.DM.JanuaPostgresSystem.Login(FUserProfile) then
        begin
          Result := True;
          self.FLogs.Add('Login Effettuato, User=' + DM.JanuaPostgresSystem.Username + ', session=' +
            DM.JanuaPostgresSystem.SessionKey);
        end
        else
        begin
          self.JanuaDialog1.JShowError('Attenzione nome utente o password Errati');
          self.FLogs.Add('Attenzione nome utente o password Errati');
        end;
      end;
    end
    else if a.ModalResult = mrRetry then
    begin
      Result := self.RegisterUser; // FUser
    end;
  finally
    a.Free;
  end;

  if Result then
    SetUser;

end;

procedure TfrmTestDico33BackEnd.pgDico33Change(Sender: TObject);
begin
  PageUpdate;
end;

procedure TfrmTestDico33BackEnd.pnlNotesClick(Sender: TObject);
begin
  self.pnlNotes.Align := alTop;
  self.pnlRicetta.Align := alBottom;
  self.PnlPersona.Align := alBottom;
  pgcAnnotazioni.ActivePage := self.tabAnnotazioni
end;

procedure TfrmTestDico33BackEnd.pnlRicettaClick(Sender: TObject);
begin
  self.pnlNotes.Align := alTop;
  self.PnlPersona.Align := alTop;
  self.pnlRicetta.Align := alTop;
  pgcAnnotazioni.ActivePage := self.tabPrescription
end;

function TfrmTestDico33BackEnd.RegisterUser: boolean;
var
  RF: udlgDico33RegistrationForm.TdlgDico33RegistrationForm;
begin
  Result := False;
  RF := udlgDico33RegistrationForm.TdlgDico33RegistrationForm.Create(nil);
  try
    RF.DM := self.DM;
    RF.ShowModal;
    self.FUserProfile.Clear;
    self.FUserProfile := RF.UserProfile;
    SetUser;
  finally
    RF.Free;
  end;

  if DM.JanuaPostgresSystem.CheckNewUser(self.FUserProfile) then
  begin
    DM.JanuaPostgresSystem.CreateNewUser(self.FUserProfile);
    self.FUserProfile := DM.JanuaPostgresSystem.UserProfile;
    Result := True;
  end;
end;

procedure TfrmTestDico33BackEnd.Search2Click;
begin
  with DM.JanuaServerHealthBooking1 do
  begin
    SearchItemID := mdsServices.FieldByName('id').AsInteger;
  end;
  self.edSearch2.Text := DM.dsServices.DataSet.FieldByName('title').AsWideString;
  self.edSearch.TextHint := DM.dsServices.DataSet.FieldByName('title').AsWideString;
  self.lbPrestazione.Caption := edSearch2.Text;
  self.FLogs.Add('Avviata Ricerca: ' + self.edSearch2.Text);
  self.grdServices.Visible := False;
end;

procedure TfrmTestDico33BackEnd.SearchClick;
begin
  with DM.JanuaServerHealthBooking1 do
  begin
    SearchItemID := mdsServices.FieldByName('id').AsInteger;
  end;
  self.edSearch.Text := DM.dsServices.DataSet.FieldByName('title').AsWideString;
  self.edSearch2.TextHint := DM.dsServices.DataSet.FieldByName('title').AsWideString;
  self.lbPrestazione.Caption := edSearch.Text;
  self.FLogs.Add('Avviata Ricerca: ' + self.edSearch.Text);
  self.grdServices.Visible := False;
end;

procedure TfrmTestDico33BackEnd.SearchInstitutes(aAddress, aService: string);
var
  sAddress: string;
begin
  self.FLogs.Add('Prestazione = ' + aService);
  self.FLogs.Add('Indirizzo = ' + aAddress);

  sAddress := aAddress;

  if sAddress = '' then
  begin
    self.JanuaDialog1.JShowError('Attenzione selezionare un indirizzo', '', '');
    self.FLogs.Add('errore = ' + 'Attenzione selezionare un indirizzo');
  end
  else if (DM.JanuaServerHealthBooking1.Coordinates.Latitude = 0) and not DM.JanuaServerHealthBooking1.GeoCoding
    (sAddress) then
  begin
    self.JanuaDialog1.JShowError('Attenzione immesso indirizzo Errato', '', '');
    self.FLogs.Add('errore = ' + 'Attenzione immesso indirizzo Errato');
  end
  else if DM.JanuaServerHealthBooking1.SearchItemID = 0 then
  begin
    self.JanuaDialog1.JShowError('Attenzione selezionare una prestazione', '', '');
    self.FLogs.Add('errore = ' + 'Attenzione immesso indirizzo Errato');
  end
  else
  begin
    if DM.JanuaServerHealthBooking1.SearchInstitutes(DM.JanuaServerHealthBooking1.SearchItemID, 10,
      DM.JanuaServerHealthBooking1.SearchPostalCode(sAddress), DM.JanuaServerHealthBooking1.Coordinates.Coordinates) > 0 then
    begin
      self.edSearch2.TextHint := aService;
      grdSearchBooking.Visible := False;
      edAddress2.TextHint := aAddress;
      self.pgDico33.ActivePage := self.tabBooking;
      self.ListBox1.Visible := False;

      self.lbPrestazione.Caption := aService;
      self.lbIndirizzo.Caption := aAddress;

      self.FLogs.Add('SessionKey = ' + self.DM.JanuaServerHealthBooking1.SessionKey);
      self.FLogs.Add('IsPublic = ' + self.DM.JanuaServerHealthBooking1.IsPublic.ToString(True));
      self.FLogs.Add('SearchItemID = ' + self.DM.JanuaServerHealthBooking1.SearchItemID.ToString);
      self.FLogs.Add('searchID = ' + self.DM.JanuaServerHealthBooking1.SearchID.ToString);
      self.FLogs.Add('Institutes = ' + sLineBreak + self.DM.JanuaServerHealthBooking1.InstitutesJson);
      self.FLogs.Add('Ricerca = ' + aService);
      self.FLogs.Add('Indirizzo = ' + aAddress);
      self.FLogs.Add('********************************************************************************************');
    end;
  end;

  ShowGMaps;

end;

end.
