unit Janua.Interbase.dmModel;

interface

uses
  System.SysUtils, System.Classes, UniProvider, InterBaseUniProvider, Data.DB, DBAccess, Uni,
  Janua.Unidac.Connection;

type
  TdmJanuaInterbaseModel = class(TDataModule)
    JanuaUniConnection1: TJanuaUniConnection;
    InterBaseUniProvider1: TInterBaseUniProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmJanuaInterbaseModel: TdmJanuaInterbaseModel;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
