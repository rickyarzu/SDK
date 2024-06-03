unit UCloudConvertDemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CloudBase, CloudConvert, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, ShellAPI, CloudCustomConvert;

type
  TForm6 = class(TForm)
    AdvCloudConvert1: TAdvCloudConvert;
    GroupBox1: TGroupBox;
    ProgressLabel: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    labelCStart: TLabel;
    labelCEnd: TLabel;
    labelCInputSize: TLabel;
    labelCOutputSize: TLabel;
    labelCOutputFile: TLabel;
    labelCExpires: TLabel;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    LabelInputFile: TLabel;
    btOpenInput: TButton;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    ComboOutput: TComboBox;
    btConvert: TButton;
    btOpenOutput: TButton;
    Label3: TLabel;
    ProgressBar1: TProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure AdvCloudConvert1DownloadProgress(Sender: TObject;
      FileName: string; Position, Total: Int64);
    procedure AdvCloudConvert1UploadProgress(Sender: TObject; FileName: string;
      Position, Total: Int64);
    procedure btConvertClick(Sender: TObject);
    procedure btOpenInputClick(Sender: TObject);
    procedure btOpenOutputClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InitLabels();
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  CloudConvertAppkey = 'xxxxxxxxx';

{$I APPIDS.INC}

procedure TForm6.AdvCloudConvert1DownloadProgress(Sender: TObject;
  FileName: string; Position, Total: Int64);
begin
  ProgressBar1.Position := Position;
  ProgressBar1.Max := Total;
  Progresslabel.Caption := InttoStr(Position) +' of ' + InttoStr(Total) +' downloaded';
end;

procedure TForm6.AdvCloudConvert1UploadProgress(Sender: TObject;
  FileName: string; Position, Total: Int64);
begin
  ProgressBar1.Position := Position;
  ProgressBar1.Max := Total;
  Progresslabel.Caption := InttoStr(Position) +' of ' + InttoStr(Total) +' uploaded';
  Application.ProcessMessages;
end;

procedure TForm6.btConvertClick(Sender: TObject);
var
  InputFile, OutputFile, OutputFormat: string;
begin
  Screen.Cursor := crHourGlass;
  ProgressBar1.Position := 0;
  InitLabels;
  btOpenOutput.Enabled := false;
  btConvert.Enabled := false;

  InputFile := LabelInputFile.Caption;
  OutputFormat := ComboOutput.Items[ComboOutput.ItemIndex];
  if OutputFormat = 'PNG' then
    OutputFile := 'OrderTMScomponents.ZIP'
  else
    OutputFile := 'OrderTMScomponents.' + OutputFormat;

  if AdvCloudConvert1.ConvertAndDownload(InputFile, OutputFile, 'PDF', OutputFormat) then
  begin
    btOpenOutput.Enabled := true;
    labelCStart.Caption := DateTimeToStr(AdvCloudConvert1.ConvertResult.StartTime);
    labelCEnd.Caption := DateTimeToStr(AdvCloudConvert1.ConvertResult.EndTime);
    labelCExpires.Caption := DateTimeToStr(AdvCloudConvert1.ConvertResult.ExpiryTime);
    labelCInputSize.Caption := IntToStr( AdvCloudConvert1.ConvertResult.InputFile.FileSize);
    labelCOutputSize.Caption := IntToStr( AdvCloudConvert1.ConvertResult.OutputFile.FileSize);
    labelCOutputFile.Caption := AdvCloudConvert1.ConvertResult.OutputFile.FileName;
  end
  else
  begin
    labelCStart.Caption := 'Conversion failed, please try again.';
  end;

  btConvert.Enabled := true;
  Screen.Cursor := crDefault;
end;

procedure TForm6.btOpenInputClick(Sender: TObject);
begin
  ShellExecute(Handle, 'open', pchar(LabelInputFile.Caption), nil, nil, SW_SHOWNORMAL);
end;

procedure TForm6.btOpenOutputClick(Sender: TObject);
begin
  if AdvCloudConvert1.ConvertResult.OutputFile.FileName <> '' then
    ShellExecute(Handle, 'open', pchar(AdvCloudConvert1.ConvertResult.OutputFile.FileName), nil, nil, SW_SHOWNORMAL);
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
  AdvCloudConvert1.App.Key := CloudConvertAppKey;
  btOpenOutput.Enabled := false;
  ComboOutput.ItemIndex := 0;
  InitLabels;
end;

procedure TForm6.InitLabels;
begin
  labelCStart.Caption := '';
  labelCEnd.Caption := '';
  labelCExpires.Caption := '';
  labelCInputSize.Caption := '';
  labelCOutputSize.Caption := '';
  labelCOutputFile.Caption := '';
end;

end.
