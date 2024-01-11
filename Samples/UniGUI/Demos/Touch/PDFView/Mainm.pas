unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniButton, uniBitBtn, unimBitBtn, uniMultiItem, unimList;

type
  TMainmForm = class(TUnimForm)
    UnimBitBtn3: TUnimBitBtn;
    UnimList1: TUnimList;
    procedure UnimBitBtn3Click(Sender: TObject);
    procedure UnimFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, pdftest_wnd, ServerModule;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UnimBitBtn3Click(Sender: TObject);
var
  form_pdf: Twndpdf_test;
begin
  if UnimList1.ItemIndex >= 0 then
  begin
    form_pdf := Twndpdf_test.Create(UniApplication);
    form_pdf.PDfFile := 'pdfs/' + UnimList1.Text;
    form_pdf.Show;
  end;
end;

procedure TMainmForm.UnimFormCreate(Sender: TObject);
var
  FFolder : string;
  Sr : TSearchRec;
begin
  UnimList1.Items.Clear;
  FFolder := UniServerModule.FilesFolderPath+'PDFs\';
  if SysUtils.FindFirst(FFolder+'*.pdf', faAnyFile, Sr) = 0 then
  begin
    repeat
      if Sr.Attr and faDirectory = 0 then
        UnimList1.Items.Add(Sr.Name);
    until SysUtils.FindNext(sr) <> 0;
    SysUtils.FindClose(sr);
  end;

  if UnimList1.Items.Count > 0 then
    UnimList1.ItemIndex := 0;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
