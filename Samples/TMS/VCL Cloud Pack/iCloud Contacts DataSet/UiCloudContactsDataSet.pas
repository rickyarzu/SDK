unit UiCloudContactsDataSet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CloudWebDav, StdCtrls, ExtCtrls, Grids, DBGrids, DB, DBClient, DBCtrls, JPEG,
  ComCtrls, Mask;

type
  TForm4 = class(TForm)
    iCloudContacts1: TiCloudContacts;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edUser: TEdit;
    edPassword: TEdit;
    Button1: TButton;
    WebDavStorage1: TAdvWebDavStorage;
    WebDavSync1: TAdvWebDavSync;
    WebDavDataSet1: TAdvWebDavDataSet;
    DataSource1: TDataSource;
    Button2: TButton;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Button3: TButton;
    DBNavigator1: TDBNavigator;
    EmailDS: TAdvWebDavCollectionFieldDataSet;
    DataSource2: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid2: TDBGrid;
    DataSource3: TDataSource;
    PhoneDS: TAdvWebDavCollectionFieldDataSet;
    AddressDS: TAdvWebDavCollectionFieldDataSet;
    DataSource4: TDataSource;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBImage1: TDBImage;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    DBMemo1: TDBMemo;
    Label8: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure WebDavDataSet1AfterScroll(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowPhotoField;
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
  inifile: TINIFile;
begin
  try
    iCloudContacts1.Username := edUser.Text;
    iCloudContacts1.Password := edPassword.Text;
    iCloudContacts1.Open;

    inifile := TINIFile.Create(INIFILENAME);
    inifile.WriteString('LOGIN','USERNAME',edUser.Text);
    inifile.WriteString('LOGIN','PASSWORD',edPassword.Text);
    inifile.Free;

    WebDavDataSet1.Refresh;
    ShowPhotoField;
  except
    Exit;
  end;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  iCloudContacts1.Sync;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  // make sure iCloudContacts is active
  iCloudContacts1.Active := true;

  // do a sync
  iCloudContacts1.Sync;

  // refresh dataset
  WebDavDataSet1.Refresh;
end;

procedure TForm4.DateTimePicker1Change(Sender: TObject);
begin
  WebDavDataSet1.Edit;
  WebDavDataSet1.FieldByName('VCard_Birthday').AsDateTime := DateTimePicker1.Date;
end;

procedure TForm4.FormCreate(Sender: TObject);
var
  inifile: TINIFile;

begin
  inifile := TINIFile.Create(INIFILENAME);
  try
    edUser.Text := inifile.ReadString('LOGIN','USERNAME','');
    edPassword.Text := inifile.ReadString('LOGIN','PASSWORD','');
  finally
    inifile.Free;
  end;

  iCloudContacts1.Username := edUser.Text;
  iCloudContacts1.Password := edPassword.Text;

  WebDavDataSet1.Active := true;
end;

procedure TForm4.ShowPhotoField;
var
  bf: TBlobField;
  ms: TMemoryStream;
  Pic: TJPEGImage;
begin
  DBImage1.Picture.Assign(nil);
  bf := WebDavDataSet1.FieldByName('Photo') as TBlobField;
  ms := TMemoryStream.Create;
  bf.SaveToStream(ms);

  ms.Position := 0;

  if ms.Size = 0 then
    Exit;

  Pic := TJpegImage.Create;
  try
    Pic.LoadFromStream(ms);
    DBImage1.Picture.Assign(pic);
  finally
    pic.Free;
  end;
end;

procedure TForm4.WebDavDataSet1AfterScroll(DataSet: TDataSet);
begin
  ShowPhotoField;

  DateTimePicker1.Date := WebDavDataSet1.FieldByName('VCard_Birthday').AsDateTime;
end;

end.
