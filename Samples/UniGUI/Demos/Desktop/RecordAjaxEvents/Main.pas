unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid, uniPanel, uniButton, Vcl.Menus, uniMainMenu;

type
  TMainForm = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniPanel1: TUniPanel;
    UniButton1: TUniButton;
    UniMainMenu1: TUniMainMenu;
    est1: TUniMenuItem;
    Item11: TUniMenuItem;
    SubItem11: TUniMenuItem;
    procedure UniButton1Click(Sender: TObject);
    procedure SubItem11Click(Sender: TObject);
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

procedure TMainForm.SubItem11Click(Sender: TObject);
begin
//
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
//
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
