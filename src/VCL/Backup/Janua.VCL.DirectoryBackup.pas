unit Janua.VCL.DirectoryBackup;

{$ifdef fpc}
{$mode objfpc}{$H+}
{$endif}

interface

uses
  Classes, SysUtils, VCL.Forms, VCL.Controls, VCL.Graphics, VCL.Dialogs, DBClient, VCL.ComCtrls, VCL.StdCtrls,
  VCL.Grids, Janua.Core.System, Janua.Core.Backup, DB;

type

  { JanuaDirectoryBackup }

  TJanuaVCLDirBackupIO = class(TJanuaDirectoryBackupIO)
  private
    FHasErrors: boolean;
    FLastMessage: string;
    FStringGrid: TStringGrid;
    FTreeView: TTreeView;
    FMemoLog: TMemo;
    procedure SetMemoLog(AValue: TMemo);
    procedure SetStringGrid(AValue: TStringGrid);
    procedure SetTreeView(AValue: TTreeView);
    procedure InternalLog(log: string);
    { Private declarations }
  protected
    { Protected declarations }
    procedure SetRemoteDataset(const Value: TDataset); override;
    procedure SetDataset(const Value: TDataset); override;
  public
    { Public declarations }
    procedure AddNode(SearchResult: TDirNode); override;

  published
    { Published declarations }
    property MemoLog: TMemo read FMemoLog write SetMemoLog;
    property TreeView: TTreeView read FTreeView write SetTreeView;
    property StringGrid: TStringGrid read FStringGrid write SetStringGrid;
    property LastMessage: string read FLastMessage;
    property HasErrors: boolean read FHasErrors;
  end;

implementation

procedure TJanuaVCLDirBackupIO.AddNode(SearchResult: TDirNode);
var
  FTreeNode: TTreeNode;
begin
  inherited;
  if assigned(self.FTreeView) then
  begin
    self.FTreeView.Items.Clear;
    FTreeNode := FTreeView.Items.AddFirst(nil, SearchResult.Name);
    FTreeNode.SelectedIndex := 1; // directory chiusa
    FTreeNode.ImageIndex := 0; // directory aperta
    FTreeNode.Selected := true;
  end;
end;

procedure TJanuaVCLDirBackupIO.InternalLog(log: string);
begin

end;

procedure TJanuaVCLDirBackupIO.SetDataset(const Value: TDataset);
begin
  inherited;
  if (self.FDataset is TClientDataset) then
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
      FieldDefs.Add('DateTime', ftDateTime, 1024);
      FieldDefs.Add('Attr', ftInteger, 1024);
      CreateDataset;
    end;
end;

procedure TJanuaVCLDirBackupIO.SetMemoLog(AValue: TMemo);
begin
  if FMemoLog = AValue then
    Exit;
  FMemoLog := AValue;
end;

procedure TJanuaVCLDirBackupIO.SetRemoteDataset(const Value: TDataset);
begin
  inherited;

end;

procedure TJanuaVCLDirBackupIO.SetStringGrid(AValue: TStringGrid);
begin
  if FStringGrid = AValue then
    Exit;
  FStringGrid := AValue;
end;

procedure TJanuaVCLDirBackupIO.SetTreeView(AValue: TTreeView);
begin
  if FTreeView = AValue then
    Exit;
  FTreeView := AValue;
end;

end.
