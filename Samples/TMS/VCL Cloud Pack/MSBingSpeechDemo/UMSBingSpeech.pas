unit UMSBingSpeech;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.StdCtrls,
  CloudBase, MMSystem, CloudCustomMSBingSpeech, CloudMSBingSpeech,
  Vcl.ExtCtrls;

type
  TForm13 = class(TForm)
    btSynthesize: TButton;
    Memo1: TMemo;
    AdvMSBingSpeech1: TAdvMSBingSpeech;
    Panel1: TPanel;
    btConnect: TButton;
    btRemove: TButton;
    cbType: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    procedure btSynthesizeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvMSBingSpeech1Connected(Sender: TObject);
    procedure btConnectClick(Sender: TObject);
    procedure btRemoveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Connected: boolean;
    procedure ToggleControls;
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  MSBingSpeechAppkey = 'xxxxxxxxx';

{$I APPIDS.INC}

procedure TForm13.AdvMSBingSpeech1Connected(Sender: TObject);
begin
  AdvMSBingSpeech1.SaveTokens;
  Connected := true;
  ToggleControls;
end;

procedure TForm13.btConnectClick(Sender: TObject);
begin
  AdvMSBingSpeech1.PersistTokens.Location := plIniFile;
  AdvMSBingSpeech1.PersistTokens.Key := '.\bingspeech.ini';
  AdvMSBingSpeech1.PersistTokens.Section := 'tokens';
  AdvMSBingSpeech1.LoadTokens;
  AdvMSBingSpeech1.Connect;
end;

procedure TForm13.btRemoveClick(Sender: TObject);
begin
  AdvMSBingSpeech1.ClearTokens;
  Connected := false;
  ToggleControls;
end;

procedure TForm13.btSynthesizeClick(Sender: TObject);
var
  fname: string;
  st: TMemoryStream;
begin
  if cbType.ItemIndex = 0 then
  begin
    st := TMemoryStream.Create;
    AdvMSBingSpeech1.Synthesize(Memo1.Text, st);

    if Assigned(st) then
      PlaySound(st.Memory, HInstance, SND_MEMORY or SND_ASYNC);
    st.Free;
  end
  else
  begin
    fname := 'synthesize.wav';
    AdvMSBingSpeech1.Synthesize(Memo1.Text, fname);

    if FileExists(fname) then
      PlaySound(pchar(fname), HInstance, SND_FILENAME or SND_ASYNC);
  end;
end;

procedure TForm13.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;

  Connected := false;
  ToggleControls;

  Memo1.Text := 'TMS Software Cloud Pack Demo';

  AdvMSBingSpeech1.App.Key := MSBingSpeechAppKey;
end;

procedure TForm13.ToggleControls;
begin
  btConnect.Enabled := not Connected;
  btSynthesize.Enabled := Connected;
  btRemove.Enabled := Connected;
  cbType.Enabled := Connected;
  Memo1.Enabled := Connected;
end;

end.
