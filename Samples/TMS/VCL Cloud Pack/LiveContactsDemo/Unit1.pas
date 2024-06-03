{***************************************************************************}
{ TMS Cloud Pack                                                            }
{ for Delphi & C++Builder                                                   }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2012 - 2014                                        }
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
  Dialogs, CloudBase, StdCtrls, CloudLiveContacts, CloudCustomLiveContacts, CloudLiveWin,
  ExtCtrls, ComCtrls, CloudBaseWin, CloudCustomLive;

type

  TForm1 = class(TForm)
    AdvLiveContacts1: TAdvLiveContacts;
    Panel1: TPanel;
    Button1: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    edFirstName: TEdit;
    btAdd: TButton;
    edLastName: TEdit;
    cbGender: TComboBox;
    ListView1: TListView;
    dpBirthDay: TDateTimePicker;
    Label4: TLabel;
    Image1: TImage;
    btRemove: TButton;
    procedure Button1Click(Sender: TObject);
    procedure AdvLiveContacts1ReceivedAccessToken(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure GetContacts();
    procedure ClearControls;
    procedure ToggleControls;
    procedure Init;
    procedure FormCreate(Sender: TObject);
    procedure btRemoveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Connected: boolean;

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
//  LiveAppkey = 'xxxxxxxxx';
//  LiveAppSecret = 'yyyyyyyy';

{$I APPIDS.INC}

procedure TForm1.AdvLiveContacts1ReceivedAccessToken(Sender: TObject);
begin
  AdvLiveContacts1.SaveTokens;
  Init;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  AdvLiveContacts1.App.Key := LiveAppkey;
  AdvLiveContacts1.App.Secret := LiveAppSecret;
  AdvLiveContacts1.Logging := true;

  if not AdvLiveContacts1.TestTokens then
    AdvLiveContacts1.RefreshAccess;

  if not AdvLiveContacts1.TestTokens then
    AdvLiveContacts1.DoAuth
  else
    Init;
end;

procedure TForm1.btAddClick(Sender: TObject);
var
  li: TLiveContactItem;
begin
  Screen.Cursor := crHourGlass;
  li := AdvLiveContacts1.Items.Add;

  li.FirstName := edFirstName.Text;
  li.LastName := edLastName.Text;

  if cbGender.ItemIndex = 0 then
    li.Gender := geNotSpecified
  else if cbGender.ItemIndex = 1 then
    li.Gender := geFemale
  else if cbGender.ItemIndex = 2 then
    li.Gender := geMale;

  li.BirthDay := StrToInt(FormatDateTime('dd', dpBirthDay.Date));
  li.BirthMonth := StrToInt(FormatDateTime('MM', dpBirthDay.Date));

  AdvLiveContacts1.Add(li);

  GetContacts;
  ClearControls;
  Screen.Cursor := crDefault;
end;

procedure TForm1.btRemoveClick(Sender: TObject);
begin
  AdvLiveContacts1.ClearTokens;
  Connected := false;
  ToggleControls;
end;

procedure TForm1.ClearControls;
begin
  edFirstName.Text := '';
  edLastName.Text := '';
  cbGender.ItemIndex := 0;
  dpBirthDay.Date := Now;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;

  AdvLiveContacts1.PersistTokens.Location := plIniFile;
  AdvLiveContacts1.PersistTokens.Key := '.\live.ini';
  AdvLiveContacts1.PersistTokens.Section := 'tokens';
  AdvLiveContacts1.LoadTokens;

  Connected := False;
  ToggleControls;
  ClearControls;
end;

procedure TForm1.GetContacts;
var
  I: integer;
  li: TListItem;
begin
 AdvLiveContacts1.GetContacts;

 ListView1.Items.Clear;
 for I := 0 to AdvLiveContacts1.Items.Count - 1 do
 begin
    li := ListView1.Items.Add;
    li.Caption := AdvLiveContacts1.Items[I].FirstName + ' ' + AdvLiveContacts1.Items[I].LastName;
    li.SubItems.Add(IntToStr(AdvLiveContacts1.Items[I].BirthDay) + '/' + IntToStr(AdvLiveContacts1.Items[I].BirthMonth));

    if AdvLiveContacts1.Items[I].IsFavorite then
      li.SubItems.Add('Yes')
    else
      li.SubItems.Add('No');

    if AdvLiveContacts1.Items[I].Gender = geFemale then
      li.SubItems.Add('Female')
    else if AdvLiveContacts1.Items[I].Gender = geMale then
      li.SubItems.Add('Male')
    else
      li.SubItems.Add('');

    li.Data := AdvLiveContacts1.Items[I];
 end;
end;

procedure TForm1.Init;
begin
  Screen.Cursor := crHourGlass;
  Connected := True;
  ToggleControls;
  ClearControls;
  GetContacts;
  Screen.Cursor := crDefault;
end;

procedure TForm1.ToggleControls;
begin
  edFirstName.Enabled := Connected;
  edLastName.Enabled := Connected;
  cbGender.Enabled := Connected;
  dpBirthDay.Enabled := Connected;
  btAdd.Enabled := Connected;
  btRemove.Enabled := Connected;
  Button1.Enabled := not Connected;
end;

end.
