unit udmRegisterCARDS;

interface

uses
  System.Classes, DAScript, UniScript;

type
  TdmRegisterCards = class(TDataModule)
    UniScript1: TUniScript;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRegisterCards: TdmRegisterCards;

implementation

{$R *.dfm}

end.
