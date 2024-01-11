unit Janua.Core.FTP;

interface

{$I JANUACORE.INC}

uses
  // System and Delphi Units
  System.Classes, System.SysUtils,
  // Indy Components
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP,
  // Janua Core Components
  Janua.Core.System, Janua.Core.Functions, Janua.Core.Classes;

{ ************************ original component source *************************************
  http://delphi.cjcsoft.net//viewthread.php?tid=46591
  Title: FTP Up and Download with Indy

  Question: Shows compile or script based file-transfer
  ///**************************************************************************************** }

type
  TJanuaFTP = class(TJanuaCoreComponent)
    // file read & write and FTP PUT / GET function , loc's = 93
    // shows subroutines of assign file direct from filesystem to a FTP Upload!
    // set the file direct with PATH AND HOST
  private const
    E6 = 1000000;

  private
    FFilePath: string;
    FHostName: string;
    FUserName: string;
    FPassword: string;
    FSize: Integer;
    FTargetDir: string;
    FPort: Word;
    FUseSSL: boolean;
    procedure SetFilePath(const Value: string);
    procedure SetHostName(const Value: string);
    procedure SetPassword(const Value: string);
    procedure SetSize(const Value: Integer);
    procedure SetTargetDir(const Value: string);
    procedure SetUsername(const Value: string);
    procedure SetPort(const Value: Word);
    procedure SetUseSSL(const Value: boolean);
  public
    procedure Upload(MyFile: string); overload;
    procedure Upload; overload;
    procedure Download(MyFile: string); overload;
    procedure Download; overload;
    constructor Create(AOwner: TComponent); override;
  published
    property FilePath: string read FFilePath write SetFilePath;
    property HostName: string read FHostName write SetHostName;
    property Username: string read FUserName write SetUsername;
    property Password: string read FPassword write SetPassword;
    property Size: Integer read FSize write SetSize;
    property TargetDir: string read FTargetDir write SetTargetDir;
    property Port: Word read FPort write SetPort default 21;
    property UseSSL: boolean read FUseSSL write SetUseSSL default False;
  end;

implementation

uses Janua.Application.Framework;

procedure TJanuaFTP.Upload(MyFile: string);
var
  ftpUpStream: TFileStream;
  myftp: TIdFTP;
begin
  // TFileStream.Create(afilename, fmOpenRead or fmShareCompat)
  // ftpUpStream:= TFileStream.create(ExePath+'examples/'+myFile, fmOpenRead)
  ftpUpStream := TFileStream.Create(FFilePath, fmopenread);
  myftp := TIdFTP.Create(self);
  try
    with myftp do
    begin
      Host := FHostName;
      Username := FUserName;
      Port := self.FPort;
      Password := FPassword;
    end;
    // Connect FTP server and Use PASV mode
    myftp.Connect;
    myftp.Passive := true;
    // Change directory and Upload
    // myftp.ChangeDir('httpdocs/download')
    if TargetDir <> '' then
      myftp.ChangeDir(TargetDir);
    myftp.Put(ftpUpStream, MyFile, False);
    writeln(inttoStr(myftp.Size(MyFile)))
  finally
    ftpUpStream.Free;
    // Disconnect to Quit();
    myftp.Disconnect;;
    myftp.Free;
    // test finally
    { TODO -oRiccardo : Add a TNotifyEvent to notify Users that Upload is finished }
  end;
end;

procedure TJanuaFTP.Download(MyFile: string);
var
  ftpDownStream: TFileStream;
  myftp: TIdFTP;
begin
  // il problema è che MyFile potrebbe essere un target di un file con Destinazione.....
  // Di default se non impostata potremmo assumere la Download Directory di JanuaOS
  ftpDownStream := TFileStream.Create(MyFile, fmCreate);
  myftp := TIdFTP.Create(self);
  try
    with myftp do
    begin
      Host := FHostName;
      Username := FUserName;
      Port := self.FPort;
      Password := FPassword;
    end;
    myftp.Connect;
    // myftp.Connect(FHostName, FPort);  nel caso servisse si possono passare tutti i parametri
    myftp.Passive := true;
    // myftp.filestructure
    if TargetDir <> '' then
      myftp.ChangeDir(TargetDir);
    // download
    myftp.Get(MyFile, ftpDownStream, False);
    self.WriteLog(inttoStr(myftp.Size(MyFile)))
  finally
    ftpDownStream.Free;
    if myftp.Connected then
      myftp.Disconnect;
    myftp.Free;
    // test finally
    { TODO -oRiccardo : Add a TNotifyEvent to notify Users that Download is finished }
  end;
end;

constructor TJanuaFTP.Create(AOwner: TComponent);
begin
  inherited;
  self.FPort := 21;
  self.FUseSSL := False;
  FFilePath := TJanuaCoreOS.ReadParam('TJanuaFTP', 'TargetDir', TJanuaCoreOS.AppDownloadsPath);
end;

procedure TJanuaFTP.Download;
begin

end;

procedure TJanuaFTP.SetFilePath(const Value: string);
begin
  FFilePath := Value;
end;

procedure TJanuaFTP.SetHostName(const Value: string);
begin
  FHostName := Value;
end;

procedure TJanuaFTP.SetPassword(const Value: string);
begin
  FPassword := Value;
end;

procedure TJanuaFTP.SetPort(const Value: Word);
begin
  FPort := Value;
end;

procedure TJanuaFTP.SetSize(const Value: Integer);
begin
  FSize := Value;
end;

procedure TJanuaFTP.SetTargetDir(const Value: string);
begin
  FTargetDir := Value;
end;

procedure TJanuaFTP.SetUsername(const Value: string);
begin
  FUserName := Value;
end;

procedure TJanuaFTP.SetUseSSL(const Value: boolean);
begin
  FUseSSL := Value;
end;

procedure TJanuaFTP.Upload;
begin

end;

end.
