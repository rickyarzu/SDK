unit Janua.VCL.frmMDCModel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, AdvMenus, Janua.VCL.TMSStyles,
  Janua.Core.CustomControls, Janua.VCL.Dialogs, AdvOfficeHint, AdvAppStyler, Janua.Core.Classes,
  AdvOfficePager, AdvOfficePagerStylers, Vcl.ImgList;

type
  TfrmJanuaMdcModel = class(TForm)
    mnuMDC: TAdvMainMenu;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    JanuaDialog1: TJanuaDialog;
    AdvFormStyler1: TAdvFormStyler;
    AdvOfficeHint1: TAdvOfficeHint;
    JanuaDialogInteger1: TJanuaDialogInteger;
    JanuaDialogSostituzione: TJanuaDialogInteger;
    JanuaFormStyler1: TJanuaFormStyler;
    BalloonHint1: TBalloonHint;
    mnuMDCAppTitle: TMenuItem;
    CloseForm1: TMenuItem;
    ImageList: TImageList;
    ImageListHot: TImageList;
    ImageListDisabled: TImageList;
    mnuParentDivider1: TMenuItem;

  private
    FJanuaStyleManager: TJanuaTMSStyleManager;
    FAdvAppStyler: TAdvAppStyler;
    procedure SetAdvAppStyler(const Value: TAdvAppStyler);
    procedure SetJanuaStyleManager(const Value: TJanuaTMSStyleManager);
    { Private declarations }
  public
    { Public declarations }
    property JanuaStyleManager: TJanuaTMSStyleManager read FJanuaStyleManager write SetJanuaStyleManager;
    property AdvAppStyler: TAdvAppStyler read FAdvAppStyler write SetAdvAppStyler;
  end;

var
  frmJanuaMdcModel: TfrmJanuaMdcModel;

implementation

{$R *.dfm}

{ TfrmJanuaMdcModel }

procedure TfrmJanuaMdcModel.SetAdvAppStyler(const Value: TAdvAppStyler);
begin
  FAdvAppStyler := Value;
  self.AdvFormStyler1.AppStyle := FAdvAppStyler;
end;

procedure TfrmJanuaMdcModel.SetJanuaStyleManager(const Value: TJanuaTMSStyleManager);
begin
  FJanuaStyleManager := Value;
  self.JanuaFormStyler1.JanuaStyleManager := FJanuaStyleManager;
end;

end.
