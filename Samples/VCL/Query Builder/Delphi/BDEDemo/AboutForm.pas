unit AboutForm;

interface

uses
  Windows, System.SysUtils, VCL.Forms, VCL.Graphics, VCL.Controls, System.Classes, VCL.ExtCtrls, VCL.StdCtrls;

type
  TfmAbout = class(TForm)
    paButton: TPanel;
    paClient: TPanel;
    buOK: TButton;
    imLogo: TImage;
    Image1: TImage;
    lbCompanyHomePageTag: TLabel;
    lbCompanyHomePage: TLabel;
    lbProductHomePageTag: TLabel;
    lbProductHomePage: TLabel;
    lbVerInfo: TLabel;
    lbCopyRight: TLabel;
    Panel1: TPanel;
    laWarn: TLabel;
    laDevelopers: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure laURLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowAboutBox;

implementation

uses ShellApi;

procedure ShowAboutBox;
var
  fmAbout: TfmAbout;
begin
  fmAbout := TfmAbout.Create(nil);
  try
    fmAbout.ShowModal();
  finally
    fmAbout.Free();
  end;
end;

{$R *.DFM}

procedure TfmAbout.FormCreate(Sender: TObject);
begin
  imLogo.Picture.Icon.ReleaseHandle();
  imLogo.Picture.Icon.Handle := LoadIcon(HInstance, 'MAINICON');
end;

procedure TfmAbout.laURLClick(Sender: TObject);
begin
  ShellExecute(Application.Handle, nil, PChar((Sender as TLabel).Caption), nil, nil, SW_SHOWNORMAL);
end;

end.
