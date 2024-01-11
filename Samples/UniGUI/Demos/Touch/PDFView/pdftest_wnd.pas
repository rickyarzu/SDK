unit pdftest_wnd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniPanel, uniHTMLFrame, uniURLFrame, unimURLFrame,
  uniButton, uniBitBtn, unimBitBtn, uniToolBar, unimToolbar;

type
  Twndpdf_test = class(TUnimForm)
    UnimToolBar1: TUnimToolBar;
    UnimToolButton1: TUnimToolButton;
    UnimPDFFrame1: TUnimPDFFrame;
    procedure UnimBitBtn1Click(Sender: TObject);
    procedure UnimToolButton1Click(Sender: TObject);
    procedure UnimFormBeforeShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PDfFile : string;
  end;

function wndpdf_test: Twndpdf_test;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule;

function wndpdf_test: Twndpdf_test;
begin
  Result := Twndpdf_test(UniMainModule.GetFormInstance(Twndpdf_test));
end;

procedure Twndpdf_test.UnimBitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure Twndpdf_test.UnimFormBeforeShow(Sender: TObject);
begin
  UnimPDFFrame1.PdfURL := UniServerModule.FilesFolderURL+ PDfFile;
end;

procedure Twndpdf_test.UnimToolButton1Click(Sender: TObject);
begin
  Close;
end;

end.
