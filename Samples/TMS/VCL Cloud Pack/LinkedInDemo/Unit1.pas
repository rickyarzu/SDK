{***************************************************************************}
{ TMS Cloud Pack                                                            }
{ for Delphi & C++Builder                                                   }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2012 - 2015                                        }
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
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CloudBase, StdCtrls, CloudLinkedIn, CloudImage, TypInfo, ComCtrls,
  ExtCtrls, Mask, CloudBaseWin, CloudCustomLinkedIn;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    btPostActivity: TButton;
    Label2: TLabel;
    edActivity: TEdit;
    GroupBox2: TGroupBox;
    btShare: TButton;
    Label1: TLabel;
    Title: TEdit;
    Descr: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Hyperlink: TEdit;
    Label5: TLabel;
    ImageLink: TEdit;
    GroupBox3: TGroupBox;
    pSearch: TPageControl;
    TabSheet1: TTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    lbTotalPeople: TLabel;
    edKeywords: TEdit;
    edFirstName: TEdit;
    edLastName: TEdit;
    edCompany: TEdit;
    cbCountries: TComboBox;
    btPeopleSearch: TButton;
    lbPeople: TListBox;
    Companies: TTabSheet;
    Label11: TLabel;
    lbTotalCompanies: TLabel;
    btSearchCompanies: TButton;
    edCompKeywords: TEdit;
    lbCompanies: TListBox;
    Jobs: TTabSheet;
    Label12: TLabel;
    lbJobResults: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    edJobKeywords: TEdit;
    btSearchJobs: TButton;
    lbJobs: TListBox;
    edJobTitle: TEdit;
    edJobCompany: TEdit;
    cbJobCountries: TComboBox;
    btNextPeople: TButton;
    btNextCompanies: TButton;
    btNextJobs: TButton;
    btPrevCompanies: TButton;
    btPrevJobs: TButton;
    btPrevPeople: TButton;
    GroupBox4: TGroupBox;
    Memo1: TMemo;
    Panel1: TPanel;
    btConnect: TButton;
    AdvLinkedIn1: TAdvLinkedIn;
    Label16: TLabel;
    cbCompanyCountries: TComboBox;
    Label17: TLabel;
    Image1: TImage;
    btRemove: TButton;
    cbIndustryCode: TComboBox;
    Panel2: TPanel;
    AdvCloudImage1: TAdvCloudImage;
    Label18: TLabel;
    Profiles: TTabSheet;
    btConnections: TButton;
    DefProf: TButton;
    lbConnections: TListBox;
    procedure btConnectClick(Sender: TObject);
    procedure btShareClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DefProfClick(Sender: TObject);
    procedure btConnectionsClick(Sender: TObject);
    procedure lbConnectionsClick(Sender: TObject);
    procedure btPostActivityClick(Sender: TObject);
    procedure AdvLinkedIn1ReceivedAccessToken(Sender: TObject);
    procedure btPeopleSearchClick(Sender: TObject);
    procedure lbPeopleClick(Sender: TObject);
    procedure btSearchCompaniesClick(Sender: TObject);
    procedure lbCompaniesClick(Sender: TObject);
    procedure btSearchJobsClick(Sender: TObject);
    procedure lbJobsClick(Sender: TObject);
    procedure btNextPeopleClick(Sender: TObject);
    procedure btNextCompaniesClick(Sender: TObject);
    procedure btNextJobsClick(Sender: TObject);
    procedure btPrevCompaniesClick(Sender: TObject);
    procedure btPrevJobsClick(Sender: TObject);
    procedure btPrevPeopleClick(Sender: TObject);
    procedure btRemoveClick(Sender: TObject);
    procedure pSearchChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Connected: boolean;
    resultpage: integer;
    resultcount: integer;
    pagesize: integer;
    procedure ToggleControls;
    procedure SearchPeople;
    procedure SearchCompanies;
    procedure SearchJobs;
    procedure DisplayProfile(Profile: TLinkedInProfile);
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
//  LinkedInAppkey = 'xxxxxxxxx';
//  LinkedInAppSecret = 'yyyyyyyy';

{$I APPIDS.INC}

procedure TForm1.AdvLinkedIn1ReceivedAccessToken(Sender: TObject);
begin
  AdvLinkedIn1.SaveTokens;
  Connected := true;
  ToggleControls;
end;

procedure TForm1.btSearchCompaniesClick(Sender: TObject);
begin
  resultpage := 0;
  resultcount := 0;
  SearchCompanies;
end;

procedure TForm1.btSearchJobsClick(Sender: TObject);
begin
  resultpage := 0;
  resultcount := 0;
  SearchJobs;
end;

procedure TForm1.btConnectClick(Sender: TObject);
var
  acc: boolean;
begin
  AdvLinkedIn1.App.Key := LinkedInAppKey;
  AdvLinkedIn1.App.Secret := LinkedInAppSecret;
  AdvLinkedIn1.Logging := true;
  AdvLinkedIn1.LogLevel := llDetail;

  if AdvLinkedIn1.App.Key <> '' then
  begin
    AdvLinkedIn1.PersistTokens.Location := plIniFile;
    AdvLinkedIn1.PersistTokens.Key := '.\linkedin.ini';
    AdvLinkedIn1.PersistTokens.Section := 'tokens';

    AdvLinkedIn1.LoadTokens;

    acc := AdvLinkedIn1.TestTokens;

    if not acc then
    begin
      AdvLinkedIn1.RefreshAccess;
      AdvLinkedIn1.DoAuth;
    end
    else
    begin
      connected := true;
      ToggleControls;
    end;
  end
  else
    ShowMessage('Please provide a valid application ID for the client component');
end;

procedure TForm1.DefProfClick(Sender: TObject);
var
  lp: TLinkedInProfile;
begin
  AdvLinkedIn1.GetDefaultProfile;
  lp := AdvLinkedIn1.DefaultProfile;
  DisplayProfile(lp);
  AdvCloudImage1.URL := lp.PictureURL;
end;

procedure TForm1.DisplayProfile(Profile: TLinkedInProfile);
begin
  memo1.Lines.Text :=
    'FormattedName: ' + Profile.FormattedName + #13 +
    'Headline: ' + Profile.Headline + #13 +
    'Summary: ' + Profile.Summary + #13 +
    'Email: ' + Profile.EmailAddress + #13 +
    'PublicProfileURL: ' + Profile.PublicProfileURL + #13 +
    'Location: ' + Profile.Location + #13 +
    'CountryCode: ' + Profile.CountryCode;

end;

procedure TForm1.btConnectionsClick(Sender: TObject);
var
  i: integer;
begin
  AdvLinkedIn1.GetConnections;

  lbConnections.Items.Clear;

  for i := 0 to AdvLinkedIn1.Connections.Count - 1 do
  begin
    lbConnections.Items.AddObject(AdvLinkedIn1.Connections.Items[i].Profile.FirstName + ' ' + AdvLinkedIn1.Connections.Items[i].Profile.LastName, TObject(i));
  end;

  lbConnections.Sorted := true;
end;

procedure TForm1.btShareClick(Sender: TObject);
begin
  AdvLinkedIn1.Share(Title.Text, Descr.Text, Hyperlink.Text, ImageLink.Text);
end;

procedure TForm1.btPostActivityClick(Sender: TObject);
begin
  AdvLinkedIn1.Activity(edActivity.Text)
end;

procedure TForm1.btPrevCompaniesClick(Sender: TObject);
begin
  if resultpage > 0 then
  begin
    resultpage := resultpage - 1;
    SearchCompanies;
  end;
end;

procedure TForm1.btPrevJobsClick(Sender: TObject);
begin
  if resultpage > 0 then
  begin
    resultpage := resultpage - 1;
    SearchJobs;
  end;
end;

procedure TForm1.btPrevPeopleClick(Sender: TObject);
begin
  if resultpage > 0 then
  begin
    resultpage := resultpage - 1;
    SearchPeople;
  end;
end;

procedure TForm1.btRemoveClick(Sender: TObject);
begin
  AdvLinkedIn1.ClearTokens;
  Connected := false;
  ToggleControls;
end;

procedure TForm1.btNextCompaniesClick(Sender: TObject);
begin
  if resultcount >= (pagesize * resultpage) then
  begin
    btPrevCompanies.Enabled := true;
    resultpage := resultpage + 1;
    SearchCompanies;
  end;
end;

procedure TForm1.btNextJobsClick(Sender: TObject);
begin
  if resultcount >= (pagesize * resultpage) then
  begin
    resultpage := resultpage + 1;
    SearchJobs;
  end;
end;

procedure TForm1.btNextPeopleClick(Sender: TObject);
begin
  if resultcount >= (pagesize * resultpage) then
  begin
    resultpage := resultpage + 1;
    SearchPeople;
  end;
end;

procedure TForm1.SearchCompanies;
var
  i, maxresult: integer;
  cr: TCompanyResults;
  sp: TCompanySearchParam;
begin
  sp.Keywords := edCompKeywords.Text;

  if cbIndustryCode.ItemIndex > 0 then
    sp.IndustryCode := Integer(cbIndustryCode.Items.Objects[cbIndustryCode.ItemIndex])
  else
    sp.IndustryCode := 0;

  if cbCompanyCountries.ItemIndex >= 0 then
    sp.CountryCode := TISO3166Country(Integer(cbCompanyCountries.Items.Objects[cbCompanyCountries.ItemIndex]))
  else
    sp.CountryCode := icNone;

  cr := AdvLinkedIn1.SearchCompany(sp, resultcount, resultpage);

  if resultpage = 0 then
    btPrevCompanies.Enabled := false
  else
    btPrevCompanies.Enabled := true;

  maxresult := (pagesize * resultpage) + pagesize;
  if resultcount <= maxresult then
  begin
    maxresult := resultcount;
    btNextCompanies.Enabled := false;
  end
  else
    btNextCompanies.Enabled := true;

  lbTotalCompanies.Caption := 'Results: '
    + IntToStr(pagesize * resultpage) + ' to ' + IntToStr(maxresult) + ' of ' + IntToStr(resultcount);

  lbCompanies.Items.Clear;
  for i := 0 to cr.Count - 1 do
  begin
    lbCompanies.Items.AddObject(cr.Items[i].CompanyName, cr.Items[i]);
  end;
end;

procedure TForm1.SearchJobs;
var
  sp: TJobSearchParam;
  i, maxresult: integer;
  r: TJobResults;
begin
  sp.Keywords := edJobKeywords.Text;
  sp.JobTitle := edJobTitle.Text;
  sp.CompanyName := edJobCompany.Text;
  if cbJobCountries.ItemIndex >= 0 then
    sp.CountryCode := TISO3166Country(Integer(cbJobCountries.Items.Objects[cbJobCountries.ItemIndex]))
  else
    sp.CountryCode := icNone;

  r := AdvLinkedIn1.SearchJob(sp, resultcount, resultpage);

  if resultpage = 0 then
    btPrevJobs.Enabled := false
  else
    btPrevJobs.Enabled := true;

  maxresult := (pagesize * resultpage) + pagesize;
  if resultcount <= maxresult then
  begin
    maxresult := resultcount;
    btNextJobs.Enabled := false;
  end
  else
    btNextJobs.Enabled := true;

  lbJobResults.Caption := 'Results: '
    + IntToStr(pagesize * resultpage) + ' to ' + IntToStr(maxresult) + ' of ' + IntToStr(resultcount);

  lbJobs.Items.Clear;
  for i := 0 to r.Count - 1 do
  begin
    lbJobs.Items.AddObject(r.Items[i].Position, r.Items[i]);
  end;
end;

procedure TForm1.SearchPeople();
var
  sp: TPeopleSearchParam;
  pr: TPeopleResults;
  i, maxresult: integer;
begin
  sp.Keywords := edKeywords.Text;
  sp.FirstName := edFirstName.Text;
  sp.LastName := edLastName.Text;
  sp.CompanyName := edCompany.Text;
  if cbCountries.ItemIndex >= 0 then
    sp.CountryCode := TISO3166Country(Integer(cbCountries.Items.Objects[cbCountries.ItemIndex]))
  else
    sp.CountryCode := icNone;

  pr := AdvLinkedIn1.SearchPeople(sp, resultcount, resultpage);

  if resultpage = 0 then
    btPrevPeople.Enabled := false
  else
    btPrevPeople.Enabled := true;

  maxresult := (pagesize * resultpage) + pagesize;
  if resultcount <= maxresult then
  begin
    maxresult := resultcount;
    btNextPeople.Enabled := false;
  end
  else
    btNextPeople.Enabled := true;

  lbTotalPeople.Caption := 'Results: '
    + IntToStr(pagesize * resultpage) + ' to ' + IntToStr(maxresult) + ' of ' + IntToStr(resultcount);

  lbPeople.Items.Clear;
  for i := 0 to pr.Count - 1 do
  begin
    lbPeople.Items.AddObject(pr.Items[i].FirstName + ' ' + pr.Items[i].LastName, pr.Items[i]);
  end;
end;

procedure TForm1.ToggleControls;
begin
  //init search results paging
  resultpage := 1;
  resultcount := 0;
  pagesize := 10;
  btNextPeople.Enabled := false;
  btPrevPeople.Enabled := false;
  btNextCompanies.Enabled := false;
  btPrevCompanies.Enabled := false;
  btNextJobs.Enabled := false;
  btPrevJobs.Enabled := false;
  lbPeople.Items.Clear;
  lbCompanies.Items.Clear;
  lbJobs.Items.Clear;
  lbTotalPeople.Caption := '';
  lbTotalCompanies.Caption := '';
  lbJobResults.Caption := '';

  btConnect.Enabled := not Connected;
  btRemove.Enabled := Connected;
  DefProf.Enabled := Connected;
  btPeopleSearch.Enabled := Connected;
  btConnections.Enabled := Connected;
  btPostActivity.Enabled := Connected;
  btShare.Enabled := Connected;
  pSearch.Enabled := Connected;
  lbConnections.Enabled := Connected;
  Memo1.Enabled := Connected;
  edActivity.Enabled := Connected;
  Title.Enabled := Connected;
  Hyperlink.Enabled := Connected;
  Descr.Enabled := Connected;
  ImageLink.Enabled := Connected;
  edKeywords.Enabled := Connected;
  edFirstName.Enabled := Connected;
  edLastName.Enabled := Connected;
  edCompany.Enabled := Connected;
  cbCountries.Enabled := Connected;
end;

procedure TForm1.btPeopleSearchClick(Sender: TObject);
begin
  resultpage := 0;
  resultcount := 0;
  SearchPeople;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i: integer;
  CountryName: string;
begin

  ReportMemoryLeaksOnShutdown := true;

  //Fill country comboboxes
  cbCountries.Items.Clear;
  cbJobCountries.Items.Clear;
  cbCompanyCountries.Items.Clear;
  for i := Ord(Low(TISO3166Country)) to Ord(High(TISO3166Country)) do
  begin
    CountryName := GetEnumName(TypeInfo(TISO3166Country), i);
    Delete(CountryName, 1, 2);
    cbCountries.Items.AddObject(CountryName, TObject(i));
    cbJobCountries.Items.AddObject(CountryName, TObject(i));
    cbCompanyCountries.Items.AddObject(CountryName, TObject(i));
  end;
  cbCountries.Sorted := true;
  cbJobCountries.Sorted := true;
  cbCompanyCountries.Sorted := true;

  //Fill industry code combobox
  cbIndustryCode.Items.Clear;
  cbIndustryCode.Items.AddObject('Any', TObject(-1));
  cbIndustryCode.Items.AddObject('Computer & Network Security', TObject(118));
  cbIndustryCode.Items.AddObject('Computer Games', TObject(109));
  cbIndustryCode.Items.AddObject('Computer Software', TObject(4));
  cbIndustryCode.Items.AddObject('Computer Hardware', TObject(3));
  cbIndustryCode.Items.AddObject('Computer Networking', TObject(5));
  cbIndustryCode.Items.AddObject('Consumer Electronics', TObject(24));
  cbIndustryCode.Items.AddObject('Information Technology & Services', TObject(96));
  cbIndustryCode.Items.AddObject('Internet', TObject(6));
  cbIndustryCode.Items.AddObject('Online Media', TObject(113));
  cbIndustryCode.Items.AddObject('Semiconductors', TObject(7));
  cbIndustryCode.Items.AddObject('Telecommunications', TObject(8));
  cbIndustryCode.Items.AddObject('Wireless', TObject(119));

  Connected := false;
  ToggleControls;
end;

procedure TForm1.lbCompaniesClick(Sender: TObject);
var
  lc: TLinkedInCompany;
  cr: TCompanyResult;
  info: string;
begin
  if lbCompanies.ItemIndex <> -1 then
  begin
    cr := (lbCompanies.Items.Objects[lbCompanies.ItemIndex] as TCompanyResult);

    lc := AdvLinkedIn1.GetCompanyInfo(cr.ID);
    AdvCloudImage1.URL := lc.ImageURL;

    info := lc.CompanyName
      + #13 + 'Size: ' + lc.Size;

    if lc.Industries.Count > 0 then
      info := info
        + #13 + 'Industry: ' + lc.Industries.Items[0].ObjectName;

    info := info
      + #13 + 'Website: ' + lc.Website
      + #13 + lc.Description;

    Memo1.Lines.Text := info;

  end;
end;

procedure TForm1.lbJobsClick(Sender: TObject);
var
  r: TJobResult;
  lj: TLinkedInJob;
begin
  if lbJobs.ItemIndex <> -1 then
  begin
    r := (lbJobs.Items.Objects[lbJobs.ItemIndex] as TJobResult);
    lj := AdvLinkedIn1.GetJobInfo(r.ID);
    AdvCloudImage1.URL := '';
    memo1.Lines.Text := lj.Position
      + #13 + 'Company: ' + lj.Company.CompanyName
      + #13 + 'Location: ' + lj.Location
      + #13 + 'Job description: ' + lj.Description
      ;
  end;
end;

procedure TForm1.lbPeopleClick(Sender: TObject);
var
  lp: TLinkedInProfile;
  pr: TPeopleResult;
begin
  if lbPeople.ItemIndex <> -1 then
  begin
    
    pr := (lbPeople.Items.Objects[lbPeople.ItemIndex] as TPeopleResult);
    lp := AdvLinkedIn1.GetProfile(pr.ID);
    AdvCloudImage1.URL := lp.PictureURL;
    DisplayProfile(lp);
  end;
end;

procedure TForm1.pSearchChange(Sender: TObject);
begin
  ToggleControls;
end;

procedure TForm1.lbConnectionsClick(Sender: TObject);
var
  id: string;
  lp: TLinkedInProfile;
  tag: integer;
begin
  if lbConnections.ItemIndex <> -1 then
  begin
    tag := integer(lbConnections.Items.Objects[lbConnections.ItemIndex]);
    id := AdvLinkedIn1.Connections.Items[tag].Profile.ID;
    AdvLinkedIn1.Connections.Items[tag].Profile := AdvLinkedIn1.GetProfile(id);
    lp := AdvLinkedIn1.Connections.Items[tag].Profile;
    AdvCloudImage1.URL := lp.PictureURL;
    DisplayProfile(lp);
  end;
end;

end.
