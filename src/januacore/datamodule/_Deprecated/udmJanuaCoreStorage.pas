unit udmJanuaCoreStorage;

interface

uses
  System.SysUtils, System.Classes;

type
  TdmJanuaCoreStorage = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmJanuaCoreStorage: TdmJanuaCoreStorage;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

end.
