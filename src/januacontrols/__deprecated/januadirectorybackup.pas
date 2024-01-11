unit januadirectorybackup;

{$ifdef fpc}
  {$mode objfpc}{$H+}
{$endif}

interface

uses
  {$IFDEF UNIX}
     LResources, FileUtil,
  {$ENDIF}
  System.SysUtils, System.Classes, DB, JanuaOS;


  {$METHODINFO ON}
type
   TDirNode = record
         id : integer;
         TreeOrder : string;
         parentid : integer;
         dir : boolean;
         Name : string;
         Location : string;
         Title : string;
         Description : string;
         DateTime : TDateTime;
         Path : string;
         Attr : integer;
         //TreeNode : TTReeNode;
   end;

type
  TLawyerSearchRec = record
     Time: Integer;
     Size: Integer;
     Attr: Integer;
     Name: TFileName;
     DateTime : TDateTime;
     ExcludeAttr: Integer;
     FindHandle: THandle;
     Pos: String;
  end;

type
  TJanuaDirectoryBackupIO = class(TComponent)
  private
    FRemoteDataset: TDataset;
    FNodeCount: Integer;
  protected
    FListNode: array of TDirNode;
    FDataset: TDataset;
    procedure SetRemoteDataset(const Value: TDataset); virtual;
    procedure SetDataset(const Value: TDataset); virtual;
  public
    procedure AddNode(SearchResult : TDirNode ); virtual;
    // add a file Record to Dataset (to be replaced by dirNode);
  published
    property RemoteDataset : TDataset read FRemoteDataset write SetRemoteDataset;
    property Dataset : TDataset read FDataset write SetDataset;
    property NodeCount: Integer read FNodeCount default 0;
  end;

type
  TJanuaDirectoryBackup = class(TComponent)
  private
    { var declarations }
    i, k, l : integer;
    nodes : array of TDirNode;
    FRootDirectory: string;
    FLastMessage: string;
    FHasErrors: boolean;
    FMemoLog: TStringList;
    FJanuaOS: TJanuaOS;
    FJanuaDirBackuIO: TJanuaDirectoryBackupIO;
    procedure SetJanuaOS(const Value: TJanuaOS);
    procedure SetJanuaDirBackuIO(const Value: TJanuaDirectoryBackupIO);
    function Lpad(padString: string; strlength: integer; padChar: string): string;
    { const declarations }
    Const
        FileFound = 0;
    { Procedures-Property declarations }

    procedure SetHasErrors(const Value: boolean);
    procedure SetLastMessage(const Value: string);
    procedure SetRootDirectory(const Value: string);
    procedure InternalLog(log: string);
    procedure SetDirectory(SearchResult : TSearchRec;  pNode : TDirNode);
    procedure ListFilesDirectory(pNode: TDirNode); // list all files in parent dir
    procedure ListDirDirectory(pNode: TDirNode); // list all dirs in parent dir
    procedure ExtractFullName(sFileName: string);
    { Private declarations }
    function  SetFirstRoot : boolean;
  protected
    { Protected declarations }
  public
    constructor Create(AOwner : TComponent);  override;
    { Public declarations }
    function  ExecuteFirstBackup : boolean;
    function  UpdateBackup : boolean;
    procedure DirectoryCount(pNode : TDirNode);
    function  SetNode(directory: boolean; SearchResult: TSearchRec; pNode : TDirNode) : TDirNode;
  published
    { Published declarations }
    property MemoLog: TStringList read FMemoLog;
    property RootDirectory : string read FRootDirectory write SetRootDirectory;
    property LastMessage : string read FLastMessage write SetLastMessage;
    property HasErrors : boolean read FHasErrors write SetHasErrors;
    property JanuaOS : TJanuaOS read FJanuaOS write SetJanuaOS;
    property JanuaDirBackuIO: TJanuaDirectoryBackupIO read FJanuaDirBackuIO write SetJanuaDirBackuIO;
  end;

  {$METHODINFO OFF}

procedure Register;

implementation

procedure Register;
begin
{$ifdef fpc}
  {$I januadirectorybackup_icon.lrs}
{$endif}
  RegisterComponents('Janua System', [TJanuaDirectoryBackup]);
end;

{ TJanuaDirectoryBackup }


procedure TJanuaDirectoryBackupIO.AddNode(SearchResult: TDirNode);
begin
  { TODO -oRiccardo -cBackup : Sostituire con AddRec procedura che salva un Record e non un file }
  try
   {
   if assigned(self.FStringGrid) then
   begin
     Inc(i);
     self.FStringGrid.RowCount := i+ 1;
     self.FStringGrid.Cells[0, i] := IntToStr(i);
     self.FStringGrid.Cells[1, i] := SearchResult.Name;
     self.FStringGrid.Cells[2, i] := DateTimeToStr(SearchResult.TimeStamp);
     self.FStringGrid.Cells[3, i] := IntToStr(SearchResult.Attr);

   end;


var
  FTreeNode: TTreeNode;
begin
  inherited;
    if assigned(self.FTreeView) then
    begin
      self.FTreeView.Items.Clear;
      FTreeNode := FTreeView.Items.AddFirst(nil , SearchResult.Name);
      FTreeNode.SelectedIndex:= 1; // directory chiusa
      FTreeNode.ImageIndex:= 0; // directory aperta
      FTreeNode.Selected := true;
    end;
   }

   if assigned(self.FDataset) then
   begin
     self.FDataset.Append;
     self.FDataset.FieldByName('ID').AsInteger  := SearchResult.id;
     self.FDataset.FieldByName('ParentID').AsInteger  := SearchResult.parentid;
     self.FDataset.FieldByName('Dir').AsBoolean  := SearchResult.dir;
     self.FDataset.FieldByName('TreeOrder').AsString  := SearchResult.TreeOrder;
     self.FDataset.FieldByName('Name').AsString  := SearchResult.Name;
     self.FDataset.FieldByName('Location').AsString  := SearchResult.Location;
     self.FDataset.FieldByName('Title').AsString  := SearchResult.Title;
     self.FDataset.FieldByName('Description').AsString  := SearchResult.Description;
     self.FDataset.FieldByName('Path').AsString  := SearchResult.Path;
     self.FDataset.FieldByName('DateTime').AsDateTime := (SearchResult.DateTime);
     self.FDataset.FieldByName('Attr').AsInteger := (SearchResult.Attr);
   end;

  except on e : exception do raise;

  end;

end;

constructor TJanuaDirectoryBackup.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FMemoLog := TStringList.Create;
end;

procedure TJanuaDirectoryBackup.InternalLog(log: string);
var
     ora : string;
begin
    ora := DateTimeToStr(now());
    if Assigned(self.FMemoLog) then self.FMemoLog.Add(ora + sLineBreak +  log + sLineBreak);

end;

procedure TJanuaDirectoryBackup.ListDirDirectory(pNode: TDirNode);
var
    SearchResult : TSearchRec;
    thisNode : TDirNode;
begin
  try
    self.InternalLog('List Dir in: ' + pNode.Location);
    If FindFirst (pNode.Location + self.JanuaOS.WildCardFile,
                 faDirectory , SearchResult) = FileFound
    Then
       Begin
         if (SearchResult.Attr = 48) then SetDirectory(SearchResult, pNode);
         While FindNext (SearchResult) = FileFound Do
               if  (SearchResult.Attr = 48) then  SetDirectory(SearchResult, pNode);
       End;

    FindClose (SearchResult);

  except
    on e : exception do begin
      self.InternalLog('Errore : ' + e.Message);
      self.FHasErrors := True;
    end;
  end;

end;

procedure TJanuaDirectoryBackup.ListFilesDirectory(pNode: TDirNode);
var
   SearchResult : TSearchRec;
   thisNode : TDirNode;
begin
  try
   If FindFirst (pNode.Location + self.JanuaOS.WildCardFile,
               (faAnyFile And Not faDirectory) , SearchResult) = FileFound
   Then
       Begin
       thisNode := self.SetNode(false, SearchResult , pNode );
       if assigned (FJanuaDirBackuIO) then self.FJanuaDirBackuIO.AddNode(thisNode);
       // passa alla procedura di i/o il nodo da salvare
       While FindNext (SearchResult) = FileFound Do
             Begin
               thisNode := self.SetNode(false, SearchResult, pNode);
               if assigned (FJanuaDirBackuIO) then
                  self.FJanuaDirBackuIO.AddNode(thisNode);
               // passa alla procedura di i/o il nodo da salvare
             End;
       End;
    FindClose (SearchResult);

  except on e : exception do
    begin
      self.InternalLog(e.Message);
      self.FHasErrors:= True;
    end;

  end;

end;

function TJanuaDirectoryBackup.Lpad(padString: string; strlength: integer;
  padChar: string): string;
begin
     if Length(padString) > strlength then
        padString := Copy(padString, 1, strlength);
     While not(Length(padString) >= strlength) do
           padString := padChar + padString;
     Result := padString;
end;

procedure TJanuaDirectoryBackup.DirectoryCount(pNode: TDirNode);
var
     isDir : boolean;
     SearchResult : TSearchRec;
begin
  try
    If FindFirst (pNode.Location + FJanuaOS.WildCardFile,
               (faAnyFile or faDirectory) , SearchResult) = FileFound then
    begin
       if (SearchResult.Name <> '.') and (SearchResult.Name <> '..')
       then
       begin
          Inc(k);
          SetLength(Nodes, k) ;
          self.InternalLog(SearchResult.Name);
          isDir := SearchResult.Attr = faDirectory;
          // setNode si potrebbe invece più logicamente inserire nel dir browser
          self.SetNode(isDir, SearchResult, pNode);
       end;


       While FindNext (SearchResult) = FileFound Do
             Begin
                 if (SearchResult.Name <> '.') and (SearchResult.Name <> '..')
                 then
                  begin
                    Inc(k);
                    SetLength(Nodes, k) ;
                  end;
             End;
    end;
    //Inc(k,j);
    //self.StringGrid1.RowCount:= j + 1;
    self.InternalLog('Numero di File Trovati: ' + IntToStr(k));

  except on e : exception do
    begin
      self.InternalLog(e.Message);
      self.FHasErrors:= True;
    end;
  end;


end;

function TJanuaDirectoryBackup.ExecuteFirstBackup: boolean;
begin
  //Questa funzione Esegue il primo Backup e, relativamente al sistema operativo
  //supportato registra in un file .ini le informazioni per riprendere il
  //backup in un secondo momento.
  Result := True;
  try

    i := 0;
    ExtractFullName(FRootDirectory);
    SetLength(Nodes, 1) ;
    Result := self.SetFirstRoot;
  except
    on e : exception do begin
       self.InternalLog(e.Message);
       self.FHasErrors := True;
       Result := False;
    end;

  end;
end;

procedure TJanuaDirectoryBackup.ExtractFullName(sFileName: string);
var
    f, g: string;
begin
   if assigned(FMemoLog) then
   begin
     f :=  sFileName;
     self.InternalLog ('Selected Dir: ' + f);

     g := 'Has Name      : ' + ExtractFileName(F);
     self.InternalLog  (g);
     g := 'Has Path      : ' + ExtractFilePath(F);
     self.InternalLog  (g);

     g := 'Has Ext       : ' + ExtractFileExt(F);
     self.InternalLog  (g);

     g := 'Has Directory : ' + ExtractFileDir(F);
     self.InternalLog (g);
   end;
end;

procedure TJanuaDirectoryBackupIO.SetDataset(const Value: TDataset);
begin
  FDataset := Value;
end;

procedure TJanuaDirectoryBackup.SetDirectory(SearchResult: TSearchRec;
  pNode: TDirNode);
var
   thisNode : TDirNode;
begin
   if (SearchResult.Name <> '.') and (SearchResult.Name <> '..') then
   begin
       self.InternalLog('Set Directory : ' + SearchResult.Name);
       try
       thisNode := self.SetNode(True, SearchResult, pNode );
       if assigned (FJanuaDirBackuIO) then self.FJanuaDirBackuIO.AddNode(thisNode);
       self.DirectoryCount(thisNode);
       self.ListFilesDirectory(thisNode);
       self.ListDirDirectory(thisNode);
       except
            on e : exception do begin
               self.InternalLog ('Error Set Directory : ' + e.Message);
               self.FHasErrors := True;
            end;
       end;
   end;
end;

function TJanuaDirectoryBackup.SetFirstRoot: boolean;
begin
  Result := True;
  try

    l := 0;
    Nodes[0].id := 0;
    Nodes[0].parentid := -1;
    Nodes[0].dir:=True;
    Nodes[0].Path := ExtractFilePath(self.FRootDirectory);
    Nodes[0].Location := FRootDirectory;
    Nodes[0].Name:= ExtractFileName(FRootDirectory);

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

     on e: exception do raise;

  end;
end;

procedure TJanuaDirectoryBackup.SetHasErrors(const Value: boolean);
begin
  FHasErrors := Value;
end;

procedure TJanuaDirectoryBackup.SetJanuaDirBackuIO(
  const Value: TJanuaDirectoryBackupIO);
begin
  FJanuaDirBackuIO := Value;
end;

procedure TJanuaDirectoryBackup.SetJanuaOS(const Value: TJanuaOS);
begin
  FJanuaOS := Value;
end;

procedure TJanuaDirectoryBackup.SetLastMessage(const Value: string);
begin
  FLastMessage := Value;
end;


function TJanuaDirectoryBackup.SetNode(directory: boolean;
                           SearchResult: TSearchRec; pNode: TDirNode): TDirNode;
begin
    Inc(l);
    self.InternalLog ('Imposto Nodo: ' + IntToStr(l) + ' array : ' + IntToStr(k));
    try
    Nodes[l].id := l;
    Nodes[l].parentid := pNode.id;
    Nodes[l].TreeOrder := pNode.TreeOrder + LPad(IntToStr(l), 3, '0');
    Nodes[l].Title := ExtractFileName(SearchResult.Name);
    Nodes[l].Description := Nodes[l].Title;
    Nodes[l].DateTime := SearchResult.TimeStamp;
    Nodes[l].dir:=directory;
    Nodes[l].Path := ExtractFilePath(SearchResult.Name);
    Nodes[l].Location :=  pNode.Location + '/' +  SearchResult.Name;
    Nodes[l].Name:= Nodes[l].Title;

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
         on e : exception do self.InternalLog('Errore setNode : ' + Nodes[l].Location );
    end;

end;

procedure TJanuaDirectoryBackupIO.SetRemoteDataset(const Value: TDataset);
begin
  FRemoteDataset := Value;
end;

procedure TJanuaDirectoryBackup.SetRootDirectory(const Value: string);
begin
  FRootDirectory := Value;
end;

function TJanuaDirectoryBackup.UpdateBackup: boolean;
begin
   // update Backup può essere eseguito da una libreria di sistema per esempio
   // un service di windows o un demone di linux per aggiornare lo stato del
   // backup. Per fare questo dovrà confrontare l'albero in memoria delle
   // cartelle con l'albero reale nel sistema operativo.

end;

end.
