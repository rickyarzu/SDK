//AllFeatures: Treeview,Big Data Update,icon-tree-grid
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniButton, uniGUIBaseClasses,
  uniTreeView, uniThreadTimer, uniImageList;

type
  TMainForm = class(TUniForm)
    UniTreeView1: TUniTreeView;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniNativeImageList1: TUniNativeImageList;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
  private
    procedure AddTreeNodes();
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

procedure TMainForm.AddTreeNodes;
var
  I, J: Integer;
  S1 : TUniTreeNode;
  Prn : TUniTreeNode;
begin
  for I := 0 to 250 do
  begin
    J := UniTreeView1.Items.Count;
    J := Random(J);
    if J = 0 then
      Prn := nil
    else
      Prn := UniTreeView1.Items[J];

    S1 := UniTreeView1.Items.AddChild(Prn, 'Sub Node '+IntToStr(I));
    S1.ImageIndex := Random(20);
  end;
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  UniTreeView1.BeginUpdate;   // Needed when making large additions to tree nodes
  try
    AddTreeNodes;
  finally
    UniTreeView1.EndUpdate;   // Whole tree data will be sent in one Json array
  end;
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
                              // Without BeginUpdate / EndUpdate
  AddTreeNodes;               // Tree data will be sent in form of individual calls to JS methods, so it can slower
end;

procedure TMainForm.UniButton3Click(Sender: TObject);
begin
  UniTreeView1.Items.Clear;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
