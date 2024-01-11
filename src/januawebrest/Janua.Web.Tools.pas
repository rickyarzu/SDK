unit Janua.Web.Tools;

interface

uses
  System.SysUtils, System.Classes, UWebGMapsCommon, UWebGMapsGeocoding;

type
  TdmWebTools = class(TDataModule)
    WebGMapsGeocoding1: TWebGMapsGeocoding;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmWebTools: TdmWebTools;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
