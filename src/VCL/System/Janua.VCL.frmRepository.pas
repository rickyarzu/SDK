unit Janua.VCL.frmRepository;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls;

type
  TfrmVCLRepositoryMetadata = class(TForm)
    pgRepository: TPageControl;
    tsDBMetaData: TTabSheet;
    tsOrmEntities: TTabSheet;
    TabSheet3: TTabSheet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLRepositoryMetadata: TfrmVCLRepositoryMetadata;

implementation

{$R *.dfm}

end.
