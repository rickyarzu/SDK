program JsonSerializer;

uses
  Vcl.Forms,
  TestFrameWork,
  GUITestRunner,
  clJsonSerializerBase in '..\..\..\lib\Json-Serializer\json\clJsonSerializerBase.pas',
  clJsonSerializerTests in '..\..\..\lib\Json-Serializer\test\clJsonSerializerTests.pas',
  clJsonSerializer in '..\..\..\lib\Json-Serializer\json\clJsonSerializer.pas',
  clJsonParser in '..\..\..\lib\Json-Serializer\json\clJsonParser.pas';

{$R *.res}

begin
  System.ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  GUITestRunner.RunRegisteredTests;
end.
