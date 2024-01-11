unit frameVCLAnagraphSimple;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TframVCLAnagraphShort = class(TFrame)
    lbCompanyName: TLabel;
    lbStreetAddress: TLabel;
    edCompanyName: TEdit;
    edCompanyAddress: TEdit;
    edAddressNumber: TEdit;
    edTown: TEdit;
    edStateProvince: TEdit;
    edPostalCode: TEdit;

    lbNumber: TLabel;
    lbPostalCode: TLabel;
    lbTown: TLabel;
    lbStateProvince: TLabel;
    btnSearchAnagraph: TButton;
    btnEditAnagraph: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
