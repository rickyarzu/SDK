unit Janua.FDAC.Phoenix.Model;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Login, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, Data.DB, FireDAC.Comp.Client;

type
  TdmFDACPhoenixModel = class(TDataModule)
    FDConnectionPhoenix: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxLoginDialog1: TFDGUIxLoginDialog;
    procedure FDConnectionPhoenixBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFDACPhoenixModel: TdmFDACPhoenixModel;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdmFDACPhoenixModel.FDConnectionPhoenixBeforeConnect(Sender: TObject);
begin
  {
    if SystemInformation.DBServer = '' then
    FDConnectionPhoenix.Params.Values['Server'] := 'localhost'
    else
    FDConnectionPhoenix.Params.Values['Server']  := SystemInformation.DBServer;
    FDConnectionPhoenix.Params.Database  := SystemInformation.DBDatabase;
    FDConnectionPhoenix.Params.Password := SystemInformation.DBPassword;
    FDConnectionPhoenix.Params.UserName := SystemInformation.DBAccount;
  }
end;

end.
