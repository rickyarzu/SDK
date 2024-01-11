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
  end;

var
  dmFootballGenerator: TdmFootballGenerator;

implementation

uses
  JOrm.Cms.MainArguments.Impl;

procedure TdmFootballGenerator.CreateDataModule;
begin
  DMCms := udmPgCmsStorage.TdmPgCmsStorage.Create(nil);
end;

procedure TdmFootballGenerator.DestroyDataModule;
begin
  DMCms.Free;
end;

procedure TdmFootballGenerator.SetupDM(out ma: IMainArguments; out ar: IArguments);
begin
  DMCms.OpenMainArguments;
  DMCms.main_arguments.First;
  DMCms.Arguments.Open;
  DMCms.Arguments.First;
  ma := TMainArgumentsFactory.CreateRecordset('main_arguments', 'main_arguments') as IMainArguments;;
  ma.CurrentRecord.DBDataset := DMCms.main_arguments;
  ma.CurrentRecord.RecordSets[0].CurrentRecord.DBDataset := DMCms.Arguments;
  ma.LoadFromDataset;
  // Test.LoadFromDataset(, []);
  Assert(ma.RecordCount > 0, 'Test has 0 Records');
  ar := ma.MainArgument.Arguments;
  ma.First;
  while not ma.Eof do
  begin
    ma.MainArgument.Selected := (ma.Main_argument_id.AsInteger = 1);
    ma.Next;
  end;

end;

{$R *.dfm}

end.
