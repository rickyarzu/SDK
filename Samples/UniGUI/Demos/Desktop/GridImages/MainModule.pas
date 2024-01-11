unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, DB, DBClient;

type
  TUniMainModule = class(TUniGUIMainModule)
    ClientDataSet1: TClientDataSet;
    ClientDataSet1EmpNo: TIntegerField;
    ClientDataSet1LastName: TStringField;
    ClientDataSet1FirstName: TStringField;
    ClientDataSet1PhoneExt: TStringField;
    ClientDataSet1HireDate: TDateTimeField;
    ClientDataSet1Salary: TFloatField;
    ClientDataSet1Shift: TBooleanField;
    ClientDataSet1ShiftStart: TTimeField;
    ClientDataSet1City: TStringField;
    ClientDataSet1Name2: TStringField;
    ClientDataSet1Sex: TStringField;
    procedure ClientDataSet1CalcFields(DataSet: TDataSet);
  private
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

procedure TUniMainModule.ClientDataSet1CalcFields(DataSet: TDataSet);
var
  Nm : string;
begin
  ClientDataSet1Name2.Value := ClientDataSet1FirstName.Value + ' '+ClientDataSet1LastName.Value;

  Nm := LowerCase(Trim(ClientDataSet1FirstName.Value));
  if
    (Nm = 'roberto') or
    (Nm = 'bruce') or
    (Nm = 'phil') or
    (Nm = 'stewart') or
    (Nm = 'chris') or
    (Nm = 'pete') or
    (Nm = 'roger') or
    (Nm = 'leslie') or
    (Nm = 'ashok') or
    (Nm = 'takashi') or
    (Nm = 'bill') or
    (Nm = 'randy') or
    (Nm = 'kevin') or
    (Nm = 'michael') or
    (Nm = 'luke') or
    (Nm = 'scott') or
    (Nm = 'claudia') or
    (Nm = 'pierre') or
    (Nm = 'john') or
    (Nm = 'mark') or
    (Nm = 't.j.') or
    (Nm = 'jacques') or
    (Nm = 'willie') or
    (Nm = 'walter')
   then
    ClientDataSet1Sex.Value := 'male'
   else if
    (Nm = 'kim') or
    (Nm = 'terri') or
    (Nm = 'katherine') or
    (Nm = 'ann') or
    (Nm = 'janet') or
    (Nm = 'sue anne') or
    (Nm = 'dana') or
    (Nm = 'mary') or
    (Nm = 'mary s.') or
    (Nm = 'jennifer m.') or
    (Nm = 'carol') or
    (Nm = 'kelly')
   then
    ClientDataSet1Sex.Value := 'female'
   else
    ClientDataSet1Sex.Value := '-';
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
