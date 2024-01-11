//AllFeatures: Treeview,SourceMenu,icon-tree-grid
unit TreeViewSourceMenuMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, Vcl.Menus, uniMainMenu,
  uniGUIBaseClasses, uniTreeView, uniImageList, System.Actions, Vcl.ActnList,
  Vcl.ImgList, System.ImageList;

type
  TMainForm = class(TUniForm)
    UniTreeView1: TUniTreeView;
    UniMenuItems1: TUniMenuItems;
    UniNativeImageList1: TUniNativeImageList;
    Root1: TUniMenuItem;
    Item11: TUniMenuItem;
    Sub11: TUniMenuItem;
    Sub21: TUniMenuItem;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    UniImageListAdapter1: TUniImageListAdapter;
    procedure ActionList1Execute(Action: TBasicAction; var Handled: Boolean);
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

procedure TMainForm.ActionList1Execute(Action: TBasicAction; var Handled: Boolean);
begin
 ShowMessage((Action as TAction).Caption);
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniTreeView1.FullExpand;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
