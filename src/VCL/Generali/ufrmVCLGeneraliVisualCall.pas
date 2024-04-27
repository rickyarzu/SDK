unit ufrmVCLGeneraliVisualCall;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, AdvMemo, AdvmSQLS, Vcl.StdCtrls,
  JvExControls, JvDBLookup, Vcl.Grids, Vcl.DBGrids, CRGrid, DBAccess, UniDacVcl, Vcl.Buttons, Vcl.DBCtrls,
  DBAdvMemo;

type
  TfrmVCLGeneraliVisualCall = class(TForm)
    pnlTop: TPanel;
    PageControl1: TPageControl;
    tabPvandyq: TTabSheet;
    AdvSQLMemoStyler1: TAdvSQLMemoStyler;
    dsSchemas: TDataSource;
    btnLogin: TButton;
    Panel5: TPanel;
    lbSchemaSelection: TLabel;
    lkpSchema: TJvDBLookupCombo;
    Panel10: TPanel;
    Button2: TButton;
    CRDBGrid4: TCRDBGrid;
    UniConnectDialog1: TUniConnectDialog;
    dsScripts: TDataSource;
    pnlMemo: TPanel;
    CRDBGrid1: TCRDBGrid;
    DBAdvMemo1: TDBAdvMemo;
    Panel1: TPanel;
    tbnShowVisualCallDialog: TButton;
    DBNavigator1: TDBNavigator;
    btnEditRecord: TButton;
    procedure btnLoginClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure tbnShowVisualCallDialogClick(Sender: TObject);
    procedure btnEditRecordClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLGeneraliVisualCall: TfrmVCLGeneraliVisualCall;

implementation

{$R *.dfm}

uses Janua.Oracle.dmVisualCall, udlgGeneraliVisualCallScript;

procedure TfrmVCLGeneraliVisualCall.btnEditRecordClick(Sender: TObject);
begin
  Application.CreateForm(TdlgGeneraliVisualCallScript, dlgGeneraliVisualCallScript);
  try
    dmOracleVisualCall.qryScripts.Edit;
    dlgGeneraliVisualCallScript.ShowModal;
    if dmOracleVisualCall.qryScripts.Modified then
      dmOracleVisualCall.qryScripts.Post;
  finally
    dlgGeneraliVisualCallScript.Free;
    dlgGeneraliVisualCallScript := nil;
  end;
end;

procedure TfrmVCLGeneraliVisualCall.btnLoginClick(Sender: TObject);
begin
  dmOracleVisualCall.UniConnection1.ConnectDialog := self.UniConnectDialog1;
  dmOracleVisualCall.UniConnection1.Connect;
  if dmOracleVisualCall.UniConnection1.Connected then
  begin
    lkpSchema.Value := dmOracleVisualCall.UniConnection1.Username;
    { lkpSchema.Text := dmOracleVisualCall.UniConnection1.Username; }
  end;
end;

procedure TfrmVCLGeneraliVisualCall.Button2Click(Sender: TObject);
begin
  dmOracleVisualCall.qryScripts.Open;
end;

procedure TfrmVCLGeneraliVisualCall.tbnShowVisualCallDialogClick(Sender: TObject);
begin
  Application.CreateForm(TdlgGeneraliVisualCallScript, dlgGeneraliVisualCallScript);
  try
    dmOracleVisualCall.qryScripts.Append;
    dlgGeneraliVisualCallScript.ShowModal;
  finally
    dlgGeneraliVisualCallScript.Free;
    dlgGeneraliVisualCallScript := nil;
  end;
end;

end.
