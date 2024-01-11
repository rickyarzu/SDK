unit SendFileAsForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniMultiItem, unimSelect, uniEdit, unimEdit, uniGUIBaseClasses, uniButton,
  unimButton, ServerModule;

type
  TUniSendFileAs = class(TUnimForm)
    UnimButton1: TUnimButton;
    UnimEdit1: TUnimEdit;
    UnimSelect1: TUnimSelect;
    procedure UnimFormCreate(Sender: TObject);
    procedure UnimButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    FileName, FileType: string;
    { Public declarations }
  end;

function UniSendFileAs: TUniSendFileAs;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UniSendFileAs: TUniSendFileAs;
begin
  Result := TUniSendFileAs(UniMainModule.GetFormInstance(TUniSendFileAs));
end;

procedure TUniSendFileAs.UnimButton1Click(Sender: TObject);
begin
  UniSession.SendFile(UniServerModule.FilesFolderPath+ FileName+'.'+FileType, UnimEdit1.Text+'.'+UnimSelect1.Text);
  Close;
end;

procedure TUniSendFileAs.UnimFormCreate(Sender: TObject);
begin
  UnimSelect1.ItemIndex := UnimSelect1.Items.IndexOf(FileType);
end;

end.
