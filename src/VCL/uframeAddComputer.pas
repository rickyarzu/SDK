unit uframeAddComputer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Vcl.StdCtrls, CurvyControls, Vcl.Buttons, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Data.Bind.DBScope, JanuaOS;

type
  TframeAddComputer = class(TFrame)
    dsComputers: TDataSource;
    Label1: TLabel;
    edComputer: TCurvyEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldText: TLinkPropertyToField;
    lbComputer: TLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    FIsSet: boolean;
    FHasServers: boolean;
    procedure SetIsSet(const Value: boolean);
    procedure SetHasServers(const Value: boolean);
    { Private declarations }
  public
    { Public declarations }
    procedure Setup;
    property IsSet: boolean read FIsSet write SetIsSet;
    property HasServers: boolean read FHasServers write SetHasServers;
  end;

implementation

{$R *.dfm}

uses udmErgoCloudClient;

{ TframeAddComputer }

procedure TframeAddComputer.BitBtn1Click(Sender: TObject);
begin
  if self.edComputer.Text <> dmErgoCloudClient.LocalServer then
     dmErgoCloudClient.setLocalServer(self.edComputer.Text);

  self.FIsSet := dmErgoCloudClient.LocalServer = self.edComputer.Text;

end;

procedure TframeAddComputer.SetHasServers(const Value: boolean);
begin
  FHasServers := Value;
end;

procedure TframeAddComputer.SetIsSet(const Value: boolean);
begin
  FIsSet := Value;
end;

procedure TframeAddComputer.Setup;
begin
  FHasServers := dmErgoCloudClient.CheckServer;
  if not self.FHasServers then dmErgoCloudClient.SetServer;
  self.edComputer.Text := dmErgoCloudClient.LocalServer;
  self.lbComputer.Caption := dmErgoCloudClient.LocalServer;

end;

end.
