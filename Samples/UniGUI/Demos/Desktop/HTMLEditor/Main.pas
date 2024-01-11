//AllFeatures: HTML,HTML Editor,icon-html-tooltips
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniMemo, uniGUIBaseClasses, uniButton, UniHTMLMemo;

type
  TMainForm = class(TUniForm)
    UniMemo1: TUniMemo;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniHTMLMemo1: TUniHTMLMemo;
    procedure UniFormCreate(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  UniHTMLMemo1.ShowToolbar:=not UniHTMLMemo1.ShowToolbar;
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  UniMemo1.Text:=UniHTMLMemo1.Text;
end;

procedure TMainForm.UniButton3Click(Sender: TObject);
begin
  UniHTMLMemo1.Text:=UniMemo1.Text;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniHTMLMemo1.Lines.Text:='<b>HTML</b> <i>formatting</i> <u>is fun...</u><br>';
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
