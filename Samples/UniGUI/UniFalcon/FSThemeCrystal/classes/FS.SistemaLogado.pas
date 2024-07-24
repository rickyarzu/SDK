{*******************************************************************************
                              Falcon Sistemas

                        www.falconsistemas.com.br
                      suporte@falconsistemas.com.br
                Written by Marlon Nardi - ALL RIGHTS RESERVED.

*******************************************************************************}

unit FS.SistemaLogado;

interface

type
  TAmbiente = (Producao, Homologacao);

  TSistemaLogado = class
  private
    FNavegador: string;
    FSO: string;
    FIP: string;
    FWidthMonitor: Integer;
    FHeightMonitor: Integer;
    FWidthScreen: Integer;
    FHeightScreen: Integer;
    FVersao: string;
    FVersaoData: TDateTime;
    FAmbiente: TAmbiente;
    FMobile: Boolean;
    FUserAgent: string;
    FGoogleAnalyticsDefined: Boolean;
    FCountry: string;
  public
    property Navegador: string read FNavegador write FNavegador;
    property SO: string read FSO write FSO;
    property IP: string read FIP write FIP;
    property WidthMonitor: Integer read FWidthMonitor write FWidthMonitor;
    property HeightMonitor: Integer read FHeightMonitor write FHeightMonitor;
    property WidthScreen: Integer read FWidthScreen write FWidthScreen;
    property HeightScreen: Integer read FHeightScreen write FHeightScreen;
    property Versao: string read FVersao write FVersao;
    property VersaoData: TDateTime read FVersaoData write FVersaoData;
    property Ambiente: TAmbiente read FAmbiente write FAmbiente;
    property Mobile: Boolean read FMobile write FMobile;
    property UserAgent: string read FUserAgent write FUserAgent;
    property GoogleAnalyticsDefined: Boolean read FGoogleAnalyticsDefined write FGoogleAnalyticsDefined;
    property Country: string read FCountry write FCountry;

    constructor Create;
  end;

implementation

{ TSistemaLogado }

constructor TSistemaLogado.Create;
begin
  Self.FGoogleAnalyticsDefined := True;
end;

end.
