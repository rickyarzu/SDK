unit Janua.Phoenix.VCL.dlgModificaStatino;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, FrameStatino, VCL.ExtCtrls, VCL.StdCtrls,
  // ZLibraries
  Globale;

type
  TdlgVCLModificaStatino = class(TForm)
    pnlBottom: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    FrameStatino: TFRAME_STATINO;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FNodoStatino: TNodoStatino;
    FUltimoFrame: TFrame;
    { Private declarations }
  public
    procedure SetUp;
  public
    { Public declarations }
  end;

var
  dlgVCLModificaStatino: TdlgVCLModificaStatino;

implementation

{$R *.dfm}
{ TdlgVCLModificaStatino }

procedure TdlgVCLModificaStatino.FormCreate(Sender: TObject);
begin
  SetUp
end;

procedure TdlgVCLModificaStatino.FormDestroy(Sender: TObject);
begin
  if Assigned(FNodoStatino) then
    FNodoStatino.Free;
end;

procedure TdlgVCLModificaStatino.SetUp;
begin
  TFiBConfig.QRY_GENERIC.ExecQuery;
  FNodoStatino := TNodoStatino.Create(FrameStatino, TABLEStatini, FIELDSStatini, TFiBConfig.QRY_GENERIC);
end;

end.
