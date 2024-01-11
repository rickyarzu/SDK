unit udlgJanuaWizardModel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  System.ImageList,

  // VCL Controls
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ImgList,
  // TMs Controls
  Shader, AdvAppStyler, AdvGlowButton,

  // Janua Classes and Controls
  Janua.Core.Customcontrols, Janua.Core.Classes, Janua.Controls.Dialogs.Intf, AdvStyleIF;

type
  TdlgJanuaWizardModel = class(TForm)
    pgWizard: TPageControl;
    Shader1: TPanel;
    Shader2: TPanel;
    Shader3: TPanel;
    Shader4: TPanel;
    btnPrev: TAdvGlowButton;
    btnNext: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    ImageList1: TImageList;
    btnOk: TAdvGlowButton;
    ImageListHot: TImageList;
    ImageListDisabled: TImageList;
    procedure btnPrevClick(Sender: TObject);
    procedure pgWizardChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
  private
    FJanuaDialogResult: TJanuaDialogResult;
    procedure SetJanuaDialogResult(const Value: TJanuaDialogResult);
    { Private declarations }
  public
    { Public declarations }
    procedure NextPage(Sender: TObject); virtual;
    procedure Confirm(Sender: TObject); virtual;
    procedure Cancel(Sender: TObject); Virtual;
    procedure PrevPage(Sender: TObject); Virtual;
    property JanuaDialogResult: TJanuaDialogResult read FJanuaDialogResult write SetJanuaDialogResult;

  end;

var
  dlgJanuaWizardModel: TdlgJanuaWizardModel;

implementation

uses Janua.Core.Functions;

{$R *.dfm}
{ TdlgJanuaWizardModel }

procedure TdlgJanuaWizardModel.btnCancelClick(Sender: TObject);
begin
  self.Cancel(Sender);
end;

procedure TdlgJanuaWizardModel.btnNextClick(Sender: TObject);
begin
  self.NextPage(Sender);
end;

procedure TdlgJanuaWizardModel.btnOkClick(Sender: TObject);
begin
  self.Confirm(Sender);
end;

procedure TdlgJanuaWizardModel.btnPrevClick(Sender: TObject);
begin
  self.NextPage(Sender);
end;

procedure TdlgJanuaWizardModel.Confirm(Sender: TObject);
begin
  // codice di conferma della Form di base metto Modal Result ad mrOk e chiudo

  self.FJanuaDialogResult := TJanuaDialogResult.jdrOk;
  self.Close;
end;

procedure TdlgJanuaWizardModel.FormShow(Sender: TObject);
begin
  if self.pgWizard.PageCount > 0 then
    pgWizard.ActivePage := pgWizard.Pages[0];
  btnPrev.Enabled := False;
  btnNext.Enabled := True;
  btnOk.Enabled := False;
  btnCancel.Enabled := True;
end;

procedure TdlgJanuaWizardModel.NextPage;
begin
  if not self.pgWizard.ActivePageIndex = self.pgWizard.PageCount - 1 then
  begin
    pgWizard.SelectNextPage(True);
  end;
end;

procedure TdlgJanuaWizardModel.pgWizardChange(Sender: TObject);
begin
  self.btnOk.Enabled := (pgWizard.ActivePage.TabIndex = pgWizard.PageCount - 1);
  self.btnNext.Enabled := not(self.btnOk.Enabled);
  btnPrev.Enabled := not(pgWizard.ActivePage = pgWizard.Pages[0]);
end;

procedure TdlgJanuaWizardModel.PrevPage(Sender: TObject);
begin
  pgWizard.SelectNextPage(False);
end;

procedure TdlgJanuaWizardModel.SetJanuaDialogResult(const Value: TJanuaDialogResult);
begin
  FJanuaDialogResult := Value;
end;

procedure TdlgJanuaWizardModel.Cancel(Sender: TObject);
begin
  self.FJanuaDialogResult := TJanuaDialogResult.jdrCancel;
  self.Close;
end;

end.
