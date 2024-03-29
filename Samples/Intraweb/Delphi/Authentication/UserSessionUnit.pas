unit UserSessionUnit;

{
  This is a DataModule where you can add components or declare fields that are specific to 
  ONE user. Instead of creating global variables, it is better to use this datamodule. You can then
  access the it using UserSession.
}
interface

uses
  IWUserSessionBase, SysUtils, Classes;

type
  TIWUserSession = class(TIWUserSessionBase)
  private
    { Private declarations }
  public
    { Public declarations }
    function CheckUser(aUserName, aPassword: string): boolean;
  end;

implementation

{$R *.dfm}

{ TIWUserSession }

function TIWUserSession.CheckUser(aUserName, aPassword: string): boolean;
begin
  Result := aUserName = aPassword;
end;

end.