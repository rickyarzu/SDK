unit ConnectForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ADODB;

type
  TfmConnect = class(TForm)
    edDBName: TEdit;
    edUserName: TEdit;
    laDBName: TLabel;
    laUserName: TLabel;
    paButtons: TPanel;
    buOk: TButton;
    buCancel: TButton;
    Bevel1: TBevel;
    chLoginPrompt: TCheckBox;
  end;

  TConnectionParam = (cpHost, cpDatabase, cpUser);

function ShowConnectForm(Connection: TADOConnection;
  const SQLConnString, NTConnString: string): boolean;

function GetConnectionParam(Connection: TADOConnection; Param: TConnectionParam): string;

implementation

function GetConnectionParam(Connection: TADOConnection; Param: TConnectionParam): string;
const
  HostTarget = 'Data Source=';
  DatabaseTarget = 'Initial Catalog=';
  UserTarget = 'User ID=';
var
  I: integer;
  Target: string;
begin
  Result := '';
  case Param of
    cpHost     : Target := HostTarget;
    cpDatabase : Target := DatabaseTarget;
    cpUser     : Target := UserTarget;
    else Exit;
  end;

  I := Pos(Target, string(Connection.ConnectionString));
  if I > 0 then begin
    I := I + Length(Target);
    while (I <= Length(Connection.ConnectionString)) and
          (Connection.ConnectionString[I] <> ';') do begin
      Result := Result + Connection.ConnectionString[I];
      Inc(I);
    end;
  end;
end;

function ShowConnectForm(Connection: TADOConnection;
  const SQLConnString, NTConnString: string): boolean;
var
  fmConnect: TfmConnect;
begin
  Result := False;
  if not Assigned(Connection) then Exit;
  fmConnect := TfmConnect.Create(nil);
  try
    fmConnect.edDBName.Text := GetConnectionParam(Connection, cpDatabase);
    fmConnect.edUserName.Text := GetConnectionParam(Connection, cpUser);
    fmConnect.chLoginPrompt.Checked := Connection.LoginPrompt;
    Result := fmConnect.ShowModal() = mrOk;
    if Result then begin
      Connection.Connected := False;
      Connection.ConnectionString := Format(SQLConnString,
        [fmConnect.edUserName.Text, fmConnect.edDBName.Text]);
      Connection.LoginPrompt := fmConnect.chLoginPrompt.Checked;
      Connection.Connected := True;
    end;
  finally
    fmConnect.Free();
  end;
end;

{$R *.DFM}

end.
