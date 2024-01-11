unit udmJanuaSystem;

interface

uses
  SysUtils, Classes, DB, DBClient, Variants;

type
  TdmJanuaSystem = class(TDataModule)
    PublicRegistry: TClientDataSet;
    PublicRegistryGROUP: TWideStringField;
    PublicRegistrySTRING: TWideStringField;
    PublicRegistryVALUE: TWideStringField;
    Registry: TClientDataSet;
    RegistryGROUP: TWideStringField;
    RegistrySTRING: TWideStringField;
    RegistryVALUE: TWideStringField;
  private
    FApplicationName: string;
    procedure SetApplicationName(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    procedure PublicSaveRegistry;
    procedure PublicScrivistringa(chiave: string; Stringa: string; Valore: string);
  published
    property ApplicationName: string read FApplicationName write SetApplicationName;
  end;

var
  dmJanuaSystem: TdmJanuaSystem;

implementation

{$R *.dfm}

{ TdmJanuaSystem }

procedure TdmJanuaSystem.PublicSaveRegistry;
begin
     if PublicRegistry.Active then
     begin
       PublicRegistry.SaveToFile('c:\januaproject\' + FApplicationName  + 'UTF8.xml', dfXMLUTF8);
       PublicRegistry.Tag := 1
     end;
end;

procedure TdmJanuaSystem.PublicScrivistringa(chiave, Stringa, Valore: string);
begin
     // funzione di scrittura stringa sul file xml
     if PublicRegistry.Locate('GROUP;STRING', VarArrayOf([CHIAVE,STRINGA]), [loPartialKey])
     then
        PublicRegistry.Edit
     else
        PublicRegistry.Append;
     // se trova la chiave come esistente allora la modifica altrimenti la
     // inserisce...
     PublicRegistryGROUP.Value := chiave;
     PublicRegistrySTRING.Value := stringa;
     PublicRegistryVALUE.Value := Valore;
     PublicRegistry.Post;
     PublicSaveRegistry;
end;

procedure TdmJanuaSystem.SetApplicationName(const Value: string);
begin
  FApplicationName := Value;
end;

end.
