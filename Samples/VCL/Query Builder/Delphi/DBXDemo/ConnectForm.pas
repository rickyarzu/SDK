unit ConnectForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, SqlExpr;

type
  TfmConnect = class(TForm)
    edDBName: TEdit;
    edUserName: TEdit;
    edPassword: TEdit;
    laDBName: TLabel;
    laUserName: TLabel;
    laPassword: TLabel;
    paButtons: TPanel;
    buOk: TButton;
    buCancel: TButton;
    Bevel1: TBevel;
    laHost: TLabel;
    edHost: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function ShowConnectForm(Database: TSQLConnection): boolean;

implementation

function ShowConnectForm(Database: TSQLConnection): boolean;
var
  fmConnect: TfmConnect;
begin
  Result := False;
  if not Assigned(Database) then Exit;
  fmConnect := TfmConnect.Create(nil);
  try
    fmConnect.edHost.Text := Database.Params.Values['HostName'];
    fmConnect.edDBName.Text := Database.Params.Values['Database'];
    fmConnect.edUserName.Text := Database.Params.Values['User_Name'];
    fmConnect.edPassword.Text := Database.Params.Values['Password'];
    Result := fmConnect.ShowModal() = mrOk;
    if Result then begin
      Database.Connected := False;
      Database.Params.Values['HostName'] := fmConnect.edHost.Text;
      Database.Params.Values['Database'] := fmConnect.edDBName.Text;
      Database.Params.Values['User_Name'] := fmConnect.edUserName.Text;
      Database.Params.Values['Password'] := fmConnect.edPassword.Text;
      Database.Connected := True;
    end;
  finally
    fmConnect.Free();
  end;
end;

{$R *.DFM}

end.
