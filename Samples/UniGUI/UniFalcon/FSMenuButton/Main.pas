unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPageControl;

type
  TMainForm = class(TUniForm)
    pgcMaster: TUniPageControl;
    procedure UniFormAfterShow(Sender: TObject);
  private
    { Private declarations }
    vExecutou: Boolean;
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uniGUIFrame;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniFormAfterShow(Sender: TObject);
var
  TabSheet: TUniTabSheet;
  FCurrentFrame: TUniFrameClass;
  Fr: TUniFrame;
begin
  if not vExecutou then
  begin
    TabSheet := TUniTabSheet.Create(MainForm);
    TabSheet.PageControl := pgcMaster;
    TabSheet.Caption := 'Demo FSMenuButton';

    FCurrentFrame:= TUniFrameClass(FindClass('TfrmMenuButton'));

    Fr := FCurrentFrame.Create(TabSheet);
    Fr.Parent := TabSheet;

    vExecutou := True;
  end;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
