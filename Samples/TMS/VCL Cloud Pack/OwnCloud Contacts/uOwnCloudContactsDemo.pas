unit uOwnCloudContactsDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CloudWebDav, ComCtrls, Buttons, ExtCtrls;

type
  TForm4 = class(TForm)
    Button1: TButton;
    ListView1: TListView;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    edFirstName: TEdit;
    edLastName: TEdit;
    edEmail: TEdit;
    edPhone: TEdit;
    edCompany: TEdit;
    Panel1: TPanel;
    edPhoto: TImage;
    FileOpenDialog1: TFileOpenDialog;
    Panel3: TPanel;
    Label1: TLabel;
    edUser: TEdit;
    Label2: TLabel;
    edPassword: TEdit;
    AdvCardDav1: TAdvCardDav;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListView1SelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edPhotoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses
  CloudvCard;

procedure TForm4.Button1Click(Sender: TObject);
var
  i: integer;
  cdi: TCardDavItem;
  li: TListItem;
begin
  try
    AdvCardDav1.Open;
    SpeedButton1.Enabled := true;
    SpeedButton2.Enabled := true;
    SpeedButton3.Enabled := true;
  except
    Exit;
  end;

  for i := 0 to AdvCardDav1.Items.Count - 1 do
  begin
    cdi := AdvCardDav1.Items[i];
    li := ListView1.Items.Add;
    li.Caption := cdi.vCard.vContacts[0].FullName;
    li.SubItems.Add(cdi.vCard.vContacts[0].FirstName);
    li.SubItems.Add(cdi.vCard.vContacts[0].LastName);
    li.Data := cdi;
    if cdi.vCard.vContacts[0].Emails.Count > 0 then
    li.SubItems.Add(cdi.vCard.vContacts[0].Emails[0].EmailAddress);
    li.SubItems.Add(cdi.vCard.vContacts[0].Company);
  end;

  ListView1.Columns.Items[0].Width := -1;
  ListView1.Columns.Items[1].Width := -1;
  ListView1.Columns.Items[2].Width := -1;
  ListView1.Columns.Items[3].Width := -1;
  ListView1.Columns.Items[4].Width := -1;

  if ListView1.Items.Count > 0 then
    ListView1.Selected := ListView1.Items[0];
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;

  edUser.Text := 'test';
  edPassword.Text := 'test';

  AdvCardDav1.Url := 'http://demo.owncloud.org/remote.php/carddav/addressbooks';

  AdvCardDav1.Username := edUser.Text;
  AdvCardDav1.Password := edPassword.Text;
end;

procedure TForm4.edPhotoClick(Sender: TObject);
begin
  if FileOpenDialog1.Execute then
  begin
    edPhoto.picture.LoadFromFile(fileopendialog1.FileName);
  end;
end;

procedure TForm4.ListView1SelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
var
  cdi: TCardDavItem;
begin
  cdi := TCardDavItem(item.Data);
  edFirstName.Text := cdi.vCard.vContacts[0].FirstName;
  edLastName.Text := cdi.vCard.vContacts[0].LastName;
  if cdi.vCard.vContacts[0].Emails.Count > 0 then
  begin
    edEmail.Text := cdi.vCard.vContacts[0].Emails[0].EmailAddress;
  end
  else
    edEmail.Text := '';

  if cdi.vCard.vContacts[0].PhoneNumbers.Count > 0 then
  begin
    edPhone.Text := cdi.vCard.vContacts[0].PhoneNumbers[0].PhoneNumber;
  end
  else
    edPhone.Text := '';

  edCompany.Text := cdi.vCard.vContacts[0].Company;

  edPhoto.Picture.Assign(cdi.vCard.vContacts[0].Photo);
end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
var
  cdi: TCardDavItem;
  mr: integer;
begin
  if not Assigned(ListView1.Selected)  then
    Exit;

  mr := MessageDlg('Are you sure you want to delete this contact?',mtConfirmation,[mbYes,mbNo],0);

  if (mr = mrYes) then
  begin
    cdi := TCardDavItem(ListView1.Selected.Data);
    cdi.Delete;
    ListView1.Selected.Free;
  end;
end;

procedure TForm4.SpeedButton2Click(Sender: TObject);
var
  cdi: TCardDavItem;
  li: TListItem;
begin
  cdi := AdvCardDav1.Items.Insert;
  cdi.vCard.vContacts.Add;
  cdi.vCard.vContacts[0].FirstName := edFirstName.Text;
  cdi.vCard.vContacts[0].LastName := edLastName.Text;
  cdi.vCard.vContacts[0].FullName := Trim(edFirstName.Text + ' ' + edLastName.Text);
  cdi.vCard.vContacts[0].Company := edCompany.Text;
  cdi.vCard.vContacts[0].Emails.Clear;
  cdi.vCard.vContacts[0].Emails.Add.EmailAddress := edEmail.Text;
  cdi.vCard.vContacts[0].PhoneNumbers.Clear;
  cdi.vCard.vContacts[0].PhoneNumbers.Add.PhoneNumber := edPhone.Text;
  cdi.vCard.vContacts[0].Photo.Assign(edPhoto.Picture);
  cdi.vCard.vContacts[0].PhotoType := itJPEG;
  cdi.vCard.vContacts[0].PhotoEncoding := feInternalBase64;
  cdi.Post;

  li := ListView1.Items.Add;
  li.Caption := cdi.vCard.vContacts[0].FullName;
  li.SubItems.Add(edFirstName.Text);
  li.SubItems.Add(edLastName.Text);
  li.SubItems.Add(edEmail.Text);
  li.SubItems.Add(edCompany.Text);
  li.Data := cdi;
  Listview1.Selected := li;
end;

procedure TForm4.SpeedButton3Click(Sender: TObject);
var
  cdi: TCardDavItem;
  li: TListItem;
begin
  if Assigned(ListView1.Selected) then
  begin
    cdi := TCardDavItem(ListView1.Selected.Data);

    cdi.vCard.vContacts[0].FirstName := edFirstName.Text;
    cdi.vCard.vContacts[0].LastName := edLastName.Text;
    cdi.vCard.vContacts[0].FullName := Trim(edFirstName.Text + ' ' + edLastName.Text);

    if cdi.vCard.vContacts[0].Emails.Count = 0 then
      cdi.vCard.vContacts[0].Emails.Add;

    cdi.vCard.vContacts[0].Emails[0].EmailAddress := edEmail.Text;

    if cdi.vCard.vContacts[0].PhoneNumbers.Count = 0 then
      cdi.vCard.vContacts[0].PhoneNumbers.Add;

    cdi.vCard.vContacts[0].PhoneNumbers[0].PhoneNumber := edPhone.Text;

    cdi.vCard.vContacts[0].Company := edCompany.Text;

    cdi.vCard.vContacts[0].Photo.Assign(edPhoto.Picture);
    cdi.vCard.vContacts[0].PhotoType := itJPEG;

    //cdi.vCard.SaveToFile('c:\temp\testcard.vcf');

    cdi.Update;

    li := ListView1.Selected;
    li.Caption := cdi.vCard.vContacts[0].FullName;
    li.SubItems[0] := edFirstName.Text;
    li.SubItems[1] := edLastName.Text;
    li.SubItems[2] := edEmail.Text;
    li.SubItems[3] := edCompany.Text;
  end;
end;

end.
