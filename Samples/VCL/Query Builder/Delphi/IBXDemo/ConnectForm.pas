unit ConnectForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, IBDatabase;

type
  TfmConnect = class(TForm)
    edDBFile: TEdit;
    edUserName: TEdit;
    edPassword: TEdit;
    edRole: TEdit;
    cbCharset: TComboBox;
    laDBFile: TLabel;
    laUserName: TLabel;
    laPassword: TLabel;
    laRole: TLabel;
    laCharset: TLabel;
    paButtons: TPanel;
    buOk: TButton;
    buCancel: TButton;
    Bevel1: TBevel;
    buBrowse: TButton;
    Bevel2: TBevel;
    dlgOpen: TOpenDialog;
    rgDialect: TRadioGroup;
    procedure buBrowseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function ShowConnectForm(Database: TIBDatabase): boolean;

implementation

function ShowConnectForm(Database: TIBDatabase): boolean;
var
  fmConnect: TfmConnect;
begin
  Result := False;
  if not Assigned(Database) then Exit;
  fmConnect := TfmConnect.Create(nil);
  try
    fmConnect.edDBFile.Text := Database.DatabaseName;
    fmConnect.edUserName.Text := Database.Params.Values['user_name'];
    fmConnect.edPassword.Text := Database.Params.Values['password'];
    fmConnect.edRole.Text := Database.Params.Values['sql_role'];
    fmConnect.cbCharset.Text := Database.Params.Values['lc_ctype'];
    if Database.SQLDialect = 3
      then fmConnect.rgDialect.ItemIndex := 1
      else fmConnect.rgDialect.ItemIndex := 0;
    Result := fmConnect.ShowModal() = mrOk;
    if Result then begin
      Database.Connected := False;
      Database.DatabaseName := fmConnect.edDBFile.Text;
      Database.Params.Values['user_name'] := fmConnect.edUserName.Text;
      Database.Params.Values['password'] := fmConnect.edPassword.Text;
      Database.Params.Values['sql_role'] := fmConnect.edRole.Text;
      if fmConnect.cbCharset.Text <> 'NONE'
        then Database.Params.Values['lc_ctype'] := fmConnect.cbCharset.Text
        else Database.Params.Values['lc_ctype'] := '';
      if fmConnect.rgDialect.ItemIndex = 0
        then Database.SQLDialect := 1
        else Database.SQLDialect := 3;
      Database.Connected := True;
    end;
  finally
    fmConnect.Free();
  end;
end;

{$R *.DFM}

procedure TfmConnect.buBrowseClick(Sender: TObject);
begin
  if dlgOpen.Execute()
    then edDBFile.Text := dlgOpen.FileName;
end;

procedure TfmConnect.FormCreate(Sender: TObject);
begin
  cbCharset.ItemIndex := 0;
end;

end.
