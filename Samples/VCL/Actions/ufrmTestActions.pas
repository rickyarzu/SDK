unit ufrmTestActions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ActnMenus, Vcl.ActnPopup, Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Vcl.Buttons, Vcl.ComCtrls, AdvMenus,
  Data.DB, DBAccess, Uni, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, MemDS, Vcl.DBActns, AdvMemo;

type
  TForm2 = class(TForm)
    ActionManager1: TActionManager;
    PopupActionBar1: TPopupActionBar;
    Panel1: TPanel;
    edtEntry: TEdit;
    lstEntries: TListBox;
    ImageList1: TImageList;
    SpeedButton1: TSpeedButton;
    actAddString: TAction;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    DisabledImageList1: TImageList;
    AdvMainMenu1: TAdvMainMenu;
    List1: TMenuItem;
    AddString1: TMenuItem;
    ActionMainMenuBar1: TActionMainMenuBar;
    PgConnection1: TJanuaUniConnection;
    PgTable1: TUniTable;
    PgTable1number: TSmallintField;
    PgTable1image_url: TStringField;
    PgTable1target_url: TStringField;
    PgTable1visions: TLargeintField;
    PgTable1clicks: TLargeintField;
    PgTable1customer_id: TIntegerField;
    PgTable1ads_domain_id: TIntegerField;
    DBGrid1: TDBGrid;
    PgDataSource1: TUniDataSource;
    DatasetFirst1: TDataSetFirst;
    DatasetPrior1: TDataSetPrior;
    DatasetNext1: TDataSetNext;
    DatasetLast1: TDataSetLast;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    DatasetRefresh1: TDataSetRefresh;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    AdvMemoCut1: TAdvMemoCut;
    AdvMemoCopy1: TAdvMemoCopy;
    AdvMemoPaste1: TAdvMemoPaste;
    AdvMemoDelete1: TAdvMemoDelete;
    AdvMemoUndo1: TAdvMemoUndo;
    AdvMemoRedo1: TAdvMemoRedo;
    AdvMemoSelectAll1: TAdvMemoSelectAll;
    AdvMemo1: TAdvMemo;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    AdvMemoSource1: TAdvMemoSource;
    ToolButton13: TToolButton;
    Dataset1: TMenuItem;
    First1: TMenuItem;
    Next1: TMenuItem;
    Prior1: TMenuItem;
    Last1: TMenuItem;
    procedure actAddStringExecute(Sender: TObject);
    procedure actAddStringUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.actAddStringExecute(Sender: TObject);
begin
  // if (Length(Trim(edtEntry.Text)) > 0) and (lstEntries.Items.IndexOf(Trim(edtEntry.Text)) = -1) then
  lstEntries.Items.Add(Trim(edtEntry.Text));
  // Give focus back to edit
  edtEntry.SetFocus;
  // Highlight edit contents so it can be replaced by overtyping
  edtEntry.SelectAll;
end;

procedure TForm2.actAddStringUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled :=
    ( Length( Trim( edtEntry.Text ) ) > 0 ) and
    ( lstEntries.Items.IndexOf( Trim( edtEntry.Text ) ) = -1 )
end;

end.
