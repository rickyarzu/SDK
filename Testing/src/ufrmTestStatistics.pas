unit ufrmTestStatistics;

interface

uses
  // System
  System.SysUtils, System.Variants, System.Classes, System.ImageList,
  // Windows Specific
  Winapi.Windows, Winapi.Messages,
  // Janua Project
  Janua.Core.Functions, Janua.Core.Classes, Janua.Core.Statistics,
  // VCL Controls
  Vcl.ImgList, Vcl.ExtCtrls, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Menus, Vcl.Graphics,
  // Tms
  AdvMenus, AdvSplitter, AdvMemo, advmjson, Janua.Vcl.Dialogs, AdvTreeViewBase, AdvTreeViewData, AdvCustomTreeView,
  AdvTreeView, Vcl.StdCtrls;

type
  TfrmTestStatistics = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ImageList1: TImageList;
    PopupMenu1: TAdvPopupMenu;
    N1: TMenuItem;
    Aggiungi1: TMenuItem;
    Gruppo1: TMenuItem;
    Query1: TMenuItem;
    Elimina1: TMenuItem;
    VediQuery1: TMenuItem;
    Modifica1: TMenuItem;
    Rinomina1: TMenuItem;
    InviaInRepository1: TMenuItem;
    RicevidaRepository1: TMenuItem;
    AdvSplitter1: TAdvSplitter;
    Panel1: TPanel;
    TreeList1: TTreeView;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    JanuaDialogText1: TJanuaDialogText;
    Panel2: TPanel;
    AdvMemoTree: TAdvMemo;
    AdvMemoObject: TAdvMemo;
    TreeView1: TTreeView;
    AdvSplitter2: TAdvSplitter;
    Panel3: TPanel;
    AdvMemoDestination: TAdvMemo;
    Button1: TButton;

    N2: TMenuItem;
    Aggiorna1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Gruppo1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure TreeList1Click(Sender: TObject);
    procedure Query1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Elimina1Click(Sender: TObject);
    procedure Rinomina1Click(Sender: TObject);
    procedure Aggiorna1Click(Sender: TObject);
  protected
    { Private declarations }
    Schema: Janua.Core.Statistics.TStatSchema;
    DestSchema: Janua.Core.Statistics.TStatSchema;
    StatGroup: Janua.Core.Statistics.TJanuaStatGroup;
    StatQuery: Janua.Core.Statistics.TStatQuery;
    tn, tp: TTreenode;
    function LocateNode: Integer;
    procedure TreeSetup(aSchema: TStatSchema; aTree: TTreeView);
    procedure DumpJson;
  public
    { Public declarations }
  end;

var
  frmTestStatistics: TfrmTestStatistics;

implementation

{$R *.dfm}

uses udmJanuaCoreTesting;

procedure TfrmTestStatistics.Aggiorna1Click(Sender: TObject);
begin
  self.Schema.Sort;
  self.TreeSetup(self.Schema, self.TreeList1);
  self.DumpJson;
end;

procedure TfrmTestStatistics.Button1Click(Sender: TObject);
var
  aSchema: Janua.Core.Statistics.TStatSchema;
begin
  aSchema.SetFromJson(self.Schema.AsJson);
  AdvMemoDestination.Lines.Text := self.Schema.AsJsonPretty;
  self.TreeSetup(aSchema, self.TreeView1);
end;

procedure TfrmTestStatistics.DumpJson;
begin
  //****** ported to Class *********************************************************************************************
  self.AdvMemoObject.Lines.Text := self.StatGroup.AsJsonPretty;
  self.AdvMemoTree.Lines.Text := self.Schema.AsJsonPretty;
end;

procedure TfrmTestStatistics.Elimina1Click(Sender: TObject);
var
  tmp: Integer;
begin
  //****** ported to Class *********************************************************************************************
  tmp := LocateNode;
  if tmp = 0 then
  begin
    self.Schema.DeleteGroup(self.tp.Text);
    self.TreeList1.Items.Delete(self.tp);
    self.tp := nil;
  end
  else if tmp = 1 then
  begin
    self.Schema.Groups[self.Schema.ItemIndex].DeleteQuery(self.tn.Text);
    self.TreeList1.Items.Delete(self.tn);
    self.tn := nil;
  end;

  self.DumpJson;
end;

procedure TfrmTestStatistics.FormCreate(Sender: TObject);
begin
  self.Schema.Name := 'Testing Schema';
end;

procedure TfrmTestStatistics.Gruppo1Click(Sender: TObject);
begin
  //****** ported to Class *********************************************************************************************
  self.Schema.Add(self.JanuaDialogText1.InputText('Nuovo Gruppo', 'Inserisci il nome del gruppo'));
  self.StatGroup := self.Schema.SelectedGroup;
  tn := TreeList1.Items.Add(nil, self.Schema.SelectedGroup.Name);
  tn.ImageIndex := 4;
  tn.SelectedIndex := 0;
  self.DumpJson;
end;

function TfrmTestStatistics.LocateNode: Integer;
var
  tmp: TTreenode;
begin
  // passato ***************************
  Result := -1;
  if self.TreeList1.Items.Count > 0 then
    tmp := TreeList1.Selected;
  if (self.TreeList1.Items.Count > 0) and (tmp <> nil) then
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

procedure TfrmTestStatistics.PopupMenu1Popup(Sender: TObject);
begin
  //***** passato ***********************************************************
  if self.LocateNode = 1 then
  begin
    Query1.Enabled := False;
    VediQuery1.Enabled := True;
    Modifica1.Enabled := True;
    Elimina1.Enabled := True;
    self.Rinomina1.Enabled := True;
  end
  else if self.LocateNode = 0 then
  begin
    Query1.Enabled := True;
    VediQuery1.Enabled := False;
    Modifica1.Enabled := False;
    Elimina1.Enabled := True;
    self.Rinomina1.Enabled := True;
  end
  else
  begin
    Query1.Enabled := False;
    VediQuery1.Enabled := False;
    Modifica1.Enabled := False;
    Elimina1.Enabled := False;
    self.Rinomina1.Enabled := False;
  end;
end;

procedure TfrmTestStatistics.Query1Click(Sender: TObject);
var
  aID: smallint;
begin
  // ************* passato **********************************************************************************
  aID := 0;
  Schema.Groups[Schema.ItemIndex].Add(aID, JanuaDialogText1.InputText('Nuova Query',
    'Inserisci il nome della query'), '');
  // tn := TreeList1.Items.Add(tp, self.Schema.SelectedGroup.SelectedQuery.Name);
  tn := TreeList1.Items.AddChild(tp, self.Schema.SelectedGroup.SelectedQuery.Name);
  tn.ImageIndex := 5;
  tn.SelectedIndex := 6;
  self.StatQuery := Schema.SelectedGroup.SelectedQuery;
  self.DumpJson;
end;

procedure TfrmTestStatistics.Rinomina1Click(Sender: TObject);
var
  iTemp: Integer;
  sTemp: string;
begin
   // passato **************************************************************************************************
  iTemp := LocateNode;
  if iTemp = 0 then
  begin
    sTemp := JanuaDialogText1.InputText('Rinomina Gruppo', 'Cambia il nome del gruppo', tp.Text);
    if sTemp <> Schema.Groups[self.Schema.ItemIndex].Name then
      Schema.Groups[self.Schema.ItemIndex].Name := sTemp;
  end
  else if iTemp = 1 then
  begin
    sTemp := JanuaDialogText1.InputText('Rinomina Query', 'Cambia il nome della query', tn.Text);
    if sTemp <> Schema.Groups[self.Schema.ItemIndex].Queries[Schema.SelectedGroup.ItemIndex].Name then
      Schema.Groups[self.Schema.ItemIndex].Queries[Schema.SelectedGroup.ItemIndex].Name := sTemp;
  end;
  self.DumpJson;
end;

procedure TfrmTestStatistics.TreeList1Click(Sender: TObject);
begin
   // passato **************************************************************************************************
  self.LocateNode;
  DumpJson;
end;

procedure TfrmTestStatistics.TreeSetup(aSchema: TStatSchema; aTree: TTreeView);
var
  ltg: TTreenode;
  ltq: TTreenode;
  i, j: Integer;
begin
  //******************************* passato ******************************************************************
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
