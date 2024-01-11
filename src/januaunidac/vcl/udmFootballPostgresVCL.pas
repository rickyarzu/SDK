unit udmFootballPostgresVCL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udmFootballPostgres, Uni, Data.DB, DBAccess,
  Datasnap.DBClient, MemDS, Datasnap.Provider, Vcl.ExtDlgs, Janua.Core.Classes,
  Janua.Server.Functions, Janua.Postgres.Functions, Janua.Core.CustomControls, Janua.VCL.Dialogs;

type
  TdmFootballPostgresVCL = class(TdmFootballPostgres)
    OpenPictureDialog1: TOpenPictureDialog;
    JanuaDialog1: TJanuaDialog;
  private
    { Private declarations }
  public
    { Public declarations }
    function LoadImageOnCareer: integer;
  end;

var
  dmFootballPostgresVCL: TdmFootballPostgresVCL;

implementation

{$R *.dfm}

{ TdmFootballPostgresVCL }

function TdmFootballPostgresVCL.LoadImageOnCareer: integer;
begin
  Result := 0;
  if self.OpenPictureDialog1.Execute then
    if FileExists(self.OpenPictureDialog1.FileName) then
    begin
      begin
         self.OpenPictureDialog1.FileName;
      end;
    end;

end;

end.
