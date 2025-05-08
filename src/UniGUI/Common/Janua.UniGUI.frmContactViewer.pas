unit Janua.UniGUI.frmContactViewer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniEdit, uniMemo, uniLabel,
  uniImage, uniPanel, uniGUIBaseClasses,
  Janua.Core.ContactViewer;

type
  TfrmContactViewerUniGUI = class(TUniForm)
    pnlMain: TUniPanel;
    imgContact: TUniImage;
    lblNameCaption: TUniLabel;
    lblPhoneCaption: TUniLabel;
    lblEmailCaption: TUniLabel;
    lblCompanyCaption: TUniLabel;
    lblTitleCaption: TUniLabel;
    btnCopyAll: TUniButton;
    btnClose: TUniButton;
    lblAddressCaption: TUniLabel;
    edName: TUniEdit;
    edPhone: TUniEdit;
    edEmail: TUniEdit;
    edCompany: TUniEdit;
    edTitle: TUniEdit;
    memAddress: TUniMemo;
    procedure UniFormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnCopyAllClick(Sender: TObject);
    procedure EditSelectAll(Sender: TObject);
  private
    FContact: TJanuaContact;
    procedure LoadDefaultAvatar;
    procedure UpdateUIFromContact;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function LoadContactFromVCard(const FilePath: string): Boolean;
    property Contact: TJanuaContact read FContact;
  end;

implementation

{$R *.dfm}

uses
  uniGUIApplication;

{ TfrmContactViewerUniGUI }

constructor TfrmContactViewerUniGUI.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FContact := TJanuaContact.Create;
end;

destructor TfrmContactViewerUniGUI.Destroy;
begin
  FContact.Free;
  inherited;
end;

procedure TfrmContactViewerUniGUI.UniFormCreate(Sender: TObject);
begin
  // In UniGUI abbiamo impostazioni diverse per la modalità
  BorderStyle := bsDialog;
  Position := poScreenCenter;
  Caption := 'Visualizzatore Contatto';

  // In UniGUI, configuriamo gli eventi per selezionare tutto il testo
  edName.OnClick := EditSelectAll;
  edPhone.OnClick := EditSelectAll;
  edEmail.OnClick := EditSelectAll;
  edCompany.OnClick := EditSelectAll;
  edTitle.OnClick := EditSelectAll;
  memAddress.OnClick := EditSelectAll;

  LoadDefaultAvatar;
end;

procedure TfrmContactViewerUniGUI.EditSelectAll(Sender: TObject);
begin
  // In UniGUI, seleziona tutto il testo quando l'utente clicca su un campo
  if Sender is TUniEdit then
    TUniEdit(Sender).SelectAll
    {
      else if Sender is TUniMemo then
      TUniMemo(Sender).select
    }
end;

procedure TfrmContactViewerUniGUI.LoadDefaultAvatar;
begin
  // In UniGUI, possiamo impostare un'immagine di default
  imgContact.Url := '/images/default_avatar.png'; // Percorso relativo all'app web
end;

function TfrmContactViewerUniGUI.LoadContactFromVCard(const FilePath: string): Boolean;
begin
  Result := FContact.LoadFromVCardFile(FilePath);
  if Result then
  begin
    UpdateUIFromContact;
  end;
end;

procedure TfrmContactViewerUniGUI.UpdateUIFromContact;
begin
  // Popola i campi UI con i dati del contatto
  edName.Text := FContact.FullName;
  edPhone.Text := FContact.Phone;
  edEmail.Text := FContact.Email;
  edCompany.Text := FContact.Company;
  edTitle.Text := FContact.Title;
  memAddress.Lines.Text := FContact.Address;

  // Gestione della visibilità dei campi
  lblPhoneCaption.Visible := FContact.Phone <> '';
  edPhone.Visible := FContact.Phone <> '';

  lblEmailCaption.Visible := FContact.Email <> '';
  edEmail.Visible := FContact.Email <> '';

  lblCompanyCaption.Visible := FContact.Company <> '';
  edCompany.Visible := FContact.Company <> '';

  lblTitleCaption.Visible := FContact.Title <> '';
  edTitle.Visible := FContact.Title <> '';

  lblAddressCaption.Visible := FContact.Address <> '';
  memAddress.Visible := FContact.Address <> '';

  // In UniGUI, la gestione delle immagini è diversa
  // Se abbiamo un'immagine, potremmo copiarla in una cartella accessibile via web
  // e poi impostare l'URL
  if (FContact.PhotoPath <> '') and FileExists(FContact.PhotoPath) then
  begin
    // Qui andrebbe implementata la logica per rendere disponibile l'immagine via web
    // Ad esempio, copiandola in una cartella temporanea accessibile via HTTP
    // Questo è solo un esempio e andrebbe adattato alla tua struttura
    try
      // Esempio: imgContact.Url := '/temp/' + ExtractFileName(FContact.PhotoPath);
      // La logica reale dipende da come UniGUI è configurato nel tuo ambiente
    except
      LoadDefaultAvatar;
    end;
  end
  else
    LoadDefaultAvatar;
end;

procedure TfrmContactViewerUniGUI.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmContactViewerUniGUI.btnCopyAllClick(Sender: TObject);
var
  ContactInfo: string;
begin
  // Crea un testo formattato con le informazioni del contatto
  ContactInfo := 'Nome: ' + FContact.FullName + #13#10;

  if FContact.Phone <> '' then
    ContactInfo := ContactInfo + 'Telefono: ' + FContact.Phone + #13#10;

  if FContact.Email <> '' then
    ContactInfo := ContactInfo + 'Email: ' + FContact.Email + #13#10;

  if FContact.Company <> '' then
    ContactInfo := ContactInfo + 'Azienda: ' + FContact.Company + #13#10;

  if FContact.Title <> '' then
    ContactInfo := ContactInfo + 'Ruolo: ' + FContact.Title + #13#10;

  if FContact.Address <> '' then
    ContactInfo := ContactInfo + 'Indirizzo: ' + FContact.Address;

  // In UniGUI, possiamo usare JavaScript per copiare negli appunti
  UniSession.AddJS('function copyToClipboard(text) {' +
    '  const textarea = document.createElement("textarea");' + '  textarea.value = text;' +
    '  document.body.appendChild(textarea);' + '  textarea.select();' + '  document.execCommand("copy");' +
    '  document.body.removeChild(textarea);' + '}' + 'copyToClipboard("' + StringReplace(ContactInfo, #13#10,
    '\n', [rfReplaceAll]) + '");' + 'alert("Dettagli di contatto copiati negli appunti.");');
end;

end.
