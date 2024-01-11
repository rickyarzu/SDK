unit udmAnagraphHealth;

interface

uses
  System.SysUtils, System.Classes,



  // inherited from
  udmJanuaPostgresModel;

type
  TDdmAnagraphHealth= class(TdmJanuaPostgresModel)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAnagraphHealth: TDdmAnagraphHealth;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
