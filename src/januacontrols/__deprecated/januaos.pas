unit JanuaOS;

{$H+}

interface

uses
  {$ifdef fpc} LResources, {$endif}
  {$IFDEF MACOS}
      MacApi.CoreFoundation,
     {$IFNDEF IOS}  MacApi.Foundation,  {$ENDIF}
  {$ENDIF}
  {$IFDEF MSWINDOWS}
  Windows,
  {$ENDIF}
  Classes, SysUtils;

{$IFDEF MACOS}
function NSUserName: Pointer; cdecl; external '/System/Library/Frameworks/Foundation.framework/Foundation' name '_NSUserName';
{$ENDIF}


type

  { TJanuaOS }

  TJanuaOS = class(TComponent)
  private
    { Private declarations }
    function getOSVersion: string;
    function GetUserName: String;
    function getWildCard: string;
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
    property Version : string read getOSVersion;
    property UserName : string read GetUserName;
    property WildCardFile : string read getWildCard;
  end;

procedure Register;

implementation

procedure Register;
begin
  {$ifdef fpc} {$I JanuaOS_icon.lrs}  {$endif}
  RegisterComponents('Januaproject',[TJanuaOS]);
end;

function GetUserName: String;
{$IFDEF MSWINDOWS}
var
  nSize: DWord;
{$ENDIF}
begin
  Result := '';

  {$IFDEF MACOS}
    {$IFNDEF IOS}  Result := TNSString.Wrap(NSUserName).UTF8String; {$ENDIF}
  {$ENDIF}
  {$IFDEF MSWINDOWS}
  nSize := 1024;
  SetLength(Result, nSize);
  if Windows.GetUserName(PChar(Result), nSize) then
  begin
    SetLength(Result, nSize - 1)
  end
  else
  begin
    RaiseLastOSError;
  end
  {$ENDIF}
end;

function TJanuaOS.getOSVersion: string;
begin
  {$IFDEF LCLcarbon}
     OSVersion := 'Mac OS X 10.';
  {$ENDIF}

  {$IFDEF Linux}
      OSVersion := 'Linux Kernel ';
  {$ENDIF}
  {$IFDEF UNIX}
     OSVersion := 'Unix ';
  {$ENDIF}

  {$IFDEF WINDOWS}
  if WindowsVersion = wv95 then OSVersion := 'Windows 95 '
   else if WindowsVersion = wvNT4 then OSVersion := 'Windows NT v.4 '
   else if WindowsVersion = wv98 then OSVersion := 'Windows 98 '
   else if WindowsVersion = wvMe then OSVersion := 'Windows ME '
   else if WindowsVersion = wv2000 then OSVersion := 'Windows 2000 '
   else if WindowsVersion = wvXP then OSVersion := 'Windows XP '
   else if WindowsVersion = wvServer2003 then OSVersion := 'Windows Server 2003 '
   else if WindowsVersion = wvVista then OSVersion := 'Windows Vista '
   else if WindowsVersion = wv7 then OSVersion := 'Windows 7 '
   else OSVersion:= 'Windows ';
  {$ENDIF}
end;



function TJanuaOS.GetUserName: String;
begin

end;

function TJanuaOS.getWildCard: string;
begin
  {$ifdef fpc}
        {$IFDEF UNIX}
             Result := '/*';
        {$ENDIF}
        {$IFDEF WINDOWS}
             Result := '\*.*';
        {$ENDIF}
  {$endif}

  {$IFDEF MACOS}
    Result :=  '/*';
  {$ENDIF}

  {$IFDEF MSWINDOWS}
       Result := '\*.*';
  {$ENDIF}
end;

end.
