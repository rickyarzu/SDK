//AllFeatures: Ui Mask,Basic Demo,icon-history
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, Grids, DBGrids, uniDBGrid,
  UniScreenMask, ExtCtrls, UniPanel, StdCtrls, UniButton, uniGUIRegClasses,  uniguiclasses,
  UniBasicGrid, uniGUIBaseClasses;

type
  TMainForm = class(TUniForm)
    UniPanel1: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    UniButton4: TUniButton;
    UniScreenMask4: TUniScreenMask;
    UniScreenMask2: TUniScreenMask;
    UniButton2: TUniButton;
    UniScreenMask1: TUniScreenMask;
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
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

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  Sleep(3000);
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
