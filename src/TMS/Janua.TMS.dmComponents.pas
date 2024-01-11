unit Janua.TMS.dmComponents;

interface

uses
  System.SysUtils, System.Classes, CloudBase, CloudSMS;

type
  TdmTmsComponents = class(TDataModule)
    AdvTwilio1: TAdvTwilio;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmTmsComponents: TdmTmsComponents;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
