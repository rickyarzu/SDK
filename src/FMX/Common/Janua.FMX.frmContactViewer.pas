unit Janua.FMX.frmContactViewer;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.Memo, FMX.Objects, FMX.Layouts,
  Janua.Core.ContactViewer, FMX.Memo.Types, FMX.ScrollBox;

type
  TfrmContactViewerFMX = class(TForm)
    lytMain: TLayout;
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
    procedure LoadDefaultAvatar;
    procedure UpdateUIFromContact;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function LoadContactFromVCard(const FilePath: string): Boolean;
    property Contact: TJanuaContact read FContact;
  end;

var
  frmContactViewerFMX: TfrmContactViewerFMX;

implementation

{$R *.fmx}

uses
  FMX.Platform, FMX.Memo.Types;

{ TfrmContactViewerFMX }

constructor TfrmContactViewerFMX.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FContact := TJanuaContact.Create;
end;

destructor TfrmContactViewerFMX.Destroy;
begin
  FContact.Free;
  inherited;
end;

procedure TfrmContactViewerFMX.FormCreate(Sender: TObject);
begin
  BorderStyle := TFmxFormBorderStyle.Dialog;
  Position := TFormPosition.ScreenCenter;
  Caption := 'Visualizzatore Contatto';

  // Configura gli eventi click per selezionare tutto il testo
  edName.OnClick := EditSelectAll;
  edPhone.OnClick := EditSelectAll;
  edEmail.OnClick := EditSelectAll;
  edCompany.OnClick := EditSelectAll;
  edTitle.OnClick := EditSelectAll;
  // In FMX il memo non ha un evento OnClick, usiamo OnEnter
  memAddress.OnEnter := EditSelectAll;

  LoadDefaultAvatar;
end;

procedure TfrmContactViewerFMX.EditSelectAll(Sender: TObject);
begin
  // Seleziona tutto il testo quando l'utente clicca su un campo
  if Sender is TEdit then
    TEdit(Sender).SelectAll
  else if Sender is TMemo then
    TMemo(Sender).SelectAll;
end;

procedure TfrmContactViewerFMX.LoadDefaultAvatar;
begin
  // In FMX, potremmo usare una risorsa o un'immagine di default
  imgContact.Bitmap := nil;
end;

function TfrmContactViewerFMX.LoadContactFromVCard(const FilePath: string): Boolean;
begin
  Result := FContact.LoadFromVCardFile(FilePath);
  if Result then
  begin
    UpdateUIFromContact;
  end;
end;

procedure TfrmContactViewerFMX.UpdateUIFromContact;
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
      imgContact.Bitmap.LoadFromFile(FContact.PhotoPath);
    except
      // Se c'è un errore nel caricamento dell'immagine, usa l'avatar predefinito
      LoadDefaultAvatar;
    end;
  end
  else
    LoadDefaultAvatar;
end;

procedure TfrmContactViewerFMX.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmContactViewerFMX.btnCopyAllClick(Sender: TObject);
var
  ContactInfo: TStringList;
  ClipboardService: IFMXClipboardService;
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

    // Copia negli appunti (FMX usa IFMXClipboardService)
    if TPlatformServices.Current.SupportsPlatformService(IFMXClipboardService) then
    begin
      ClipboardService := TPlatformServices.Current.GetPlatformService(IFMXClipboardService) as IFMXClipboardService;
      ClipboardService.SetClipboard(ContactInfo.Text);
      ShowMessage('Dettagli di contatto copiati negli appunti.');
    end;
  finally
    ContactInfo.Free;
  end;
end;

end.
