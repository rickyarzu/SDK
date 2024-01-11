unit Janua.VCL.Statistics.MainFormController;

interface

uses
  // System
  System.SysUtils, System.Variants, System.Classes, System.ImageList,
  // Windows Specific
  Winapi.Windows, Winapi.Messages,
  // Janua Project
  Janua.Core.Functions, Janua.Core.Classes, Janua.Core.Statistics,
  // VCL Controls
  VCL.ImgList, VCL.ExtCtrls, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.ComCtrls, VCL.Menus, VCL.Graphics;

type
  TJanuaStatisticsMainForm = class(TJanuaCoreComponent)
  private
    FPopupMenu: TPopupMenu;
    FTreeList: TTreeView;
    FMenuAddQuery: TMenuItem;
    FMenuEdit: TMenuItem;
    FMenuExecute: TMenuItem;
    FMenuDel: TMenuItem;
    FMenuAddGroup: TMenuItem;
    FMenuAdd: TMenuItem;
    FMenuRename: TMenuItem;
    FJanuaStatisticsServer: TJanuaCustomStatisticsServer;
    procedure SetPopupMenu(const Value: TPopupMenu);
    procedure SetTreeList(const Value: TTreeView);
    procedure SetMenuAdd(const Value: TMenuItem);
    procedure SetMenuAddGroup(const Value: TMenuItem);
    procedure SetMenuAddQuery(const Value: TMenuItem);
    procedure SetMenuDel(const Value: TMenuItem);
    procedure SetMenuEdit(const Value: TMenuItem);
    procedure SetMenuExecute(const Value: TMenuItem);
    procedure SetMenuRename(const Value: TMenuItem);
    procedure SetJanuaStatisticsServer(const Value: TJanuaCustomStatisticsServer);
  private
    Schema: Janua.Core.Statistics.TStatSchema;
    // DestSchema: Janua.Core.Statistics.TStatSchema;
    StatGroup: Janua.Core.Statistics.TJanuaStatGroup;
    StatQuery: Janua.Core.Statistics.TStatQuery;
    tn, tp: TTreenode;
    FJsonQuery: TStrings;
    FJsonTree: TStrings;
    FOnMenuRename: TNotifyEvent;
    FAfterRefresh: TNotifyEvent;
    FAfterAddQuery: TNotifyEvent;
    FOnTreeListClick: TNotifyEvent;
    FAfterMenuRename: TNotifyEvent;
    FAfterAddGroup: TNotifyEvent;
    FOnMenuPopup: TNotifyEvent;
    FOnAddQuery: TNotifyEvent;
    function LocateNode: Integer;
    procedure TreeSetup(aSchema: TStatSchema; aTree: TTreeView);
    procedure DumpJson;
    procedure SetJsonQuery(const Value: TStrings);
    procedure SetJsonTree(const Value: TStrings);
    procedure SetAfterAddGroup(const Value: TNotifyEvent);
    procedure SetAfterAddQuery(const Value: TNotifyEvent);
    procedure SetAfterMenuRename(const Value: TNotifyEvent);
    procedure SetAfterRefresh(const Value: TNotifyEvent);
    procedure SetOnMenuRename(const Value: TNotifyEvent);
    procedure SetOnTreeListClick(const Value: TNotifyEvent);
    procedure SetOnMenuPopup(const Value: TNotifyEvent);
    procedure SetOnAddQuery(const Value: TNotifyEvent);
  protected
    function InputText(const aTitle, aCaption: string; const aText: string = ''): string;
  public
    procedure MenuAddGroupClick(Sender: TObject);
    procedure PopupMenuPopup(Sender: TObject);
    procedure TreeListClick(Sender: TObject);
    procedure MenuAddQueryClick(Sender: TObject);
    procedure MenuDelClick(Sender: TObject);
    procedure MenuRenameClick(Sender: TObject);
    procedure MenuUpdateClick(Sender: TObject);
  published
    property AfterAddGroup: TNotifyEvent read FAfterAddGroup write SetAfterAddGroup;
    property OnMenuPopup: TNotifyEvent read FOnMenuPopup write SetOnMenuPopup;
    property OnTreeListClick: TNotifyEvent read FOnTreeListClick write SetOnTreeListClick;
    property OnAddQuery: TNotifyEvent read FOnAddQuery write SetOnAddQuery;
    property AfterAddQuery: TNotifyEvent read FAfterAddQuery write SetAfterAddQuery;
    property OnMenuRename: TNotifyEvent read FOnMenuRename write SetOnMenuRename;
    property AfterMenuRename: TNotifyEvent read FAfterMenuRename write SetAfterMenuRename;
    property AfterRefresh: TNotifyEvent read FAfterRefresh write SetAfterRefresh;

  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  protected
    function InternalActivate: boolean; override;
  published
    property JsonQuery: TStrings read FJsonQuery write SetJsonQuery;
    property JsonTree: TStrings read FJsonTree write SetJsonTree;
    property TreeList: TTreeView read FTreeList write SetTreeList;
    property MenuAdd: TMenuItem read FMenuAdd write SetMenuAdd;
    property MenuAddGroup: TMenuItem read FMenuAddGroup write SetMenuAddGroup;
    property MenuAddQuery: TMenuItem read FMenuAddQuery write SetMenuAddQuery;
    property MenuDel: TMenuItem read FMenuDel write SetMenuDel;
    property MenuExecute: TMenuItem read FMenuExecute write SetMenuExecute;
    property MenuEdit: TMenuItem read FMenuEdit write SetMenuEdit;
    property MenuRename: TMenuItem read FMenuRename write SetMenuRename;
    property JanuaStatisticsServer: TJanuaCustomStatisticsServer read FJanuaStatisticsServer
      write SetJanuaStatisticsServer;
  end;

implementation

{ TJanuaStatisticsMainFromController }

constructor TJanuaStatisticsMainForm.Create(AOwner: TComponent);
begin
  inherited;
  self.FJsonQuery := TStringList.Create;
  self.FJsonTree := TStringList.Create;
end;

destructor TJanuaStatisticsMainForm.Destroy;
begin
  self.FJsonQuery.Free;
  self.FJsonTree.Free;
  inherited;
end;

procedure TJanuaStatisticsMainForm.DumpJson;
begin
  self.FJsonQuery.Text := self.StatGroup.AsJsonPretty;
  self.FJsonTree.Text := self.Schema.AsJsonPretty;
end;

function TJanuaStatisticsMainForm.InputText(const aTitle, aCaption: string; const aText: string = ''): string;
begin

  { TODO : JanuaDialogText.InputText('Nuovo Gruppo', 'Inserisci il nome del gruppo') }
end;

function TJanuaStatisticsMainForm.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        Result := assigned(FPopupMenu) and assigned(FTreeList);
      end;
    except
      on e: exception do
        RaiseLocalException('InternalActivate', e);
    end;
end;

function TJanuaStatisticsMainForm.LocateNode: Integer;
var
  tmp: TTreenode;
begin
  tmp := nil;
  Result := -1;
  if self.FTreeList.Items.Count > 0 then
    tmp := FTreeList.Selected;
  if (self.FTreeList.Items.Count > 0) and (tmp <> nil) then
  begin
    Result := tmp.Level;
    if (Result = 0) and (tp <> tmp) then
    begin
      tn := nil;
      tp := tmp;
      if self.Schema.Find(tmp.Text) then
        self.StatGroup := self.Schema.SelectedGroup
    end
    else if (Result = 1) and (tn <> tmp) then
    begin
      tn := tmp;
      tp := tn.Parent;
      if self.Schema.Find(tp.Text) then
      begin
        self.StatGroup := self.Schema.SelectedGroup;
        if self.Schema.SelectedGroup.Find(tp.Text) then
          self.StatQuery := self.Schema.SelectedGroup.SelectedQuery;
      end;
    end;
  end;

end;

procedure TJanuaStatisticsMainForm.MenuAddGroupClick(Sender: TObject);
begin
  self.Schema.Add(InputText('Nuovo Gruppo', 'Inserisci il nome del gruppo'));
  self.StatGroup := self.Schema.SelectedGroup;
  tn := FTreeList.Items.Add(nil, self.Schema.SelectedGroup.Name);
  tn.ImageIndex := 4;
  tn.SelectedIndex := 0;
  if assigned(FOnChangeLanguage) then
    FOnChangeLanguage(self);
  // self.DumpJson;
end;

procedure TJanuaStatisticsMainForm.MenuAddQueryClick(Sender: TObject);
var
  aID: smallint;
begin
  aID := 0;
  Schema.Groups[Schema.ItemIndex].Add(aID, InputText('Nuova Query', 'Inserisci il nome della query'), '');
  // tn := TreeList1.Items.Add(tp, self.Schema.SelectedGroup.SelectedQuery.Name);
  tn := FTreeList.Items.AddChild(tp, self.Schema.SelectedGroup.SelectedQuery.Name);
  tn.ImageIndex := 5;
  tn.SelectedIndex := 6;
  self.StatQuery := Schema.SelectedGroup.SelectedQuery;
  self.DumpJson;
end;

procedure TJanuaStatisticsMainForm.MenuDelClick(Sender: TObject);
var
  tmp: Integer;
begin
  tmp := LocateNode;
  if tmp = 0 then
  begin
    self.Schema.DeleteGroup(self.tp.Text);
    self.FTreeList.Items.Delete(self.tp);
    self.tp := nil;
  end
  else if tmp = 1 then
  begin
    self.Schema.Groups[self.Schema.ItemIndex].DeleteQuery(self.tn.Text);
    self.FTreeList.Items.Delete(self.tn);
    self.tn := nil;
  end;

  self.DumpJson;

end;

procedure TJanuaStatisticsMainForm.MenuRenameClick(Sender: TObject);
var
  iTemp: Integer;
  sTemp: string;
begin
  iTemp := LocateNode;
  if iTemp = 0 then
  begin
    sTemp := InputText('Rinomina Gruppo', 'Cambia il nome del gruppo', tp.Text);
    if sTemp <> Schema.Groups[self.Schema.ItemIndex].Name then
      Schema.Groups[self.Schema.ItemIndex].Name := sTemp;
  end
  else if iTemp = 1 then
  begin
    sTemp := InputText('Rinomina Query', 'Cambia il nome della query', tn.Text);
    if sTemp <> Schema.Groups[self.Schema.ItemIndex].Queries[Schema.SelectedGroup.ItemIndex].Name then
      Schema.Groups[self.Schema.ItemIndex].Queries[Schema.SelectedGroup.ItemIndex].Name := sTemp;
  end;
  self.DumpJson;
end;

procedure TJanuaStatisticsMainForm.MenuUpdateClick(Sender: TObject);
begin
  self.Schema.Sort;
  self.TreeSetup(self.Schema, self.FTreeList);
  self.DumpJson;
end;

procedure TJanuaStatisticsMainForm.PopupMenuPopup(Sender: TObject);
begin
  if self.LocateNode = 1 then
  begin
    self.MenuAddQuery.Enabled := False;
    self.MenuExecute.Enabled := True;
    self.MenuEdit.Enabled := True;
    self.MenuDel.Enabled := True;
    self.MenuRename.Enabled := True;
  end
  else if self.LocateNode = 0 then
  begin
    MenuAddQuery.Enabled := True;
    MenuExecute.Enabled := False;
    MenuEdit.Enabled := False;
    MenuDel.Enabled := True;
    self.MenuRename.Enabled := True;
  end
  else
  begin
    MenuAddQuery.Enabled := False;
    MenuExecute.Enabled := False;
    MenuEdit.Enabled := False;
    MenuDel.Enabled := False;
    self.MenuRename.Enabled := False;
  end;
end;

procedure TJanuaStatisticsMainForm.SetAfterAddGroup(const Value: TNotifyEvent);
begin
  FAfterAddGroup := Value;
end;

procedure TJanuaStatisticsMainForm.SetAfterAddQuery(const Value: TNotifyEvent);
begin
  FAfterAddQuery := Value;
end;

procedure TJanuaStatisticsMainForm.SetAfterMenuRename(const Value: TNotifyEvent);
begin
  FAfterMenuRename := Value;
end;

procedure TJanuaStatisticsMainForm.SetAfterRefresh(const Value: TNotifyEvent);
begin
  FAfterRefresh := Value;
end;

procedure TJanuaStatisticsMainForm.SetJanuaStatisticsServer(const Value: TJanuaCustomStatisticsServer);
begin
  FJanuaStatisticsServer := Value;
end;

procedure TJanuaStatisticsMainForm.SetJsonQuery(const Value: TStrings);
begin
  FJsonQuery := Value;
end;

procedure TJanuaStatisticsMainForm.SetJsonTree(const Value: TStrings);
begin
  FJsonTree := Value;
end;

procedure TJanuaStatisticsMainForm.SetMenuAdd(const Value: TMenuItem);
begin
  FMenuAdd := Value;
  // if Assigned(FMenuAdd) then FMenuAdd.OnClick := self.menua

end;

procedure TJanuaStatisticsMainForm.SetMenuAddGroup(const Value: TMenuItem);
begin
  FMenuAddGroup := Value;
  if assigned(FMenuAddGroup) then
    FMenuAddGroup.OnClick := self.MenuAddGroupClick;

end;

procedure TJanuaStatisticsMainForm.SetMenuAddQuery(const Value: TMenuItem);
begin
  FMenuAddQuery := Value;
  if assigned(FMenuAddQuery) then
    FMenuAddQuery.OnClick := self.MenuAddQueryClick;
end;

procedure TJanuaStatisticsMainForm.SetMenuDel(const Value: TMenuItem);
begin
  FMenuDel := Value;
  if assigned(FMenuDel) then
    FMenuDel.OnClick := self.MenuDelClick;
end;

procedure TJanuaStatisticsMainForm.SetMenuEdit(const Value: TMenuItem);
begin
  FMenuEdit := Value;
  {
    if assigned(FMenuEdit) then
    FMenuEdit.OnClick := self.MenuMenuEditClick;
  }
end;

procedure TJanuaStatisticsMainForm.SetMenuExecute(const Value: TMenuItem);
begin
  FMenuExecute := Value;
  {
    if assigned(FMenuExecute) then
    FMenuExecute.OnClick := self.MenuExecuteClick;
  }
end;

procedure TJanuaStatisticsMainForm.SetMenuRename(const Value: TMenuItem);
begin
  FMenuRename := Value;
  if assigned(FMenuRename) then
    FMenuRename.OnClick := self.MenuRenameClick;
end;

procedure TJanuaStatisticsMainForm.SetOnAddQuery(const Value: TNotifyEvent);
begin
  FOnAddQuery := Value;
end;

procedure TJanuaStatisticsMainForm.SetOnMenuPopup(const Value: TNotifyEvent);
begin
  FOnMenuPopup := Value;
end;

procedure TJanuaStatisticsMainForm.SetOnMenuRename(const Value: TNotifyEvent);
begin
  FOnMenuRename := Value;
end;

procedure TJanuaStatisticsMainForm.SetOnTreeListClick(const Value: TNotifyEvent);
begin
  FOnTreeListClick := Value;
end;

procedure TJanuaStatisticsMainForm.SetPopupMenu(const Value: TPopupMenu);
begin
  FPopupMenu := Value;
  if assigned(FPopupMenu) then
    FPopupMenu.OnPopup := self.PopupMenuPopup;
end;

procedure TJanuaStatisticsMainForm.SetTreeList(const Value: TTreeView);
begin
  FTreeList := Value;
  if assigned(FTreeList) then
    FTreeList.OnClick := self.TreeListClick;
end;

procedure TJanuaStatisticsMainForm.TreeListClick(Sender: TObject);
begin
  self.LocateNode;
  DumpJson;
end;

procedure TJanuaStatisticsMainForm.TreeSetup(aSchema: TStatSchema; aTree: TTreeView);
var
  ltg: TTreenode;
  ltq: TTreenode;
  i, j: Integer;
begin
  aTree.Items.Clear;
  for i := Low(self.Schema.Groups) to High(self.Schema.Groups) do
  begin
    ltg := aTree.Items.Add(nil, self.Schema.Groups[i].Name);
    ltg.ImageIndex := 4;
    ltg.SelectedIndex := 0;
    for j := Low(Schema.Groups[i].Queries) to High(Schema.Groups[i].Queries) do
    begin
      ltq := aTree.Items.AddChild(ltg, Schema.Groups[i].Queries[j].Name);
      ltq.ImageIndex := 5;
      ltq.SelectedIndex := 6;
    end;
  end;

end;

end.
