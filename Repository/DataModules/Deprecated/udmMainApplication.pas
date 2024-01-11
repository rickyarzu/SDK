unit udmMainApplication;

interface

uses
  System.SysUtils, System.Classes, Data.DB;

type
  TdmMainApplication = class(TDataModule)
    dsMaster: TDataSource;
    dsDetail: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMainApplication: TdmMainApplication;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
