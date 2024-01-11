unit udmVCLViewModel;

interface

uses
  System.SysUtils, System.Classes, Data.DB;

type
  TdmVCLViewModel = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmVCLViewModel: TdmVCLViewModel;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
