unit udmVCLPgFootballViewModel;

interface

uses
  System.SysUtils, System.Classes, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan,
  Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Controls;


type
  TdmVCLPgFootballViewModel = class(TDataModule)
    actManagerFootball: TActionManager;
    actPlayerOrigins: TAction;
    actPlayerOriginsAllSeasons: TAction;
    ImageListStd: TImageList;
    ImageListStdDisabled: TImageList;
    ImageListLargeImg: TImageList;
    ImageListLargeImgDisabled: TImageList;
    actExportCareer: TAction;
    procedure actPlayerOriginsExecute(Sender: TObject);
    procedure actPlayerOriginsAllSeasonsExecute(Sender: TObject);
  private
    { Private declarations }
    // procedure ExportDataset(
  public
    { Public declarations }
  end;

var
  dmVCLPgFootballViewModel: TdmVCLPgFootballViewModel;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Spring, udmFootballPostgres;

{$R *.dfm}

procedure TdmVCLPgFootballViewModel.actPlayerOriginsAllSeasonsExecute(Sender: TObject);
begin
  dmFootballPostgres.qrySeasons.First;
  while not dmFootballPostgres.qrySeasons.Eof do
  begin
    dmFootballPostgres.SetupPlayerOriginTeamID;
    dmFootballPostgres.qrySeasons.Next;
  end;
end;

procedure TdmVCLPgFootballViewModel.actPlayerOriginsExecute(Sender: TObject);
begin
  dmFootballPostgres.SetupPlayerOriginTeamID;
end;



end.
