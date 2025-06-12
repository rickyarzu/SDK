unit Janua.Phoenix.VCL.ReportController;

interface

uses
  System.SysUtils, System.Classes, Janua.Phoenix.FbReport;

type
  TdmVCLPhoenixReportController = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmVCLPhoenixReportController: TdmVCLPhoenixReportController;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
