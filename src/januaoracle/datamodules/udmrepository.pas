unit udmrepository;

interface

uses
  Windows,  SysUtils, Classes, DB, DBAccess, Ora, MemDS, OraScript, Dialogs, Forms,
  DAScript, OraSmart, AdvMemo, StdCtrls, Controls, ExtCtrls, Variants, 
  janualogger, januacorefunctions;

type
  TdmRepository = class(TDataModule)
    sesRepository: TOraSession;
    qryGlobalVersion: TOraQuery;
    Script: TOraScript;
    qryGlobalVersionVERSION_ID: TFloatField;
    tabLocali: TOraScript;
    qryCompile: TOraQuery;
    qryCompileCOMPILE: TWideStringField;
    qryCompileSTATUS: TWideStringField;
    qryLocalVersion: TOraQuery;
    qryLocalVersionVERSION_ID: TFloatField;
    qryRepository: TOraTable;
    qryRepositoryVERSION: TFloatField;
    qryRepositoryINSERT_DATE: TOraTimeStampField;
    qryGruppi: TOraQuery;
    qryGruppiGROUP_ID: TIntegerField;
    qryGruppiGROUP_DES: TWideStringField;
    dsGruppi: TOraDataSource;
    dsSQL: TOraDataSource;
    qrySql: TOraTable;
    qrySqlGROUP_ID: TIntegerField;
    qrySqlQUERY_ID: TIntegerField;
    qrySqlQUERY_DES: TWideStringField;
    qrySqlQUERY_TEXT: TWideStringField;
    qrySqlUSER_INSERT: TWideStringField;
    qryParametri: TOraTable;
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
    JanuaLogger1: TJanuaLogger;
    qryRepositorySQL_STRING: TWideMemoField;
    procedure sesRepositoryBeforeConnect(Sender: TObject);
    procedure ScriptError2(Sender: TObject; E: Exception; SQL: string;
      var Action: TErrorAction);
    procedure qrySqlAfterOpen(DataSet: TDataSet);
    procedure qrySqlNewRecord(DataSet: TDataSet);
    procedure qryParametriNewRecord(DataSet: TDataSet);
    function SetQueryGroup: boolean;
    procedure ScriptError(Sender: TObject; E: Exception; SQL: WideString;
      var Action: TErrorAction);

  private
    { Private declarations }
    vExec: boolean;
    FOraSession: ToraSession;
    procedure CompileObjects;
    procedure SetOraSession(const Value: ToraSession);
  public
    { Public declarations }
    procedure RegisterSQLRepository(sScript: widestring);
    procedure UpdateDB;
  published
    property OraSession: ToraSession read FOraSession write SetOraSession;
  end;

var
  dmRepository: TdmRepository;

implementation


{$R *.dfm}


procedure TdmRepository.qryParametriNewRecord(DataSet: TDataSet);
begin
      qryParametriGROUP_ID.Value := qrySQLGROUP_ID.Value;
      qryParametriQUERY_ID.Value := qrySQLQUERY_ID.Value;
end;

procedure TdmRepository.qrySqlAfterOpen(DataSet: TDataSet);
begin
     qryParametri.Open;
end;

procedure TdmRepository.qrySqlNewRecord(DataSet: TDataSet);
begin
     qrySQlQuery_id.Value := qrySql.RecordCount + 1;
     qrySQLGROUP_ID.Value := qryGruppiGROUP_ID.Value;
end;

procedure TdmRepository.RegisterSQLRepository(sScript: widestring);
var
   vGlobal: integer;
begin
  try
    try
       Script.SQL.Text := sScript;
       Script.Execute;
    except on E: Exception do
      begin
        JanuaLogger1.ProcedureName := 'RegisterSQLRepository';
        JanuaLogger1.E := E;
        JanuaLogger1.Execute;
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
        if sesRepository.InTransaction then sesRepository.Commit;
        qryGlobalVersion.Close;
        qryGlobalVersion.Open;
        vGlobal :=  qryGlobalVersionVERSION_ID.AsInteger;
        sesRepository.Close;
        qryLocalVersion.Open;
        qryLocalVersion.Edit;
        qryLocalVersionVersion_id.AsInteger := vGlobal;
        qryLocalVersion.Post;
        FOraSession.Commit;
      end;
  end;

end;

procedure TdmRepository.ScriptError(Sender: TObject; E: Exception;
  SQL: WideString; var Action: TErrorAction);
begin
    Action := eaContinue;
end;

procedure TdmRepository.ScriptError2(Sender: TObject; E: Exception; SQL: string;
  var Action: TErrorAction);
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
             except on E: Exception do
              begin
                JanuaLogger1.ProcedureName := 'UpdateDB:' + sLineBreak +
                                             tabLocali.SQL.Text;
                JanuaLogger1.E := E;
                JanuaLogger1.Execute;
              end;
             end;
         end;

         vActual := vLocal;
         if  vGlobal > vLocal then
         begin
              vExec := True;
              qryRepository.Close;
              qryRepository.ParamByName('VERSION').AsInteger :=
                             qryLocalVersionVERSION_ID.AsInteger;

              qryRepository.Open;
              qryRepository.First;
              While not qryRepository.Eof do
              try
                  vActual := qryRepositoryVERSION.AsInteger;
                  try
                    script.SQL.Text := qryRepositorySQL_STRING.AsWideString;
                    Script.Execute;
                  except on E: Exception do
                    begin
                      JanuaLogger1.ProcedureName := 'RegisterSQLRepository' +
                                                     sLineBreak +
                                                     Script.SQL.Text;
                      JanuaLogger1.E := E;
                      JanuaLogger1.Execute;
                    end;
                  end;
                  
                  qryLocalVersion.Open;
                  qryLocalVersion.Edit;
                  qryLocalVersionVersion_id.AsInteger := vActual;
                  qryLocalVersion.Post;
                  if qryRepository.Active then qryRepository.Next else
                  begin
                    qryRepository.ParamByName('VERSION').AsInteger := vActual;
                    qryRepository.Open;
                  end;
              except
                  qryLocalVersion.Open;
                  qryLocalVersion.Edit;
                  qryLocalVersionVersion_id.AsInteger := vActual;
                  qryLocalVersion.Post;
                  if not qryRepository.Active
                  then
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
    except on E: Exception do
      begin
        JanuaLogger1.ProcedureName := 'CompileObjects' + sLineBreak + Script.SQL.Text;
        JanuaLogger1.E := E;
        JanuaLogger1.Execute; 
      end;
    end;
    qryCompile.Next;
  end;
end;

procedure TdmRepository.sesRepositoryBeforeConnect(Sender: TObject);
begin
   sesRepository.Options.UseUnicode := True; 
end;



procedure TdmRepository.SetOraSession(const Value: ToraSession);
begin
  FOraSession := Value;
  qryLocalVersion.Session := FOraSession;
  Script.Session := FOraSession;
  tabLocali.Session := FOraSession;
  qryCompile.Session := FOraSession;
  qryGruppi.Session := FOraSession;
  qrySql.Session := FOraSession;
  qryParametri.Session := FOraSession; 
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
end;

end.
