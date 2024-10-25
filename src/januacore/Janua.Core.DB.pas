unit Janua.Core.DB;

interface

{$I JANUACORE.INC}

uses
  // System Libraries ..............................................
  System.IOUtils, System.SysUtils, Generics.Collections, System.Math, System.Classes,
  // DB Libraries
  Data.DB, FireDAC.Comp.Client,
  // JanuaProject
  Janua.Core.Classes, Janua.Core.Functions, Janua.Core.Json, Janua.Core.DB.Intf, Janua.Core.DB.Types,
  Janua.Core.Types, Janua.Core.Conf, Janua.Core.Export.Intf, Janua.Core.Entities, Janua.Orm.Intf,
  // Json Xml Libraries
  System.Json, System.JSONConsts;

type
  TJanuaCustomSessionSource = class(TInterfacedObject)
  public
    function GetDate: TDAteTime; virtual;
    function GetTime: TDAteTime; virtual;
  end;

  TJanuaServerFunctions = class(TJanuaCoreComponent)
  private
    FServerFunction: IJanuaServerFunctions;
  protected
    function GetServerFunction: IJanuaServerFunctions;
  public
    constructor Create(aOwner: TComponent); override;
    property ServerFunctions: IJanuaServerFunctions read GetServerFunction;
  end;

type
  TJanuaDBNavController = class(TJanuaCoreComponent)
  private
    procedure SetDetailDataset(const Value: TDataset);
    procedure SetMasterDataset(const Value: TDataset);
  protected
    FDetailDataset: TDataset;
    FMasterDataset: TDataset;
    // basic procedures for the Dataset management .....................................................................
    function InternalCheck: boolean; Virtual;
    procedure InternalNext; Virtual;
    procedure InternalPrev; Virtual;
    procedure InternalFirst; Virtual;
    procedure InernalLast; Virtual;
  public
    procedure Next(Sender: TObject);
    procedure Prev(Sender: TObject);
    procedure First(Sender: TObject);
    procedure Last(Sender: TObject);
  public
    procedure FlexcelExport; virtual; abstract;
  published
    property MasterDataset: TDataset read FMasterDataset write SetMasterDataset;
    property DetailDataset: TDataset read FDetailDataset write SetDetailDataset;
  end;

  TCustomOpenThread = class(TThread)
  private
    FException: Exception;
    FaDatasource: TDataSource;
    FCallBackProc: TProc;
    FDoRaise: boolean;
    procedure DoHandleException;
    procedure SetaDataset(const Value: TDataset);
    procedure SetaDatasource(const Value: TDataSource);
    procedure SetaCallBackProc(const Value: TProc);
    procedure SetDoRaise(const Value: boolean);
  strict protected
    FaDataset: TDataset;
    procedure OpenThreaded; virtual; abstract;
  protected
    procedure HandleException; virtual;
    procedure Execute; override;
  public
    constructor Create(Suspended: boolean; vDataset: TDataset; vDatasource: TDataSource;
      aCallBackProc: TProc = nil); overload; virtual;
    property aDataset: TDataset read FaDataset write SetaDataset;
    property aDatasource: TDataSource read FaDatasource write SetaDatasource;
    property CallBackProc: TProc read FCallBackProc write SetaCallBackProc;
    property DoRaise: boolean read FDoRaise write SetDoRaise;
  end;

type
  TRecDatasetExport = record
  private
    FDataset: TDataset;
    FFieldList: TRecFieldDefList;
    procedure SetDataset(const Value: TDataset);
    procedure SetFieldList(const Value: TRecFieldDefList);
  public
    constructor Create(aList: TRecFieldDefList; aDataset: TDataset = nil);
  public
    property Dataset: TDataset read FDataset write SetDataset;
    property FieldList: TRecFieldDefList read FFieldList write SetFieldList;
    function Generate(aEngine: IJanuaDatasetExportEngine): string;
  end;

  TDatasetStringWriter = record
    class function ElaborateRecord(const aDataset: TDataset; const aTemplate: string;
      aLogProc: TMessageLogProc = nil): string; static;
    class function ElaborateDataset(const aDataset: TDataset; const aTemplate: string;
      aLogProc: TMessageLogProc = nil): TStringArray; static;
  end;

  TDBOpenThread = class(TCustomOpenThread)
  protected
    procedure OpenThreaded; override;
  end;

procedure OpenDBThreadedDataset(aDataset: TDataset; aDatasource: TDataSource = nil; aDoRaise: boolean = true;
  aCallBackProc: TProc = nil);

procedure DeserializeDatasetToClass(aDataset: TDataset; AClassInstance: TObject);
procedure SerializeClassToDataset(AClassInstance: TObject; aDataset: TDataset);

implementation

uses Janua.Mocks.Helpers, System.Rtti, System.TypInfo, Janua.Application.Framework, Spring, System.StrUtils;

procedure DeserializeDatasetToClass(aDataset: TDataset; AClassInstance: TObject);
var
  Context: TRttiContext;
  RttiType: TRttiType;
  Prop: TRttiProperty;
  Field: TField;
begin
  Context := TRttiContext.Create;
  try
    RttiType := Context.GetType(AClassInstance.ClassType);
    for Prop in RttiType.GetProperties do
    begin
      // Check if the property is writable and public
      if Prop.IsWritable and (Prop.Visibility = mvPublic) then
      begin
        Field := aDataset.FindField(Prop.Name);
        if Assigned(Field) then
        begin
          // Set the property value based on the field value
          Prop.SetValue(AClassInstance, TValue.FromVariant(Field.Value));
        end;
      end;
    end;
  finally
    Context.Free;
  end;
end;

procedure SerializeClassToDataset(AClassInstance: TObject; aDataset: TDataset);
var
  Context: TRttiContext;
  RttiType: TRttiType;
  Prop: TRttiProperty;
  Field: TField;
begin
  // Ensure the dataset is in edit or insert mode
  if not(aDataset.State in dsEditModes) then
    aDataset.Append;

  Context := TRttiContext.Create;
  try
    RttiType := Context.GetType(AClassInstance.ClassType);
    for Prop in RttiType.GetProperties do
    begin
      // Check if the property is readable and public
      // Consider if using in TMemberVisibilities
      if Prop.IsReadable and (Prop.Visibility = TMemberVisibility.mvPublic) then
      begin
        Field := aDataset.FindField(Prop.Name);
        if Assigned(Field) then
        begin
          // Set the field value based on the property value
          case Field.DataType of
            TFieldType.ftMemo:
              Field.Text := Prop.GetValue(AClassInstance).AsString
          else
            Field.Value := Prop.GetValue(AClassInstance).AsVariant;
          end;

        end;
      end;
    end;
    // Post the changes to the dataset
    aDataset.Post;
  finally
    Context.Free;
  end;
end;

procedure OpenDBThreadedDataset(aDataset: TDataset; aDatasource: TDataSource; aDoRaise: boolean;
  aCallBackProc: TProc);
begin
  // Create an instance of the TMyThread
  with TDBOpenThread.Create(true, aDataset, aDatasource, aCallBackProc) do
  begin
    DoRaise := aDoRaise;
    FreeOnTerminate := true;
    Start;
  end;
end;

{ TJanuaCustomServerFunctions }

constructor TJanuaServerFunctions.Create(aOwner: TComponent);
begin
  if TJanuaApplicationFactory.TryGetInterface(IJanuaServerFunctions, FServerFunction) then
    try
      FServerFunction.Owner := aOwner
    except
      on e: Exception do
      begin
        WriteError('TJanuaCustomServerFunctions.Create Errore: ', e);
      end;
    end;
end;

{ TJanuaDBNavController }

procedure TJanuaDBNavController.First(Sender: TObject);
begin
  InternalFirst
end;

procedure TJanuaDBNavController.InernalLast;
begin

end;

function TJanuaDBNavController.InternalCheck: boolean;
begin
  if not Assigned(self.FMasterDataset) then
  begin
    JShowError
      ('Attenzione barra non utilizzabile, manca collegamento dati. Segnalate questo errore all''assistenza');
    Result := False
  end
  else
    Result := true;
end;

procedure TJanuaDBNavController.InternalFirst;
begin
  if self.InternalCheck then
    self.FMasterDataset.First;
end;

procedure TJanuaDBNavController.InternalNext;
begin

end;

procedure TJanuaDBNavController.InternalPrev;
begin

end;

procedure TJanuaDBNavController.Last(Sender: TObject);
begin

end;

procedure TJanuaDBNavController.Next(Sender: TObject);
begin

end;

procedure TJanuaDBNavController.Prev(Sender: TObject);
begin

end;

procedure TJanuaDBNavController.SetDetailDataset(const Value: TDataset);
begin
  FDetailDataset := Value;
end;

procedure TJanuaDBNavController.SetMasterDataset(const Value: TDataset);
begin
  FMasterDataset := Value;
end;

{ TJanuaCustomSessionSource }

function TJanuaCustomSessionSource.GetDate: TDAteTime;
begin
  Result := Date();
end;

function TJanuaCustomSessionSource.GetTime: TDAteTime;
begin
  Result := Now();
end;

{ TOpenThread }

procedure TDBOpenThread.OpenThreaded;
begin
  try
    TMonitor.Enter(FaDataset);
    try
      FaDataset.Close;
      FaDataset.Open;
    finally
      TMonitor.Exit(FaDataset);
    end;
  except
    on e: Exception do
      raise Exception.Create(ClassName + '.OpenProcedure Dataset: ' + FaDataset.Name + 'Error: ' + e.ClassName
        + sLineBreak + e.Message);
  end
end;

{ TCustomOpenThread }

constructor TCustomOpenThread.Create(Suspended: boolean; vDataset: TDataset; vDatasource: TDataSource;
  aCallBackProc: TProc);
begin
  inherited Create(Suspended);
  FCallBackProc := aCallBackProc;
  self.FDoRaise := true;
  self.FaDataset := vDataset;
  self.FaDatasource := vDatasource;
end;

procedure TCustomOpenThread.DoHandleException;
begin
  // Cancel the mouse capture    // VCL method .......................
  // if GetCapture <> 0 then SendMessage(GetCapture, WM_CANCELMODE, 0, 0);
  // Now actually show the exception
  // if FException is Exception then
  // Application.ShowException(FException)
  // else
  System.SysUtils.ShowException(FException, nil);
  if self.FaDatasource <> nil then
    self.FaDatasource.Enabled := true;
end;

procedure TCustomOpenThread.Execute;
begin
  inherited;
  FException := nil;
  try
    Guard.CheckNotNull(aDataset, self.ClassName + '.Execute FaDataset is nil');
    // Guard.CheckTrue(Assigned(FOpenProcedure), self.ClassName + '.Execute Open Procedure is nil');
    Synchronize(
      procedure
      begin
        MonitorEnter(aDataset);
        try
          if FaDatasource <> nil then
            FaDatasource.Enabled := False;
          // Esegue la procedura Open Procedure indicata dal Descendat
          OpenThreaded;
          // se ? assegnata una procedura di CallBack la esegue sempre all'interno di Synchronize
          if Assigned(FCallBackProc) then
            FCallBackProc;
          if self.FaDatasource <> nil then
            self.FaDatasource.Enabled := true;
        finally
          MonitorExit(aDataset);
        end;
      end);
  except
    HandleException;
  end;
end;

procedure TCustomOpenThread.HandleException;
begin
  // This function is virtual so you can override it
  // and add your own functionality.
  FException := Exception(ExceptObject);
  try
    // Don't show EAbort messages
    if not(FException is EAbort) then
      Synchronize(DoHandleException);
  finally
    FException := nil;
  end;
end;

procedure TCustomOpenThread.SetaCallBackProc(const Value: TProc);
begin
  FCallBackProc := Value;
end;

procedure TCustomOpenThread.SetaDataset(const Value: TDataset);
begin
  FaDataset := Value;
end;

procedure TCustomOpenThread.SetaDatasource(const Value: TDataSource);
begin
  FaDatasource := Value;
end;

procedure TCustomOpenThread.SetDoRaise(const Value: boolean);
begin
  FDoRaise := Value;
end;

{ TRecDatasetExport }

constructor TRecDatasetExport.Create(aList: TRecFieldDefList; aDataset: TDataset);
begin
  self.FFieldList := aList;
  self.FDataset := aDataset;
end;

function TRecDatasetExport.Generate(aEngine: IJanuaDatasetExportEngine): string;
begin

end;

procedure TRecDatasetExport.SetDataset(const Value: TDataset);
begin
  FDataset := Value;
end;

procedure TRecDatasetExport.SetFieldList(const Value: TRecFieldDefList);
begin
  FFieldList := Value;
end;

function TJanuaServerFunctions.GetServerFunction: IJanuaServerFunctions;
begin
  Result := FServerFunction;
end;

{ TDatasetStringWriter }

class function TDatasetStringWriter.ElaborateDataset(const aDataset: TDataset; const aTemplate: string;
aLogProc: TMessageLogProc): TStringArray;
begin
  if Assigned(aDataset) and aDataset.Active and (aDataset.RecordCount > 0) then
  begin
    var
    i := -1;
    aDataset.First;
    while not aDataset.Eof do
    begin
      Inc(i);
      SetLength(Result, i + 1);
      Result[i] := ElaborateRecord(aDataset, aTemplate, aLogProc);
      aDataset.Next;
    end;
  end;
end;

class function TDatasetStringWriter.ElaborateRecord(const aDataset: TDataset; const aTemplate: string;
aLogProc: TMessageLogProc): string;
var
  lField: TField;
  lProc: boolean;
begin
  Result := aTemplate;
  var
  lLog := Assigned(aLogProc);

  if lLog then
    aLogProc('ElaborateRecord', aDataset.Name, nil);

  for lField in aDataset.Fields do
  begin
    var
    lFieldTag := '$$' + lField.FieldName.ToLower + '$$';
    var
    lPos := Pos(lFieldTag, Result) > 0;
    if lPos then
    begin
      var
      lFieldValue := lField.AsString;
      Result := StringReplace(Result, lFieldTag, lFieldValue, [rfIgnoreCase, rfReplaceAll]);
    end;

    if lLog then
      aLogProc('ElaborateRecord', lFieldTag + IfThen(lPos, ' : found', ' : not found'), nil);

  end;
end;

end.
