unit ConnectForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ZConnection;

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
    laPort: TLabel;
    edPort: TEdit;
    ZProtocol: TComboBox;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function ShowConnectForm(Database: TZConnection): boolean;

implementation

uses ZClasses, Types, ZDbcIntfs;

const base_protocol = 'mysql';

function ShowConnectForm(Database: TZConnection): boolean;
var
  fmConnect: TfmConnect;
  I, J: Integer;
  Drivers: IZCollection;
  Protocols: TStringDynArray;
begin
  Result := False;
  if not Assigned(Database) then Exit;
  fmConnect := TfmConnect.Create(nil);
  try
    fmConnect.ZProtocol.Clear;
    Drivers := DriverManager.GetDrivers;
    for I := 0 to Drivers.Count - 1 do
    begin
      Protocols := (Drivers.Items[I] as IZDriver).GetSupportedProtocols;
      for J := 0 to High(Protocols) do
        if Pos(base_protocol, Protocols[J])>0 then
          fmConnect.ZProtocol.Items.Add(Protocols[J]);
    end;
    fmConnect.ZProtocol.Sorted := True;
    fmConnect.ZProtocol.Text := base_protocol;


    fmConnect.edHost.Text := Database.HostName;
    if fmConnect.edHost.Text = '' then
      fmConnect.edHost.Text := 'localhost';
      fmConnect.edPort.Text := IntToStr(Database.Port);
    fmConnect.edDBName.Text := Database.Database;
    if fmConnect.edDBName.Text = '' then
      fmConnect.edDBName.Text := 'test';
    fmConnect.edUserName.Text := Database.User;
    if fmConnect.edUserName.Text = '' then
      fmConnect.edUserName.Text := 'root';
    fmConnect.edPassword.Text := Database.Password;
    Result := fmConnect.ShowModal() = mrOk;
    if Result then begin
      Database.Connected := False;
      Database.User := fmConnect.edUserName.Text;
      Database.Password := fmConnect.edPassword.Text;
      Database.Protocol := fmConnect.ZProtocol.Text;
      Database.HostName := fmConnect.edHost.Text;
      Database.Port := StrToInt(fmConnect.edPort.Text);
      Database.Database := fmConnect.edDBName.Text;
      Database.Connected := True;
    end;
  finally
    fmConnect.Free();
  end;
end;

{$R *.DFM}

end.
