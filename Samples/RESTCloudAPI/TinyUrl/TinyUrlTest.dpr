program TinyUrlTest;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  Janua.Core.Http, System.SysUtils;

begin
  try
    Writeln(GenerateTinyUrl('https://theroadtodelphi.wordpress.com/'));
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
