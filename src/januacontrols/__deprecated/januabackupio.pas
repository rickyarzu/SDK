unit januabackupio;

{$ifdef fpc}
  {$mode objfpc}{$H+}
{$endif}



interface

uses
  Classes, SysUtils,  DBClient, JanuaOS,
  januadirectorybackup, MidasLib, DB;

type

  { JanuaDirectoryBackup }

  TJanuaDirBackupIO = class(TJanuaDirectoryBackupIO)
  private
    FHasErrors: boolean;
    FLastMessage: string;
    procedure InternalLog(log : string);
    { Private declarations }
  protected
    { Protected declarations }
    procedure SetRemoteDataset(const Value: TDataset); override;
    procedure SetDataset(const Value: TDataset); override;
  public
    { Public declarations }
    procedure AddNode(SearchResult : TDirNode ); override;

  published
    { Published declarations }
    property LastMessage : string read FLastMessage;
    property HasErrors : boolean read FHasErrors;
  end;

procedure Register;

implementation

procedure Register;
begin
{$ifdef fpc}
  {$I januadirectorybackup_icon.lrs}
{$endif}

  RegisterComponents('Janua System', [TJanuaDirBackupIO]);
end;

{ JanuaDirectoryBackup


}



procedure TJanuaDirBackupIO.AddNode(SearchResult: TDirNode);
begin
end;

procedure TJanuaDirBackupIO.InternalLog(log: string);
begin

end;

procedure TJanuaDirBackupIO.SetDataset(const Value: TDataset);
begin
  inherited;
  if (self.FDataset is TClientDataset) and not self.FDataset.Active then
      with (self.FDataset as TClientDataset) do
  begin
     FieldDefs.Add('ID', ftInteger, 0);
     FieldDefs.Add('ParentID', ftInteger, 0);
     FieldDefs.Add('Dir', ftString, 512);
     FieldDefs.Add('TreeOrder', ftString, 1024);
     FieldDefs.Add('Name', ftString, 256);
     FieldDefs.Add('Location', ftString, 1024);
     FieldDefs.Add('Title', ftString, 256);
     FieldDefs.Add('Description', ftString, 2048);
     FieldDefs.Add('Path', ftString, 1024);
     FieldDefs.Add('DateTime', ftDateTime, 0);
     FieldDefs.Add('Attr', ftInteger, 0);
     CreateDataset;
  end;
end;



procedure TJanuaDirBackupIO.SetRemoteDataset(const Value: TDataset);
begin
  inherited;

end;

end.
