unit Janua.Phoenix.dmReportController;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TdmPhoenixReportController = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPhoenixReportController: TdmPhoenixReportController;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
