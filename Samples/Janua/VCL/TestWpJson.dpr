program TestWpJson;

uses
  Vcl.Forms,
  ufrmTestLoginWordpress in 'ufrmTestLoginWordpress.pas' {Form2},
  DTO.WpJson in '..\..\..\src\januacore\orm\DTO.WpJson.pas',
  DTO.WpJson.PostList in '..\..\..\src\januacore\orm\DTO.WpJson.PostList.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
