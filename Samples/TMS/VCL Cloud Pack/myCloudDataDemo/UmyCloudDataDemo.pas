unit UmyCloudDataDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CloudBase, CloudBaseWin, CloudCustomDataStore,
  CloudCustomMyCloudData, CloudMyCloudData, DB, ExtCtrls, Buttons, RTTI,
  JPEG, ExtDlgs, ComCtrls, PNGImage;

type
  TForm1 = class(TForm)
    ConnectBtn: TButton;
    AdvMyCloudData1: TAdvMyCloudData;
    ListBox1: TListBox;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    sexqueryradio: TRadioGroup;
    NameEdit: TLabeledEdit;
    EmailEdit: TLabeledEdit;
    sexradio: TRadioGroup;
    AddBtn: TButton;
    UpdBtn: TButton;
    DelBtn: TButton;
    OpenDialog1: TOpenDialog;
    GroupBox2: TGroupBox;
    InsPicBtn: TSpeedButton;
    DelPicBtn: TSpeedButton;
    ContactImage: TImage;
    DisconnectBtn: TButton;
    BirthDateEdit: TDateTimePicker;
    Label2: TLabel;
    FriendEdit: TCheckBox;
    Label3: TLabel;
    procedure ConnectBtnClick(Sender: TObject);
    procedure AdvMyCloudData1Connected(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure UpdBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure InsPicBtnClick(Sender: TObject);
    procedure DelPicBtnClick(Sender: TObject);
    procedure sexqueryradioClick(Sender: TObject);
    procedure DisconnectBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    table: TMyCloudDataTable;
    busy: boolean;
    procedure Init;
    procedure GetRecords;
    procedure UpdateEntity(Entity: TMyCloudDataEntity);
    procedure ShowEntity(Entity: TMyCloudDataEntity);
    procedure InsertEntity(Entity: TMyCloudDataEntity);
    procedure FormToEntity(Entity: TMyCloudDataEntity);
    procedure Clear;
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
//  MYCLOUDDATAKEY = 'xxxxxxxxx';
//  MYCLOUDDATASECRET = 'xxxxxxxxx';

{$I APPIDS.INC}

procedure TForm1.AdvMyCloudData1Connected(Sender: TObject);
begin
  Init;
end;

procedure TForm1.DisconnectBtnClick(Sender: TObject);
begin
  Listbox1.Items.Clear;
  NameEdit.Text := '';
  EmailEdit.Text := '';
  ContactImage.Picture := nil;

  AdvMyCloudData1.ClearTokens;
  DisconnectBtn.Enabled := false;
  ConnectBtn.Enabled := true;
end;

procedure TForm1.ConnectBtnClick(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;

  AdvMyCloudData1.PersistTokens.Location := plIniFile;
  AdvMyCloudData1.PersistTokens.Key := '.\myclouddata.ini';
  AdvMyCloudData1.PersistTokens.Section := 'tokens';

  AdvMyCloudData1.App.Key := MYCLOUDDATAKEY;
  AdvMyCloudData1.App.Secret := MYCLOUDDATASECRET;

  AdvMyCloudData1.App.CallBackPort := 8888;
  AdvMyCloudData1.App.CallBackURL := 'http://127.0.0.1:8888';

  AdvMyCloudData1.Connect;
end;

procedure TForm1.AddBtnClick(Sender: TObject);
var
  entity: TMyCloudDataEntity;
begin
  entity := table.Entities.Add;
  InsertEntity(entity);
  listbox1.Items.AddObject(NameEdit.Text, entity);
end;

procedure TForm1.UpdBtnClick(Sender: TObject);
var
  entity: TMyCloudDataEntity;
begin
  if listbox1.ItemIndex >= 0 then
  begin
    entity := TMyCloudDataEntity(listbox1.Items.Objects[listbox1.ItemIndex]);
    UpdateEntity(entity);
    listbox1.Items[listbox1.ItemIndex] := entity.Value['NAME'];
  end;
end;

procedure TForm1.DelBtnClick(Sender: TObject);
var
  entity: TMyCloudDataEntity;
begin
  if listbox1.ItemIndex >= 0 then
  begin
    entity := TMyCloudDataEntity(listbox1.Items.Objects[listbox1.ItemIndex]);
    entity.Delete;
    listbox1.Items.Delete(listbox1.ItemIndex);
  end;
end;

procedure TForm1.Clear;
begin
  contactimage.Picture.Graphic := nil;
  NameEdit.Text := '';
  EmailEdit.Text := '';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  table := nil;
end;

procedure TForm1.FormToEntity(Entity: TMyCloudDataEntity);
begin
  Entity.Value['NAME'] := NameEdit.Text;
  Entity.Value['EMAIL'] := EmailEdit.Text;
  Entity.Value['BIRTHDATE'] := BirthDateEdit.Date;
  Entity.Value['FRIEND'] := FriendEdit.Checked;

  case sexradio.ItemIndex of
  0: Entity.Value['SEX'] := 'M';
  1: Entity.Value['SEX'] := 'F';
  end;

end;

procedure TForm1.GetRecords;
var
  i: integer;
  v: TValue;
begin
  if not Assigned(table) then
  begin
    ShowMessage('Please connect first');
    Exit;
  end;

  v := '';

  listbox1.Items.Clear;
  table.Filters.Clear;

  case sexqueryradio.ItemIndex of
  0: v := 'M';
  1: v := 'F';
  end;

  if (sexqueryradio.ItemIndex in [0,1]) then
    table.Filters.Add('SEX', v, coEqual);

  table.Query;

  for i := 0 to table.Entities.Count - 1 do
    listbox1.Items.AddObject(table.Entities[i].Value['NAME'], table.Entities[i])
end;

procedure TForm1.Init;
begin
  sexqueryradio.Enabled := true;
  AddBtn.Enabled := true;
  UpdBtn.Enabled := true;
  DelBtn.Enabled := true;
  InsPicBtn.Enabled := true;
  DelPicBtn.Enabled := true;
  ConnectBtn.Enabled := false;
  DisconnectBtn.Enabled := true;

  table := AdvMyCloudData1.TableByName('CONTACTS');

  if not Assigned(table) then
  begin
    table := AdvMyCloudData1.CreateTable('CONTACTS');
    table.MetaData.Add('NAME', ftString, 50);
    table.MetaData.Add('EMAIL',ftString, 50);
    table.MetaData.Add('SEX', ftString, 1);
    table.MetaData.Add('PICTURE', ftBlob);
    table.MetaData.Add('BIRTHDATE', ftDate);
    table.MetaData.Add('FRIEND', ftBoolean);
    table.SetMetaData;
  end
  else
  begin
    GetRecords;
  end;
end;

procedure TForm1.InsertEntity(Entity: TMyCloudDataEntity);
begin
  FormToEntity(Entity);
  Entity.Insert;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  if listbox1.ItemIndex >= 0 then
    ShowEntity(TMyCloudDataEntity(listbox1.Items.Objects[listbox1.ItemIndex]));
end;

procedure TForm1.sexqueryradioClick(Sender: TObject);
begin
  GetRecords;
end;

procedure TForm1.ShowEntity(Entity: TMyCloudDataEntity);
var
  ms: TMemoryStream;
  jpg: TJPEGImage;
  png: TPNGImage;
  b: byte;
begin
  if busy then
    Exit;

  busy := true;
  NameEdit.Text := Entity.Value['NAME'];
  EmailEdit.Text := Entity.Value['EMAIL'];
  BirthDateEdit.Date := Entity.Value['BIRTHDATE'];
  FriendEdit.Checked := Entity.Value['FRIEND'];

  if Entity.Value['SEX'] = 'M' then
    sexradio.ItemIndex := 0
  else
    sexradio.ItemIndex := 1;

  ms := TMemoryStream.Create;

  try
    Entity.Blob['PICTURE'].SaveToStream(ms);

    if ms.Size > 0 then
    begin
      ms.Position := 0;
      ms.Read(b,1);
      ms.Position := 0;

      if b = 137 then // png marker
      begin
        png := TPNGImage.Create;
        try
          png.LoadFromStream(ms);
          ContactImage.Picture.Assign(png);
        finally
          png.Free;
        end;
      end
      else
      begin
        jpg := TJPEGImage.Create;
        try
          jpg.LoadFromStream(ms);
          ContactImage.Picture.Assign(jpg);
        finally
          jpg.Free;
        end;
      end;
    end
    else
      ContactImage.Picture := nil;
  finally
    ms.Free;
  end;
  busy := false;
end;

procedure TForm1.InsPicBtnClick(Sender: TObject);
var
  entity: TMyCloudDataEntity;
begin
  if listbox1.ItemIndex >= 0 then
  begin
    entity := TMyCloudDataEntity(listbox1.Items.Objects[listbox1.ItemIndex]);

    if OpenDialog1.Execute then
    begin
      contactimage.picture.LoadFromFile(OpenDialog1.FileName);
      if not entity.Blob['PICTURE'].LoadFromFile(OpenDialog1.FileName) then
        ShowMessage('Upload failed, please try again');
    end;
  end
  else
    ShowMessage('No contact selected');
end;

procedure TForm1.DelPicBtnClick(Sender: TObject);
var
  entity: TMyCloudDataEntity;
begin
  if listbox1.ItemIndex >= 0 then
  begin
    ContactImage.Picture := nil;
    entity := TMyCloudDataEntity(listbox1.Items.Objects[listbox1.ItemIndex]);
    if not entity.Blob['PICTURE'].LoadFromStream(nil) then
      ShowMessage('Delete failed, please try again');
  end
  else
    ShowMessage('No contact selected');
end;

procedure TForm1.UpdateEntity(Entity: TMyCloudDataEntity);
begin
  FormToEntity(Entity);
  Entity.Update;
end;

end.
