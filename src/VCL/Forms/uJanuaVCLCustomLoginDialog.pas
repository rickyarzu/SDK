unit uJanuaVCLCustomLoginDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  // Januaproject
  Janua.Controls.Forms.Intf, uJanuaVCLForm, Janua.Controls.Dialogs.Intf, Vcl.ComCtrls;

type
  TdlgVCLCustomLoginDialog = class(TJanuaVCLFormModel, IJanuaContainer, IJanuaForm, IJanuaLoginDialogForm)
  private
    FSelectedServer: string;
    FServerList: TStrings;
    FSelectServer: boolean;
  protected
    function GetPassword: string; virtual; abstract;
    function GetUsername: string; virtual; abstract;
    function GetSelectedServer: string; virtual;
    function GetServerList: TStrings; virtual;
    function GetSelectServer: boolean; virtual;
    procedure SetPassword(const Value: string); virtual; abstract;
    procedure SetUsername(const Value: string); virtual; abstract;
    procedure SetSelectedServer(const Value: string); virtual;
    procedure SetServerList(const Value: TStrings); virtual;
    procedure SetSelectServer(const Value: boolean); virtual;
    { Private declarations }
  public
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
  public
    { Public declarations }
    property Username: string read GetUsername write SetUsername;
    property Password: string read GetPassword write SetPassword;
    property ServerList: TStrings read GetServerList write SetServerList;
    property SelectedServer: string read GetSelectedServer write SetSelectedServer;
    property SelectServer: boolean read GetSelectServer write SetSelectServer;
  end;

var
  dlgVCLCustomLoginDialog: TdlgVCLCustomLoginDialog;

implementation

{$R *.dfm}

constructor TdlgVCLCustomLoginDialog.Create(AOwner: TComponent);
begin
  inherited;
  FServerList := TStringList.Create
end;

destructor TdlgVCLCustomLoginDialog.Destroy;
begin
  FServerList.Free;
  inherited;
end;

function TdlgVCLCustomLoginDialog.GetSelectedServer: string;
begin
  Result := FSelectedServer
end;

function TdlgVCLCustomLoginDialog.GetSelectServer: boolean;
begin
  Result := FSelectServer
end;

function TdlgVCLCustomLoginDialog.GetServerList: TStrings;
begin
  Result := FServerList;
end;

procedure TdlgVCLCustomLoginDialog.SetSelectedServer(const Value: string);
begin
  FSelectedServer := Value;
end;

procedure TdlgVCLCustomLoginDialog.SetSelectServer(const Value: boolean);
begin
  FSelectServer := Value;
end;

procedure TdlgVCLCustomLoginDialog.SetServerList(const Value: TStrings);
begin
  if Assigned(Value) then
    FServerList.Assign(Value);
end;

end.
