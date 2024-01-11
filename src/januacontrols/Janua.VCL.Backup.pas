unit Janua.VCL.Backup;

interface

uses
  System.SysUtils, System.Classes,  Data.DB, Datasnap.DBClient,
  Windows, Vcl.ComCtrls, Janua.Core.Backup, Vcl.Dialogs;


type
   TJanuaBackupNode = record
     Node : TTreeNode;
     pNode : TTreeNode;
     FileDir : TDirNode;
   end;



type
  TJanuaVclBackupTreeMaker = class(TComponent)
  private
    i, n : integer;
    FselectedNode : TTreeNode;
    FLocalDataset: TClientDataset;
    FTreeView: TTreeView;
    FRemoteDataset: TClientDataset;
    FDirectoryBackup: TJanuaDirectoryBackup;
    FNodeCount: Integer;
    BNodes: Array of TJanuaBackupNode;
    Nodes: Array of integer;
    FDirectoryName: string;
    FAutoSync: boolean;
    { Private declarations }
    function GetComputerNameFromWindows: string;
    procedure SetLocalDataset(const Value: TClientDataset);
    procedure SetRemoteDataset(const Value: TClientDataset);
    procedure SetTreeView(const Value: TTreeView);
    procedure SetDirectoryBackup(const Value: TJanuaDirectoryBackup);
    procedure SetNodeCount(const Value: Integer);
    procedure SetRoot;
    procedure SetDir(dirid: integer);
    procedure SetRecord;
    procedure SetDirectoryName(const Value: string);
    procedure SetAutoSync(const Value: boolean);
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure FirstBackup;
    procedure FilterNode(NodeID: TTReeNode);
    procedure FilterRoot;
    procedure GoStore;
  published
    { Published declarations }
    property ComputerName: string read GetComputerNameFromWindows;
    property TreeView : TTreeView read FTreeView write SetTreeView;
    property LocalDataset : TClientDataset read FLocalDataset write SetLocalDataset;
    property RemoteDataset : TClientDataset read FRemoteDataset write SetRemoteDataset;
    property DirectoryBackup : TJanuaDirectoryBackup read FDirectoryBackup write SetDirectoryBackup;
    property NodeCount : Integer read FNodeCount write SetNodeCount;
    property DirectoryName : string read FDirectoryName write SetDirectoryName;
    property AutoSync : boolean read FAutoSync write SetAutoSync;
  end;


implementation

uses udlgWaitModel;


procedure TJanuaVclBackupTreeMaker.FilterNode(NodeID: TTReeNode);
var
  s: integer;
begin
  if FselectedNode <> NodeID  then
  begin
  for s := 0 to self.FNodeCount - 1 do
      if self.BNodes[s].Node = NodeID then
      begin
         if BNodes[s].FileDir.dir then
         begin
           self.FLocalDataset.Filtered := False;
           self.FLocalDataset.Filter := 'ParentID = ' + IntToStr(BNodes[s].FileDir.id);
           self.FLocalDataset.Filtered := True;
         end;
         Exit;
      end;
  end;
end;

procedure TJanuaVclBackupTreeMaker.FilterRoot;
begin
    self.FLocalDataset.Filtered := False;
    self.FLocalDataset.Filter := 'ParentID = 0';
    self.FLocalDataset.Filtered := True;
end;

procedure TJanuaVclBackupTreeMaker.FirstBackup;
begin
  if assigned(FDirectoryBackup) then
  if FDirectoryBackup.ExecuteFirstBackup then
  begin
    FNodeCount := self.FLocalDataset.RecordCount;
    SetLength(BNodes, FNodeCount);
    SetLength(Nodes, FNodeCount);
    self.SetRoot;
    if assigned(self.FTreeView) then self.FTreeView.FullExpand;
  end;
end;

function TJanuaVclBackupTreeMaker.GetComputerNameFromWindows: string;
var
  iLen: Cardinal;
begin
  iLen := MAX_COMPUTERNAME_LENGTH + 1;         // From Windows.pas
  Result := StringOfChar(#0, iLen);
  GetComputerName(PChar(Result), iLen);
  SetLength(Result, iLen);
end;

procedure TJanuaVclBackupTreeMaker.GoStore;
var
  a : TJanuadlgWaitModel;
begin
  if self.FDirectoryBackup.RegisterDirectory then
  begin
   a := TJanuadlgWaitModel.Create(self);
   try
     a.Show;
     self.FLocalDataset.Filtered := False;
     a.ProgressBar1.Min := 1;
     a.ProgressBar1.Max := self.FLocalDataset.RecordCount;
     self.FLocalDataset.First;
     while not self.FLocalDataset.Eof do
     begin
        a.ProgressBar1.StepBy(1);
        self.FDirectoryBackup.CloneRecordServer;
        self.FLocalDataset.Next;
     end;
     a.Close;
     ShowMessage('Sincronizzazione Backup Terminata');
   finally
     a.Free;
   end;
  end;
end;

procedure TJanuaVclBackupTreeMaker.SetAutoSync(const Value: boolean);
begin
  FAutoSync := Value;
end;

procedure TJanuaVclBackupTreeMaker.SetDir(dirid: integer);
var
  mini, maxi, l, id,  dir: integer;
  isdir : boolean;
  name : string;
begin
    self.FLocalDataset.Filtered := False;
    self.FLocalDataset.Filter := 'ParentID = ' + IntToStr(BNodes[dirid].FileDir.id);
    self.FLocalDataset.Filtered := True;
    self.FLocalDataset.First;
    if self.FLocalDataset.RecordCount > 0 then
    begin
      mini := i + 1;
      while not self.FLocalDataset.Eof do
      begin
        Inc(i);
        self.SetRecord;
        BNodes[i].pNode := BNodes[dirid].Node;
        BNodes[i].Node := self.TreeView.Items.AddChild(BNodes[i].pNode, BNodes[i].FileDir.Name );
        Nodes[i] := i;
        if BNodes[i].FileDir.dir then BNodes[i].Node.ImageIndex := 0 else  BNodes[i].Node.ImageIndex := 5;
        if BNodes[i].FileDir.dir then BNodes[i].Node.SelectedIndex := 1 else  BNodes[i].Node.SelectedIndex := 6;
        self.FLocalDataset.Next;
      end;
      maxi := i;
      for l := mini to maxi do begin
          isdir :=  BNodes[l].FileDir.dir;
          dir :=  BNodes[l].FileDir.parentid;
          id :=  BNodes[l].FileDir.id;
          name :=  BNodes[l].FileDir.Name;
          if BNodes[l].FileDir.dir then SetDir(l);
      end;
    end;
end;

procedure TJanuaVclBackupTreeMaker.SetDirectoryBackup(
  const Value: TJanuaDirectoryBackup);
begin
  FDirectoryBackup := Value;
end;

procedure TJanuaVclBackupTreeMaker.SetDirectoryName(const Value: string);
begin
  FDirectoryName := Value;
end;

procedure TJanuaVclBackupTreeMaker.SetLocalDataset(const Value: TClientDataset);
begin
  FLocalDataset := Value;
end;

procedure TJanuaVclBackupTreeMaker.SetNodeCount(const Value: Integer);
begin
  FNodeCount := Value;
end;

procedure TJanuaVclBackupTreeMaker.SetRecord;
begin
     BNodes[i].FileDir.ID :=  self.FLocalDataset.FieldByName('ID').AsInteger ;
     BNodes[i].FileDir.ParentID :=  self.FLocalDataset.FieldByName('ParentID').AsInteger ;
     BNodes[i].FileDir.Dir :=  self.FLocalDataset.FieldByName('Dir').AsBoolean ;
     BNodes[i].FileDir.TreeOrder :=  self.FLocalDataset.FieldByName('TreeOrder').AsString ;
     BNodes[i].FileDir.Name :=  self.FLocalDataset.FieldByName('Name').AsString ;
     BNodes[i].FileDir.Location :=  self.FLocalDataset.FieldByName('Location').AsString;
     BNodes[i].FileDir.Title :=  self.FLocalDataset.FieldByName('Title').AsString ;
     BNodes[i].FileDir.Description :=  self.FLocalDataset.FieldByName('Description').AsString ;
     BNodes[i].FileDir.Path :=  self.FLocalDataset.FieldByName('Path').AsString;
     BNodes[i].FileDir.DateTime :=  self.FLocalDataset.FieldByName('DateTime').AsDateTime;
     BNodes[i].FileDir.Attr :=  self.FLocalDataset.FieldByName('Attr').AsInteger;
end;

procedure TJanuaVclBackupTreeMaker.SetRemoteDataset(
  const Value: TClientDataset);
begin
  FRemoteDataset := Value;
end;

procedure TJanuaVclBackupTreeMaker.SetRoot;
begin
    i := 0;
    self.FLocalDataset.First;
    FDirectoryName := self.FLocalDataset.FieldByName('Name').AsString;
    self.SetRecord;
    BNodes[i].Node:=FTreeView.Items.Add(nil,BNodes[i].FileDir.Name);
    BNodes[i].pNode := nil;
    BNodes[0].FileDir.Dir := True;
    BNodes[i].Node.ImageIndex:=4;//now you can change any  property of the node
    BNodes[i].Node.SelectedIndex:=4;//now you can change any  property of the node
    BNodes[i].Node.Selected := True;
    Nodes[0] := 0;
    self.SetDir(0);
    self.FLocalDataset.Filtered := False;
    if self.FAutoSync then self.GoStore;
end;

procedure TJanuaVclBackupTreeMaker.SetTreeView(const Value: TTreeView);
begin
  FTreeView := Value;
end;

end.
