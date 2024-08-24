unit Janua.Phoenix.dmIBModel;

interface

uses
  System.SysUtils, System.Classes, UniProvider, InterBaseUniProvider, Data.DB,
  DBAccess, Uni, Janua.Unidac.Connection, Janua.Interbase.dmModel;

type
  TdmPhoenixIBModel = class(TdmJanuaInterbaseModel)
    procedure JanuaUniConnection1BeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPhoenixIBModel: TdmPhoenixIBModel;

implementation

uses Janua.Application.Framework;

{%CLASSGROUP 'Vcl.Controls.TControl'}


{$R *.dfm}

procedure TdmPhoenixIBModel.JanuaUniConnection1BeforeConnect(Sender: TObject);
begin
  inherited;
  if SystemInformation.DBServer = '' then
    JanuaUniConnection1.Server := 'localhost'
  else
    JanuaUniConnection1.Server := SystemInformation.DBServer;
  JanuaUniConnection1.Database := SystemInformation.DBDatabase;
  JanuaUniConnection1.Password := SystemInformation.DBPassword;
  JanuaUniConnection1.UserName := SystemInformation.DBAccount;
end;

end.
