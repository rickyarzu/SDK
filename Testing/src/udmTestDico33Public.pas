unit udmTestDico33Public;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udmPublic, Data.DB, Datasnap.DBClient, Datasnap.Provider, Uni, MemDS,
  DBAccess;

type
  TdmDico33Public = class(TdmPublic)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDico33Public: TdmDico33Public;

implementation

{$R *.dfm}

end.
