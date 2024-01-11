program StyleChangeDemo;

uses
  Vcl.Forms,
  System.SysUtils,
  System.Types,
  Windows,
  IOUtils,
  uMain in '..\..\..\..\lib\vcl-styles-utils\Demos\Vcl Styles Hooks (Demo App)\uMain.pas' {FrmMain},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

function PathCanonicalize(lpszDst: PChar; lpszSrc: PChar): LongBool; stdcall; external 'shlwapi.dll' name 'PathCanonicalizeW';

function ResolvePath(const RelPath, BasePath: string): string;
var
  lpszDst: array[0..MAX_PATH-1] of char;
begin
  PathCanonicalize(@lpszDst[0], PChar(IncludeTrailingPathDelimiter(BasePath) + RelPath));
  Exit(lpszDst);
end;

procedure LoadVCLStyles;
var
  f, s : string;
  LFiles : TStringDynArray;
begin
  s := ExtractFilePath(ParamStr(0));
  LFiles := TDirectory.GetFiles(s, '*.vsf');
  if Length(LFiles)>0 then
  begin
   for f in TDirectory.GetFiles(s, '*.vsf') do
     if TStyleManager.IsValidStyle(f) then
       TStyleManager.LoadFromFile(f);
  end
  else
  begin
    s := ResolvePath('..\..\..\Styles',ExtractFilePath(ParamStr(0)));
    for f in TDirectory.GetFiles(s, '*.vsf') do
     if TStyleManager.IsValidStyle(f) then
      TStyleManager.LoadFromFile(f);
  end;
end;

begin
  // LoadVCLStyles;
  Application.Initialize;
  TStyleManager.TrySetStyle('Amakrits');
  Application.MainFormOnTaskbar := True;
  AApplication.CreateForm(TFrmMain, FrmMain);
  pplication.Run;
end.
