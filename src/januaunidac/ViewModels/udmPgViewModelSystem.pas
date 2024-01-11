unit udmPgViewModelSystem;

interface

uses
  System.SysUtils, System.Classes, Janua.System.Postgres.Storage;

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
  dmPgSystemStorage := Janua.System.Postgres.Storage.TdmPgSystemStorage.Create(self);
end;

function TdmViewModelSystem.SearchDBUsersProfiles(const p_search: string; const p_id: integer): integer;
begin
   Result := -1;
   {TODO:  implementare TdmViewModelSystem SearchDBUsersProfiles}
end;

end.
