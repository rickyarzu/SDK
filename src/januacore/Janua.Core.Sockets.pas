unit Janua.Core.Sockets;

{$I JANUACORE.INC}

interface

uses
  System.Classes, System.SysUtils, System.Diagnostics, System.TimeSpan, IdHTTP,
  System.StrUtils, System.Net.HttpClient, System.Net.URLClient,
{$IFDEF MSWINDOWS} Winapi.WinSock, WinInet, System.Ansistrings, {$ENDIF}
{$IFDEF WEBBROKER} Web.HttpApp, {$ENDIF WEBBROKER}
  // Janua
  Janua.Core.Types, Janua.Core.Classes, Janua.Legacy.Classes, Janua.Http.Types;

{$IFDEF MSWINDOWS}
function LocalIP: String;
function IPAddrToName(const IPAddr: String): String;
{$ENDIF MSWINDOWS}
{$IFNDEF MSWINDOWS}
function LocalIP: string;
function IPAddrToName(const IPAddr: string): string;
{$ENDIF}
function GetInetFile(const fileURL, FileName: String; const timeout: integer): boolean;

function OpenUrlIndy(const AURL: string; aMethod: TJanuaHttpMethod = jhmGet; aParams: TJanuaParams = nil;
  ParamTypes: TJanuaHttpParamTypes = TJanuaHttpParamTypes.jhtStrings): string;
{$IFNDEF fpc}
function OpenUrlDelphi(const AURL: string; aParams: TJanuaParams = nil; aMime: TJanuaMime = nil;
  aMethod: TJanuaHttpMethod = TJanuaHttpMethod.jhmGet): string; overload;
{$ENDIF}

implementation

function OpenUrlDelphi(const AURL: string; aParams: TJanuaParams = nil; aMime: TJanuaMime = nil;
  aMethod: TJanuaHttpMethod = TJanuaHttpMethod.jhmGet): string; overload;
var
  LResponse: IHTTPResponse;
  FHTTPClient: THTTPClient;
begin
  FHTTPClient := THTTPClient.Create;
  try
    if aMethod = TJanuaHttpMethod.jhmNone then
      aMethod := jhmGet;

    case aMethod of
      jhmGet:
        if aMime <> nil then
          LResponse := FHTTPClient.Get(AURL, nil, [TNameValuePair.Create('accept', aMime.MimeString)])
        else
          LResponse := FHTTPClient.Get(AURL, nil, []);
      jhmPost:
        FHTTPClient.Post(AURL, aParams.AsHttpUrlPostStrings);
    else
      raise Exception.Create('OpenUrlDelphi Method not allowed: ' + JanuaHttpMethodString[aMethod]);
    end;
    if LResponse.StatusCode = HTTP_STATUS.OK then
      Result := LResponse.ContentAsString(TEncoding.UTF8);
  finally
    FHTTPClient.Free;
  end;

end;

function OpenUrlIndy(const AURL: string; aMethod: TJanuaHttpMethod = jhmGet; aParams: TJanuaParams = nil;
  ParamTypes: TJanuaHttpParamTypes = TJanuaHttpParamTypes.jhtStrings): string;
var
  IdHTTP1: TIdHTTP;
  fsSource: string;
  sUrl: string;
  sStrings: TStrings;
begin
  IdHTTP1 := TIdHTTP.Create(nil);

  try
    case aMethod of
      TJanuaHttpMethod.jhmGet:
        begin
          // in questo caso chiamo l'URL usando i parametri come httpGetString;
          sUrl := AURL + IfThen(aParams <> nil, aParams.AsHttpUrlGetString, '');
          Result := IdHTTP1.Get(sUrl);
        end;
      TJanuaHttpMethod.jhmPost:
        begin
          sStrings := TStringList.Create;
          try
            sStrings.Text := IfThen(aParams <> nil, aParams.AsHttpUrlPostStrings.Text, '');
            Result := IdHTTP1.Post(AURL, sStrings);
          finally
            sStrings.Free;
          end;
        end;
    end;
    Result := IdHTTP1.Get(AURL);
  finally
    IdHTTP1.Free;
    // fsSource.Free;
  end;
end;

{$IFDEF MSWINDOWS}

function GetInetFile(const fileURL, FileName: String; const timeout: integer): boolean;
const
  BufferSize = 1024;
var
  hSession, hURL: HInternet;
  Buffer: array [1 .. BufferSize] of Byte;
  BufferLen: Cardinal;
  f: File;
  Stopwatch: TStopwatch;
  Elapsed: TTimeSpan;
  // sAppName: string;
begin
  Stopwatch := TStopwatch.StartNew;
  // sAppName := ExtractFileName(Application.ExeName) ;
  hSession := InternetOpen(PChar('Ergomercator'), INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
  try
    hURL := InternetOpenURL(hSession, PChar(fileURL), nil, 0, 0, 0);
    try
      AssignFile(f, FileName);
      Rewrite(f, 1);
      repeat
        InternetReadFile(hURL, @Buffer, SizeOf(Buffer), BufferLen);
        Elapsed := Stopwatch.Elapsed;
        BlockWrite(f, Buffer, BufferLen);
        if Elapsed.Milliseconds > timeout then
          BufferLen := 0 until BufferLen = 0;
        CloseFile(f);
        Result := True;
      finally
        InternetCloseHandle(hURL)
      end
    finally
      InternetCloseHandle(hSession)
    end
  end;
{$ELSE}

function GetInetFile(const fileURL, FileName: String; const timeout: integer): boolean;
var
  MyFile: TFileStream;
  IdHTTP1: TIdHTTP;
begin
  MyFile := nil;
  IdHTTP1 := nil;
  try
    // Correct path handling to be added
    // filename should be extracted from the url etc etc.
    MyFile := TFileStream.Create(FileName, fmCreate);
    Result := True;
  except
    Result := false;
  end;

  if Result then
    try
      IdHTTP1 := TIdHTTP.Create(nil);
      IdHTTP1.Get(fileURL, MyFile);
      // do stuff with the file
    finally
      IdHTTP1.Free;
    end;
end;
{$ENDIF}
{$IFNDEF MSWINDOWS}

function LocalIP: string;
begin
  Result := '';
end;

function IPAddrToName(const IPAddr: string): string;
begin
  Result := '';
end;

{$ENDIF}
{$IFDEF MSWINDOWS}

function LocalIP: String;
type
  TaPInAddr = array [0 .. 10] of PInAddr;
  PaPInAddr = ^TaPInAddr;
var
  phe: PHostEnt;
  pptr: PaPInAddr;
  Buffer: array [0 .. 63] of AnsiChar;
  I: integer;
  GInitData: TWSAData;
begin
  WSAStartup($101, GInitData);
  Result := '';
  GetHostName(Buffer, SizeOf(Buffer));
  phe := GetHostByName(Buffer);
  if phe = nil then
    Exit;
  pptr := PaPInAddr(phe^.h_addr_list);
  I := 0;
  while pptr^[I] <> nil do
  begin
    Result := Char(inet_ntoa(pptr^[I]^));
    Inc(I);
  end;
  WSACleanup;
end;

function IPAddrToName(const IPAddr: String): String;
var
  SockAddrIn: TSockAddrIn;
  HostEnt: PHostEnt;
  WSAData: TWSAData;
begin
  WSAStartup($101, WSAData);
  SockAddrIn.sin_addr.s_addr := inet_addr(PAnsiChar(AnsiString(IPAddr)));
  HostEnt := gethostbyaddr(@SockAddrIn.sin_addr.s_addr, 4, AF_INET);
  if HostEnt <> nil then
    Result := UnicodeString(System.Ansistrings.StrPas(HostEnt^.h_name))
  else
    Result := UnicodeString('');
end;

{$ENDIF}

end.
