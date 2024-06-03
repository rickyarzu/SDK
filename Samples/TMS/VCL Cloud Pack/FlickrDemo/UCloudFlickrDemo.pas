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
unit UCloudFlickrDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, CloudFlickr, CloudCustomFlickr, CloudBase,
  ExtCtrls, ComCtrls, ExtDlgs, CloudImage, Buttons, Math, CloudLookupEdit,
  CloudGoogleLookup, pngimage, CloudBaseWin;

type
  TForm816 = class(TForm)
    Button1: TButton;
    Panel2: TPanel;
    Button3: TButton;
    ListView1: TListView;
    OpenDialog1: TOpenDialog;
    ListView2: TListView;
    SaveDialog1: TSaveDialog;
    Button6: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Button8: TButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label6: TLabel;
    SpeedButton5: TSpeedButton;
    AdvCloudLookupEdit1: TAdvCloudLookupEdit;
    AdvGoogleLocationLookupProvider1: TAdvGoogleLocationLookupProvider;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Image1: TImage;
    AdvCloudImage1: TAdvCloudImage;
    ListBox1: TListBox;
    Label7: TLabel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    ProgressBar1: TProgressBar;
    SpeedButton8: TSpeedButton;
    Memo1: TMemo;
    AdvFlickr1: TAdvFlickr;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ListView1Click(Sender: TObject);
    procedure ListView2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure AdvFlickr1DownloadProgress(Sender: TObject; FileName: string;
      Position, Total: Int64);
    procedure AdvFlickr1ReceivedAccessToken(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ToggleControls;
    procedure AddSetToList(ASet: TFlickrSet);
    procedure AddPhotoToList(APhoto: TFlickrPhoto);
    procedure AddPhotoStreamToList(APhotoStream: TFlickrPhoto);
    procedure AutoLoad;
  end;

var
  Form816: TForm816;
  AdvFlickr1: TAdvFlickr;
  connected: Boolean;

implementation

{$R *.dfm}

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  FlickrAppkey = 'xxxxxxxxx';
//  FlickrAppSecret = 'yyyyyyyy';
//  GoogleLookupAppKey = 'xxxxxxxxx';

{$I APPIDS.INC}

procedure TForm816.SpeedButton6Click(Sender: TObject);
var
  str: string;
begin
  str := InputBox('Add a new tag ?', '', '');
  if str <> '' then
    ListBox1.Items.Add(str);
end;

procedure TForm816.SpeedButton7Click(Sender: TObject);
begin
  if ListBox1.ItemIndex <> -1 then
  begin
    if MessageDlg('Delete selected tag ?', TMsgDlgType.mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      ListBox1.Items.Delete(ListBox1.ItemIndex);
  end;
end;

procedure TForm816.AddSetToList(ASet: TFlickrSet);
var
  li: TListItem;
begin
  Screen.Cursor := crHourGlass;
  li := ListView1.Items.Add;
  li.Data := ASet;
  li.Caption := ASet.Title;
  li.SubItems.Add(ASet.Description);
  Screen.Cursor := crDefault;
end;

procedure TForm816.AdvFlickr1DownloadProgress(Sender: TObject; FileName: string;
  Position, Total: Int64);
begin
  ProgressBar1.Max := Total;
  ProgressBar1.Position := Position;
  if ProgressBar1.Position = ProgressBar1.Max then
    ProgressBar1.Position := 0;

  ProgressBar1.Visible := ProgressBar1.Position > 0;
end;

procedure TForm816.AdvFlickr1ReceivedAccessToken(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  AdvFlickr1.SaveTokens;
  AdvFlickr1.GetAccountInfo;
  Connected := true;
  ToggleControls;
  AutoLoad;
  Screen.Cursor := crDefault;
end;

procedure TForm816.AutoLoad;
begin
  Button2Click(Self);
  Button4Click(Self);
end;

procedure TForm816.AddPhotoStreamToList(APhotoStream: TFlickrPhoto);
begin
  ComboBox1.Items.AddObject(APhotoStream.Title, APhotoStream);
end;

procedure TForm816.AddPhotoToList(APhoto: TFlickrPhoto);
var
  li: TListItem;
  I: Integer;
  str: String;
begin
  li := ListView2.Items.Add;
  li.Data := APhoto;
  li.Caption := APhoto.Title;
  li.SubItems.Add(APhoto.Description);
  li.SubItems.Add(floattostr(APhoto.Latitude) + ' ' + floattostr(APhoto.Longitude));
  str := '';
  for I := 0 to APhoto.Tags.Count - 1 do
  begin
    str := str + APhoto.Tags[I].Value;
    if I < APhoto.Tags.Count - 1 then
      str := str + ';';
  end;
  li.SubItems.Add(str);
end;

procedure TForm816.Button10Click(Sender: TObject);
begin
  if ComboBox1.ItemIndex <> -1 then
  begin
    if MessageDlg('Delete selected photo from photostream ?', TMsgDlgType.mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      Screen.Cursor := crHourGlass;

      if AdvFlickr1.RemovePhoto(TFlickrPhoto(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).ID) then
      begin
        ComboBox1.Items.Delete(ComboBox1.ItemIndex);
        ComboBox1.Repaint;
      end;

      button6.Enabled := False;
      Button2Click(Self);

      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TForm816.Button11Click(Sender: TObject);
var
  ph: TFlickrPhoto;
begin
  if (OpenDialog1.Execute) then
  begin
    Screen.Cursor := crHourGlass;
    ph := AdvFlickr1.UploadPhotoToStream(OpenDialog1.FileName);
    if Assigned(ph) then
    begin
      AddPhotoStreamToList(ph);
      ComboBox1.ItemIndex := ComboBox1.Items.Count - 1;
      ComboBox1Change(Self);
    end;

    Screen.Cursor := crDefault;
  end;
end;

procedure TForm816.Button12Click(Sender: TObject);
begin
  if Assigned(ListView1.Selected) then
  begin
    if MessageDlg('Delete selected set ?', TMsgDlgType.mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      Screen.Cursor := crHourGlass;
      if AdvFlickr1.RemoveSet(TFlickrSet(ListView1.Selected.Data).ID) then
        ListView1.Items.Delete(ListView1.Selected.Index);

      ListView2.Items.Clear;
      Button8.Caption := 'Upload Photo to';
      Button8.Enabled := False;
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TForm816.Button13Click(Sender: TObject);
var
  ph: TFlickrPhoto;
begin
  if ComboBox1.ItemIndex <> -1 then
  begin
    Screen.Cursor := crHourGlass;
    if Assigned(ListView1.Selected) then
    begin
      ph := TFlickrPhoto(ComboBox1.Items.Objects[ComboBox1.ItemIndex]);
      TFlickrSet(ListView1.Selected.Data).AddPhoto(ph);
      AddPhotoToList(ph);
    end;

    Screen.Cursor := crDefault;
  end;
end;

procedure TForm816.Button14Click(Sender: TObject);
var
  ph: TFlickrPhoto;
begin
  if Assigned(ListView2.Selected) then
  begin
    ph := ListView2.Selected.Data;
    ph.Latitude := RandomRange(-90, 90);
    ph.Longitude := RandomRange(-180, 180);
    if ph.SetGeoLocation then
      ListView2.Selected.SubItems[1] := floattostr(ph.Latitude) + ' ' + floattostr(ph.Longitude);
  end;
end;

procedure TForm816.Button1Click(Sender: TObject);
var
  acc: boolean;
begin
  Screen.Cursor := crHourGlass;
  AdvFlickr1.App.Key := FlickrAppkey;
  AdvFlickr1.App.Secret := FlickrAppSecret;

  if AdvFlickr1.App.Key <> '' then
  begin
    AdvFlickr1.PersistTokens.Location := plIniFile;
    AdvFlickr1.PersistTokens.Key := '.\flickr.ini';
    AdvFlickr1.PersistTokens.Section := 'tokens';
    AdvFlickr1.LoadTokens;

    acc := AdvFlickr1.TestTokens;

    if not acc then
    begin
      AdvFlickr1.RefreshAccess;
      AdvFlickr1.DoAuth;
    end
    else
    begin
      connected := true;
      ToggleControls;
      AutoLoad;
    end;
  end
  else
    ShowMessage('Please provide a valid application ID for the client component');

  Screen.Cursor := crDefault;
end;

procedure TForm816.Button2Click(Sender: TObject);
var
  I: Integer;
  fg: TFlickrSet;
begin
  Screen.Cursor := crHourGlass;
  ListView1.Items.Clear;
  if AdvFlickr1.GetSets then
  begin
    for I := 0 to AdvFlickr1.Sets.Count - 1 do
    begin
      fg := AdvFlickr1.Sets[I];
      AddSetToList(fg);
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TForm816.Button3Click(Sender: TObject);
begin
  AdvFlickr1.Logout;
  Screen.Cursor := crHourGlass;
  AdvCloudImage1.URL := '';
  ListView1.Items.Clear;
  ListView2.Items.Clear;
  ComboBox1.Items.Clear;
  AdvFlickr1.ClearTokens;
  connected := False;
  ToggleControls;
  Screen.Cursor := crDefault;
end;

procedure TForm816.Button4Click(Sender: TObject);
var
  I: Integer;
  fg: TFlickrPhoto;
begin
  Screen.Cursor := crHourGlass;
  ComboBox1.Items.Clear;
  if AdvFlickr1.GetPhotoStream then
  begin
    for I := 0 to AdvFlickr1.PhotoStream.Count - 1 do
    begin
      fg := AdvFlickr1.PhotoStream[I];
      AddPhotoStreamToList(fg);
    end;

    ComboBox1.ItemIndex := 0;
    if ComboBox1.ItemIndex <> -1 then
    begin
      Button6.Enabled := True;
      SpeedButton4.Enabled := True;
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TForm816.Button5Click(Sender: TObject);
var
  ph: TFlickrPhoto;
begin
  if (SaveDialog1.Execute) and Assigned(ListView2.Selected) then
  begin
    Screen.Cursor := crHourGlass;
    ph := TFlickrPhoto(ListView2.Selected.Data);
    ph.DownloadLargest(SaveDialog1.FileName);
    Screen.Cursor := crDefault;
  end;
end;

procedure TForm816.Button6Click(Sender: TObject);
var
  fg: TFlickrSet;
begin
  if ComboBox1.ItemIndex <> -1 then
  begin
    Screen.Cursor := crHourGlass;
    fg := AdvFlickr1.CreateSet(Edit1.Text, Edit2.Text, TFlickrPhoto(ComboBox1.Items.Objects[ComboBox1.ItemIndex]).ID);
    if Assigned(fg) then
      AddSetToList(fg);

    Screen.Cursor := crDefault;
  end
  else
    ShowMessage('Please select / upload a photo from / to the photostream');
end;

procedure TForm816.Button7Click(Sender: TObject);
var
  ph: TFlickrPhoto;
  str: String;
begin
  if Assigned(ListView2.Selected) then
  begin
    if MessageDlg('Delete selected photo from set ?', TMsgDlgType.mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      Screen.Cursor := crHourGlass;
      ph := TFlickrPhoto(ListView2.Selected.Data);
      str := ph.Title;
      if AdvFlickr1.RemovePhoto(ph.ID) then
      begin
        ListView2.Items.Delete(ListView2.Selected.Index);
        Button4Click(Self);
        if ListView2.Items.Count = 0 then
        begin
          //remove set (set does not exist when photo's are empty
          if Assigned(ListView1.Selected) then
          begin
            AdvFlickr1.Sets.Delete(TFlickrSet(ListView1.Selected.Data).Index);
            ListView1.DeleteSelected;
          end;
        end;
      end;

      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TForm816.Button8Click(Sender: TObject);
var
  fg: TFlickrSet;
  ph: TFlickrPhoto;
  geo: TGeoLocation;
  I: Integer;
begin
  if (OpenDialog1.Execute) and Assigned(ListView1.Selected) then
  begin
    Screen.Cursor := crHourGlass;
    fg := TFlickrSet(ListView1.Selected.Data);
    ph := fg.AddAndUploadPhoto(OpenDialog1.FileName, Edit3.Text, Edit4.Text);
    if Assigned(ph) then
    begin
      ph.Title := Edit3.Text;
      ph.Description := Edit4.Text;
      //set title & description
      ph.SetMeta;
      ph.Tags.Clear;
      for I := 0 to ListBox1.Items.Count - 1 do
        ph.Tags.Add.Value := ListBox1.Items[I];

      //set tags
      ph.SetTags;

      if AdvCloudLookupEdit1.Text <> '' then
      begin
        geo := AdvGoogleLocationLookupProvider1.GetGeoLocation(AdvCloudLookupEdit1.Text);
        ph.Latitude := geo.Latitude;
        ph.Longitude := geo.Longitude;
        //set geo
        ph.SetGeoLocation;
      end;
      AddPhotoToList(ph);
      AddPhotoStreamToList(ph);
    end;
    Screen.Cursor := crDefault;
  end;
end;

procedure TForm816.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.ItemIndex <> -1 then
  begin
    SpeedButton4.Enabled := True;
    Button6.Enabled := True;
  end;
end;

procedure TForm816.FormCreate(Sender: TObject);
begin
  AdvGoogleLocationLookupProvider1.App.Key := GoogleLookupAppKey;
  connected := False;
  ToggleControls;
end;

procedure TForm816.ListView1Click(Sender: TObject);
var
  fg: TFlickrSet;
  I: Integer;
  ph: TFlickrPhoto;
begin
  Screen.Cursor := crHourGlass;
  SpeedButton1.Enabled := False;
  ListView2.Items.Clear;
  if Assigned(ListView1.Selected) then
  begin
    fg := TFlickrSet(ListView1.Selected.Data);
    Button8.Enabled := True;
    Edit3.Enabled := True;
    Edit4.Enabled := True;
    AdvCloudLookupEdit1.Enabled := True;
    Button8.Caption := 'Upload Photo to ' + fg.Title;
    SpeedButton5.Enabled := True;
    if Assigned(fg) then
    begin
      if fg.GetPhotos then
      begin
        for I := 0 to fg.Photos.Count - 1 do
        begin
          ph := fg.Photos[I];
          ph.GetGeoLocation;
          ph.GetInfo;
          ph.GetTags;
          AddPhotoToList(ph);
        end;
      end;
    end;
  end;

  Screen.Cursor := crDefault;
end;

procedure TForm816.ListView2Click(Sender: TObject);
var
  ph: TFlickrPhoto;
  i: integer;
begin
  Screen.Cursor := crHourGlass;
  Memo1.Clear;
  AdvCloudImage1.URL := '';
  if Assigned(ListView2.Selected) then
  begin
    SpeedButton2.Enabled := True;
    SpeedButton1.Enabled := True;
    SpeedButton8.Enabled := True;

    ph := TFlickrPhoto(ListView2.Selected.Data);
    if Assigned(ph) then
    begin
      if ph.GetSizes then
        AdvCloudImage1.URL := ph.Sizes[ph.Sizes.Count - 1].DownloadURL;

      if ph.GetComments then
      begin
        for i := 0 to ph.Comments.Count - 1 do
          Memo1.Lines.Add(ph.Comments[I].Author + ' : ' + ph.Comments[I].Value);
      end;
    end;
  end;

  Screen.Cursor := crDefault;
end;

procedure TForm816.ToggleControls;
begin
  Button1.Enabled := not connected;
  Button3.Enabled := connected;
  ListView1.Enabled := connected;
  ListView2.Enabled := connected;
  SpeedButton3.Enabled := connected;
  Edit1.Enabled := connected;
  Edit2.Enabled := connected;
  ComboBox1.Enabled := connected;
end;

end.
