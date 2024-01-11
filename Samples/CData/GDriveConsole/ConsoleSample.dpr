program ConsoleSample;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  System.Classes,
  System.Generics.Collections,
  FireDAC.Stan.Consts,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Stan.Param,
  FireDAC.Phys,
  FireDAC.Phys.Intf,
  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  FireDAC.DApt,
  FireDAC.Phys.CDataGoogleDrive,
  FireDAC.Phys.CDataGoogleDriveDef;

var
  FDConnection: TFDConnection;
  FDLink: TFDPhysDriverLink;
  Sql, Key: string;
  Params: TDictionary<String, String>;

function StartsWith(const SubS, S: string): boolean;
begin
  Result := Pos(SubS, S) = 1;
end;

function BoolToStr(B: boolean): string;
begin
  if B then
    Result := 'yes'
  else
    Result := 'no';
end;

procedure ExecuteSelect(const Sql: string);
var
  FDQuery: TFDQuery;
  First: boolean;
  i: integer;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := FDConnection;
    FDQuery.SQL.Text := Sql;

    FDQuery.Open();
    First := true;
    try
      while not FDQuery.Eof do
      begin
        if First then
        begin
          for i := 0 to FDQuery.Fields.Count - 1 do
          begin
            Write(FDQuery.Fields[i].FullName + #9#9);
          end;
          First := false;
          Write(#13#10);
        end;

        for i := 0 to FDQuery.Fields.Count - 1 do
          Write(FDQuery.Fields[i].AsString + #9#9);

        Write(#13#10);
        FDQuery.Next;
      end;
    finally
      FDQuery.Close;
    end;
  finally
    FreeAndNil(FDQuery);
  end;
end;

procedure ShowTables;
var
  List: TStringList;
  i: integer;
begin
  List := TStringList.Create;
  try
    FDConnection.GetTableNames('', '', '', List);

    for i := 0 to List.Count - 1 do
      WriteLn(List[i]);
  finally
    FreeAndNil(List);
  end;
end;

procedure ExecuteUpdate(const Sql: string);
var
  Count: integer;
begin
  Count := FDConnection.ExecSQL(Sql);
  WriteLn('OK, ' + IntToStr(Count) + ' rows affected.');
end;

procedure DescribeTable(const Table: string);
var
  Meta: TFDMetaInfoQuery;
  Attrs: TFDDataAttributes;
  Value: integer;
begin
  Meta := TFDMetaInfoQuery.Create(nil);
  try
    Meta.Connection := FDConnection;
    Meta.MetaInfoKind := TFDPhysMetaInfoKind.mkTableTypeFields;
    Meta.ObjectName := Table;

    Meta.Open;
    try
      while not Meta.Eof do
      begin
        Write('Name: ' + Meta.FieldByName('COLUMN_NAME').AsString + ', ');
        Write('Type: ' + Meta.FieldByName('COLUMN_TYPENAME').AsString + ', ');

        Value := Meta.FieldByName('COLUMN_ATTRIBUTES').AsInteger;
        Attrs := TFDDataAttributes(Pointer(@Value)^);

        Write('Nullable: ' + BoolToStr(caAllowNull in Attrs) + ', ');
        Write('Auto increment: ' + BoolToStr(caAutoInc in Attrs));

        Write(#13#10);
        Meta.Next;
      end;
    finally
      Meta.Close;
    end;
  finally
    FreeAndNil(Meta);
  end;
end;

procedure ShowHelp;
begin
  WriteLn('Commands: SELECT,UPDATE,INSERT,DELETE');
  WriteLn('DESCRIBE <tablename>');
  WriteLn('SHOW TABLES');
  WriteLn('HELP');
  WriteLn('<Enter> to Quit');
  WriteLn;
end;

procedure ExecuteQuery(const Sql: string);
var
  SqlUp, Table: string;
  P: integer;
begin
  SqlUp := TrimLeft(UpperCase(Sql));

  if StartsWith('HELP', SqlUp) then
  begin
    ShowHelp;
  end
  else if StartsWith('SHOW TABLES', SqlUp) then
  begin
    ShowTables;
  end
  else if StartsWith('DESCRIBE ', SqlUp) then
  begin
    P := Pos(' ', Sql);
    Table := Copy(Sql, P + 1, MaxInt);
    if Table = '' then
    begin
      WriteLn('Wrong request!');
      Exit;
    end;

    DescribeTable(Table);
  end
  else if StartsWith('SELECT ', SqlUp) then
  begin
    ExecuteSelect(Sql);
  end
  else if StartsWith('UPDATE ', SqlUp) or
    StartsWith('DELETE ', SqlUp) or
    StartsWith('INSERT ', SqlUp) then
  begin
    ExecuteUpdate(Sql);
  end
  else
    WriteLn('Wrong query syntax!');
end;

function IntReadParameter(const ParamName, ParamType, DefaultValue : string; UseDefaultValue : boolean) : string;
var InputValue : string;
    Msg : string;
begin
  Msg := Format('Provide the value for the %s parameter %s', [ParamType, ParamName]);
  if UseDefaultValue then 
    Msg := Format('%s or provide the empty string to accept the default value ''%s''', [Msg, DefaultValue]);
  Write(Msg + ':');
  ReadLn(InputValue);
  result := InputValue; 
end;

function ReadIntParameter(const ParamName, DefaultValue : string) : string;
var i, j : integer;
	InputValue : string;
begin
  while true do 
  begin
    InputValue := IntReadParameter(ParamName, 'Integer', DefaultValue, DefaultValue <> '');
    i := 0;
    j := 0;
    if (InputValue = '') then 
    begin
      result := DefaultValue;  
      exit;
    end;
    Val(InputValue, I, J); 
    if j = 0 then 
      break 
    else
      writeln('Sorry, we could not convert the provided value to integer. Please, try again.');
  end;
  result := InputValue; 
end;

function ReadStringParameter(const ParamName : string) : string;
begin
  result := IntReadParameter(ParamName, 'String', '', false);
end;

function ReadBoolParameter(const ParamName : string) : string;
var InputValue : string;
begin
  while true do 
  begin
    write(Format('Provide the value for the Boolean parameter %s (enter y/n or true/false):', [ParamName]));
    Readln(InputValue);
    InputValue := WideUpperCase(InputValue);
	if (InputValue = 'TRUE') or 
       (InputValue = 'Y') then 
    begin
      result := 'TRUE';
      exit;
    end
    else
	if (InputValue = 'FALSE') or 
       (InputValue = 'N') then 
    begin
      result := 'FALSE';
      exit;
    end
    else
      writeln('Sorry, we could not convert the provided value to a boolean value. Please, try again.');
  end;
  result := InputValue; 
end;

procedure ReadConnectionParams;
var
  AValue: string;
begin
  AValue := ReadStringParameter('OAuthAccessToken');
   
  Params.Add('OAuthAccessToken', AValue);

end;

begin
  FDLink := TFDPhysCDataGoogleDriveDriverLink.Create(nil);
  try
    FDConnection := TFDConnection.Create(nil);
    try
      while not FDConnection.Connected do
      begin
        FDConnection.Params.Clear;
        FDConnection.DriverName := FDLink.DriverID;
        Params := TDictionary<String, String>.Create;
        try
          ReadConnectionParams;
          for Key in Params.Keys do
            FDConnection.Params.Add(Key+ '=' + Params.Items[Key]);
        finally
          FreeAndNil(Params);
        end;

        try
          FDConnection.Connected := true;
          WriteLn('Connection established!');
        except
          on E : Exception do
          WriteLn('Error Connecting! - ' + E.Message);
        end;
      end;

      try
        while true do
        begin
          WriteLn('Enter SQL query ("HELP" for details):');
          ReadLn(Sql);

          if Sql = '' then
            Break;

          try
            ExecuteQuery(Sql);
          except
            on E: Exception do
              WriteLn(E.ClassName, ': ', E.Message);
          end;
        end;
      finally
        FDConnection.Connected := false;
      end;
    finally
      FreeAndNil(FDConnection);
    end;
  finally
    FreeAndNil(FDLink);
  end;
end.
