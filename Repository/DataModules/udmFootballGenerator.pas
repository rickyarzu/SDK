unit udmFootballGenerator;

interface

uses
  System.SysUtils, System.Classes, udmPgCmsStorage, JOrm.Cms.MainArguments.Intf, JOrm.Cms.Arguments.Intf;

type
  TdmFootballGenerator = class(TDataModule)
  protected
    { Private declarations }
    DMCms: udmPgCmsStorage.TdmPgCmsStorage;
    procedure SetupDM(out ma: IMainArguments; out ar: IArguments);
  public
    procedure CreateDataModule;
    procedure DestroyDataModule;
    procedure SetupArguments(out ma: IMainArguments);
  end;

var
  FMainArguments: IMainArguments;
  dmFootballGenerator: TdmFootballGenerator;

implementation

{$R *.dfm}

uses
  System.SyncObjs, Spring, JOrm.Cms.MainArguments.Impl;

var
  FLock: TCriticalSection;

procedure TdmFootballGenerator.CreateDataModule;
begin
  if not Assigned(DMCms) then
    DMCms := udmPgCmsStorage.TdmPgCmsStorage.Create(nil);
end;

procedure TdmFootballGenerator.DestroyDataModule;
begin
  if Assigned(DMCms) then
    FreeAndNil(DMCms);
end;

procedure TdmFootballGenerator.SetupArguments(out ma: IMainArguments);
begin
  FLock.Acquire;
  if not Assigned(FMainArguments) or (FMainArguments.RecordCount = 0) then
  begin
    CreateDataModule;
    DMCms.OpenMainArguments;
    Assert(DMCms.main_arguments.RecordCount > 0, 'FMainArguments has 0 Records');
    DMCms.main_arguments.First;
    DMCms.Arguments.Open;
    DMCms.Arguments.First;
    if not Assigned(FMainArguments) then
      FMainArguments := TMainArgumentsFactory.CreateRecordset('main_arguments', 'main_arguments') as IMainArguments;
    FMainArguments.CurrentRecord.DBDataset := DMCms.main_arguments;
    FMainArguments.CurrentRecord.RecordSets[0].CurrentRecord.DBDataset := DMCms.Arguments;
    FMainArguments.LoadFromDataset;
    // Test.LoadFromDataset(, []);
    Assert(FMainArguments.RecordCount > 0, 'FMainArguments has 0 Records');
    DestroyDataModule;
  end;
  ma := TMainArgumentsFactory.CreateRecordset('main_arguments', 'main_arguments') as IMainArguments;
  ma.Assign(FMainArguments);
  Assert(ma.RecordCount > 0, 'MainArguments has 0 Records');
  FLock.Release;
end;

procedure TdmFootballGenerator.SetupDM(out ma: IMainArguments; out ar: IArguments);
begin
  try
    SetupArguments(ma);
    ar := ma.MainArgument.Arguments;
    ma.First;
    while not ma.Eof do
    begin
      ma.MainArgument.Selected.AsBoolean := (ma.Main_argument_id.AsInteger = 1);
      ma.Post;
      ma.Next;
    end;
  except
    on e: exception do
      raise exception.Create('TdmFootballGenerator.SetupDM ' + e.Message);
  end;
end;

initialization

FMainArguments := TMainArgumentsFactory.CreateRecordset('main_arguments', 'main_arguments') as IMainArguments;
FLock := TCriticalSection.Create;

end.
