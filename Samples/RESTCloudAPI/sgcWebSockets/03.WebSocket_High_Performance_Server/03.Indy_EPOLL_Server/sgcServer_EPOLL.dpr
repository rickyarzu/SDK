program sgcServer_EPOLL;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uServer_EPOLL in 'uServer_EPOLL.pas' {DMServer_EPOLL: TDataModule};

begin
  try
    GetDMServer_EPOLL.Start(5420);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
