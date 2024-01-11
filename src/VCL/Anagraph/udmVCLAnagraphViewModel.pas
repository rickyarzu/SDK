unit udmVCLAnagraphViewModel;

interface

uses
  System.SysUtils, System.Classes, Data.DB, udmJanuaPgAnagraphStorage, Janua.Core.Types;

type
  TdmVCLAnagraphViewModel = class(TDataModule)
    dsAnagraphs: TDataSource;
    dsGroups: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    FSearchText: string;
    FJanuaPgAnagraphStorage: TdmJanuaPgAnagraphStorage;
    procedure SetSearchText(const Value: string);
  public
    { Public declarations }
    procedure OpenAll;
    procedure StartSearch;
    property SearchText: string read FSearchText write SetSearchText;
  end;

var
  dmVCLAnagraphViewModel: TdmVCLAnagraphViewModel;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdmVCLAnagraphViewModel }

procedure TdmVCLAnagraphViewModel.DataModuleCreate(Sender: TObject);
begin
  FJanuaPgAnagraphStorage := TdmJanuaPgAnagraphStorage.Create(self);
  dsGroups.Dataset := FJanuaPgAnagraphStorage.qryGroups;
  dsAnagraphs.DataSet := FJanuaPgAnagraphStorage.qryAnagraphs;
end;

procedure TdmVCLAnagraphViewModel.OpenAll;
begin
  dsGroups.Dataset.Open;
end;

procedure TdmVCLAnagraphViewModel.SetSearchText(const Value: string);
begin
  FSearchText := Value;
end;

procedure TdmVCLAnagraphViewModel.StartSearch;
begin

end;

end.
