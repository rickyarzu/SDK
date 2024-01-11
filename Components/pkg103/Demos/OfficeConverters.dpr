program OfficeConverters;

uses
  Forms,
  MainFrm in '..\..\..\..\Libraries\TRichView\TRichView\Demos\DelphiUnicode\OfficeConverters\MainFrm.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
