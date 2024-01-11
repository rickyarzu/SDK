unit uframeNavigator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ImgList, AdvGlowButton, Data.DB,
  AdvAppStyler, Vcl.ExtCtrls, Shader;

type
  TFrame3 = class(TFrame)
    ImageList: TImageList;
    ImageListHot: TImageList;
    ImageListDisabled: TImageList;
    btnFirst: TDBAdvGlowButton;
    DataSource: TDataSource;
    btnPrior: TDBAdvGlowButton;
    btnNext: TDBAdvGlowButton;
    btnLast: TDBAdvGlowButton;
    AdvFormStyler1: TAdvFormStyler;
    btnNew: TDBAdvGlowButton;
    btnEdit: TDBAdvGlowButton;
    btnSave: TDBAdvGlowButton;
    btnDelete: TDBAdvGlowButton;
    btnRefresh: TDBAdvGlowButton;
    pnlNavigator: TShader;
    btnCancel: TDBAdvGlowButton;
    btnPrint: TDBAdvGlowButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
