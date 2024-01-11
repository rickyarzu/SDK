unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, DB, DBClient;
type
phonebookread=Record
  NamePhone: string;
  PhoneNumber: string;
end;
type
  TUniMainModule = class(TUniGUIMainModule)
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Name: TStringField;
    ClientDataSet1Phone_Number: TStringField;
    procedure UniGUIMainModuleCreate(Sender: TObject);
  private
    contact: array[0..2] of phonebookread;
    procedure Add();

    { Private declarations }
  public
    { Public declarations }
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication;


function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.Add;
begin
  contact[0].NamePhone := 'John';
  contact[0].PhoneNumber := '09584589669';
  contact[1].NamePhone := 'Harold';
  contact[1].PhoneNumber := '09859874545';
  contact[2].NamePhone := 'Samantha ';
  contact[2].PhoneNumber := '08654986262';

end;



procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
var
  I:Integer;
begin
  Add;
  for I := 0 to Length(contact)-1 do
  begin
    ClientDataSet1.Append;
    ClientDataSet1.FieldByName('Name').AsString := contact[I].NamePhone;
    ClientDataSet1.FieldByName('Phone_Number').AsString := contact[I].PhoneNumber;
    ClientDataSet1.Post;
  end;
  ClientDataSet1.AddIndex('Phone_NumberIx', 'Phone_Number', []);
  ClientDataSet1.First;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
