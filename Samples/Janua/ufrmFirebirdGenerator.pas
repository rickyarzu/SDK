unit ufrmFirebirdGenerator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  System.Generics.Collections,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.CheckLst, AdvEdit, AdvEdBtn, AdvDirectoryEdit, AdvMemo, AdvmPS;

type
  TDetailCode = record
    TableName: string;
    ContainerPage: TPageControl;
    // Tabs
    tabCustomIntf: TTabSheet;
    tabCustomImpl: TTabSheet;
    tabIntf: TTabSheet;
    tabImpl: TTabSheet;

    // Memos
    memCustoIntf: TAdvMemo;
    memCustoImpl: TAdvMemo;
    MemIntf: TAdvMemo;
    MemImpl: TAdvMemo;
    procedure Generate(const aContainer: TWinControl);
    constructor Create(const aTableName: string);
  end;

  TfrmVCLFirebirdGenerator = class(TForm)
    PageControl1: TPageControl;
    // Tabs
    tabCustomIntf: TTabSheet;
    tabCustomImpl: TTabSheet;
    tabIntf: TTabSheet;
    tabImpl: TTabSheet;

    tabDetails: TTabSheet;
    tabModelIntf: TTabSheet;
    // Memos
    memCustoIntf: TAdvMemo;
    memCustoImpl: TAdvMemo;
    edMemIntf: TAdvMemo;
    edMemImpl: TAdvMemo;

    tbDataModuleContainer: TTabSheet;
    pnlMain: TPanel;
    adeSourceDirectory: TAdvDirectoryEdit;
    pnlTabList: TPanel;
    CRDBGrid1: TCRDBGrid;
    CheckListBox1: TCheckListBox;

    btnOpenTables: TButton;
    ckbOnlyCustom: TCheckBox;
    edSchema: TEdit;
    btnGenerate: TButton;
    AdvPascalMemoStyler1: TAdvPascalMemoStyler;
    btnDetailTables: TButton;
    pgcDetails: TPageControl;
    procedure btnOpenTablesClick(Sender: TObject);
    procedure btnGenerateClick(Sender: TObject);
    procedure btnDetailTablesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FDetailList: TList<TDetailCode>;
  public
    { Public declarations }
  end;

var
  frmVCLFirebirdGenerator: TfrmVCLFirebirdGenerator;

implementation

{$R *.dfm}

uses UdmFirebirdOrmGenerator, Janua.Core.Functions, Janua.Application.Framework;

procedure TfrmVCLFirebirdGenerator.btnDetailTablesClick(Sender: TObject);
begin
  CheckListBox1.Items.Text := dmFirebirdOrmGenerator.GetDetailList;
end;

procedure TfrmVCLFirebirdGenerator.btnGenerateClick(Sender: TObject);
var
  lDetailCode: TDetailCode;

  function AddElaborateDetail(const aDetail: string): TDetailCode;
  begin
    var
    ContainerTabSheet := TTabSheet.Create(PageControl1);

    // Set properties of the new TabSheet
    ContainerTabSheet.Parent := PageControl1;
    ContainerTabSheet.PageControl := PageControl1;
    ContainerTabSheet.Caption := aDetail;
    // Optionally, you can add controls to the TabSheet here

    // Make the new TabSheet the active tab
    PageControl1.ActivePage := ContainerTabSheet;
    Result.Generate(ContainerTabSheet);
  end;

begin
  dmFirebirdOrmGenerator.SchemaName := edSchema.Text;
  dmFirebirdOrmGenerator.TargetDirectory := adeSourceDirectory.Text;
  dmFirebirdOrmGenerator.Generate;

  memCustoIntf.Lines.Text := dmFirebirdOrmGenerator.CustomMasterIntf;
  memCustoImpl.Lines.Text := dmFirebirdOrmGenerator.CustomMasterImpl;
  edMemIntf.Lines.Text := dmFirebirdOrmGenerator.MasterIntf;
  edMemImpl.Lines.Text := dmFirebirdOrmGenerator.MasterImpl;

  var
  I := 0;
  var
  aList := TStringList.Create;
  try
    for I := 0 to CheckListBox1.Count - 1 do
      if CheckListBox1.Checked[I] then // Check if the item at index I is checked
      begin
        aList.Add(CheckListBox1.Items[I]); // Add the checked item to the memo
        var
        lDetail := TDetailCode.Create(CheckListBox1.Items[I]);

        var
        ltabDetail := TTabSheet.Create(pgcDetails);
        // Set properties of the new TabSheet
        ltabDetail.Parent := pgcDetails;
        ltabDetail.PageControl := pgcDetails;
        ltabDetail.Caption := CamelCase(CheckListBox1.Items[I]);
        lDetail.Generate(ltabDetail);

        FDetailList.Add(lDetail);
      end;
  finally
    aList.Free;
  end;

  dmFirebirdOrmGenerator.SaveAllFiles;

end;

procedure TfrmVCLFirebirdGenerator.btnOpenTablesClick(Sender: TObject);
begin
  dmFirebirdOrmGenerator.qryTables.Open;
end;

procedure TfrmVCLFirebirdGenerator.FormCreate(Sender: TObject);
begin
  FDetailList := TList<TDetailCode>.Create;
end;

procedure TfrmVCLFirebirdGenerator.FormDestroy(Sender: TObject);
begin
  FDetailList.Free;
end;

{ TDetailCode }

constructor TDetailCode.Create(const aTableName: string);
begin
  TableName := aTableName;
end;

procedure TDetailCode.Generate(const aContainer: TWinControl);
begin
  var
  ContainerPager := TPageControl.Create(aContainer);
  ContainerPager.Parent := aContainer;
  ContainerPager.Align := alClient;

  tabCustomIntf := TTabSheet.Create(ContainerPager);
  // Set properties of the new TabSheet
  tabCustomIntf.Parent := ContainerPager;
  tabCustomIntf.PageControl := ContainerPager;
  tabCustomIntf.Caption := 'Custom Intf';
  memCustoIntf := TAdvMemo.Create(tabCustomIntf);
  memCustoIntf.Parent := tabCustomIntf;
  memCustoIntf.Align := alClient;

  tabCustomImpl := TTabSheet.Create(ContainerPager);
  // Set properties of the new TabSheet
  tabCustomImpl.Parent := ContainerPager;
  tabCustomImpl.PageControl := ContainerPager;
  tabCustomImpl.Caption := 'Custom Impl';
  memCustoImpl := TAdvMemo.Create(tabCustomIntf);
  memCustoImpl.Parent := tabCustomIntf;
  memCustoImpl.Align := alClient;

  tabIntf := TTabSheet.Create(ContainerPager);
  // Set properties of the new TabSheet
  tabIntf.Parent := ContainerPager;
  tabIntf.PageControl := ContainerPager;
  tabIntf.Caption := ' Intf';
  MemIntf := TAdvMemo.Create(tabIntf);
  MemIntf.Parent := tabIntf;
  MemIntf.Align := alClient;

  tabImpl := TTabSheet.Create(ContainerPager);
  // Set properties of the new TabSheet
  tabImpl.Parent := ContainerPager;
  tabImpl.PageControl := ContainerPager;
  tabImpl.Caption := ' Impl';
  MemImpl := TAdvMemo.Create(tabIntf);
  MemImpl.Parent := tabIntf;
  MemImpl.Align := alClient;

end;

end.
