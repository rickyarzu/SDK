unit Janua.VCL.frmContactViewer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.ExtCtrls,
  VCL.Imaging.jpeg, VCL.Imaging.pngimage, VCL.Clipbrd,
  Janua.Core.ContactViewer;

type
  TfrmContactViewerVCL = class(TForm)
    pnlMain: TPanel;
    imgContact: TImage;
    lblNameCaption: TLabel;
    lblPhoneCaption: TLabel;
    lblEmailCaption: TLabel;
    lblCompanyCaption: TLabel;
    lblTitleCaption: TLabel;
    btnCopyAll: TButton;
    btnClose: TButton;
    lblAddressCaption: TLabel;
    edName: TEdit;
    edPhone: TEdit;
    edEmail: TEdit;
    edCompany: TEdit;
    edTitle: TEdit;
    memAddress: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnCopyAllClick(Sender: TObject);
    procedure EditSelectAll(Sender: TObject);
  private
    FContact: TJanuaContact;
    function GetContact: TJanuaContact;
    procedure SetContact(const Value: TJanuaContact);
  public
    procedure LoadDefaultAvatar;
    procedure UpdateUIFromContact;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function LoadContactFromVCard(const FilePath: string): Boolean;
    property Contact: TJanuaContact read GetContact write SetContact;
  end;

var
  frmContactViewerVCL: TfrmContactViewerVCL;

implementation

{$R *.dfm}
{ TfrmContactViewerVCL }

constructor TfrmContactViewerVCL.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

end;

destructor TfrmContactViewerVCL.Destroy;
begin
  FContact.Free;
  inherited;
end;

procedure TfrmContactViewerVCL.FormCreate(Sender: TObject);
begin
  BorderStyle := bsDialog;
  Position := poScreenCenter;
  Caption := 'Visualizzatore Contatto';

  // Configura gli eventi click per selezionare tutto il testo
  edName.OnClick := EditSelectAll;
  edPhone.OnClick := EditSelectAll;
  edEmail.OnClick := EditSelectAll;
  edCompany.OnClick := EditSelectAll;
  edTitle.OnClick := EditSelectAll;
  memAddress.OnClick := EditSelectAll;

  LoadDefaultAvatar;
end;

function TfrmContactViewerVCL.GetContact: TJanuaContact;
begin
  if not Assigned(FContact) then
    FContact := TJanuaContact.Create;
  Result := FContact;
end;

procedure TfrmContactViewerVCL.EditSelectAll(Sender: TObject);
begin
  // Seleziona tutto il testo quando l'utente clicca su un campo
  if Sender is TEdit then
    TEdit(Sender).SelectAll
  else if Sender is TMemo then
    TMemo(Sender).SelectAll;
end;

procedure TfrmContactViewerVCL.LoadDefaultAvatar;
begin
  imgContact.Picture.Assign(nil);
  // Carica un'immagine di default se disponibile
  // imgContact.Picture.Icon.Handle := LoadIcon(HInstance, 'CONTACTICON');
end;

procedure TfrmContactViewerVCL.SetContact(const Value: TJanuaContact);
begin
  if Assigned(FContact) then
    FContact := Value
  else if Assigned(FContact) then
  begin
    FContact.Free;
    FContact := nil;
  end;
end;

function TfrmContactViewerVCL.LoadContactFromVCard(const FilePath: string): Boolean;
begin
  Result := FContact.LoadFromVCardFile(FilePath);
  if Result then
  begin
    UpdateUIFromContact;
  end;
end;

procedure TfrmContactViewerVCL.UpdateUIFromContact;
begin
  // Popola i campi UI con i dati del contatto
  edName.Text := FContact.FullName;
  edPhone.Text := FContact.Phone;
  edEmail.Text := FContact.Email;
  edCompany.Text := FContact.Company;
  edTitle.Text := FContact.Title;
  memAddress.Text := FContact.Address;

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

  // Carica l'immagine se esiste
  if (FContact.PhotoPath <> '') and FileExists(FContact.PhotoPath) then
  begin
    try
      imgContact.Picture.LoadFromFile(FContact.PhotoPath);
    except
      // Se c'è un errore nel caricamento dell'immagine, usa l'avatar predefinito
      LoadDefaultAvatar;
    end;
  end
  else
    LoadDefaultAvatar;
end;

procedure TfrmContactViewerVCL.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmContactViewerVCL.btnCopyAllClick(Sender: TObject);
var
  ContactInfo: TStringList;
begin
  // Crea un testo formattato con le informazioni del contatto
  ContactInfo := TStringList.Create;
  try
    ContactInfo.Add('Nome: ' + FContact.FullName);
    if FContact.Phone <> '' then
      ContactInfo.Add('Telefono: ' + FContact.Phone);
    if FContact.Email <> '' then
      ContactInfo.Add('Email: ' + FContact.Email);
    if FContact.Company <> '' then
      ContactInfo.Add('Azienda: ' + FContact.Company);
    if FContact.Title <> '' then
      ContactInfo.Add('Ruolo: ' + FContact.Title);
    if FContact.Address <> '' then
      ContactInfo.Add('Indirizzo: ' + FContact.Address);

    // Copia negli appunti
    Clipboard.AsText := ContactInfo.Text;
    ShowMessage('Dettagli di contatto copiati negli appunti.');
  finally
    ContactInfo.Free;
  end;
end;

end.
