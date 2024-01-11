//AllFeatures: URL Frame,HTML,icon-webdesktop
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, UniHTMLFrame, 
  StdCtrls, Buttons, UniBitBtn, UniButton, uniGUIRegClasses,  uniguiclasses,
  UniPanel, uniGUIBaseClasses, uniURLFrame, uniSyntaxEditor;

type
  TMainForm = class(TUniForm)
    UniSyntaxEdit1: TUniSyntaxEdit;
    UniHTMLFrame1: TUniURLFrame;
    UniBitBtn1: TUniBitBtn;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  UniGUIVars, MainModule;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniBitBtn1Click(Sender: TObject);
begin
  UniHTMLFrame1.HTML.Text:=UniSyntaxEdit1.Text;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniSyntaxEdit1.Lines.Text := UniHTMLFrame1.HTML.Text;
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
