unit udmJanuaCoreViewModel;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf,
  Janua.Core.DataModule;

type
  TdmJanuaCoreViewModel = class(TJanuaCoreDataModule, IJanuaDataModule, IJanuaBindable)
    dsMaster: TDataSource;
    dsDetail: TDataSource;
    dsSubDetail: TDataSource;
  private
    FActions: IJanuaActionList;

    procedure SetActions(const Value: IJanuaActionList); { Private declarations }
  public
    { Public declarations }
    property Actions: IJanuaActionList read FActions write SetActions;
  end;

var
  dmJanuaCoreViewModel: TdmJanuaCoreViewModel;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

procedure TdmJanuaCoreViewModel.SetActions(const Value: IJanuaActionList);
begin

end;

end.
