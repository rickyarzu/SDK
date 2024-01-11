//AllFeatures: HTML,HTML5 Audio,icon-html-tooltips
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniHTMLFrame,
  uniButton, uniSyntaxEditor;

type
  TMainForm = class(TUniForm)
    UniHTMLFrame1: TUniHTMLFrame;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniHTMLFrame2: TUniHTMLFrame;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    UniSyntaxEdit1: TUniSyntaxEdit;
    UniSyntaxEdit2: TUniSyntaxEdit;
    UniButton5: TUniButton;
    UniButton6: TUniButton;
    UniSyntaxEdit3: TUniSyntaxEdit;
    UniHTMLFrame3: TUniHTMLFrame;
    procedure UniButton4Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniButton5Click(Sender: TObject);
  private
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
  UniSession.SendResponse('audio2.load(); audio2.play();');
end;

procedure TMainForm.UniButton4Click(Sender: TObject);
begin
  UniSession.SendResponse('var ael=document.getElementById("player2");ael.load();ael.play()');
end;

procedure TMainForm.UniButton5Click(Sender: TObject);
begin
  UniSession.SendResponse('var ael=document.getElementById("player3");ael.load();ael.play()');
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniSyntaxEdit1.Text:=UniHTMLFrame1.HTML.Text;
  UniSyntaxEdit2.Text:=UniHTMLFrame2.HTML.Text;
  UniSyntaxEdit3.Text:=UniHTMLFrame3.HTML.Text;
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
