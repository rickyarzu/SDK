unit udmPgViewModelSystem;

interface

uses
  System.SysUtils, System.Classes, udmPgSystemStorage;

type
  TdmViewModelSystem = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
    function SearchDBUsersProfiles(const p_search: string = '%'; const p_id: integer = 0): integer;
  public
  end;

var
  dmViewModelSystem: TdmViewModelSystem;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdmViewModelSystem }

procedure TdmViewModelSystem.DataModuleCreate(Sender: TObject);
begin
  dmPgSystemStorage := udmPgSystemStorage.TdmPgSystemStorage.Create(self);
end;

function TdmViewModelSystem.SearchDBUsersProfiles(const p_search: string; const p_id: integer): integer;
begin

end;

end.
