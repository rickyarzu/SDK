unit Janus.VCL.frmMDCModel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, AdvMenus, Janua.VCL.TMSStyles,
  Janua.Core.CustomControls, Janua.VCL.Dialogs, AdvOfficeHint, AdvAppStyler, Janua.Core.Classes,
  AdvOfficePager, AdvOfficePagerStylers;

type
  TfrmMdcModel = class(TForm)
    AdvMainMenu1: TAdvMainMenu;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    JanuaDialog1: TJanuaDialog;
    AdvFormStyler1: TAdvFormStyler;
    AdvOfficeHint1: TAdvOfficeHint;
    JanuaDialogInteger1: TJanuaDialogInteger;
    JanuaDialogSostituzione: TJanuaDialogInteger;
    JanuaFormStyler1: TJanuaFormStyler;
    BalloonHint1: TBalloonHint;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMdcModel: TfrmMdcModel;

implementation

{$R *.dfm}

end.
