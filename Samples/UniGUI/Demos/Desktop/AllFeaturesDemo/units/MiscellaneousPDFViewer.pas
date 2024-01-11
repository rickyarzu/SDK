// PDF Viewer = Miscellaneous
unit MiscellaneousPDFViewer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniURLFrame, uniMultiItem, uniListBox, uniButton,
  uniGUIBaseClasses, uniPanel, ServerModule, pdfform;

type
  TUniMiscellaneousPDFViewer = class(TUniFrame)
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniButton1: TUniButton;
    UniListBox1: TUniListBox;
    UniURLFrame1: TUniURLFrame;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniListBox1Change(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
    FUrl : string;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniMiscellaneousPDFViewer.UniButton1Click(Sender: TObject);
begin
  pdfform.UniPDFForm.Caption := UniListBox1.Items[UniListBox1.ItemIndex];
  UniPDFForm.UniURLFrame1.URL := FUrl+UniListBox1.Items[UniListBox1.ItemIndex];
  UniPDFForm.Show();
end;

procedure TUniMiscellaneousPDFViewer.UniFrameCreate(Sender: TObject);
var
  FFolder: string;
  Sr : TSearchRec;
begin
  UniListBox1.Items.Clear;
  FFolder := UniServerModule.FilesFolderPath+'PDFs\';
  FUrl := UniServerModule.FilesFolderURL+'pdfs/';

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
    UniURLFrame1.URL := FUrl + UniListBox1.Items[0];
  end;
end;

procedure TUniMiscellaneousPDFViewer.UniListBox1Change(Sender: TObject);
begin
  if UniListBox1.ItemIndex > -1 then
    UniURLFrame1.URL := FUrl + UniListBox1.Items[UniListBox1.ItemIndex];
end;

initialization
  RegisterClass(TUniMiscellaneousPDFViewer);
end.
