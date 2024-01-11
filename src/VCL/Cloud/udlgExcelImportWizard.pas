unit udlgExcelImportWizard;

interface

uses

  // System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  System.ImageList,

  // Vcl
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ImgList, Vcl.ComCtrls, Vcl.ExtCtrls,

  // Tms
  AdvAppStyler, AdvGlowButton, Shader,

  // Inherited
  udlgJanuaWizardModel,

  // Janua
  Janua.Vcl.Excel, Janua.Core.Functions, Vcl.StdCtrls, AdvGroupBox, AdvOfficeButtons, HTMLText;

type
  TdlgExcelImportWizard = class(TdlgJanuaWizardModel)
    TabSelectImportColumns: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    rgRowHeader: TAdvOfficeRadioGroup;
    HTMLStaticText1: THTMLStaticText;
  private
    FJanuaVCLExcelImport: TJanuaVCLExcel;
    procedure SetJanuaVCLExcelImport(const Value: TJanuaVCLExcel);
    procedure CheckImportSettings;
    { Private declarations }
  public
    { Public declarations }
        procedure NextPage(Sender: TObject); override;
    procedure Confirm(Sender: TObject);  override;
    procedure Cancel(Sender: TObject); override;
    procedure PrevPage(Sender: TObject); override;
    property JanuaVCLExcelImport: TJanuaVCLExcel read FJanuaVCLExcelImport
      write SetJanuaVCLExcelImport;
  end;

var
  dlgExcelImportWizard: TdlgExcelImportWizard;

implementation

{$R *.dfm}
{ TdlgJanuaWizardModel1 }

procedure TdlgExcelImportWizard.Cancel(Sender: TObject);
begin
  inherited;

end;

procedure TdlgExcelImportWizard.CheckImportSettings;
begin

end;

procedure TdlgExcelImportWizard.Confirm(Sender: TObject);
begin
  inherited;

end;

procedure TdlgExcelImportWizard.NextPage(Sender: TObject);
begin
  inherited;
end;

procedure TdlgExcelImportWizard.PrevPage(Sender: TObject);
begin
  inherited;

end;

procedure TdlgExcelImportWizard.SetJanuaVCLExcelImport(const Value: TJanuaVCLExcel);
begin
  FJanuaVCLExcelImport := Value;
end;

end.
