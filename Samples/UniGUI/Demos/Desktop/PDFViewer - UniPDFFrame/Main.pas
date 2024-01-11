//AllFeatures: PDF Frame,UniPDFFrame,icon-framed-panels
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniURLFrame, uniGUIBaseClasses,
  uniMultiItem, uniListBox, ServerModule, Unit1, uniButton, uniPanel;

type
  TMainForm = class(TUniForm)
    UniListBox1: TUniListBox;
    UniButton2: TUniButton;
    UniPanel1: TUniPanel;
    UniPDFFrame1: TUniPDFFrame;
    procedure UniButton2Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniListBox1Change(Sender: TObject);
  private
      FUrl : string;
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  UniForm1.Caption := UniListBox1.Items[UniListBox1.ItemIndex];
  UniForm1.UniPDFFrame1.PdfURL := FUrl+UniListBox1.Items[UniListBox1.ItemIndex];
  UniForm1.Show();
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
var
  FFolder: string;

  Sr : TSearchRec;
begin
  UniListBox1.Items.Clear;
  FFolder := UniServerModule.FilesFolderPath + 'PDFs'+ PathDelim;
  FUrl := UniServerModule.FilesFolderURL + 'PDFs/';
  if SysUtils.FindFirst(FFolder+'*.pdf', faAnyFile, Sr) = 0 then
  begin
    repeat
      if Sr.Attr and faDirectory = 0 then
        UniListBox1.Items.Add(Sr.Name);
    until SysUtils.FindNext(sr) <> 0;
    SysUtils.FindClose(sr);
  end;

  if UniListBox1.Items.Count>0 then
  begin
    UniListBox1.ItemIndex := 0;
    UniPDFFrame1.PdfURL := FUrl+UniListBox1.Items[0];
  end;
end;

procedure TMainForm.UniListBox1Change(Sender: TObject);
begin
  if UniListBox1.ItemIndex > -1 then
    UniPDFFrame1.PdfURL := FUrl+UniListBox1.Items[UniListBox1.ItemIndex];
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
