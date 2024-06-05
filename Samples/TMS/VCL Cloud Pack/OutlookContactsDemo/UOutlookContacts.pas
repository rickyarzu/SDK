{***************************************************************************}
{ TMS Cloud Pack                                                            }
{ for Delphi & C++Builder                                                   }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2016                                               }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{ The source code is given as is. The author is not responsible             }
{ for any possible damage done due to the use of this code.                 }
{ The component can be freely used in any application. The complete         }
{ source code remains property of the author and may not be distributed,    }
{ published, given or sold in any form as such. No parts of the source      }
{ code can be included in any other component or application without        }
{ written authorization of the author.                                      }
{***************************************************************************}
unit UOutlookContacts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CloudBase, StdCtrls, CloudLiveContacts, CloudCustomOutlookContacts,
  CloudOutlookWin, ExtCtrls, ComCtrls, CloudBaseWin, CloudCustomOutlook,
  CloudOutlookContacts, CloudImage;

type

  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    edFirstName: TEdit;
    btAdd: TButton;
    edLastName: TEdit;
    ListView1: TListView;
    dpBirthDay: TDateTimePicker;
    btRemove: TButton;
    btGetContacts: TButton;
    btUpdate: TButton;
    Label4: TLabel;
    edPhone: TEdit;
    btClear: TButton;
    Label5: TLabel;
    edCompanyName: TEdit;
    Label7: TLabel;
    edJobTitle: TEdit;
    GroupBox3: TGroupBox;
    edEmail: TEdit;
    btAddEmail: TButton;
    btDelEmail: TButton;
    lbEmails: TListBox;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    edHomeStreet: TEdit;
    Label8: TLabel;
    edHomeCity: TEdit;
    Label9: TLabel;
    edHomeCode: TEdit;
    Label10: TLabel;
    edHomeState: TEdit;
    edHomeCountry: TEdit;
    Label11: TLabel;
    GroupBox5: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edBusStreet: TEdit;
    edBusCity: TEdit;
    edBusCode: TEdit;
    edBusState: TEdit;
    edBusCountry: TEdit;
    btUpload: TButton;
    OpenDialog1: TOpenDialog;
    AdvCloudImage1: TAdvCloudImage;
    btDownload: TButton;
    btDelete: TButton;
    AdvOutlookContacts1: TAdvOutlookContacts;
    procedure Button1Click(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure GetContacts();
    procedure ClearControls;
    procedure ToggleControls;
    procedure Init;
    procedure FormCreate(Sender: TObject);
    procedure btRemoveClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure AdvOutlookContacts1ReceivedAccessToken(Sender: TObject);
    procedure btGetContactsClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure ListView1SelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure btUpdateClick(Sender: TObject);
    procedure btAddEmailClick(Sender: TObject);
    procedure btDelEmailClick(Sender: TObject);
    procedure btClearClick(Sender: TObject);
    procedure btUploadClick(Sender: TObject);
    procedure btDownloadClick(Sender: TObject);
    procedure ListView1Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
  private
    { Private declarations }
  public
    { Public declarations }
    Connected: boolean;
    procedure DownloadImage(AItem: TOutlookContactItem);
    procedure FillContacts;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  OutlookAppkey = 'xxxxxxxxx';
//  OutlookAppSecret = 'yyyyyyyy';

{$I APPIDS.INC}

procedure TForm1.Button1Click(Sender: TObject);
begin
  AdvOutlookContacts1.App.Key := OutlookAppkey;
  AdvOutlookContacts1.App.Secret := OutlookAppSecret;
  AdvOutlookContacts1.Logging := true;

  AdvOutlookContacts1.LoadTokens;

  if not AdvOutlookContacts1.TestTokens then
    AdvOutlookContacts1.DoAuth
  else
    Init;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  AdvOutlookContacts1.Logout;
end;

procedure TForm1.btUploadClick(Sender: TObject);
var
  fn: string;
  it: TOutlookContactItem;
begin
  if Assigned(ListView1.Selected) then
  begin
    it := TOutlookContactItem(ListView1.Selected.Data);

    if OpenDialog1.Execute then
    begin
      fn := OpenDialog1.FileName;
      if it.UploadImage(fn) then
        DownloadImage(it);
    end;
  end;
end;

procedure TForm1.AdvOutlookContacts1ReceivedAccessToken(Sender: TObject);
begin
  AdvOutlookContacts1.SaveTokens;
  Init;
end;

procedure TForm1.btAddClick(Sender: TObject);
var
  it: TOutlookContactItem;
  I: Integer;
begin
  Screen.Cursor := crHourGlass;
  it := AdvOutlookContacts1.Items.Add;

  it.FirstName := edFirstName.Text;
  it.LastName := edLastName.Text;
  it.BirthDay := dpBirthDay.Date;
  it.MobilePhone := edPhone.Text;
  it.CompanyName := edCompanyName.Text;
  it.JobTitle := edJobTitle.Text;
  it.HomeAddress.Street := edHomeStreet.Text;
  it.HomeAddress.City := edHomeCity.Text;
  it.HomeAddress.State := edHomeState.Text;
  it.HomeAddress.Country := edHomeCountry.Text;
  it.HomeAddress.PostalCode := edBusCode.Text;
  it.BusinessAddress.Street := edBusStreet.Text;
  it.BusinessAddress.City := edBusCity.Text;
  it.BusinessAddress.State := edBusState.Text;
  it.BusinessAddress.Country := edBusCountry.Text;
  it.BusinessAddress.PostalCode := edBusCode.Text;

  for I := 0 to lbEmails.Items.Count - 1 do
    it.EmailAddresses.Add(lbEmails.Items[I]);

  AdvOutlookContacts1.Add(it);
  FillContacts;

  ClearControls;
  Screen.Cursor := crDefault;
end;

procedure TForm1.btAddEmailClick(Sender: TObject);
var
  it: TOutlookContactItem;
begin
  lbEmails.Items.Add(edEmail.Text);

  if Assigned(ListView1.Selected) then
  begin
    it := TOutlookContactItem(ListView1.Selected.Data);
    it.EmailAddresses.Add(edEmail.Text);
  end;

  edEmail.Text := '';
end;

procedure TForm1.btClearClick(Sender: TObject);
begin
  ClearControls;
end;

procedure TForm1.btDelEmailClick(Sender: TObject);
var
  it: TOutlookContactItem;
begin
  if Assigned(ListView1.Selected) then
  begin
    it := TOutlookContactItem(ListView1.Selected.Data);
    it.EmailAddresses.Delete(lbEmails.ItemIndex);

    if lbEmails.ItemIndex >= 0 then
      lbEmails.DeleteSelected;
  end;
end;

procedure TForm1.btDeleteClick(Sender: TObject);
var
  it: TOutlookContactItem;
begin
  if Assigned(ListView1.Selected) then
  begin
    it := TOutlookContactItem(ListView1.Selected.Data);
    if MessageDlg('Are you sure you want to delete the contact ' + it.DisplayName + '?', mtConfirmation, mbOKCancel, 0) = mrOk then
    begin
      AdvOutlookContacts1.Delete(it);
      GetContacts;
    end;
  end;
end;

procedure TForm1.btDownloadClick(Sender: TObject);
begin
  if Assigned(ListView1.Selected) then
     DownloadImage(TOutlookContactItem(ListView1.Selected.Data));
end;

procedure TForm1.btGetContactsClick(Sender: TObject);
begin
  GetContacts;
end;

procedure TForm1.btRemoveClick(Sender: TObject);
begin
  AdvOutlookContacts1.ClearTokens;
  ListView1.Items.Clear;
  Connected := false;
  ToggleControls;
end;

procedure TForm1.btUpdateClick(Sender: TObject);
var
  it: TOutlookContactItem;
begin
  if Assigned(ListView1.Selected) then
  begin
    it := TOutlookContactItem(ListView1.Selected.Data);
    it.FirstName := edFirstName.Text;
    it.LastName := edLastName.Text;
    it.BirthDay := dpBirthDay.Date;
    it.MobilePhone := edPhone.Text;
    it.CompanyName := edCompanyName.Text;
    it.JobTitle := edJobTitle.Text;
    it.HomeAddress.Street := edHomeStreet.Text;
    it.HomeAddress.City := edHomeCity.Text;
    it.HomeAddress.State := edHomeState.Text;
    it.HomeAddress.Country := edHomeCountry.Text;
    it.HomeAddress.PostalCode := edHomeCode.Text;
    it.BusinessAddress.Street := edBusStreet.Text;
    it.BusinessAddress.City := edBusCity.Text;
    it.BusinessAddress.State := edBusState.Text;
    it.BusinessAddress.Country := edBusCountry.Text;
    it.BusinessAddress.PostalCode := edBusCode.Text;

    AdvOutlookContacts1.Update(it);
    FillContacts;
  end;
end;

procedure TForm1.ClearControls;
begin
  edFirstName.Text := '';
  edLastName.Text := '';
  dpBirthDay.Date := Now;
  edPhone.Text := '';
  edEmail.Text := '';
  edCompanyName.Text := '';
  edJobTitle.Text := '';
  edHomeStreet.Text := '';
  edHomeCity.Text := '';
  edHomeCode.Text := '';
  edHomeState.Text := '';
  edHomeCountry.Text := '';
  edBusStreet.Text := '';
  edBusCity.Text := '';
  edBusCode.Text := '';
  edBusState.Text := '';
  edBusCountry.Text := '';
  AdvCloudImage1.WebPicture := nil;
  lbEmails.Clear;
end;

procedure TForm1.FillContacts;
var
  I: integer;
  li: TListItem;
  it: TOutlookContactItem;
begin
  ListView1.Items.Clear;
  for I := 0 to AdvOutlookContacts1.Items.Count - 1 do
  begin
    it := AdvOutlookContacts1.Items[I];
    li := ListView1.Items.Add;
    li.Caption := it.FirstName + ' ' + it.LastName;

    if it.EmailAddresses.Count > 0 then
      li.SubItems.Add(it.EmailAddresses[0].Address);
    li.Data := AdvOutlookContacts1.Items[I];
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;

  AdvOutlookContacts1.PersistTokens.Location := plIniFile;
  AdvOutlookContacts1.PersistTokens.Key := '.\Outlook.ini';
  AdvOutlookContacts1.PersistTokens.Section := 'tokens';
  AdvOutlookContacts1.LoadTokens;

  Connected := False;
  ToggleControls;
  ClearControls;
end;

procedure TForm1.GetContacts;
begin
  AdvOutlookContacts1.GetContacts;
  FillContacts;
end;

procedure TForm1.DownloadImage(AItem: TOutlookContactItem);
var
  FileName: string;
begin
  FileName := AItem.Image;
  if FileName <> '' then
    AdvCloudImage1.WebPicture.LoadFromFile('./' + FileName)
  else
    AdvCloudImage1.WebPicture := nil;
end;


procedure TForm1.ListView1Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  if Assigned(ListView1.Selected) then
     DownloadImage(TOutlookContactItem(ListView1.Selected.Data));
end;

procedure TForm1.ListView1SelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
var
  it: TOutlookContactItem;
  I: Integer;
begin
  it := item.Data;
  edFirstName.Text := it.FirstName;
  edLastName.Text := it.LastName;
  dpBirthDay.Date := it.BirthDay;
  edPhone.Text := it.MobilePhone;
  edCompanyName.Text := it.CompanyName;
  edJobTitle.Text := it.JobTitle;
  edHomeStreet.Text := it.HomeAddress.Street;
  edHomeCity.Text := it.HomeAddress.City;
  edHomeState.Text := it.HomeAddress.State;
  edHomeCode.Text := it.HomeAddress.PostalCode;
  edHomeCountry.Text := it.HomeAddress.Country;
  edBusStreet.Text := it.BusinessAddress.Street;
  edBusCity.Text := it.BusinessAddress.City;
  edBusState.Text := it.BusinessAddress.State;
  edBusCode.Text := it.BusinessAddress.PostalCode;
  edBusCountry.Text := it.BusinessAddress.Country;

  lbEmails.Clear;
  for I := 0 to it.EmailAddresses.Count - 1 do
    lbEmails.Items.Add(it.EmailAddresses[I].Address);

  AdvCloudImage1.WebPicture := nil;
end;

procedure TForm1.Init;
begin
  Screen.Cursor := crHourGlass;
  Connected := True;
  ToggleControls;
  GetContacts;
  Screen.Cursor := crDefault;
end;

procedure TForm1.ToggleControls;
begin
  ClearControls;

  edFirstName.Enabled := Connected;
  edLastName.Enabled := Connected;
  dpBirthDay.Enabled := Connected;
  edPhone.Enabled := Connected;
  edEmail.Enabled := Connected;
  edCompanyName.Enabled := Connected;
  edJobTitle.Enabled := Connected;
  edHomeStreet.Enabled := Connected;
  edHomeCity.Enabled := Connected;
  edHomeCode.Enabled := Connected;
  edHomeState.Enabled := Connected;
  edHomeCountry.Enabled := Connected;
  edBusStreet.Enabled := Connected;
  edBusCity.Enabled := Connected;
  edBusCode.Enabled := Connected;
  edBusState.Enabled := Connected;
  edBusCountry.Enabled := Connected;
  lbEmails.Enabled := Connected;

  btClear.Enabled := Connected;
  btAdd.Enabled := Connected;
  btUpdate.Enabled := Connected;
  btDelete.Enabled := Connected;
  btGetContacts.Enabled := Connected;
  btAddEmail.Enabled := Connected;
  btDelEmail.Enabled := Connected;
  btUpload.Enabled := Connected;
  btDownload.Enabled := Connected;
  btRemove.Enabled := Connected;
  Button1.Enabled := not Connected;
end;

end.
