unit uframeTMMigration;

interface

uses
  // System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  // UniDAC
  CRGrid, Vcl.ExtCtrls, Vcl.Buttons, Uni,
  // Janua
  Janua.Core.Types, uJanuaVCLFrame, Janua.Controls.Forms.Intf,
  // TMLogistic
  Janua.Core.TMLogistic.Types;

type
  TframeTMMigration = class(TJanuaVCLFrameModel, IJanuaContainer)
    Panel1: TPanel;
    dsLegacyTable: TDataSource;
    CRDBGrid1: TCRDBGrid;
    Panel2: TPanel;
    DBAdvNavigator2: TDBNavigator;
    CRDBGrid2: TCRDBGrid;
    dsPostgresTable: TDataSource;
    dsInsertUpdateProcedure: TDataSource;
    btnAsync: TSpeedButton;
    DBNavigator1: TDBNavigator;
    btnStandard: TSpeedButton;
    procedure btnAsyncClick(Sender: TObject);
    procedure btnStandardClick(Sender: TObject);
  private
    FKeyFields: TKeyFields;
    FStringKeyFields: string;
    FDestination: TUniTable;
    FOrigin: TUniTable;
    FMigrationProcedure: TUniStoredProc;
    FLines: TStrings;
    function InternalActivate: boolean; override;
    procedure SetDestination(const Value: TUniTable);
    procedure SetKeyFields(const Value: TKeyFields);
    procedure SetOrigin(const Value: TUniTable);
    procedure SetMigrationProcedure(const Value: TUniStoredProc);
    procedure SetLines(const Value: TStrings);
    function Sync: boolean;
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    constructor CreateWithTable(AOwner: TComponent; const aOriginTable, aDestTable: string; aKeyFields: TKeyFields;
      aServerDB: TTMSQLServerDB = sdbMagazzino; aWhereClause: string = ''; aWhereDestination: string = '');
    property Lines: TStrings read FLines write SetLines;
    property Origin: TUniTable read FOrigin write SetOrigin;
    property Destination: TUniTable read FDestination write SetDestination;
    property KeyFields: TKeyFields read FKeyFields write SetKeyFields;
    property MigrationProcedure: TUniStoredProc read FMigrationProcedure write SetMigrationProcedure;
  end;

  tframeMigrationClass = class of TframeTMMigration;

implementation

{$R *.dfm}

uses System.StrUtils, udmTMMigration, Janua.Core.AsyncTask, Janua.Core.Functions, Janua.Application.Framework;
{ TFrame3 }


constructor TframeTMMigration.CreateWithTable(AOwner: TComponent; const aOriginTable, aDestTable: string;
  aKeyFields: TKeyFields; aServerDB: TTMSQLServerDB = sdbMagazzino; aWhereClause: string = '';
  aWhereDestination: string = '');
var
  bPing: boolean;
begin
  Create(AOwner);
  Origin.TableName := aOriginTable;
  KeyFields := aKeyFields; // Copy(aKeyFields, 0, Length(aKeyFields));
  bPing := True; // Ping('192.168.1.201');
  case aServerDB of
    sdbMagazzino:
      if bPing then
        Origin.Connection := TTMLogisticUniMigration.dmMigration.TailorMagazzino
      else
        Origin.Connection := TTMLogisticUniMigration.dmMigration.SQLSrvMagazzinoServer;
    sdbPratiche:
      if bPing then
        Origin.Connection := TTMLogisticUniMigration.dmMigration.TailorPratiche
      else
        Origin.Connection := TTMLogisticUniMigration.dmMigration.SqlServerPratiche;
  end;
  Destination.Connection := TTMLogisticUniMigration.dmMigration.ErgoConnection;
  Destination.TableName := aDestTable;
  // if aWhere Clause is set then it is added to Origin Table to Limit the number of rows to fecth
  if aWhereClause <> '' then
    Origin.AddWhere(aWhereClause);
  // if aWhere Clause is set then it is added to Destination Table to Limit the number of rows to fecth
  if aWhereDestination <> '' then
    Destination.AddWhere(aWhereDestination)
  else if aWhereClause <> '' then
    Destination.AddWhere(aWhereClause);
end;

constructor TframeTMMigration.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Origin := TUniTable.Create(Self);
  Destination := TUniTable.Create(Self);
  Origin.FetchRows := 1024;
  Origin.FetchRows := 1024;
end;

function TframeTMMigration.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin

        (*
          if Assigned(dsLegacyTable.DataSet) then
          FOrigin := dsLegacyTable.DataSet as TUniTable;
          if Assigned(dsPostgresTable.DataSet) then
          FDestination := dsPostgresTable.DataSet as TUniTable;
          if Assigned(dsInsertUpdateProcedure) then
          FMigrationProcedure := (dsInsertUpdateProcedure.DataSet as TUniStoredProc);
        *)

        dsLegacyTable.DataSet := nil;
        FOrigin.Open;
        FOrigin.Last;
        FOrigin.First;
        dsLegacyTable.DataSet := FOrigin;

        dsPostgresTable.DataSet := nil;
        FDestination.Open;
        FDestination.Last;
        FDestination.First;
        dsPostgresTable.DataSet := FDestination;
      end;
    except
      on E: Exception do
        RaiseException('InternalActivate', E, Self);
    end;

end;

procedure TframeTMMigration.SetDestination(const Value: TUniTable);
begin
  FDestination := Value;
end;

procedure TframeTMMigration.SetKeyFields(const Value: TKeyFields);
var
  I, J: Integer;
begin
  FKeyFields := Value;
  FStringKeyFields := '';
  J := Pred(Length(KeyFields));
  if J >= 0 then
    for I := 0 to J do
      FStringKeyFields := FStringKeyFields + FKeyFields[I] + IfThen((I = J), '', ';');
end;

procedure TframeTMMigration.SetLines(const Value: TStrings);
begin
  FLines := Value;
end;

procedure TframeTMMigration.SetMigrationProcedure(const Value: TUniStoredProc);
begin
  FMigrationProcedure := Value;
end;

procedure TframeTMMigration.SetOrigin(const Value: TUniTable);
begin
  FOrigin := Value;
end;

procedure TframeTMMigration.btnAsyncClick(Sender: TObject);
begin
  try
    Activate;
    dsLegacyTable.Enabled := False;
    dsPostgresTable.Enabled := False;
    Async.Run<boolean>(
      function: boolean
      begin
        // This is the "background" anonymous method. Runs in the
        // background thread, and its result is passed
        // to the "success" callback.
        // In this case the result is a String.
        Result := Sync;
      end,
      procedure(const aValue: boolean)
      begin
        // This is the "success" callback. Runs in the UI thread and
        // gets the result of the "background" anonymous method.
        if aValue then
        begin
          dsPostgresTable.DataSet.Close;
          dsPostgresTable.DataSet.Open;
          dsLegacyTable.Enabled := True;
          dsPostgresTable.Enabled := True;
        end;
      end,
      procedure(const Ex: Exception)
      begin
        // This is the "error" callback.
        // Runs in the UI thread and is called only if the
        // "background" anonymous method raises an exception.
        FLines.Add(Ex.Message);
      end);
  except
    on E: Exception do
      FLines.Add(E.Message);
  end;
end;

procedure TframeTMMigration.btnStandardClick(Sender: TObject);
begin
  try
    Activate;
    dsLegacyTable.Enabled := False;
    dsPostgresTable.Enabled := False;
    FLines.Add('Starting Migration: ' + FOrigin.TableName);
    Sync;
    FLines.Add('end Migration: ' + FOrigin.TableName);
    dsPostgresTable.DataSet.Close;
    dsPostgresTable.DataSet.Open;
    dsLegacyTable.Enabled := True;
    dsPostgresTable.Enabled := True;
  except
    on E: Exception do
      FLines.Add(E.Message);
  end;
end;

function TframeTMMigration.Sync: boolean;
var
  I: Integer;
  tmpGUID: TGUID;
  bInsert: boolean;

  function GetKeyValues: TJanuaVariantArray;
  var
    J: Integer;
  begin
    SetLength(Result, Length(FKeyFields));
    for J := 0 to Pred(Length(FKeyFields)) do
      Result[J] := FOrigin.fieldbyName(FKeyFields[J]).Value;
  end;

  function LogStrings: string;
  var
    J: Integer;
    aBuilder: TStringBuilder;
  begin
    aBuilder := TStringBuilder.Create;
    try
      aBuilder.AppendLine('Error inserting Record: ' + FOrigin.TableName);
      for J := 0 to Pred(Length(FKeyFields)) do
        aBuilder.Append(IfThen(J > 0, ', ', '') + FKeyFields[J] + ': ' + FOrigin.fieldbyName(FKeyFields[J])
          .AsWideString);
      aBuilder.AppendLine('');
    finally
      aBuilder.Free
    end;

  end;

  function CompareUpdates: boolean;
  begin
    Result := False;
    if Assigned(FOrigin.FindField('DataInserimento')) then
      Result := FOrigin.fieldbyName('DataInserimento').Value = FDestination.fieldbyName('DataInserimento').Value;
  end;

begin

  Result := True;
  try
    if Assigned(dsInsertUpdateProcedure.DataSet) then
    begin
      FOrigin.First;
      while not FOrigin.Eof do
      begin
        for I := 0 to FOrigin.FieldCount - 1 do
          FMigrationProcedure.ParamByName('p_' + FOrigin.Fields[I].FieldName).Value := FOrigin.Fields[I].Value;
        FMigrationProcedure.ExecProc;
        FOrigin.Next;
      end;
    end
    else
    begin
      FOrigin.First;
      while not FOrigin.Eof do
      begin
        bInsert := False;
        if not FDestination.Locate(FStringKeyFields, VarArrayOf(GetKeyValues), []) then
        begin
          FDestination.Append;
          CreateGUID(tmpGUID);
          Destination.fieldbyName('jguid').Value := GUIDToString(tmpGUID);
          bInsert := True;
        end;

        if bInsert or (not CompareUpdates) then
        begin
          FDestination.Edit;
          try
            for I := 0 to FOrigin.FieldCount - 1 do
              FDestination.fieldbyName(FOrigin.Fields[I].FieldName).Value := FOrigin.Fields[I].Value;
            FDestination.Post;
          except
            on E: Exception do
            begin
              LogStrings;
              FDestination.Cancel;
            end;
          end;
        end;
        FOrigin.Next;
      end;
    end;
  finally
    Result := True;
  end;

end;

end.
