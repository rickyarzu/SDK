unit Janua.FDAC.Phoenix.Customers;

interface

uses
  System.SysUtils, System.Classes, Janua.FDAC.Phoenix.Model, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.VCLUI.Login, FireDAC.Comp.UI, FireDAC.Phys.IBBase, Data.DB, FireDAC.Comp.Client;

type
  TdmFDACPhoenixCustomers = class(TdmFDACPhoenixModel)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFDACPhoenixCustomers: TdmFDACPhoenixCustomers;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
