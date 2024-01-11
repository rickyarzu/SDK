//AllFeatures: Forms,Form With Parent 3,icon-layout-form
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses,
  uniPanel, Unit1, Unit2, Unit3, Unit4, Unit5, Menus, uniMainMenu, uniStatusBar;

type
  TMainForm = class(TUniForm)
    UniContainerPanel1: TUniContainerPanel;
    UniContainerPanel2: TUniContainerPanel;
    UniContainerPanel3: TUniContainerPanel;
    UniContainerPanel4: TUniContainerPanel;
    UniContainerPanel5: TUniContainerPanel;
    UniContainerPanel6: TUniContainerPanel;
    UniMainMenu1: TUniMainMenu;
    ChangeColor1: TUniMenuItem;
    UniForm11: TUniMenuItem;
    UniForm21: TUniMenuItem;
    UniForm31: TUniMenuItem;
    UniForm41: TUniMenuItem;
    UniForm51: TUniMenuItem;
    UniStatusBar1: TUniStatusBar;
    procedure UniFormBeforeShow(Sender: TObject);
    procedure UniForm11Click(Sender: TObject);
    procedure UniForm21Click(Sender: TObject);
    procedure UniForm31Click(Sender: TObject);
    procedure UniForm41Click(Sender: TObject);
    procedure UniForm51Click(Sender: TObject);
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



procedure TMainForm.UniForm11Click(Sender: TObject);
begin
  UniForm1.Color := RGB(Random(255), Random(255), Random(255));
  UniStatusBar1.Panels.Items[0].Text := UniForm1.Name + '''s color is '+ ColorToString(UniForm1.Color);
end;

procedure TMainForm.UniForm21Click(Sender: TObject);
begin
   UniForm2.Color := RGB(Random(255), Random(255), Random(255));
   UniStatusBar1.Panels.Items[0].Text := UniForm2.Name + '''s color is '+ ColorToString(UniForm2.Color);
end;

procedure TMainForm.UniForm31Click(Sender: TObject);
begin
  UniForm3.Color := RGB(Random(255), Random(255), Random(255));
  UniStatusBar1.Panels.Items[0].Text := UniForm3.Name + '''s color is '+ ColorToString(UniForm3.Color);
end;

procedure TMainForm.UniForm41Click(Sender: TObject);
begin
  UniForm4.Color := RGB(Random(255), Random(255), Random(255));
  UniStatusBar1.Panels.Items[0].Text := UniForm4.Name + '''s color is '+ ColorToString(UniForm4.Color);
end;

procedure TMainForm.UniForm51Click(Sender: TObject);
begin
  UniForm5.Color := RGB(Random(255), Random(255), Random(255));
  UniStatusBar1.Panels.Items[0].Text := UniForm5.Name + '''s color is '+ ColorToString(UniForm5.Color);
end;

procedure TMainForm.UniFormBeforeShow(Sender: TObject);
begin
  UniForm1.Parent := UniContainerPanel1;
  UniForm1.Show();

  UniForm2.Parent := UniContainerPanel4;
  UniForm2.Show();

  UniForm3.Parent := UniContainerPanel5;
  UniForm3.Show();

  UniForm4.Parent := UniContainerPanel6;
  UniForm4.Show();

  UniForm5.Parent := UniContainerPanel2;
  UniForm5.Show();

end;

initialization
  RegisterAppFormClass(TMainForm);

end.
