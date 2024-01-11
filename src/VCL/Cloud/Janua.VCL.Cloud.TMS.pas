unit Janua.VCL.Cloud.TMS;

interface

uses
  System.SysUtils, System.Classes, CloudBase, CloudSMS;

type
  TJanuaVCLCloudSMS = class(TDataModule)
    AdvTwilio1: TAdvTwilio;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  JanuaVCLCloudSMS: TJanuaVCLCloudSMS;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
