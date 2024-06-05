{***************************************************************************}
{ TMS Cloud Pack                                                            }
{ for Delphi & C++Builder                                                   }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2013 - 2015                                        }
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
unit UFourSquareDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CloudBase, CloudFourSquare, StdCtrls, ExtCtrls, ComCtrls,
  CloudImage, ShellApi, UCategories, pngimage, CloudBaseWin,
  CloudCustomFourSquare;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    btConnect: TButton;
    btRemove: TButton;
    Panel2: TPanel;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    lbResult: TLabel;
    Label8: TLabel;
    lbCategories: TLabel;
    edKeyword: TEdit;
    edSearch: TEdit;
    btSearch: TButton;
    btCategories: TButton;
    btDelCat: TButton;
    lvResults: TListView;
    GroupBox2: TGroupBox;
    lbUserName: TLabel;
    ciUser: TAdvCloudImage;
    lbEmail: TLabel;
    lbCity: TLabel;
    lbGender: TLabel;
    lbBio: TLabel;
    lbPhone: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    lbUserFriends: TLabel;
    lbUserCheckins: TLabel;
    btGetCheckIns: TButton;
    lvCheckIns: TListView;
    Image1: TImage;
    GroupBox1: TGroupBox;
    lbPhotoCount: TLabel;
    AdvCloudImage1: TAdvCloudImage;
    ciCategoryIcon: TAdvCloudImage;
    lbVenueName: TLabel;
    lbVenueAddress: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    lbUsers: TLabel;
    lbCheckIns: TLabel;
    lbHereNow: TLabel;
    lbRating: TLabel;
    Label6: TLabel;
    lbWebsite: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    lvVenue: TListView;
    TabSheet2: TTabSheet;
    lvTips: TListView;
    TabSheet3: TTabSheet;
    lvSpecials: TListView;
    btPrevImage: TButton;
    btNextImage: TButton;
    edCheckIn: TEdit;
    btSimilar: TButton;
    btPhotos: TButton;
    btTips: TButton;
    btCheckIn: TButton;
    btCategory: TButton;
    AdvFourSquare1: TAdvFourSquare;
    procedure btConnectClick(Sender: TObject);
    procedure btGetCheckInsClick(Sender: TObject);
    procedure btSearchClick(Sender: TObject);
    procedure btCheckInClick(Sender: TObject);
    procedure TAdvFourSquare1ReceivedAccessToken(Sender: TObject);
    procedure btTipsClick(Sender: TObject);
    procedure btPhotosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btNextImageClick(Sender: TObject);
    procedure btPrevImageClick(Sender: TObject);
    procedure btSimilarClick(Sender: TObject);
    procedure btRemoveClick(Sender: TObject);
    procedure btCategoryClick(Sender: TObject);
    procedure btCategoriesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btDelCatClick(Sender: TObject);
    procedure lvResultsChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure lbWebsiteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Connected: boolean;
    VenueImage: integer;
    CategoryList: TStringList;
    CategoryIDList: TStringList;
    procedure ToggleControls;
    procedure FillUserProfile(Profile: TFourSquareUserProfile = nil);
    procedure GetVenues(CategoryID: string = '');
    procedure FillTreeView(AtreeView: TTreeView);
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
//  FourSquareAppkey = 'xxxxxxxxx';
//  FourSquareAppSecret = 'yyyyyyyy';

{$I APPIDS.INC}

procedure TForm1.FillTreeView(ATreeView: TTreeView);

  procedure AddFolder(ParentNode: TTreeNode; Cats: TFourSquareCategories);
  var
    tn: TTreeNode;
    i: integer;
  begin
    for i := 0 to Cats.Count - 1 do
    begin
      tn := ATreeview.Items.AddChild(ParentNode, Cats.Items[i].Summary);
      if Assigned(ATreeView.Images) then
      begin
        if Assigned(Cats.Items[i].SubCategories) then
        begin

          if Cats.Items[i].SubCategories.Count > 0 then
          begin
            tn.ImageIndex := 0;
            tn.ExpandedImageIndex := 2;
          end
          else
          begin
            tn.ImageIndex := 1;
            tn.SelectedIndex := 1;
          end;
        end;
        end;

        tn.Data := Cats.Items[i];
        if Assigned(Cats.Items[i].SubCategories) then
        begin
          if (Cats.Items[i].SubCategories.Count > 0) then
          begin
            AddFolder(tn, Cats.Items[i].SubCategories);
          end;
        end;
    end;
  end;

begin
  if Assigned(ATreeView) then
  begin
    ATreeView.Items.Clear;
    AddFolder(nil, AdvFourSquare1.Categories);
    if ATreeView.Items.Count > 0 then
      ATreeView.Select(ATreeView.Items[0]);
  end;
end;

procedure TForm1.TAdvFourSquare1ReceivedAccessToken(Sender: TObject);
begin
  AdvFourSquare1.SaveTokens;
  Connected := true;
  ToggleControls;
end;

procedure TForm1.btConnectClick(Sender: TObject);
var
  acc: boolean;
begin
  AdvFourSquare1.OnReceivedAccessToken := TAdvFourSquare1ReceivedAccessToken;
  AdvFourSquare1.App.Key := FourSquare_AppKey;
  AdvFourSquare1.App.Secret := FourSquare_AppSecret;

  if AdvFourSquare1.App.Key <> '' then
  begin
    AdvFourSquare1.PersistTokens.Location := plIniFile;
    AdvFourSquare1.PersistTokens.Key := '.\foursquare.ini';
    AdvFourSquare1.PersistTokens.Section := 'tokens';
    AdvFourSquare1.LoadTokens;

    acc := AdvFourSquare1.TestTokens;

    if not acc then
    begin
      AdvFourSquare1.RefreshAccess;
      acc := AdvFourSquare1.TestTokens;
      if not acc then
        AdvFourSquare1.DoAuth;
    end
    else
    begin
      Connected := true;
      ToggleControls;
    end;

    if Connected then
      FillUserProfile;

  end
  else
    ShowMessage('Please provide a valid application ID for the client component');
end;

procedure TForm1.btGetCheckInsClick(Sender: TObject);
var
  I: integer;
  li: TListItem;
begin
  AdvFourSquare1.GetCheckIns;

  lvCheckIns.Clear;
  for I := 0 to AdvFourSquare1.UserProfile.CheckIns.Count - 1 do
  begin
    li := lvCheckIns.Items.Add;
    li.Caption := AdvFourSquare1.UserProfile.CheckIns[I].Venue.Summary;
    li.SubItems.Add(DateToStr(AdvFourSquare1.UserProfile.CheckIns[I].Created));
    li.SubItems.Add(AdvFourSquare1.UserProfile.CheckIns[I].Comment);
  end;
end;

procedure TForm1.btNextImageClick(Sender: TObject);
begin
  VenueImage := VenueImage + 1;
  if AdvFourSquare1.Venues[lvResults.ItemIndex].Photos.Count > VenueImage then
  begin
    AdvCloudImage1.URL := AdvFourSquare1.Venues[lvResults.ItemIndex].Photos[VenueImage].ImageURL;
    lbPhotoCount.Caption := IntToStr(VenueImage+1) + '/' + IntToStr(AdvFourSquare1.Venues[lvResults.ItemIndex].Photos.Count);
  end;
end;

procedure TForm1.FillUserProfile(Profile: TFourSquareUserProfile);
begin
  if Profile = nil then
    Profile := AdvFourSquare1.UserProfile;

  AdvFourSquare1.GetUserProfile(Profile);

  lbUserName.Caption := Profile.FirstName + ' ' + Profile.LastName;
  lbEmail.Caption := Profile.Email;
  lbCity.Caption := Profile.HomeCity;
  lbBio.Caption := Profile.Bio;
  lbPhone.Caption := Profile.PhoneNumber;
  lbUserFriends.Caption := IntToStr(Profile.FriendsCount);
  lbUserCheckins.Caption := IntToStr(Profile.CheckInsCount);
  ciUser.URL := Profile.ImageURL;

  if Profile.Gender = fgFemale then
    lbGender.Caption := 'Female'
  else if Profile.Gender = fgMale then
    lbGender.Caption := 'Male'
  else
    lbGender.Caption := '';
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CategoryList.Free;
  CategoryIDList.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  VenueImage := -1;
  ToggleControls;
  CategoryList := TStringList.Create;
  CategoryIDList := TStringList.Create;
end;

procedure TForm1.GetVenues(CategoryID: string);
var
  I: integer;
  err: string;
  li: TListItem;
begin
  Screen.Cursor := crHourGlass;
  if (edSearch.Text <> EmptyStr) or (edKeyword.Text <> EmptyStr) then
  begin
    err := AdvFourSquare1.GetNearbyVenues(0, 0, edSearch.Text, edKeyword.Text, CategoryID);

    if err <> EmptyStr then
      ShowMessage(err)
    else
    begin
      lbResult.Caption := AdvFourSquare1.Location.Summary + ', ' + AdvFourSquare1.Location.CountryCode;

      lvResults.Items.Clear;
      for I := 0 to AdvFourSquare1.Venues.Count - 1 do
      begin
        li := lvResults.Items.Add;
        li.Caption := AdvFourSquare1.Venues[I].Summary;
        li.SubItems.Add(AdvFourSquare1.Venues[I].Address);
      end;
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TForm1.lbWebsiteClick(Sender: TObject);
begin
  if (Connected) and (lbwebsite.Caption <> EmptyStr) then
    ShellExecute(self.WindowHandle,'open',PChar(lbwebsite.Caption),nil,nil, SW_SHOWNORMAL);
end;

procedure TForm1.lvResultsChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
var
  fv: TFourSquareVenue;
  i: integer;
  li: TListItem;
  hours: string;
begin
  Screen.Cursor := crHourGlass;
  lvTips.Items.Clear;
  if lvResults.ItemIndex >= 0 then
  begin
    AdvCloudImage1.URL := '';
    lbPhotoCount.Caption := '0/0';
    fv := AdvFourSquare1.Venues[lvResults.ItemIndex];
    AdvFourSquare1.GetVenue(fv);

    lbRating.Caption := FloatToStr(fv.Rating);
    lbVenueName.Caption := fv.Summary;
    lbVenueAddress.Caption := fv.Address;

    hours := fv.Hours.Status;
    if fv.Hours.IsOpen = fiOpen then
      hours := hours + ' (Open)'
    else if fv.Hours.IsOpen = fiClosed then
      hours := hours + ' (Closed)';

    if fv.CrossStreet <> '' then
      lbVenueAddress.Caption := lbVenueAddress.Caption + ' (' + fv.CrossStreet + ')';

    lbCheckIns.Caption := IntToStr(fv.CheckInsCount);
    lbUsers.Caption := IntToStr(fv.UsersCount);
    lbWebsite.Caption := fv.Website;
    lbHereNow.Caption := IntToStr(fv.HereNowCount);

    lvVenue.Items[0].SubItems[0] := hours;
    lvVenue.Items[1].SubItems[0] := fv.City;
    lvVenue.Items[2].SubItems[0] := fv.PostalCode;
    lvVenue.Items[3].SubItems[0] := fv.Country;
    lvVenue.Items[4].SubItems[0] := fv.Phone;

    PageControl1.Pages[1].Caption := 'Tips (' + IntToStr(fv.TipCount) + ')';
    PageControl1.Pages[2].Caption := 'Specials (' + IntToStr(fv.Specials.Count) + ')';

    if fv.Categories.Count > 0 then
    begin
      ciCategoryIcon.URL := fv.Categories[0].IconURL;
      lvVenue.Items[5].SubItems[0] := fv.Categories[0].Summary;
    end;

    VenueImage := 0;
    if fv.Photos.Count > 0 then
    begin
      AdvCloudImage1.URL := fv.Photos[0].ImageURL;
      lbPhotoCount.Caption := IntToStr(VenueImage+1) + '/' + IntToStr(fv.Photos.Count);
    end;

    lvSpecials.Items.Clear;
    for I := 0 to fv.Specials.Count - 1 do
    begin
      li := lvSpecials.Items.Add;
      li.Caption := fv.Specials[I].Title;
      li.SubItems.Add(fv.Specials[I].Summary);
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TForm1.btCategoriesClick(Sender: TObject);
var
  F: TForm2;
begin
  if AdvFourSquare1.Categories.Count = 0 then
    AdvFourSquare1.GetCategories;

  F := TForm2.Create(Self);
  FillTreeView(F.TreeView1);

  if F.ShowModal = mrOk then
  begin
    if Assigned(F.TreeView1.Selected) then
    begin
      CategoryList.Add(TFourSquareCategoryItem(F.TreeView1.Selected.Data).Summary);
      CategoryIDList.Add(TFourSquareCategoryItem(F.TreeView1.Selected.Data).ID);

      lbCategories.Caption := StringReplace(CategoryList.CommaText, '&', '&&', [rfReplaceAll]);
    end;
  end;

  F.Release;
end;

procedure TForm1.btCategoryClick(Sender: TObject);
begin
  if lvResults.ItemIndex >= 0 then
  begin
    GetVenues(AdvFourSquare1.Venues[lvResults.ItemIndex].Categories[0].ID);
  end;
end;

procedure TForm1.btCheckInClick(Sender: TObject);
begin
  if lvResults.ItemIndex >= 0 then
    AdvFourSquare1.CheckIn(AdvFourSquare1.Venues[lvResults.ItemIndex].ID, edCheckIn.Text);
end;

procedure TForm1.btDelCatClick(Sender: TObject);
begin
  if CategoryList.Count > 0 then
  begin
    CategoryList.Delete(CategoryList.Count - 1);
    CategoryIDList.Delete(CategoryIDList.Count - 1);
    lbCategories.Caption := StringReplace(CategoryList.CommaText, '&', '&&', [rfReplaceAll]);
  end;
end;

procedure TForm1.btPhotosClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if (lvResults.ItemIndex >= 0) then
  begin
    AdvFourSquare1.GetPhotos(AdvFourSquare1.Venues[lvResults.ItemIndex], 50);
    VenueImage := 0;

    if AdvFourSquare1.Venues[lvResults.ItemIndex].Photos.Count > 0 then
    begin
      AdvCloudImage1.URL := AdvFourSquare1.Venues[lvResults.ItemIndex].Photos[0].ImageURL;
      lbPhotoCount.Caption := IntToStr(VenueImage+1) + '/' + IntToStr(AdvFourSquare1.Venues[lvResults.ItemIndex].Photos.Count);
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TForm1.btPrevImageClick(Sender: TObject);
begin
  VenueImage := VenueImage - 1;
  if (AdvFourSquare1.Venues[lvResults.ItemIndex].Photos.Count > VenueImage) and (VenueImage >= 0) then
  begin
    AdvCloudImage1.URL := AdvFourSquare1.Venues[lvResults.ItemIndex].Photos[VenueImage].ImageURL;
    lbPhotoCount.Caption := IntToStr(VenueImage+1) + '/' + IntToStr(AdvFourSquare1.Venues[lvResults.ItemIndex].Photos.Count);
  end;
end;

procedure TForm1.btRemoveClick(Sender: TObject);
begin
  AdvFourSquare1.ClearTokens;
  Connected := false;
  ToggleControls;
end;

procedure TForm1.btSearchClick(Sender: TObject);
begin
  GetVenues(CategoryIDList.CommaText);
end;

procedure TForm1.btSimilarClick(Sender: TObject);
var
  I: integer;
  li: TListItem;
begin
    Screen.Cursor := crHourGlass;
    if lvResults.ItemIndex >= 0 then
    begin
      AdvFourSquare1.GetSimilarVenues(AdvFourSquare1.Venues[lvResults.ItemIndex].ID);

      lvResults.Items.Clear;
      for I := 0 to AdvFourSquare1.Venues.Count - 1 do
      begin
        li := lvResults.Items.Add;
        li.Caption := AdvFourSquare1.Venues[I].Summary;
        li.SubItems.Add(AdvFourSquare1.Venues[I].Address);
      end;
    end;
    Screen.Cursor := crDefault;
end;

procedure TForm1.btTipsClick(Sender: TObject);
var
  I: Integer;
  li: TListItem;
  item: TFourSquareVenue;
begin
  Screen.Cursor := crHourGlass;
  PageControl1.ActivePageIndex := 1;
  if (PageControl1.ActivePageIndex = 1) and (lvResults.ItemIndex >= 0) then
  begin
    item := AdvFourSquare1.Venues[lvResults.ItemIndex];

    if (item.TipCount > 0)
    and (item.Tips.Count = 0 )then
    begin
      AdvFourSquare1.GetTips(item);

      for I := 0 to item.Tips.Count - 1 do
      begin
        li := lvTips.Items.Add;
        li.Caption := item.Tips[I].Summary;
        li.SubItems.Add(DateToStr(item.Tips[I].Created));
        li.SubItems.Add(item.Tips[I].User.FirstName + ' ' + item.Tips[I].User.LastName);
        li.SubItems.Add(IntToStr(item.Tips[I].LikesCount));
        li.SubItems.Add(BoolToStr(item.Tips[I].Liked));
      end;
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TForm1.ToggleControls;
begin
  btConnect.Enabled := not connected;
  btRemove.Enabled := connected;
  edKeyword.Enabled := connected;
  edSearch.Enabled := connected;
  btSearch.Enabled := connected;
  btPrevImage.Enabled := connected;
  btNextImage.Enabled := connected;
  btSimilar.Enabled := connected;
  btPhotos.Enabled := connected;
  btTips.Enabled := connected;
  btCheckIn.Enabled := connected;
  edCheckIn.Enabled := connected;
  PageControl1.Enabled := connected;
  lvVenue.Enabled := connected;
  btCategory.Enabled := connected;
  btCategories.Enabled := connected;
  btDelCat.Enabled := connected;
  btGetCheckIns.Enabled := connected;
  lvResults.Enabled := connected;
  lbWebsite.Enabled := connected;
end;

end.
