unit Janua.Cloud.Images.Postgres;

interface

uses Janua.Server.Intf, Janua.Server.Impl, Janua.Cloud.Images.Intf, udmPostgresCloud;


implementation

uses Janua.Cloud.Images.Impl;

{ TJanuaImageStorage }

procedure TJanuaImagePgStorage.AsyncDeleteFileFromStorage(aID: Int64; aResultProc: TOutputProc);
begin

end;

procedure TJanuaImagePgStorage.AsyncLoadFileFromStorage(aID: Int64; aResultProc: TOutputProc);
begin

end;

procedure TJanuaImagePgStorage.AsyncSaveFileToStorage(aFile: IJanuaFileRecord; aResultProc: TOutputProc);
begin

end;

constructor TJanuaImagePgStorage.Create(aKeepAlive: Boolean);
begin
  inherited;
end;

constructor TJanuaImagePgStorage.Create;
begin
  inherited;
end;

procedure TJanuaImagePgStorage.DeleteFileFromStorage(aID: Int64);
begin

end;


destructor TJanuaImagePgStorage.Destroy;
begin
  if Assigned(self.DM) then
    self.DM.Free;
  inherited;
end;

procedure TJanuaImagePgStorage.DestroyDataset;
begin
  inherited;
  if Assigned(self.DM) and not KeepAlive then
    self.DM.Free;
end;



end.
