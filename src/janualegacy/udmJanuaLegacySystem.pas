unit udmJanuaLegacySystem;

interface

uses
  SysUtils, Classes, DB, Variants, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TdmJanuaLegacySystem = class(TDataModule)
    Registry: TFDMemTable;
    PublicRegistry: TFDMemTable;
    RegistryGROUP: TWideStringField;
    RegistrySTRING: TWideStringField;
    RegistryVALUE: TWideStringField;
    PublicRegistryGROUP: TWideStringField;
    PublicRegistrySTRING: TWideStringField;
    PublicRegistryVALUE: TWideStringField;
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
  dmJanuaLegacySystem: TdmJanuaLegacySystem;

implementation

{$R *.dfm}
{ TdmJanuaSystem }

procedure TdmJanuaLegacySystem.PublicSaveRegistry;
begin
  if PublicRegistry.Active then
  begin
    PublicRegistry.SaveToFile('c:\januaproject\' + FApplicationName + 'UTF8.xml', TFDStorageFormat.sfXML);
    PublicRegistry.Tag := 1
  end;
end;

procedure TdmJanuaLegacySystem.PublicScrivistringa(chiave, Stringa, Valore: string);
begin
  // funzione di scrittura stringa sul file xml
  if PublicRegistry.Locate('GROUP;STRING', VarArrayOf([chiave, Stringa]), [loPartialKey]) then
    PublicRegistry.Edit
  else
    PublicRegistry.Append;
  // se trova la chiave come esistente allora la modifica altrimenti la
  // inserisce...
  PublicRegistryGROUP.Value := chiave;
  PublicRegistrySTRING.Value := Stringa;
  PublicRegistryVALUE.Value := Valore;
  PublicRegistry.Post;
  PublicSaveRegistry;
end;

procedure TdmJanuaLegacySystem.SetApplicationName(const Value: string);
begin
  FApplicationName := Value;
end;

end.
