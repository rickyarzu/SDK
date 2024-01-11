unit udmTestComponents;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Classes, Janua.Server.Components;

type
  TdmTestComponents = class(TDataModule)
    JanuaRemoteProcedure1: TJanuaRemoteProcedure;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmTestComponents: TdmTestComponents;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
