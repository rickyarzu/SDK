unit UDemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, CloudBase,
  CloudBaseWin, CloudCustomExceptionless, CloudExceptionless;

type
  TForm132 = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    AdvExceptionLess1: TAdvExceptionLess;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    ComboBox2: TComboBox;
    Label5: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    Button2: TButton;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Button3: TButton;
    Label7: TLabel;
    Edit7: TEdit;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure AdvExceptionLess1ReceivedAccessToken(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    Connected: Boolean;
  public
    { Public declarations }
    procedure ToggleControls;
    procedure FillProjects;
  end;

var
  Form132: TForm132;

implementation

{$R *.dfm}

uses
  TypInfo, StrUtils;

procedure TForm132.AdvExceptionLess1ReceivedAccessToken(Sender: TObject);
begin
  AdvExceptionLess1.SaveTokens;
  Connected := true;
  ToggleControls;
  FillProjects;
end;

procedure TForm132.Button1Click(Sender: TObject);
var
  acc: boolean;
begin
  AdvExceptionLess1.Username := Edit1.Text;
  AdvExceptionLess1.Password := Edit2.Text;
  AdvExceptionless1.PersistTokens.Location := plIniFile;
  AdvExceptionless1.PersistTokens.Key := '.\exceptionless.ini';
  AdvExceptionless1.PersistTokens.Section := 'tokens';

  if (AdvExceptionLess1.Username <> '') and (AdvExceptionLess1.Password <> '') then
  begin
    AdvExceptionless1.LoadTokens;

    acc := AdvExceptionless1.TestTokens;

    if not acc then
    begin
      AdvExceptionless1.RefreshAccess;
      acc := AdvExceptionless1.TestTokens;
      if not acc then
        AdvExceptionless1.DoAuth;
    end
    else
    begin
      Connected := true;
      ToggleControls;
    end;

    FillProjects;
  end
  else
    ShowMessage('Please provide a valid username and password.');
end;

procedure TForm132.Button2Click(Sender: TObject);
begin
  AdvExceptionLess1.LogMessage(Edit3.Text, Edit4.Text, AdvExceptionLess1.Projects[ComboBox1.ItemIndex].ID, TExceptionlessLogLevel(ComboBox2.ItemIndex));
end;

procedure TForm132.Button3Click(Sender: TObject);
begin
  AdvExceptionLess1.LogException(Edit5.Text, Edit6.Text, Edit7.Text, AdvExceptionLess1.Projects[ComboBox1.ItemIndex].ID);
end;

procedure TForm132.Button4Click(Sender: TObject);
var
  a, b, c: Integer;
begin
  try
    a := 10;
    b := 0;
    c := a div b;
  except
    on e: Exception do
    begin
      Edit5.Text := e.Message;
      Edit6.Text := e.ClassName;
      Edit7.Text := e.StackTrace;
    end;
  end;
end;

procedure TForm132.ComboBox1Change(Sender: TObject);
begin
  GroupBox1.Enabled := Connected;
  GroupBox2.Enabled := Connected;
end;

procedure TForm132.FillProjects;
var
  I: Integer;
begin
  ComboBox1.Items.Clear;
  if Connected then
  begin
    AdvExceptionLess1.GetProjects;
    for I := 0 to AdvExceptionLess1.Projects.Count - 1 do
      ComboBox1.Items.Add(AdvExceptionLess1.Projects[I].Name);
  end;
end;

procedure TForm132.FormCreate(Sender: TObject);
var
  I: TExceptionlessLogLevel;
  nm: string;
begin
  for I := Low(TExceptionlessLogLevel) to High(TExceptionlessLogLevel) do
  begin
    nm := StringReplace(GetEnumName(TypeInfo(TExceptionlessLogLevel), Integer(I)), 'ell', '', [rfReplaceAll]);
    ComboBox2.Items.Add(nm);
  end;

  ComboBox2.ItemIndex := 0;
  Edit3.Text := 'Sample Log Message';
  Edit4.Text := ExtractFileName(Application.ExeName);
  Edit5.Text := 'Exception occurred at ' + DateTimeToStr(Now);
  Edit6.Text := 'ArgumentOutOfRangeException';
  Edit7.Text := 'at line 4 in UDemo.pas';
end;

procedure TForm132.ToggleControls;
begin
  Panel2.Enabled := Connected;
end;

end.
