{*******************************************************************************
                                 Falcon Sistemas

                          www.falconsistemas.com.br
                         suporte@falconsistemas.com.br
                 Written by Marlon Nardi - ALL RIGHTS RESERVED.
*******************************************************************************}

unit FS.Cookies;

interface

uses
  System.Classes, System.DateUtils, System.SysUtils;

type
  TCookies = class
  private
    FSistema: string;
    FNome: string;
    FValor: string;
    FDiasExpira: Integer;
    FCaminho: string;
    FHttpOnly: Boolean;
    FSecure: Boolean;
  public
    property Sistema: string read FSistema write FSistema;
    property Nome: string read FNome write FNome;
    property Valor: string read FValor write FValor;
    property DiasExpira: Integer read FDiasExpira write FDiasExpira;
    property Caminho: string read FCaminho write FCaminho;
    property HttpOnly: Boolean read FHttpOnly write FHttpOnly;
    property Secure: Boolean read FSecure write FSecure;

    function GetCookiesValor(Nome: string): string;
    function GetCookiesNome(Valor: string): string;

    function GetValSistema(Sistema, Nome: string): string;
    function GetListNomeSistema(Sistema: string): TStringList;

    procedure SetCookies; overload;

    class procedure SetCookies(Name, Valor, Domain: string); overload;
    class procedure SetExpiredCookies(Name, Valor, Domain: string);
    class function GetValorCookeis(Name: string): string;

    constructor Create(AOwner: TComponent);
    destructor Destroy; override;

  end;

implementation

uses
  uniGUIApplication;

{ TCookies }

constructor TCookies.Create(AOwner: TComponent);
begin
  FSistema := EmptyStr;
  FNome := EmptyStr;
  FValor := EmptyStr;
  FDiasExpira := 0;
  FCaminho := '\';
  FSecure := False;
  FHttpOnly := False;
end;

class procedure TCookies.SetCookies(Name, Valor, Domain: string);
begin
  {$IFDEF DEBUG}
  UniSession.AddJS(
    'var expires = new Date(new Date().getTime() + 1825 * 24 * 60 * 60 * 1000 ); '+
    'document.cookie = "'+Name+'=" + "'+Valor+'" + "; expires=" + expires.toUTCString() + "; domain='+Domain+';path=/";'
  );
  {$ELSE}
  UniSession.AddJS(
    'var expires = new Date(new Date().getTime() + 1825 * 24 * 60 * 60 * 1000 ); '+
    'document.cookie = "'+Name+'=" + "'+Valor+'" + "; expires=" + expires.toUTCString() + "; domain='+Domain+';path=/;secure";'
  );
  {$ENDIF}
end;

class procedure TCookies.SetExpiredCookies(Name, Valor, Domain: string);
begin
  UniSession.AddJS(
    'var expires = new Date(new Date().getTime() - 1825 * 24 * 60 * 60 * 1000 ); '+
    'document.cookie = "'+Name+'=" + "'+Valor+'" + "; expires=" + expires.toUTCString() + "; domain='+Domain+';path=/";'
  );
end;

destructor TCookies.Destroy;
begin
  inherited;
end;

function TCookies.GetCookiesNome(Valor: string): string;
var
  vI: Integer;
begin
  with UniApplication.Cookies do
  begin
    for vI := 0 to Count - 1 do
    begin
      if ValueFromIndex[vI] = Valor then
      begin
        Result := Names[vI];
        Exit;
      end;
    end;
  end;
end;

function TCookies.GetCookiesValor(Nome: string): string;
begin
  Result := UniApplication.Cookies.Values[Nome];
end;

function TCookies.GetListNomeSistema(Sistema: string): TStringList;
var
  I: Integer;
begin
  Result := TStringList.Create;

  with UniApplication.Cookies do
  begin
    for I := 0 to Count - 1 do
    begin
      if Pos(Sistema, Names[I]) > 0 then
        Result.Add(Copy(Names[I], Length(Sistema) + 1, 100));
    end;
  end;
end;

class function TCookies.GetValorCookeis(Name: string): string;
begin
  Result := UniApplication.Cookies.Values[Name];
end;

function TCookies.GetValSistema(Sistema, Nome: string): string;
var
  I: Integer;
begin
  with UniApplication.Cookies do
  begin
    for I := 0 to Count - 1 do
    begin
      if Pos(Sistema, Names[I]) > 0 then
        if Pos(Nome, Names[I]) > 0 then
        begin
          Result := ValueFromIndex[I];
          Exit;
        end;
    end;
  end;
end;

procedure TCookies.SetCookies;
var
  vData: TdateTime;
begin
  vData := IncDay(Now, FDiasExpira);

  if FSistema <> EmptyStr then
    FNome := FSistema + FNome;

  UniApplication.Cookies.SetCookie(FNome, FValor, vData);
end;

end.
