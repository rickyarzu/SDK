var
  aLog: IStringBuilder;
begin
  aLog := TJanuaStringBuilder.Create;
  try
    Assert(FInternalRecord.RecordSetCount(False) > 0, 'No Detail Record');
    aLog.Append('FInternalRecord.RecordSets[0].Append');
    FInternalRecord.RecordSets[0].Append;
  except
    On e: Exception do
      RaiseException('AddDetailRecord', e, Self, aLog.ToString);
  end;