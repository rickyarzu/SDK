unit Janua.Core.Backup;

{$I JANUACORE.INC}

interface

uses
  Janua.Core.Classes, Janua.Core.CustomControls,
{$IFNDEF fpc}
  System.SysUtils, System.Classes,
  DB, FireDAC.Comp.Client,
{$ELSE}
  LResources, FileUtil, SysUtils, Classes,
{$ENDIF}
  Janua.Core.Functions, Janua.Core.System;

type
  TJanuaDBType = (jbfClientDataset, jbfSQLite, jbfInterbase, jbfIBLite);

{$METHODINFO ON}

type
  TDirNode = record
    id: integer;
    LocalRoot: string;
    TreeOrder: string;
    parentid: integer;
    dir: boolean;
    Name: string;
    Location: string;
    Title: string;
    Description: string;
    DateTime: TDateTime;
    Path: string;
    Attr: integer;
    Ext: string;
    NameNoExt: string;
    Size: int64;
    // TreeNode : TTReeNode;
  end;

type
  TLawyerSearchRec = record
    Time: integer;
    Size: integer;
    Attr: integer;
    Name: TFileName;
    DateTime: TDateTime;
    ExcludeAttr: integer;
    FindHandle: THandle;
    Pos: String;
  end;

type
  TJanuaDirectoryBackupIO = class(TJanuaCoreComponent)
  private
    FNodeCount: integer;
    FJanuaIOSource: TJanuaIOSource;
    FSQLiteCreateDatabase: TStrings;
    FBackupImagesOnly: boolean;
    FUseBlob: boolean;
    FComputersDataset: TDataset;
    FDirectoriesDataset: TDataset;
    procedure SetJanuaIOSource(const Value: TJanuaIOSource);
    procedure SetSQLiteCreateDatabase(const Value: TStrings);
    // procedure SeTJanuaCoreOS(const Value: TJanuaCoreOS);
    procedure SetDBType(const Value: TJanuaDBType);
    procedure SetBackupImagesOnly(const Value: boolean);
    procedure SetUseBlob(const Value: boolean);
    procedure SetComputersDataset(const Value: TDataset);
    procedure SetDirectoriesDataset(const Value: TDataset);
  protected
    FListNode: array of TDirNode;
    FRemoteDataset: TDataset;
    FDataset: TDataset;
    FDBType: TJanuaDBType;
    procedure SetRemoteDataset(const Value: TDataset); virtual;
    procedure SetDataset(const Value: TDataset); virtual;
  public
    procedure AddNode(SearchResult: TDirNode); virtual;
    constructor Create(AOwner: TComponent); override;
    procedure PrepareFirstDatabase; virtual; abstract;
    procedure CloseTransaction; virtual; abstract;
    Destructor Destroy; override;

    // add a file Record to Dataset (to be replaced by dirNode);
  published

    property RemoteDataset: TDataset read FRemoteDataset write SetRemoteDataset;
    property Dataset: TDataset read FDataset write SetDataset;
    property ComputersDataset: TDataset read FComputersDataset write SetComputersDataset;
    property DirectoriesDataset: TDataset read FDirectoriesDataset write SetDirectoriesDataset;
    property NodeCount: integer read FNodeCount default 0;
    property JanuaIOSource: TJanuaIOSource read FJanuaIOSource write SetJanuaIOSource;
    property SQLiteCreateDatabase: TStrings read FSQLiteCreateDatabase write SetSQLiteCreateDatabase;
    property DBType: TJanuaDBType read FDBType write SetDBType;
    property UseBlob: boolean read FUseBlob write SetUseBlob default false;
    property BackupImagesOnly: boolean read FBackupImagesOnly write SetBackupImagesOnly default false;
  end;

type
  TJanuaDirectoryBackup = class(TJanuaCoreComponent)
  private
    { var declarations }
    i, k, l: integer;
    Nodes: array of TDirNode;
    FRootDirectory: string;
    FJanuaDirBackuIO: TJanuaDirectoryBackupIO;
    FJanuaIOSource: TJanuaIOSource;
    FGraphicLog: boolean;
    FServerSet: boolean;
    FDirectorySet: boolean;
    FConfigDataset: TDataset;
    FConfigSet: boolean;
    FServerID: String;
    FLocalFileDataset: TDataset;
    FRemoteDataset: TFDMemTable;
    FLocalDirectoryDataset: TFDMemTable;
    FRemoteDirectoryDataset: TFDMemTable;
    FLocalDirectoryFile: string;
    FTotalFileSize: int64;
    procedure SetJanuaDirBackuIO(const Value: TJanuaDirectoryBackupIO);
    procedure SetJanuaIOSource(const Value: TJanuaIOSource);
    procedure SetGraphicLog(const Value: boolean);
    procedure SetConfigDataset(const Value: TDataset);
    procedure SetConfigSet(const Value: boolean);
    procedure SetDirectorySet(const Value: boolean);
    procedure SetServerID(const Value: String);
    procedure SetServerSet(const Value: boolean);
    procedure SetLocalFileDataset(const Value: TDataset);
    procedure SetRemoteDataset(const Value: TFDMemTable);
    procedure SetLocalDirectoryDataset(const Value: TFDMemTable);
    procedure SetRemoteDirectoryDataset(const Value: TFDMemTable);
    procedure SetLocalDirectoryFile(const Value: string);

    { const declarations }
  Const
    FileFound = 0;

    { Procedures-Property declarations }
    procedure SetRootDirectory(const Value: string);
    procedure SetDirectory(SearchResult: TSearchRec; pNode: TDirNode);
    procedure ListFilesDirectory(pNode: TDirNode);
    // list all files in parent dir
    procedure ListDirDirectory(pNode: TDirNode);
    // list all dirs in parent dir
    procedure ExtractFullName(sFileName: string);
    { Private declarations }
    function SetFirstRoot: boolean;
    function SaveConfiguration: boolean;
  public
    constructor Create(AOwner: TComponent); override;
    { Public declarations }
    procedure BackupAllImages; Virtual; Abstract;
    function RegisterDirectory: boolean;
    function ExecuteFirstBackup: boolean;
    function UpdateBackup: boolean;
    function RegisterServer: boolean;
    procedure DirectoryCount(pNode: TDirNode);
    function SetNode(directory: boolean; SearchResult: TSearchRec; pNode: TDirNode): TDirNode;
    procedure CloneRecordServer;
  published
    { Published declarations }
    property TotalFileSize: int64 read FTotalFileSize default 0;
    property LocalDirectoryFile: string read FLocalDirectoryFile write SetLocalDirectoryFile;
    property ConfigDataset: TDataset read FConfigDataset write SetConfigDataset;
    property ServerID: String read FServerID write SetServerID;
    property ServerSet: boolean read FServerSet write SetServerSet default false;
    property RootDirectory: String read FRootDirectory write SetRootDirectory;
    property DirectorySet: boolean read FDirectorySet write SetDirectorySet default false;
    property ConfigSet: boolean read FConfigSet write SetConfigSet;
    property GraphicLog: boolean read FGraphicLog write SetGraphicLog;
    property JanuaIOSource: TJanuaIOSource read FJanuaIOSource write SetJanuaIOSource;
    property JanuaDirBackuIO: TJanuaDirectoryBackupIO read FJanuaDirBackuIO write SetJanuaDirBackuIO;
    property LocalFileDataset: TDataset read FLocalFileDataset write SetLocalFileDataset;
    property RemoteDataset: TFDMemTable read FRemoteDataset write SetRemoteDataset;
    property LocalDirectoryDataset: TFDMemTable read FLocalDirectoryDataset write SetLocalDirectoryDataset;
    property RemoteDirectoryDataset: TFDMemTable read FRemoteDirectoryDataset write SetRemoteDirectoryDataset;
  end;

  { JanuaDirBackupIO }

  TJanuaDirBackupIO = class(TJanuaDirectoryBackupIO)
  private
    FHasErrors: boolean;
    FLastMessage: string;
    FTableList: TDataset;
    januadir, dbdir: string;
    FBlobDataset: TFDMemTable;

    FBlobSequence: TDataset;
    procedure InternalLog(log: string);
    procedure SetTableList(const Value: TDataset);

    procedure SetBlobDataset(const Value: TFDMemTable);
    procedure SetBlobSequence(const Value: TDataset); { Private declarations }
  protected
    { Protected declarations }
    procedure SetRemoteDataset(const Value: TDataset); override;
    procedure SetDataset(const Value: TDataset); override;
    procedure BackupImagesOnBLOB;
    procedure BackupImagesOnDrive;
    procedure BackupAllFilesOnBLOB;
    procedure BackupAllFilesOnDrive;
  public
    { Public declarations }
    procedure AddNode(SearchResult: TDirNode); override;
    procedure PrepareFirstDatabase; override;
    procedure CloseTransaction; override;
  published
    { Published declarations }
    property LastMessage: string read FLastMessage;
    property HasErrors: boolean read FHasErrors;
    property TableList: TDataset read FTableList write SetTableList;
    property BlobDataset: TFDMemTable read FBlobDataset write SetBlobDataset;
    property BlobSequence: TDataset read FBlobSequence write SetBlobSequence;
  end;

{$METHODINFO OFF}

implementation

uses System.IOUtils, FireDAC.Stan.Intf, Janua.Application.Framework;

{ JanuaDirectoryBackup


}

procedure TJanuaDirBackupIO.AddNode(SearchResult: TDirNode);
begin
  try
    if not Assigned(FDataset) then
      Exit;
    { TODO -oRiccardo -cCloud : Gestire l'errore in cui in fase di Costruzione del sistema non è stato impostato correttamente il Dataset.. }
    FDataset.Append;
    GetFieldByName(FDataset, 'ID').AsInteger := SearchResult.id;
    GetFieldByName(FDataset, 'LocalRoot').AsString := SearchResult.LocalRoot;
    GetFieldByName(FDataset, 'ParentID').AsInteger := SearchResult.parentid;

    if self.FDBType = jbfClientDataset then
      GetFieldByName(FDataset, 'Dir').AsBoolean := SearchResult.dir
    else
    begin
      if SearchResult.dir then
        GetFieldByName(FDataset, 'Dir').AsString := 'Y'
      else
        GetFieldByName(FDataset, 'Dir').AsString := 'N';
    end;

    GetFieldByName(FDataset, 'TreeOrder').AsString := SearchResult.TreeOrder;
    GetFieldByName(FDataset, 'Name').AsString := SearchResult.Name;
    GetFieldByName(FDataset, 'Location').AsString := SearchResult.Location;
    GetFieldByName(FDataset, 'Title').AsString := SearchResult.Title;
    GetFieldByName(FDataset, 'Description').AsString := SearchResult.Description;
    GetFieldByName(FDataset, 'Path').AsString := SearchResult.Path;

    if self.FDBType = jbfClientDataset then
      GetFieldByName(FDataset, 'DateTime').AsDateTime := SearchResult.DateTime
    else
      GetFieldByName(FDataset, 'DateTime').AsString := FormatDateTime('yyyy-mm-dd-hh-nn',
        SearchResult.DateTime);

    GetFieldByName(FDataset, 'Attr').AsInteger := SearchResult.Attr;
    GetFieldByName(FDataset, 'FileExt').AsString := SearchResult.Ext;
    GetFieldByName(FDataset, 'FileNameNoExt').AsString := SearchResult.NameNoExt;
    GetFieldByName(FDataset, 'FileSize').AsLargeInt := SearchResult.Size;
    FDataset.Post;
  except
    on e: exception do
    begin
      FDataset.Cancel;
      self.FHasErrors := True;
      self.FLastMessage := 'Errore di inserimento dati, file: ' + SearchResult.Name + 'Dir: ' +
        SearchResult.Location + sLineBreak + 'Errore : ' + e.Message;
      TJanuaLogger.LogError('PrepareFirstDatabase', FLastMessage, self, e);
    end;
  end;

end;

procedure TJanuaDirBackupIO.BackupAllFilesOnBLOB;
begin
  // Questa procedura Esegue il backup di tutti i Files e directory su un BLOB

end;

procedure TJanuaDirBackupIO.BackupAllFilesOnDrive;
begin
  // in questo caso invece salvo tutti i files in modo (flat o con dire) su drive

end;

procedure TJanuaDirBackupIO.BackupImagesOnBLOB;
var
  ExtField, FileField, LocationField, NameField: TField;
  id: int64;
  // RegDate: TDateTime;
begin
  // questa procedura se si è scelto di archiviare solo immagini le archivia su blob
  if Assigned(self.FDataset) and Assigned(self.FBlobDataset) and Assigned(self.FBlobSequence) then
  begin
    self.FDataset.First;
    ExtField := GetFieldByName(FDataset, 'FileExt');
    FileField := GetFieldByName(FDataset, 'Name');
    NameField := GetFieldByName(FDataset, 'FileNameNoExt');
    LocationField := GetFieldByName(FDataset, 'Location');

    while not self.FDataset.Eof do
    begin
      if (ExtField.AsString = ('.bmp')) or (ExtField.AsString = ('.gif')) or (ExtField.AsString = ('.jpg')) or
        (ExtField.AsString = ('.jpeg')) or (ExtField.AsString = ('.png')) or (ExtField.AsString = ('.wmf')) or
        (ExtField.AsString = ('.emf')) or (ExtField.AsString = ('.svg')) or (ExtField.AsString = ('.ico'))
      then
      begin
        self.FBlobSequence.Open;
        // RegDate := GetFieldByName(FBlobSequence, 'SYSDATE').AsDateTime;
        { La funzione che memorizza la data di registrazione come timestamp è spostata nel trigger }
        id := GetFieldByName(FBlobSequence, 'NEXTVAL').AsLargeInt;
        self.FBlobSequence.Close;
        self.FBlobDataset.Close;
        { TODO : Sostituire il TBlobDataset con un UniDataset }
        // self.FBlobDataset.Params[0].AsLargeInt := id;
        self.FBlobDataset.Open;
        self.FBlobDataset.Append;
        GetFieldByName(FBlobDataset, 'BLOB_ID').AsLargeInt := id;
        GetFieldByName(FBlobDataset, 'BLOB_FILENAME').AsString := FileField.AsString;
        GetFieldByName(FBlobDataset, 'BLOB_FILEEXT').AsString := ExtField.AsString;
        GetFieldByName(FBlobDataset, 'BLOB_NAMENOEXT').AsString := NameField.AsString;
        (GetFieldByName(FBlobDataset, 'BLOB_FILE') as TBlobField).LoadFromFile(LocationField.AsString);
        self.FBlobDataset.Post;
        self.FBlobDataset.ApplyUpdates(-1);
      end;
      self.FDataset.Next;
      // .AsString := Searchresult.NameNoExt  ; then
    end;
  end;
end;

procedure TJanuaDirBackupIO.BackupImagesOnDrive;
begin

end;

procedure TJanuaDirBackupIO.CloseTransaction;
begin
  inherited;
  if Assigned(self.FDataset) then
    // sel il db locale è un 'semplice client dataset lo salva';
    if self.FDBType = jbfClientDataset then
      TFDMemTable(self.FDataset).SaveToFile(self.dbdir + 'backup.cds')
    else if (self.FDataset is TFDMemTable) then
      TFDMemTable(self.FDataset).ApplyUpdates(-1);

  // a questo punto inizia il Transfer dei Files ....
  if self.BackupImagesOnly then
  begin
    if self.UseBlob then
      self.BackupImagesOnBLOB;

  end;

end;

procedure TJanuaDirBackupIO.InternalLog(log: string);
begin
  TJanuaLogger.LogRecord('InternalLog', log, self)
end;

procedure TJanuaDirBackupIO.PrepareFirstDatabase;
var
  database: string;
  sql: string;
begin
  // ****************************************************************************
  // Database=c:\januaproject\db\januaproject.s3db
  // DriverID=SQLite
  { Questa procedura si occupa di installare la versione più aggiornata di SQLite
    nel Database locale individuando grazie a JanuaOS la connessione più vicina
  }

  // {$IFDEF IOS}
  // ShoppingList.Params.Values['Database'] := GetHomePath + PathDelim +
  // 'Documents' + PathDelim + 'shoplist.s3db';
  // {$ENDIF}

  // ****************************************************************************
  try
    januadir := TPath.Combine(TJanuaCoreOS.GetDocumentDirectory, 'ergomercator');
    if not DirectoryExists(januadir) then
      System.SysUtils.CreateDir(januadir);

    dbdir := TPath.Combine(januadir, 'db');
    if not DirectoryExists(dbdir) then
      System.SysUtils.CreateDir(dbdir);

    database := TPath.Combine(dbdir, 'ergobackup.s3db');

    TJanuaLogger.LogRecord('PrepareFirstDatabase', 'Primo backup Database', self);
    /// Deprecato sostituire con i componenti Originali Devart Linux
    { case self.FDBType of
      jbfSQLite:
      if Assigned(FConnection) then
      begin
      FConnection.Params.Values['Database'] := database;
      FConnection.Connected := True;
      FTableList.Open;
      if FTableList.RecordCount = 0 then
      begin
      sql := 'PRAGMA foreign_keys=OFF; ' + sLineBreak +
      'BEGIN TRANSACTION; ' + sLineBreak +
      'CREATE TABLE if not exists backup( ' + sLineBreak +
      'id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, ' + sLineBreak +
      'LocalRoot TEXT, ' + sLineBreak + 'ParentID INTEGER, ' +
      sLineBreak + 'Dir TEXT NOT NULL, ' + sLineBreak +
      'TreeOrder INTEGER, ' + sLineBreak + 'Name TEXT, ' + sLineBreak +
      'Location TEXT, ' + sLineBreak + 'Title TEXT, ' + sLineBreak +
      'Description TEXT, ' + sLineBreak + 'Path TEXT, ' + sLineBreak +
      'DateTime REAL, ' + sLineBreak + 'Attr INTEGER, ' + sLineBreak +
      'FileExt TEXT, ' + sLineBreak + 'FileNameNoExt TEXT); ' +
      sLineBreak + 'COMMIT; ';
      FConnection.ExecuteDirect(sql);
      end;
      self.FDataset.Open;
      end;

      jbfClientDataset:
      begin
      if Assigned(self.FDataset) and (self.FDataset is TFDMemTable) then
      (self.FDataset as TFDMemTable).CreateDataSet;
      end;

      end;
    }
  except
    on e: exception do
    begin
      self.WriteError('TJanuaDirBackupIO.PrepareFirstDatabase :' + database, e);
    end;
  end;

end;

procedure TJanuaDirBackupIO.SetBlobDataset(const Value: TFDMemTable);
begin
  FBlobDataset := Value;
end;

procedure TJanuaDirBackupIO.SetBlobSequence(const Value: TDataset);
begin
  FBlobSequence := Value;
end;

procedure TJanuaDirBackupIO.SetDataset(const Value: TDataset);
begin
  inherited;
  // deprecated
  // if (FDataset is TFDMemTable) and not FDataset.Active then PrepareClientDataset;

end;

procedure TJanuaDirBackupIO.SetRemoteDataset(const Value: TDataset);
begin
  inherited;

end;

procedure TJanuaDirBackupIO.SetTableList(const Value: TDataset);
begin
  FTableList := Value;
end;

{ TJanuaDirectoryBackup }

procedure TJanuaDirectoryBackup.CloneRecordServer;
begin
  if not self.RemoteDataset.Active then
    self.RemoteDataset.Open;
  self.RemoteDataset.Append;
  RemoteDataset.FieldByName('local_id').AsInteger := LocalFileDataset.FieldByName('ID').AsInteger;
  RemoteDataset.FieldByName('parent_id').AsInteger := LocalFileDataset.FieldByName('ParentID').AsInteger;
  RemoteDataset.FieldByName('Dir').AsBoolean := LocalFileDataset.FieldByName('Dir').AsBoolean;
  RemoteDataset.FieldByName('treeorder').AsString := LocalFileDataset.FieldByName('TreeOrder').AsString;
  RemoteDataset.FieldByName('name').AsString := LocalFileDataset.FieldByName('Name').AsString;
  RemoteDataset.FieldByName('local_location').AsWideString := LocalFileDataset.FieldByName('Location')
    .AsWideString;
  RemoteDataset.FieldByName('description').AsWideString := LocalFileDataset.FieldByName('Description')
    .AsWideString;
  RemoteDataset.FieldByName('description').AsWideString := LocalFileDataset.FieldByName('Description')
    .AsWideString;
  RemoteDataset.FieldByName('filedatetime').AsDateTime := LocalFileDataset.FieldByName('DateTime').AsDateTime;
  RemoteDataset.FieldByName('fileattr').AsInteger := LocalFileDataset.FieldByName('Attr').AsInteger;
  RemoteDataset.FieldByName('extension').AsWideString := LocalFileDataset.FieldByName('FileExt').AsWideString;
  RemoteDataset.FieldByName('namenoextension').AsWideString := LocalFileDataset.FieldByName('FileNameNoExt')
    .AsWideString;

  RemoteDataset.FieldByName('size').AsLargeInt := LocalFileDataset.FieldByName('FileSize').AsLargeInt;
  // self.FTotalFileSize := self.FTotalFileSize +

  RemoteDataset.Post;
  RemoteDataset.ApplyUpdates(-1);
  self.LocalFileDataset.Edit;
  self.LocalFileDataset.FieldByName('remote_id').AsLargeInt := self.RemoteDataset.FieldByName('id')
    .AsLargeInt;
  self.LocalFileDataset.Post;
  self.FTotalFileSize := self.FTotalFileSize + LocalFileDataset.FieldByName('FileSize').AsLargeInt;
end;

constructor TJanuaDirectoryBackup.Create(AOwner: TComponent);
begin
  { alla creazione viene impostata da JanuaOS la directory dei documenti }
  inherited;
  FTotalFileSize := 0;
  FLocalDirectoryFile := TPath.Combine(TPath.Combine(TJanuaCoreOS.GetHomePath, 'ErgoMercator'),
    'backupdir.cds');
end;

procedure TJanuaDirectoryBackup.ListDirDirectory(pNode: TDirNode);
var
  SearchResult: TSearchRec;
begin
  try
    self.WriteLog('List Dir in: ' + pNode.Location);
    If FindFirst(TPath.Combine(pNode.Location, ''), faDirectory, SearchResult) = FileFound Then
    Begin
      self.WriteLog('First dir: ' + SearchResult.Name + ' + Attr: ' + IntToStr(SearchResult.Attr));
      // if //(SearchResult.Attr = 48) then
      SetDirectory(SearchResult, pNode);
      While FindNext(SearchResult) = FileFound Do
        if (SearchResult.Attr = faDirectory) then
          SetDirectory(SearchResult, pNode);
      // if  (SearchResult.Attr = 48) then  SetDirectory(SearchResult, pNode);
    End;

    FindClose(SearchResult);

  except
    on e: exception do
    begin
      self.WriteError('TJanuaDirectoryBackup.ListDirDirectory : ', e);
      self.HasErrors := True;
    end;
  end;

end;

procedure TJanuaDirectoryBackup.ListFilesDirectory(pNode: TDirNode);
var
  SearchResult: TSearchRec;
  thisNode: TDirNode;
begin
  // System.SysUtils.IncludeTrailingPathDelimiter
  try
    If FindFirst(IncludeTrailingPathDelimiter(pNode.Location), (faAnyFile And Not faDirectory), SearchResult)
      = FileFound Then
    Begin
      thisNode := self.SetNode(false, SearchResult, pNode);
      // passa alla procedura di i/o il nodo da salvare
      While FindNext(SearchResult) = FileFound Do
      Begin
        thisNode := self.SetNode(false, SearchResult, pNode);
        // passa alla procedura di i/o il nodo da salvare
      End;
    End;
    FindClose(SearchResult);

  except
    on e: exception do
    begin
      self.WriteError('TJanuaDirectoryBackup.ListFilesDirectory', e);
      self.HasErrors := True;
    end;

  end;

end;

function TJanuaDirectoryBackup.RegisterDirectory: boolean;
begin
  /// 29/01/2013 ********** Registrazione locale e remota directory ***********
  /// questa procedura crea un file locale per la directory interessata
  /// salva il client dataset delle directory backupdir.cds
  /// e quindi registra il Dataset Locale dei file legato all'id della dir.
  ///
  Result := false;
  try
    if not self.FLocalDirectoryDataset.Active then
      self.FLocalDirectoryDataset.CreateDataSet;
    self.FLocalFileDataset.Filtered := false;
    self.FLocalFileDataset.First;
    // il primo record del local file dataset è la relativa 'root' directory.
    self.FLocalDirectoryDataset.Append;
    self.FLocalDirectoryDataset.FieldByName('directory_name').AsWideString :=
      self.FLocalFileDataset.FieldByName('Name').AsWideString;
    self.FLocalDirectoryDataset.FieldByName('directory_path').AsWideString :=
      self.FLocalFileDataset.FieldByName('Location').AsWideString;
    self.FLocalDirectoryDataset.FieldByName('TotalSize').AsLargeInt := self.FTotalFileSize;
    self.FLocalDirectoryDataset.Post;
    self.FLocalDirectoryDataset.SaveToFile(self.FLocalDirectoryFile, sfBinary);

    if Assigned(self.FRemoteDirectoryDataset) then
    begin
      if not self.FRemoteDirectoryDataset.Active then
        self.FRemoteDirectoryDataset.Open;
      self.FRemoteDirectoryDataset.Append;
      FRemoteDirectoryDataset.FindField('directory_name').Value :=
        FLocalDirectoryDataset.FindField('directory_name').Value;
      self.FRemoteDirectoryDataset.FieldByName('directory_path').AsWideString :=
        self.FLocalDirectoryDataset.FieldByName('directory_path').AsWideString;
      self.FRemoteDirectoryDataset.FieldByName('directory_size').AsLargeInt := self.FTotalFileSize;
      self.FRemoteDirectoryDataset.Post;
      self.FRemoteDirectoryDataset.ApplyUpdates(-1);
    end;

    self.FLocalDirectoryDataset.Edit;

    self.FLocalDirectoryDataset.Post;

    Result := True;
  Except
    on e: exception do
    begin
      self.WriteError('TJanuaDirectoryBackup.RegisterDirectory', e);
    end;
  end;

end;

function TJanuaDirectoryBackup.RegisterServer: boolean;
begin
  // This function Register the server to the Main system and put the Key
  // and name of the server in the binary configuration File in Home Folder
  Result := false;
  { TODO :
    // This function Register the server to the Main system and put the Key
    // and name of the server in the binary configuration File in Home Folder }
end;

procedure TJanuaDirectoryBackup.DirectoryCount(pNode: TDirNode);
var
  isDir: boolean;
  SearchResult: TSearchRec;
begin
  try
    If FindFirst(IncludeTrailingPathDelimiter(pNode.Location), (faAnyFile or faDirectory), SearchResult) = FileFound
    then
    begin
      if (SearchResult.Name <> '.') and (SearchResult.Name <> '..') then
      begin
        Inc(k);
        SetLength(Nodes, k);
        self.WriteLog(SearchResult.Name);
        isDir := SearchResult.Attr = faDirectory;
        // setNode si potrebbe invece più logicamente inserire nel dir browser
        self.SetNode(isDir, SearchResult, pNode);
      end;

      While FindNext(SearchResult) = FileFound Do
      Begin
        if (SearchResult.Name <> '.') and (SearchResult.Name <> '..') then
        begin
          Inc(k);
          SetLength(Nodes, k);
          self.WriteLog(SearchResult.Name);
        end;
      End;
    end;
    // Inc(k,j);
    // self.StringGrid1.RowCount:= j + 1;
    self.WriteLog('Numero di File Trovati: ' + IntToStr(k));

  except
    on e: exception do
    begin
      self.WriteLog(e.Message);
      self.HasErrors := True;
    end;
  end;

end;

function TJanuaDirectoryBackup.ExecuteFirstBackup: boolean;
begin
  // Questa funzione Esegue il primo Backup e, relativamente al sistema operativo
  // supportato registra in un file .ini le informazioni per riprendere il
  // backup in un secondo momento.
  Result := True;
  self.FJanuaDirBackuIO.PrepareFirstDatabase;
  if Result then
    try
      i := 0;
      if TJanuaCoreOS.SelectFolder(FRootDirectory, 'seleziona cartella backup', 'Ok') then
      begin
        SetLength(Nodes, 1);
        Result := self.SetFirstRoot;
        if Result then
          self.FJanuaDirBackuIO.CloseTransaction;
      end;
    except
      on e: exception do
      begin
        self.WriteLog(e.Message);
        self.HasErrors := True;
        Result := false;
      end;
    end
  else
    exception.CreateFmt('Attenzione componente di selezione Directory non configurato', [name]);
end;

procedure TJanuaDirectoryBackup.ExtractFullName(sFileName: string);
var
  f, g: string;
begin
  f := sFileName;
  self.WriteLog('Selected Dir: ' + f);

  g := 'Has Name      : ' + ExtractFileName(f);
  self.WriteLog(g);
  g := 'Has Path      : ' + ExtractFilePath(f);
  self.WriteLog(g);

  g := 'Has Ext       : ' + ExtractFileExt(f);
  self.WriteLog(g);

  g := 'Has Directory : ' + ExtractFileDir(f);
  self.WriteLog(g);
end;

constructor TJanuaDirectoryBackupIO.Create(AOwner: TComponent);
begin
  inherited;
  FSQLiteCreateDatabase := TStringList.Create;
  self.FBackupImagesOnly := false;
  self.FUseBlob := false;
end;

destructor TJanuaDirectoryBackupIO.Destroy;
begin
  try
    if Assigned(self.FSQLiteCreateDatabase) then
    begin
      FSQLiteCreateDatabase.Free;
      FSQLiteCreateDatabase := nil;
    end;
  except
    on e: exception do
      begin
        LogException('Destroy', e, self);
        raise;
      end;
  end;
  inherited;
end;

procedure TJanuaDirectoryBackupIO.SetBackupImagesOnly(const Value: boolean);
begin
  FBackupImagesOnly := Value;
end;

procedure TJanuaDirectoryBackupIO.SetComputersDataset(const Value: TDataset);
begin
  FComputersDataset := Value;
end;

procedure TJanuaDirectoryBackupIO.SetDataset(const Value: TDataset);
begin
  FDataset := Value;
end;

procedure TJanuaDirectoryBackupIO.SetDBType(const Value: TJanuaDBType);
begin
  FDBType := Value;
end;

procedure TJanuaDirectoryBackupIO.SetDirectoriesDataset(const Value: TDataset);
begin
  FDirectoriesDataset := Value;
end;

procedure TJanuaDirectoryBackupIO.SetJanuaIOSource(const Value: TJanuaIOSource);
begin
  FJanuaIOSource := Value;
end;

function TJanuaDirectoryBackup.SaveConfiguration: boolean;
begin
  { TODO :
    // This function Register the server to the Main system and put the Key
    // and name of the server in the binary configuration File in Home Folder }
  Result := false;
end;

procedure TJanuaDirectoryBackup.SetConfigDataset(const Value: TDataset);
begin
  FConfigDataset := Value;
end;

procedure TJanuaDirectoryBackup.SetConfigSet(const Value: boolean);
begin
  FConfigSet := Value;
end;

procedure TJanuaDirectoryBackup.SetDirectory(SearchResult: TSearchRec; pNode: TDirNode);
var
  thisNode: TDirNode;
begin
  if (SearchResult.Name <> '.') and (SearchResult.Name <> '..') then
  begin
    self.WriteLog('Set Directory : ' + SearchResult.Name);
    try
      thisNode := self.SetNode(True, SearchResult, pNode);
      self.DirectoryCount(thisNode);
      self.ListFilesDirectory(thisNode);
      self.ListDirDirectory(thisNode);
    except
      on e: exception do
      begin
        self.WriteLog('Error Set Directory : ' + e.Message);
        self.HasErrors := True;
      end;
    end;
  end;
end;

procedure TJanuaDirectoryBackup.SetDirectorySet(const Value: boolean);
begin
  FDirectorySet := Value;
end;

function TJanuaDirectoryBackup.SetFirstRoot: boolean;
begin
  Result := True;
  /// Qyuesta prcedura prepara l'indicizzazione a db della Root Directory
  /// impostata. in questo caso la RootDirectory è stata impostata da una
  /// 'regia' esterna che ha attivato la cartella di Root per poterla poi
  /// archiviare tramite le procedure di archivaizione
  try

    l := 0;
    Nodes[0].id := 0;
    Nodes[0].parentid := -1;
    Nodes[0].dir := True;
    Nodes[0].Path := self.FRootDirectory;
    Nodes[0].Location := FRootDirectory;
    Nodes[0].Name := ExtractFileName(FRootDirectory);
    if Assigned(self.FJanuaDirBackuIO) then
      self.FJanuaDirBackuIO.AddNode(Nodes[0]);


    // questa procedura andrà spostata all'esterno nel 'generatore di nodi.....
    {
      if assigned(self.FTreeView) then
      begin
      self.FTreeView.Items.Clear;
      Nodes[0].TreeNode := FTreeView.Items.AddFirst(nil , Nodes[0].Name);
      Nodes[0].TreeNode.SelectedIndex:= 1; // directory chiusa
      Nodes[0].TreeNode.ImageIndex:= 0; // directory aperta
      Nodes[0].TreeNode.Selected := true;
      end;
    }

    DirectoryCount(Nodes[0]);
    ListFilesDirectory(Nodes[0]);
    self.ListDirDirectory(Nodes[0]);

  except

    on e: exception do
      self.WriteError(' TJanuaDirectoryBackup.SetFirstRoot', e, True);

  end;
end;

procedure TJanuaDirectoryBackup.SetGraphicLog(const Value: boolean);
begin
  FGraphicLog := Value;
end;

procedure TJanuaDirectoryBackup.SetJanuaDirBackuIO(const Value: TJanuaDirectoryBackupIO);
begin
  FJanuaDirBackuIO := Value;
end;

procedure TJanuaDirectoryBackup.SetJanuaIOSource(const Value: TJanuaIOSource);
begin
  FJanuaIOSource := Value;
end;
(*



  procedure TJanuaDirectoryBackup.SeTJanuaCoreOS(const Value: TJanuaCoreOS);
  begin
  FJanuaOS := Value;
  if Assigned(self.FJanuaOS) then
  FJanuaOS.AppName := 'ErgoBackup';
  end;
*)

procedure TJanuaDirectoryBackup.SetLocalDirectoryDataset(const Value: TFDMemTable);
begin
  FLocalDirectoryDataset := Value;
end;

procedure TJanuaDirectoryBackup.SetLocalDirectoryFile(const Value: string);
begin
  FLocalDirectoryFile := Value;
end;

procedure TJanuaDirectoryBackup.SetLocalFileDataset(const Value: TDataset);
begin
  FLocalFileDataset := Value;
end;

function TJanuaDirectoryBackup.SetNode(directory: boolean; SearchResult: TSearchRec; pNode: TDirNode)
  : TDirNode;
var
  p_nodechar: string;
begin
  Inc(l);
  self.WriteLog('Imposto Nodo: ' + IntToStr(l) + ' array : ' + IntToStr(k) + sLineBreak + SearchResult.Name);
  try
    if Length(Nodes) < l + 1 then
      SetLength(Nodes, l + 1);
    Nodes[l].id := l;
    Nodes[l].LocalRoot := self.FRootDirectory;
    Nodes[l].parentid := pNode.id;
    p_nodechar := LPad(l, 3, '0');
    p_nodechar := pNode.TreeOrder + p_nodechar;
    Nodes[l].TreeOrder := p_nodechar;
    Nodes[l].Title := ExtractFileName(SearchResult.Name);
    Nodes[l].Description := Nodes[l].Title;
    Nodes[l].DateTime := SearchResult.TimeStamp;
    Nodes[l].dir := directory;
    Nodes[l].Path := ExtractFilePath(SearchResult.Name);
    Nodes[l].Location := TPath.Combine(pNode.Location, SearchResult.Name);
    Nodes[l].Name := Nodes[l].Title;
    Nodes[l].Ext := ExtractFileExt(Nodes[l].Title);
    Nodes[l].NameNoExt := Copy(Nodes[l].Name, 1, Length(Nodes[l].Name) - Length(Nodes[l].Ext));
    if Assigned(FJanuaDirBackuIO) then
      self.FJanuaDirBackuIO.AddNode(Nodes[l]);
    Nodes[l].Size := SearchResult.Size;
    self.FTotalFileSize := Nodes[l].Size;
    Result := Nodes[l];
    {
      if assigned(self.FTreeView) then
      Nodes[l].TreeNode := FTreeView.Items.AddChild(pNode.TreeNode , Nodes[l].Name);
      if directory then
      begin
      Nodes[l].TreeNode.SelectedIndex:= 1; // directory chiusa
      Nodes[l].TreeNode.ImageIndex:= 0; // directory aperta
      end
      else
      begin
      Nodes[l].TreeNode.SelectedIndex:= 2; // directory chiusa
      Nodes[l].TreeNode.ImageIndex:= 2; // directory aperta
      end;
    }

  except
    on e: exception do
      self.WriteLog('Errore setNode : ' + Nodes[l].Location + sLineBreak + e.Message);
  end;

end;

procedure TJanuaDirectoryBackup.SetRemoteDataset(const Value: TFDMemTable);
begin
  FRemoteDataset := Value;
end;

procedure TJanuaDirectoryBackup.SetRemoteDirectoryDataset(const Value: TFDMemTable);
begin
  FRemoteDirectoryDataset := Value;
end;

procedure TJanuaDirectoryBackup.SetRootDirectory(const Value: string);
begin
  FRootDirectory := Value;
end;

procedure TJanuaDirectoryBackup.SetServerID(const Value: String);
begin
  FServerID := Value;
end;

procedure TJanuaDirectoryBackup.SetServerSet(const Value: boolean);
begin
  FServerSet := Value;
end;

function TJanuaDirectoryBackup.UpdateBackup: boolean;
begin
  { TODO :
    // update Backup può essere eseguito da una libreria di sistema per esempio
    // un service di windows o un demone di linux per aggiornare lo stato del
    // backup. Per fare questo dovrà confrontare l'albero in memoria delle
    // cartelle con l'albero reale nel sistema operativo. }
  Result := false;
end;


// ******************************************************************************

procedure TJanuaDirectoryBackupIO.SetRemoteDataset(const Value: TDataset);
begin
  FRemoteDataset := Value;
end;

procedure TJanuaDirectoryBackupIO.SetSQLiteCreateDatabase(const Value: TStrings);
begin
  FSQLiteCreateDatabase.Assign(Value);
end;

procedure TJanuaDirectoryBackupIO.SetUseBlob(const Value: boolean);
begin
  FUseBlob := Value;
end;

procedure TJanuaDirectoryBackupIO.AddNode(SearchResult: TDirNode);
begin
  try
    if Assigned(self.FDataset) then
    begin
      self.FDataset.Append;
      self.FDataset.FieldByName('ID').AsInteger := SearchResult.id;
      self.FDataset.FieldByName('ParentID').AsInteger := SearchResult.parentid;
      self.FDataset.FieldByName('Dir').AsBoolean := SearchResult.dir;
      self.FDataset.FieldByName('TreeOrder').AsString := SearchResult.TreeOrder;
      self.FDataset.FieldByName('Name').AsString := SearchResult.Name;
      self.FDataset.FieldByName('Location').AsString := SearchResult.Location;
      self.FDataset.FieldByName('Title').AsString := SearchResult.Title;
      self.FDataset.FieldByName('Description').AsString := SearchResult.Description;
      self.FDataset.FieldByName('Path').AsString := SearchResult.Path;
      self.FDataset.FieldByName('DateTime').AsDateTime := (SearchResult.DateTime);
      self.FDataset.FieldByName('Attr').AsInteger := (SearchResult.Attr);
      self.FDataset.Post;
    end;
  except
    on e: exception do
      self.WriteError('TJanuaDirectoryBackupIO.AddNode' + SearchResult.Name, e, True);
  end;
end;

end.
