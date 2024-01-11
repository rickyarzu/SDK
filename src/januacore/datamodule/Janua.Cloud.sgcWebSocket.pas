unit Janua.Cloud.sgcWebSocket;

interface

uses
  System.SysUtils, System.Classes, sgcBase_Classes, sgcLib_Telegram_Client, sgcLibs;

type
  TdmCloudWebSocket = class(TDataModule)
   sgcTDLib_Telegram1: TsgcTDLib_Telegram;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCloudWebSocket: TdmCloudWebSocket;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
