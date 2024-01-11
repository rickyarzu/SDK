unit uServerMethodsJOrmModel;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth;

type
{$METHODINFO ON}
  TServerMethodsJOrmModel = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
  end;
{$METHODINFO OFF}

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}


uses System.StrUtils;

function TServerMethodsJOrmModel.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethodsJOrmModel.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

