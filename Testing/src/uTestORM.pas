unit uTestORM;

interface

procedure TestSubRecord(out aJson, aLog: string);
procedure TestStorage(out aJson, aLog: string);

implementation

uses
  System.SysUtils, Janua.Orm.Test.Intf, Janua.Orm.Test.Impl, Janua.Orm.Intf, System.StrUtils,
  Janua.Cms.Server.Intf, Janua.Virtual.Cms, JOrm.Cms.MainArguments.Impl, JOrm.Cms.MainArguments.Intf,
  Janua.Cms.Server.Impl;

procedure TestStorage(out aJson, aLog: string);
var
  // TJanuaTestNestedsSubRecord = class(TJanuaRecord, IJanuaTestNestedRecord, IJanuaTestNestedSubRecord)
  aLocal, aRemote: IJanuaRecordSetStorage;
  dsLocal, dsRemote: IJanuaDBCmsStorage;
  Test: IMainArguments;
  tmp: TGUID;
  lo: TStringBuilder;

  function BoolToString(aBool: boolean): string;
  begin
    Result := IfThen(aBool, 'True', 'False');
  end;

begin
  lo := TStringBuilder.Create;
  try
    try
      dsLocal := TJanuaVirtualCmsStorage.Create;
      dsLocal.KeepAlive := False;
      dsRemote := TJanuaVirtualCmsStorage.Create;
      dsRemote.KeepAlive := False;
      dsLocal.CreateDataset;
      dsLocal.OpenArguments;

      lo.AppendLine('vtMainArguments Record Count: ' + dsLocal.jdsMainArguments.RecordCount.ToString);

      aLocal := dsLocal.ArgumentsStorage;
      if aLocal.LoadData then
        with aLocal.RecordSet do
        begin
          lo.AppendLine('aLocal.UpdatedRecordSet:');
          lo.AppendLine('{');
          lo.AppendLine('RecordCount' + aLocal.RecordSet.RecordCount.ToString);
          lo.AppendLine('First');
          aLocal.RecordSet.First;
          lo.AppendLine('RecordSets[0].RecordCount: ' + CurrentRecord.RecordSets[0].RecordCount.ToString);
          lo.AppendLine('}');
        end;

      if aLocal.LoadData then
        with aLocal.RecordSet do
        begin
          lo.AppendLine('aLocal.UpdatedRecordSet:');
          lo.AppendLine('{');
          lo.AppendLine('RecordCount' + aLocal.RecordSet.RecordCount.ToString);
          lo.AppendLine('First');
          aLocal.RecordSet.First;
          lo.AppendLine('RecordSets[0].RecordCount: ' + CurrentRecord.RecordSets[0].RecordCount.ToString);
          lo.AppendLine('}');
        end;
      aLocal := dsRemote.ArgumentsStorage;
      if aRemote.LoadData then
        lo.AppendLine('aRemote.UpdatedRecordSet.RecordCount' + aRemote.RecordSet.RecordCount.ToString);

      Test := TMainArgumentsFactory.CreateRecordset('main_arguments', 'main_arguments', aLocal, aRemote)
        as IMainArguments;

      lo.AppendLine('Test.CurrentRecord.RecordSetCount: ' + Test.CurrentRecord.RecordSetCount.ToString);
      lo.AppendLine('LoadFromRemoteStorage');
      Test.LoadFromRemoteStorage;
      Test.First;
      lo.AppendLine('1, Test.Main_argument_id: ' + Test.Main_argument_id.AsString);
      lo.AppendLine('6, Test.RecordCount: ' + Test.RecordCount.ToString);
      lo.AppendLine('4, Test.Arguments.RecordCount: ' + Test.Arguments.RecordCount.ToString);
      Test.Clear;
      lo.AppendLine('0, Test.RecordCount: ' + Test.RecordCount.ToString);
      lo.AppendLine('LoadFromLocalStorage');
      Test.LoadFromLocalStorage;
      lo.AppendLine('6, Test.RecordCount: ' + Test.RecordCount.ToString);
      lo.AppendLine('6, Test.RecordCount: ' + Test.RecordCount.ToString);
      Test.First;
      lo.AppendLine('4, Test.Arguments.RecordCount: ' + Test.Arguments.RecordCount.ToString);
      lo.AppendLine('Test.Append');
      Test.Append;
      Test.Main_argument_id.AsInteger := 10;
      Test.Main_argument_des.AsString := 'Test Main Argument';
      Test.Pos.Value := 10;
      lo.AppendLine('Test.Post');
      Test.Post;
      lo.AppendLine('Test.Arguments.Append');
      Test.Arguments.Append;
      Test.Arguments.Argument_id.AsInteger := 55;
      Test.Arguments.Code.AsString := 'TE';
      Test.Arguments.Pos.AsInteger := 1;
      Test.Arguments.Argument_des.Value := 'Test Argument';
      lo.AppendLine('Test.Post');
      Test.Post;
      lo.AppendLine('7, Test.RecordCount: ' + Test.RecordCount.ToString);
      lo.AppendLine('5, Test.Arguments.RecordCount: ' + Test.Arguments.RecordCount.ToString);
      lo.AppendLine('Test.ApplyLocalUpdates');
      Test.ApplyLocalUpdates;
      lo.AppendLine('7, Test.RecordCount: ' + Test.RecordCount.ToString);
      lo.AppendLine('5, Test.Arguments.RecordCount: ' + Test.Arguments.RecordCount.ToString);
      Test.Last;
      tmp := Test.CurrentRecord.GUID;
      aJson := aJson + sLineBreak + Test.AsJsonObject.ToString;
    except
      on e: exception do
      begin
        lo.AppendLine(e.Message);
      end;
    end;
  finally
    aLog := lo.ToString;
    lo.Free;
  end;
end;

procedure TestSubRecord(out aJson, aLog: string);
var
  // TJanuaTestNestedsSubRecord = class(TJanuaRecord, IJanuaTestNestedRecord, IJanuaTestNestedSubRecord)
  a, b: IJanuaTestNestedSubRecord;
  lo: TStringBuilder;
  s: IRecSerialization;
  function BoolToString(aBool: boolean): string;
  begin
    Result := IfThen(aBool, 'True', 'False');
  end;

begin
  lo := TStringBuilder.Create;
  try
    a := TJanuaTestNestedsSubRecord.Create('TestA');
    lo.AppendLine('Expected Sub Records: 2');
    lo.AppendLine('SubRecords: ' + a.RecordCount.ToString);
    a.Append;
    lo.AppendLine('a Modified: ' + BoolToString(a.Modified));
    a.TestInteger.Value := 100;
    lo.AppendLine('a Modified: ' + BoolToString(a.Modified));
    lo.AppendLine('a.SubA Modified: ' + BoolToString(a.SubRecordA.Modified));
    lo.AppendLine('Eseguo SubRecordA.TestInteger.Value := 100');
    a.SubRecordA.TestInteger.Value := 100;
    lo.AppendLine('a.SubA Modified: ' + BoolToString(a.SubRecordA.Modified));
    lo.AppendLine('a Modified: ' + BoolToString(a.Modified));
    lo.AppendLine('Eseguo Clear');
    a.Clear;
    lo.AppendLine('a Modified: ' + BoolToString(a.Modified));
    lo.AppendLine('a.SubA Modified: ' + BoolToString(a.SubRecordA.Modified));
    lo.AppendLine('Eseguo NewRecord');
    s := a.NewRecord;
    lo.AppendLine('a Modified: ' + BoolToString(a.Modified));
    lo.AppendLine('a.SubA Modified: ' + BoolToString(a.SubRecordA.Modified));
    lo.AppendLine('a NewRecord: ' + BoolToString(a.IsNewRecord));
    lo.AppendLine('a.SubA NewRecord: ' + BoolToString(a.SubRecordA.IsNewRecord));
    lo.AppendLine('Eseguo Test Integer a, suba, subb = 100');
    a.TestInteger.Value := 100;
    a.SubRecordA.TestInteger.Value := 100;
    a.SubRecordB.TestInteger.Value := 100;
    lo.AppendLine('Eseguo a.WriteRecord(s)');
    a.WriteRecord(s);
    lo.AppendLine('a Modified: ' + BoolToString(a.Modified));
    lo.AppendLine(a.AsJsonObject.ToString);
    lo.AppendLine('Eseguo Clear');
    a.Clear;
    lo.AppendLine('a Modified: ' + BoolToString(a.Modified));
    lo.AppendLine(a.AsJsonObject.ToString);
    lo.AppendLine('Eseguo a.ReadRecord(s)');
    a.ReadRecord(s);
    lo.AppendLine('a Modified: ' + BoolToString(a.Modified));
    lo.AppendLine(a.AsJsonObject.ToString);
    a.Clear;
    aLog := lo.ToString;
    aJson := a.AsJsonObject.ToString;
    b := TJanuaTestNestedsSubRecord.Create('TestB');
    b.AsJsonObject := (a.AsJsonObject);
    aJson := aJson + sLineBreak + b.AsJsonObject.ToString;
  finally
    lo.Free;
  end;
end;

end.
