unit udmrepository;

interface

uses
  System.SysUtils, System.Classes, // Janua
  Janua.Core.Functions,  Janua.Unidac.Connection,
  Data.DB, DBAccess, Uni, DAScript, MemDS, UniScript, UniProvider, OracleUniProvider;

type
  TdmRepository = class(TDataModule)
    sesRepository: TJanuaUniConnection;
    qryGlobalVersion: TUniQuery;
    Script: TUniScript;
    qryGlobalVersionVERSION_ID: TFloatField;
    tabLocali: TUniScript;
    qryCompile: TUniQuery;
    qryCompileCOMPILE: TWideStringField;
    qryCompileSTATUS: TWideStringField;
    qryLocalVersion: TUniQuery;
    qryLocalVersionVERSION_ID: TFloatField;
    qryRepository: TUniTable;
    qryRepositoryVERSION: TFloatField;
    qryGruppi: TUniQuery;
    qryGruppiGROUP_ID: TIntegerField;
    qryGruppiGROUP_DES: TWideStringField;
    qrySql: TUniTable;
    qrySqlGROUP_ID: TIntegerField;
    qrySqlQUERY_ID: TIntegerField;
    qrySqlQUERY_DES: TWideStringField;
    qrySqlQUERY_TEXT: TWideStringField;
    qrySqlUSER_INSERT: TWideStringField;
    qryParametri: TUniTable;
    qryParametriGROUP_ID: TIntegerField;
    qryParametriQUERY_ID: TIntegerField;
    qryParametriPARAM_ID: TIntegerField;
    qryParametriPARAM_DES: TWideStringField;
    qryParametriPARAM_TYPE: TWideStringField;
    qryParametriINT_VALUE: TIntegerField;
    qryParametriSTRING_VALUE: TWideStringField;
    qryParametriDATE_VALUE: TDateTimeField;
    qryParametriLOV: TWideStringField;
    qryParametriLOV_TEXT: TWideStringField;
    qryParametriLOV_FIELD: TWideStringField;
    qryParametriPARAM_TEXT: TWideStringField;
    qryParametriROWID: TWideStringField;
    qryRepositorySQL_STRING: TWideMemoField;
    dsGruppi: TUniDataSource;
    dsSQL: TUniDataSource;
    OracleUniProvider1: TOracleUniProvider;
    procedure ScriptError2(Sender: TObject; E: Exception; SQL: string; var Action: TErrorAction);
    procedure qrySqlAfterOpen(DataSet: TDataSet);
    procedure qrySqlNewRecord(DataSet: TDataSet);
    procedure qryParametriNewRecord(DataSet: TDataSet);
    function SetQueryGroup: boolean;
    procedure ScriptError(Sender: TObject; E: Exception; SQL: WideString; var Action: TErrorAction);

  private
    { Private declarations }
    vExec: boolean;
    FOraSession: TJanuaUniConnection;
    procedure CompileObjects;
    procedure SeTJanuaUniConnection(const Value: TJanuaUniConnection);
  public
    { Public declarations }
    procedure RegisterSQLRepository(sScript: WideString);
    procedure UpdateDB;
  published
    property OraSession: TJanuaUniConnection read FOraSession write SeTJanuaUniConnection;
  end;

var
  dmRepository: TdmRepository;

implementation

uses Janua.Application.Framework;

{$R *.dfm}

procedure TdmRepository.qryParametriNewRecord(DataSet: TDataSet);
begin
  qryParametriGROUP_ID.Value := qrySqlGROUP_ID.Value;
  qryParametriQUERY_ID.Value := qrySqlQUERY_ID.Value;
end;

procedure TdmRepository.qrySqlAfterOpen(DataSet: TDataSet);
begin
  qryParametri.Open;
end;

procedure TdmRepository.qrySqlNewRecord(DataSet: TDataSet);
begin
  qrySqlQUERY_ID.Value := qrySql.RecordCount + 1;
  qrySqlGROUP_ID.Value := qryGruppiGROUP_ID.Value;
end;

procedure TdmRepository.RegisterSQLRepository(sScript: WideString);
var
  vGlobal: integer;
begin
  try
    try
      Script.SQL.Text := sScript;
      Script.Execute;
    except
      on E: Exception do
      begin
        RaiseException('RegisterSQLRepository', E, self);
      end;
    end;
  finally
    CompileObjects;
    try
      sesRepository.Open;
      qryRepository.Open;
      qryRepository.Insert;
      qryRepositorySQL_STRING.Text := sScript;
      qryRepository.Post;
    finally
      qryRepository.Close;
      if sesRepository.InTransaction then
        sesRepository.Commit;
      qryGlobalVersion.Close;
      qryGlobalVersion.Open;
      vGlobal := qryGlobalVersionVERSION_ID.AsInteger;
      sesRepository.Close;
      qryLocalVersion.Open;
      qryLocalVersion.Edit;
      qryLocalVersionVERSION_ID.AsInteger := vGlobal;
      qryLocalVersion.Post;
      FOraSession.Commit;
    end;
  end;

end;

procedure TdmRepository.ScriptError(Sender: TObject; E: Exception; SQL: WideString; var Action: TErrorAction);
begin
  Action := eaContinue;
end;

procedure TdmRepository.ScriptError2(Sender: TObject; E: Exception; SQL: string; var Action: TErrorAction);
begin
  Action := eaContinue;
end;

procedure TdmRepository.UpdateDB;
var
  vGlobal: integer;
  vLocal: integer;
  vActual: integer;
begin
  vExec := False;
  vLocal := 0;
  vGlobal := 0;
  try
    // ShowMessage(dmApplicationStart.sesDefault.Schema);
    sesRepository.Connect;
    try
      qryGlobalVersion.Open;
      vGlobal := qryGlobalVersionVERSION_ID.AsInteger;
      qryLocalVersion.Open;
      vLocal := qryLocalVersionVERSION_ID.AsInteger;
    except
      try
        tabLocali.Execute;
        qryLocalVersion.Open;
      except
        on E: Exception do
        begin

          RaiseException('UpdateDB', E, self, tabLocali.SQL.Text);
        end;
      end;
    end;

    vActual := vLocal;
    if vGlobal > vLocal then
    begin
      vExec := True;
      qryRepository.Close;
      qryRepository.ParamByName('VERSION').AsInteger := qryLocalVersionVERSION_ID.AsInteger;

      qryRepository.Open;
      qryRepository.First;
      While not qryRepository.Eof do
        try
          vActual := qryRepositoryVERSION.AsInteger;
          try
            Script.SQL.Text := qryRepositorySQL_STRING.AsWideString;
            Script.Execute;
          except
            on E: Exception do
            begin
              RaiseException('RegisterSQLRepository', E, self, Script.SQL.Text);
            end;
          end;

          qryLocalVersion.Open;
          qryLocalVersion.Edit;
          qryLocalVersionVERSION_ID.AsInteger := vActual;
          qryLocalVersion.Post;
          if qryRepository.Active then
            qryRepository.Next
          else
          begin
            qryRepository.ParamByName('VERSION').AsInteger := vActual;
            qryRepository.Open;
          end;
        except
          qryLocalVersion.Open;
          qryLocalVersion.Edit;
          qryLocalVersionVERSION_ID.AsInteger := vActual;
          qryLocalVersion.Post;
          if not qryRepository.Active then
          begin
            qryRepository.ParamByName('VERSION').AsInteger := vActual;
            qryRepository.Open;
            if qryRepository.RecordCount > 0 then
              qryRepository.Next;
          end
          else
            qryRepository.Next;
        end;
      FOraSession.Commit;
      CompileObjects;
    end;
  except
    sesRepository.Close;

  end;
  sesRepository.Close;
end;

procedure TdmRepository.CompileObjects;
begin
  qryCompile.Close;
  qryCompile.Open;
  qryCompile.First;
  while not qryCompile.Eof do
  begin
    try
      Script.SQL.Clear;
      Script.SQL.Add(qryCompileCOMPILE.Text);
      Script.Execute;
    except
      on E: Exception do
      begin
        RaiseException('CompileObjects', E, self, Script.SQL.Text);
      end;
    end;
    qryCompile.Next;
  end;
end;

procedure TdmRepository.SeTJanuaUniConnection(const Value: TJanuaUniConnection);
begin
  FOraSession := Value;
  qryLocalVersion.Connection := FOraSession;
  Script.Connection := FOraSession;
  tabLocali.Connection := FOraSession;
  qryCompile.Connection := FOraSession;
  qryGruppi.Connection := FOraSession;
  qrySql.Connection := FOraSession;
  qryParametri.Connection := FOraSession;
end;

function TdmRepository.SetQueryGroup: boolean;
begin
  {
    Result := False;
    try
    Application.CreateForm(TdlgRepositoryQueryStat, dlgRepositoryQueryStat);
    Result := dlgRepositoryQueryStat.ModalResult = mrOK;
    finally
    FreeAndNil(dlgRepositoryQueryStat);
    end;
  }
  Result := False;
  { TODO : Re-Implement Set Query Group or Delete it }
end;

end.
