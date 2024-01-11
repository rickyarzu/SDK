unit JanuaSqlRepositoryDialog;

interface

uses
  SysUtils, Classes, JanuaOracleRepository;

type
  TJanuaSqlRepositoryDialog = class(TComponent)
  private
    FOracleRepository: TJanuaOracleRepository;
    { Private declarations }
    procedure SetOracleRepository(const Value: TJanuaOracleRepository);
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure Execute; 
  published
    { Published declarations }
    property  OracleRepository: TJanuaOracleRepository read FOracleRepository write SetOracleRepository;
  end;

procedure Register;

implementation

uses udlgAggiornaSql;

procedure Register;
begin
  RegisterComponents('Januaproject Dialogs', [TJanuaSqlRepositoryDialog]);
end;

{ TJanuaSqlRepositoryDialog }

procedure TJanuaSqlRepositoryDialog.Execute;
var
   dlg: TdlgAggiornaSql;
begin
   dlg := TdlgAggiornaSql.Create(nil);
   try
     dlg.ShowModal;
     if dlg.ModalResult = 1 then
        OracleRepository.InsertSQL(dlg.JvWideEditor1.Lines.text);
   finally
     FreeAndNil(dlg); 
   end;
end;


procedure TJanuaSqlRepositoryDialog.SetOracleRepository(
  const Value: TJanuaOracleRepository);
begin
  FOracleRepository := Value;
end;

end.
