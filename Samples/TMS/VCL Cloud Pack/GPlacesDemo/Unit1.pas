unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, CloudBase, CloudBaseWin,
  CloudCustomGoogle, CloudGoogleWin, CloudCustomGPlaces, CloudGPlaces,
  StdCtrls, ComCtrls, CloudImage, ExtCtrls, CloudIPLoc;

type
  TForm1 = class(TForm)
    btnSearchNearby: TButton;
    AdvGPlaces1: TAdvGPlaces;
    lstPlaces: TListView;
    Label1: TLabel;
    Button1: TButton;
    edSearch: TEdit;
    GroupBox1: TGroupBox;
    edName: TEdit;
    edLat: TEdit;
    edLong: TEdit;
    lblRating: TLabel;
    edVicinity: TEdit;
    cbOpen: TCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ciIcon: TAdvCloudImage;
    lblNameTitle: TLabel;
    btnNextPage: TButton;
    ScrollBox1: TScrollBox;
    lstTypes: TListBox;
    Label7: TLabel;
    btnAutocomplete: TButton;
    lblAutocomplete: TLabel;
    lblAutocompleteText: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    edPhone: TEdit;
    Label9: TLabel;
    edAddress: TEdit;
    Label11: TLabel;
    edWebsie: TEdit;
    edType: TEdit;
    AdvIPLocation1: TAdvIPLocation;
    Label12: TLabel;
    procedure btnSearchNearbyClick(Sender: TObject);
    procedure lstPlacesClick(Sender: TObject);
    procedure lstPlacesChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure btnNextPageClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnAutocompleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure SearchNearby;
    procedure ShowPlaceInfo;
    procedure GetNextPlacesPage;
    procedure ShowPlacesList;
    procedure ShowSuggestions;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{$I APPIDS.INC}

procedure TForm1.btnAutocompleteClick(Sender: TObject);
begin
  edSearch.Text := lblAutocompleteText.Caption;
  edType.Text := '';
  Button1Click(Self);
end;

procedure TForm1.btnNextPageClick(Sender: TObject);
begin
  GetNextPlacesPage();
end;

procedure TForm1.btnSearchNearbyClick(Sender: TObject);
begin

  if AdvGPlaces1.App.Key <> '' then
  begin
    SearchNearby();

    if lstPlaces.Items.Count > 0 then
      lstPlaces.ItemIndex := 0;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  autocomplete: string;
begin
  if edSearch.Text <> '' then
  begin
    // search & show results
    AdvGPlaces1.SearchByText(edSearch.Text, edType.Text);
    ShowPlacesList();

    // look for suggestions
    if lblAutocompleteText.Caption <> '' then
      autocomplete := AdvGPlaces1.Autocomplete(edSearch.Text);
      lblAutocompleteText.Caption := autocomplete;

    // show suggestion
    ShowSuggestions();
  end
  else
    ShowMessage('Please enter a search term');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  AdvGPlaces1.App.Key := GAppkey;
end;

procedure TForm1.lstPlacesChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  ShowPlaceInfo();
end;

procedure TForm1.lstPlacesClick(Sender: TObject);
begin
  ShowPlaceInfo();
end;

procedure TForm1.ShowSuggestions();
begin
  lblAutocomplete.Visible := true;
  lblAutocompleteText.Visible := true;
  btnAutocomplete.Visible := true;
end;

procedure TForm1.GetNextPlacesPage();
begin
  AdvGPlaces1.GetNextPlacesPage();

  ShowPlacesList();
end;

procedure TForm1.SearchNearby;
begin
  AdvIPLocation1.GetIPLocation;

  AdvGPlaces1.SearchNearby(AdvIPLocation1.IPInfo.Longitude, AdvIPLocation1.IPInfo.Latitude);

  ShowPlacesList();
end;

procedure TForm1.ShowPlacesList();
var
  Obj: TObject;
  Place: TGPlacesItem;
  Itm: TListItem;
begin
  // clear the list
  lstPlaces.Items.Clear;

  // show the list
  for Obj in AdvGPlaces1.Items do
  begin
    Place := TGPlacesItem(Obj);

    Itm := lstPlaces.Items.Add;
    Itm.Caption := Place.Title;
    Itm.Data := Place;
  end;

  if AdvGPlaces1.HasNextPage then
    btnNextPage.Enabled := true
  else
    btnNextPage.Enabled := false;
end;

procedure TForm1.ShowPlaceInfo;
var
  counter, heightCounter: integer;
  PlaceItem: TGPlacesItem;
  PlaceIndex: integer;
  CloudImage: TAdvCloudImage;
  Obj: TObject;
  Photo: TPhotoItem;
  I: Integer;
begin
  PlaceIndex := lstPlaces.ItemIndex;

  if PlaceIndex >= 0 then
  begin
    PlaceItem := TGPlacesItem(lstPlaces.Items[PlaceIndex].Data);

    // Get more info about this place
    PlaceItem := PlaceItem.GetDetails(PlaceItem);

    ciIcon.URL := PlaceItem.Icon;
    edWebsie.Text := PlaceItem.Website;
    edAddress.Text := PlaceItem.Address.FormattedAddress;
    edPhone.Text := PlaceItem.Phone;
    lblNameTitle.Caption := PlaceItem.Title;
    edName.Text := PlaceItem.Title;
    edLat.Text := FloatToStr(PlaceItem.Lat);
    edLong.Text := FloatToStr(PlaceItem.long);
    lblRating.Caption := PlaceItem.Rating;
    edVicinity.Text := PlaceItem.Vicinity;
    cbOpen.Checked := PlaceItem.Open;

    lstTypes.Items.Clear;
    lstTypes.Items := PlaceItem.Types;

    //free the box first
    for I := 0 to ScrollBox1.ControlCount-1 do
    begin
      ScrollBox1.Controls[I].free;
    end;

    for Obj in PlaceItem.Photos do
    begin
      Photo := TPhotoItem(Obj);
      CloudImage := TAdvCloudImage.Create(Self);
      CloudImage.Width := 110;
      CloudImage.Height:= 110;

      counter := 0;
      heightCounter := 0;

      if (counter Mod 5 = 0) and (counter > 0) then
      begin
        counter := 0;
        heightCounter := heightCounter+1;
      end;

      CloudImage.Left:= 15 + (115 * counter) ;
      CloudImage.Top := CloudImage.Top + (115 * heightCounter);
      CloudImage.URL := 'https://maps.googleapis.com/maps/api/place/photo'
                        + '?maxwidth=100'
                        + '&maxheight=100'
                        + '&photoreference=' + Photo.Reference
                        + '&key=' + AdvGPlaces1.App.Key;

      ScrollBox1.InsertControl(CloudImage);
    end;
  end;

end;




end.
