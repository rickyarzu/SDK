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
    { Public declarations }
  end;

var
  dmFootballGenerator: TdmFootballGenerator;

implementation

uses
  JOrm.Cms.MainArguments.Impl;

procedure TdmFootballGenerator.SetupDM(out ma: IMainArguments; out ar: IArguments);
begin
  DMCms := udmPgCmsStorage.TdmPgCmsStorage.Create(nil);
  try
    DMCms.OpenMainArguments;
    DMCms.main_arguments.First;
    DMCms.Arguments.Open;
    DMCms.Arguments.First;
    ma := TMainArgumentsFactory.CreateRecordset('main_arguments', 'main_arguments') as IMainArguments;;
    ma.CurrentRecord.DBDataset := DMCms.main_arguments;
    ma.CurrentRecord.RecordSets[0].CurrentRecord.DBDataset := DMCms.Arguments;
    ma.LoadFromDataset;
  finally
    DMCms.Free;
  end;
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
