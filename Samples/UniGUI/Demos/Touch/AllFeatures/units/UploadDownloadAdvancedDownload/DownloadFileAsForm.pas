unit DownloadFileAsForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniButton, unimButton, uniGUIBaseClasses, uniEdit, unimEdit, uniMultiItem,
  unimSelect, ServerModule;

type
  TDownloadFileAsForm1 = class(TUnimForm)
    UnimEdit1: TUnimEdit;
    UnimButton1: TUnimButton;
    UnimSelect1: TUnimSelect;
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    FileName, FileType: string;
    { Public declarations }
  end;

function DownloadFileAsForm1: TDownloadFileAsForm1;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function DownloadFileAsForm1: TDownloadFileAsForm1;
begin
  Result := TDownloadFileAsForm1(UniMainModule.GetFormInstance(TDownloadFileAsForm1));
end;

procedure TDownloadFileAsForm1.UnimButton1Click(Sender: TObject);
begin
  UniSession.SendFile(UniServerModule.FilesFolderPath+ FileName+'.'+FileType, UnimEdit1.Text+'.'+UnimSelect1.Text);
  Close;
end;

procedure TDownloadFileAsForm1.UnimFormCreate(Sender: TObject);
begin
  UnimSelect1.ItemIndex := UnimSelect1.Items.IndexOf(FileType);

end;

end.
