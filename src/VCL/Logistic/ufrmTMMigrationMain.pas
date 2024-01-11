unit ufrmTMMigrationMain;

interface

uses
  // System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  System.Generics.Collections,
  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, AdvMemo, Vcl.Menus,
  // Janua
  Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Forms.Types,
  Janua.Controls.Intf, Janua.Controls.Forms.Intf,
  Janua.Core.TMLogistic.Types, uframeTMMigration,  uJanuaVCLForm;

type
  TfrmTMMigrationMain = class(TJanuaVCLFormModel, IJanuaForm, IJanuaContainer, IJanuaControl)
    PageControl1: TPageControl;
    TreeView1: TTreeView;
    TabSheet1: TTabSheet;
    AdvMemo1: TAdvMemo;
    MainMenu1: TMainMenu;
    Programma1: TMenuItem;
    Programma2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
    procedure Programma2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ShowTab(aTab: TJanuaPageRecord): TframeTMMigration;
    constructor Create(AOwner: TComponent); override;
  end;

var
  frmTMMigrationMain: TfrmTMMigrationMain;

implementation

{$R *.dfm}

uses Janua.TMLogistic.Migration;

constructor TfrmTMMigrationMain.Create(AOwner: TComponent);
begin
  inherited;

end;

procedure TfrmTMMigrationMain.FormCreate(Sender: TObject);
var
  I: Integer;
  LNode: TTreeNode;
begin
  for I := 0 to TJanuaTMMigrationEngine.List.Count - 1 do
    TreeView1.Items.Add(nil, TJanuaTMMigrationEngine.List[I].Name);
end;

procedure TfrmTMMigrationMain.Programma2Click(Sender: TObject);
var
  LFrame: TframeTMMigration;
begin
  for var I: Integer := 0 to TJanuaTMMigrationEngine.List.Count - 1 do
  begin
    LFrame := ShowTab(TJanuaTMMigrationEngine.List[I]);
    if Assigned(LFrame) then
      LFrame.btnStandardClick(self);
  end;
end;

function TfrmTMMigrationMain.ShowTab(aTab: TJanuaPageRecord): TframeTMMigration;
var
  LTab: TTabSheet;
begin
  Result := nil;
  try
    LTab := FindComponent(aTab.Name + '1') as TTabSheet;
    if not Assigned(LTab) then
    begin
      LTab := TTabSheet.Create(self);
      LTab.PageControl := PageControl1;
      LTab.Caption := aTab.Name;
      LTab.Name := aTab.Name + '1';
      Result := TframeTMMigration.CreateWithTable(self, TJanuaTMMigrationEngine.OriginSchema + '.' +
        aTab.OriginTable, TJanuaTMMigrationEngine.DestSchema + '.' + aTab.DestTable, aTab.KeyFields,
        aTab.dbName);
      Result.Name := 'frame' + aTab.Name + '1';
      Result.Parent := LTab;
      Result.Lines := self.AdvMemo1.Lines;
      Result.Show;
      Result.Align := alClient;
      Result.BringToFront;
      Result.Activate;
    end;
    PageControl1.ActivePage := LTab;
  except
    on e: exception do
      self.AdvMemo1.Lines.Add('error Creating(' + aTab.Name + ') '+ e.Message)

  end;
end;

procedure TfrmTMMigrationMain.TreeView1Click(Sender: TObject);
var
  LNode: TTreeNode;
  function RecordIndex(aName: string): Integer;
  var
    I: Integer;
  begin
    Result := -1;
    for I := 0 to TJanuaTMMigrationEngine.List.Count - 1 do
      if TJanuaTMMigrationEngine.List[I].Name = aName then
        Exit(I)
  end;

begin
  LNode := TreeView1.Selected;
  ShowTab(TJanuaTMMigrationEngine.List[RecordIndex(LNode.Text)]);
end;

end.
