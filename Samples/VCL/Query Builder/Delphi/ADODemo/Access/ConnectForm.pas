unit ConnectForm;

{$I QBMSADODemo.inc}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ADODB, Buttons;

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
    raDefaultUser: TRadioButton;
    raSpecificUser: TRadioButton;
    chLoginPrompt: TCheckBox;
    btnOpenDlg: TSpeedButton;
    OpenDialog1: TOpenDialog;
    procedure btnOpenDlgClick(Sender: TObject);
    procedure raSpecificUserClick(Sender: TObject);
  end;

  TConnectionParam = (cpDatabase, cpUser);

function ShowConnectForm(Connection: TADOConnection;
  const SQLConnString: string): boolean;

function GetConnectionParam(Connection: TADOConnection; Param: TConnectionParam): string;

implementation

function GetConnectionParam(Connection: TADOConnection; Param: TConnectionParam): string;
const
  DatabaseTarget = 'Data Source=';
  UserTarget = 'User ID=';
var
  I: integer;
  Target: string;
begin
  Result := '';
  case Param of
    cpDatabase : Target := DatabaseTarget;
    cpUser     : Target := UserTarget;
    else Exit;
  end;

  {$IFDEF VCL12}
  I := Pos(UnicodeString(Target), UnicodeString(Connection.ConnectionString));
  {$ELSE}
  I := Pos(Target, Connection.ConnectionString);
  {$ENDIF}
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
  const SQLConnString: string): boolean;
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
    fmConnect.raSpecificUser.Checked := (fmConnect.edUserName.Text <> '');
    fmConnect.raDefaultUser.Enabled := True;
    fmConnect.raSpecificUserClick(nil);
    Result := fmConnect.ShowModal() = mrOk;
    if Result then begin
      Connection.Connected := False;
      if fmConnect.raDefaultUser.Checked then
        Connection.ConnectionString := Format(SQLConnString,
          ['Admin', fmConnect.edDBName.Text])
      else
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

procedure TfmConnect.btnOpenDlgClick(Sender: TObject);
begin
  if OpenDialog1.InitialDir = '' then
    OpenDialog1.InitialDir := ExtractFileDir(Application.ExeName);
  OpenDialog1.FileName := edDBName.Text;
  if OpenDialog1.Execute then
  begin
    edDBName.Text := OpenDialog1.FileName;
    OpenDialog1.InitialDir := ExtractFileDir(OpenDialog1.FileName);
  end;
end;

procedure TfmConnect.raSpecificUserClick(Sender: TObject);
begin
  laUserName.Enabled := raSpecificUser.Checked;
  edUserName.Enabled := raSpecificUser.Checked;
  chLoginPrompt.Enabled := raSpecificUser.Checked;
end;

end.
