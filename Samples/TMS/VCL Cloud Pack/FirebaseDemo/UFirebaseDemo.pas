{***************************************************************************}
{ TMS Cloud Firebase Demo                                                   }
{ for Delphi & C++Builder                                                   }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2017                                               }
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
unit UFirebaseDemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ComCtrls, System.Generics.Collections, CloudBase, CloudBaseWin,
  CloudCustomGoogle, CloudGoogleWin, CloudCustomFirebase,
  CloudCustomObjectFirebase, CloudFirebase;

type
  TGender = (gMale, gFemale, gUndefined);

  TFirebasePicture = class(TPicture)
  private
    function GetDataString: string;
    procedure SetDataString(const Value: string);
  published
    property DataString: string read GetDataString write SetDataString;
  end;


  TFirebaseContact = class(TFirebaseObject)
  private
    FName: string;
    FPicture: TFireBasePicture;
    FBirthDate: TDateTime;
    FEmail: string;
    FSex: TGender;
    FFriend: boolean;
    procedure SetPicture(const Value: TFireBasePicture);
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Name: string read FName write FName;
    property Email: string read FEmail write FEmail;
    property Sex: TGender read FSex write FSex;
    property BirthDate: TDateTime read FBirthDate write FBirthDate;
    property Picture: TFireBasePicture read FPicture write SetPicture;
    property Friend: boolean read FFriend write FFriend;
  end;

  TFirebaseContactList = TList<TFireBaseContact>;


  TForm1 = class(TForm)
    Label1: TLabel;
    ConnectBtn: TButton;
    ListBox1: TListBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    NameEdit: TLabeledEdit;
    EmailEdit: TLabeledEdit;
    sexradio: TRadioGroup;
    AddBtn: TButton;
    UpdBtn: TButton;
    DelBtn: TButton;
    BirthDateEdit: TDateTimePicker;
    FriendEdit: TCheckBox;
    sexqueryradio: TRadioGroup;
    GroupBox2: TGroupBox;
    InsPicBtn: TSpeedButton;
    DelPicBtn: TSpeedButton;
    ContactImage: TImage;
    DisconnectBtn: TButton;
    AdvFirebaseObjectDatabase1: TAdvFirebaseObjectDatabase;
    OpenDialog1: TOpenDialog;
    procedure ConnectBtnClick(Sender: TObject);
    procedure DisconnectBtnClick(Sender: TObject);
    procedure AdvFirebaseObjectDatabase1Connected(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UpdBtnClick(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure InsPicBtnClick(Sender: TObject);
    procedure DelPicBtnClick(Sender: TObject);
    procedure sexqueryradioClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    lst: TFirebaseObjectList;
  public
    { Public declarations }
    procedure Init;
    procedure GetObjects;
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
//  FAppKey = 'xxxxxxxxx';
//  FAppSecret = 'xxxxxxxxx';
//  FAppDatabase = 'xxxxxxxxx';

{$I APPIDS.INC}

procedure TForm1.AddBtnClick(Sender: TObject);
var
  c: TFireBaseContact;
begin
  c := TFireBaseContact.Create;
  c.Name := NameEdit.Text;
  c.Email := EmailEdit.Text;

  if sexradio.ItemIndex = 0 then
    c.Sex := gMale
  else
    c.Sex := gFeMale;

  c.BirthDate := BirthDateEdit.Date;

  c.Friend := FriendEdit.Checked;

  if not AdvFirebaseObjectDatabase1.InsertObject(c) then
    raise Exception.Create('Insert failed, please try again');

  c.Free;
  GetObjects;
end;

procedure TForm1.UpdBtnClick(Sender: TObject);
var
  c: TFireBaseContact;
begin
  if ListBox1.ItemIndex >= 0 then
  begin
    c := ListBox1.Items.Objects[ListBox1.ItemIndex] as TFirebaseContact;

    c.Name := NameEdit.Text;
    c.Email := EmailEdit.Text;

    if sexradio.ItemIndex = 0 then
      c.Sex := gMale
    else
      c.Sex := gFeMale;

    c.BirthDate := BirthDateEdit.Date;

    c.Friend := FriendEdit.Checked;

    if not AdvFirebaseObjectDatabase1.WriteObject(c) then
      raise Exception.Create('Update failed, please try again');

    GetObjects;
  end;
end;

procedure TForm1.AdvFirebaseObjectDatabase1Connected(Sender: TObject);
begin
  Init;
end;

procedure TForm1.ConnectBtnClick(Sender: TObject);
begin
  AdvFirebaseObjectDatabase1.Connect;
end;

procedure TForm1.DelBtnClick(Sender: TObject);
var
  c: TFireBaseContact;
begin
  if ListBox1.ItemIndex >= 0 then
  begin
    c := ListBox1.Items.Objects[ListBox1.ItemIndex] as TFirebaseContact;

    if not AdvFirebaseObjectDatabase1.DeleteObject(c) then
      raise Exception.Create('Delete failed, please try again');

    GetObjects;

    NameEdit.Text := '';
    EmailEdit.Text := '';
    BirthDateEdit.Date := 0;
    FriendEdit.Checked := false;
  end;
end;

procedure TForm1.DelPicBtnClick(Sender: TObject);
var
  c: TFireBaseContact;
begin
  if ListBox1.ItemIndex >= 0 then
  begin
    c := ListBox1.Items.Objects[ListBox1.ItemIndex] as TFirebaseContact;
    c.Picture := nil;
    AdvFirebaseObjectDatabase1.WriteObject(c);
    ContactImage.Picture := nil;
  end;
end;

procedure TForm1.DisconnectBtnClick(Sender: TObject);
begin
  Listbox1.Items.Clear;
  NameEdit.Text := '';
  EmailEdit.Text := '';
  ContactImage.Picture := nil;

  AdvFirebaseObjectDatabase1.ClearTokens;
  DisconnectBtn.Enabled := false;
  ConnectBtn.Enabled := true;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  lst.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  RegisterClass(TFirebaseContact);

  AdvFirebaseObjectDatabase1.PersistTokens.Location := plIniFile;
  AdvFirebaseObjectDatabase1.PersistTokens.Key := '.\firebase.ini';
  AdvFirebaseObjectDatabase1.PersistTokens.Section := 'tokens';

  AdvFirebaseObjectDatabase1.App.Key := FAppKey;
  AdvFirebaseObjectDatabase1.App.Secret := FAppSecret;
  AdvFirebaseObjectDatabase1.DatabaseName := FAppDatabase;

  AdvFirebaseObjectDatabase1.TableName := 'CONTACTS';

  lst := TFirebaseObjectList.Create;
end;

procedure TForm1.GetObjects;
var
  fbo: TFirebaseObject;
  bc: TFireBaseContact;
begin
  Screen.Cursor := crHourGlass;

  lst.Free;
  lst := TFirebaseObjectList.Create;

  try
    if (sexqueryradio.ItemIndex in [0,1]) then
    begin
      AdvFirebaseObjectDatabase1.AddIndexRule(AdvFirebaseObjectDatabase1.TableName, 'Sex');
      AdvFirebaseObjectDatabase1.QueryList('Sex', sexqueryradio.ItemIndex, lst);
    end
    else
      AdvFirebaseObjectDatabase1.ReadList(lst);

    ListBox1.Clear;

    for fbo in lst do
    begin
      bc := fbo as TFirebaseContact;
      ListBox1.AddItem(bc.Name, bc);
    end;

  finally
    Screen.Cursor := crDefault;
  end;
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

  GetObjects;
end;

procedure TForm1.InsPicBtnClick(Sender: TObject);
var
  c: TFirebaseContact;
begin
  if ListBox1.ItemIndex >= 0 then
  begin
    c := TFirebaseContact(ListBox1.Items.Objects[listbox1.ItemIndex]);

    if OpenDialog1.Execute then
    begin
      Screen.Cursor := crHourGlass;
      try
        ContactImage.Picture.LoadFromFile(OpenDialog1.FileName);
        c.Picture.LoadFromFile(OpenDialog1.FileName);

        AdvFirebaseObjectDatabase1.WriteObject(c);

        if not Assigned(c.Picture) then
          ShowMessage('Upload failed, please try again');
      finally
          Screen.Cursor := crDefault;
      end;
    end;
  end
  else
    ShowMessage('No contact selected');
end;

procedure TForm1.ListBox1Click(Sender: TObject);
var
  c: TFirebaseContact;
begin
  if ListBox1.ItemIndex >= 0 then
  begin
    c := ListBox1.Items.Objects[ListBox1.ItemIndex] as TFirebaseContact;

    NameEdit.Text := c.Name;
    EmailEdit.Text := c.Email;
    if c.Sex = gMale then
      sexradio.ItemIndex := 0
    else
      sexradio.ItemIndex := 1;
    BirthDateEdit.Date := c.BirthDate;
    FriendEdit.Checked := c.Friend;

    ContactImage.Picture := nil;
    if Assigned((c as TFirebaseContact).Picture) then
      ContactImage.Picture.Assign((c as TFirebaseContact).Picture);
  end;
end;

procedure TForm1.sexqueryradioClick(Sender: TObject);
begin
  GetObjects;
end;

{ TFireBasePicture }

function TFirebasePicture.GetDataString: string;
var
  ms: TMemoryStream;
begin
  ms := TMemoryStream.Create;
  try
    SaveToStream(ms);
    Result := StreamToHex(ms);
  finally
    ms.Free;
  end;
end;

procedure TFirebasePicture.SetDataString(const Value: string);
var
  ms: TMemoryStream;
begin
  ms := HexToStream(Value);
  try
    LoadFromStream(ms);
  finally
    ms.Free;
  end;
end;

{ TFireBaseCustomer }

constructor TFirebaseContact.Create;
begin
  inherited;
  FPicture := TFireBasePicture.Create;
end;

destructor TFirebaseContact.Destroy;
begin
  FPicture.Free;
  inherited;
end;

procedure TFirebaseContact.SetPicture(const Value: TFireBasePicture);
begin
  FPicture.Assign(Value);
end;

end.
