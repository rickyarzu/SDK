unit uiCloudContactsDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CloudWebDav, ComCtrls, Buttons, ExtCtrls, CloudvCard;

type
  TForm4 = class(TForm)
    iCloudContacts1: TiCloudContacts;
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
    edNotes: TMemo;
    Label8: TLabel;
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
    procedure DialogTovContact(Contact: TvContact);
    procedure UpdatePhoto;
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}


uses
  INIFiles;

const
  INIFILENAME = '.\icloudcontacts.ini';

procedure TForm4.Button1Click(Sender: TObject);
var
  i: integer;
  cdi: TCardDavItem;
  li: TListItem;
  inifile: TINIFile;
begin
  if (edUser.Text = '') and (edPassword.Text = '') then
  begin
    MessageDlg('Please enter your account username and password',mtWarning, [mbOK],0);
    Exit;
  end;

  iCloudContacts1.Username := edUser.Text;
  iCloudContacts1.Password := edPassword.Text;

  Screen.Cursor := crHourGlass;

  try
    iCloudContacts1.Open;

    inifile := TINIFile.Create(INIFILENAME);
    inifile.WriteString('LOGIN','USERNAME',edUser.Text);
    inifile.WriteString('LOGIN','PASSWORD',edPassword.Text);
    inifile.Free;
    SpeedButton1.Enabled := true;
    SpeedButton2.Enabled := true;
    SpeedButton3.Enabled := true;

  except
    Screen.Cursor := crDefault;
    Exit;
  end;

  for i := 0 to iCloudContacts1.Items.Count - 1 do
  begin
    cdi := iCloudContacts1.Items[i];
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

  Screen.Cursor := crDefault;
end;

procedure TForm4.FormCreate(Sender: TObject);
var
  inifile: TIniFile;
begin
  ReportMemoryLeaksOnShutdown := true;

  inifile := TINIFile.Create(INIFILENAME);

  edUser.Text := inifile.ReadString('LOGIN','USERNAME','');
  edPassword.Text := inifile.ReadString('LOGIN','PASSWORD','');

  inifile.Free;
end;

procedure TForm4.DialogTovContact(Contact: TvContact);
begin
  Contact.FirstName := edFirstName.Text;
  Contact.LastName := edLastName.Text;
  Contact.FullName := Trim(edFirstName.Text + ' ' + edLastName.Text);
  Contact.Company := edCompany.Text;
  Contact.Emails.Clear;
  Contact.Emails.Add.EmailAddress := edEmail.Text;
  Contact.PhoneNumbers.Clear;
  Contact.PhoneNumbers.Add.PhoneNumber := edPhone.Text;
  Contact.Photo.Assign(edPhoto.Picture);
  Contact.PhotoType := itJPEG;
  Contact.PhotoEncoding := feInternalBase64;
  Contact.Note.Text := edNotes.Lines.Text;
end;

procedure TForm4.edPhotoClick(Sender: TObject);
begin
  if FileOpenDialog1.Execute then
  begin
    edPhoto.picture.LoadFromFile(fileopendialog1.FileName);
    UpdatePhoto;
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

  UpdatePhoto;

  edNotes.Lines.Text := cdi.vCard.vContacts[0].Note.Text;
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
  cdi := iCloudContacts1.Items.Insert;
  cdi.vCard.vContacts.Clear;
  cdi.vCard.vContacts.Add;
  DialogTovContact(cdi.vCard.vContacts[0]);
  cdi.Post;

  li := ListView1.Items.Add;
  li.Caption := cdi.vCard.vContacts[0].FullName;
  li.SubItems.Add(edFirstName.Text);
  li.SubItems.Add(edLastName.Text);
  li.SubItems.Add(edEmail.Text);
  li.SubItems.Add(edCompany.Text);
  li.Data := cdi;
end;

procedure TForm4.SpeedButton3Click(Sender: TObject);
var
  cdi: TCardDavItem;
  li: TListItem;
begin
  if Assigned(ListView1.Selected) then
  begin
    cdi := TCardDavItem(ListView1.Selected.Data);
    DialogTovContact(cdi.vCard.vContacts[0]);
    cdi.Update;

    li := ListView1.Selected;
    li.Caption := cdi.vCard.vContacts[0].FullName;
    li.SubItems[0] := edFirstName.Text;
    li.SubItems[1] := edLastName.Text;
    li.SubItems[2] := edEmail.Text;
    li.SubItems[3] := edCompany.Text;
  end;
end;

procedure TForm4.UpdatePhoto;
begin
  if Assigned(edPhoto.Picture.Graphic) and not edPhoto.Picture.Graphic.Empty then
    panel1.Caption := ''
  else
    panel1.Caption := 'Click to set photo';
end;

end.
