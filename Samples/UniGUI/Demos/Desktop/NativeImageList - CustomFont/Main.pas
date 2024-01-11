//AllFeatures: ImageList,NativeImageList - Custom Font,icon-imageviewer
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniImageList,
  uniTreeView, uniTreeMenu, uniMemo;

type
  TMainForm = class(TUniForm)
    UniTreeMenu1: TUniTreeMenu;
    UniNativeImageList1: TUniNativeImageList;
    UniMemo1: TUniMemo;
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
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniTreeMenu1.FullExpand;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
