//AllFeatures: Download,Download - 2,icon-soap-grid
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniGUIBaseClasses, uniButton;

type
  TMainForm = class(TUniForm)
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ServerModule;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  UniSession.SendFile(UniServerModule.FilesFolderPath+ 'unipdf.pdf');
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  UniSession.SendFile(UniServerModule.FilesFolderPath+ 'unidoc.doc');
end;

procedure TMainForm.UniButton3Click(Sender: TObject);
var
  S : TStringStream;
begin
  S:=TStringStream.Create('Some text here....');
  try
    UniSession.SendStream(S, 'Mydoc.txt');
  finally
    S.Free;
  end;
end;

procedure TMainForm.UniButton4Click(Sender: TObject);
begin
  UniSession.SendFile(UniServerModule.FilesFolderPath+ 'unidoc.doc', 'NewName.doc');
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
