unit ufrmVCLActionManager;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  SVGIconImageList, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    ActionManager1: TActionManager;
    ImageList: TSVGIconImageList;
    ImageListBig: TSVGIconImageList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    procedure Action1Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

function AddButtonToToolbar(var bar: TToolBar; caption: string; addafteridx: integer = -1;
  aAction: TBasicAction = nil): TToolButton;
var
  prevBtnIdx: integer;
begin
  Result := TToolButton.Create(bar);
  Result.caption := caption;

  if Assigned(aAction) then
    Result.Action := aAction;

  // if they asked us to add it after a specific location, then do so
  // otherwise, just add it to the end (after the last existing button)
  if addafteridx = -1 then
  begin
    prevBtnIdx := bar.ButtonCount - 1;
  end
  else
  begin
    if bar.ButtonCount <= addafteridx then
    begin
      // if the index they want to be *after* does not exist,
      // just add to the end
      prevBtnIdx := bar.ButtonCount - 1;
    end
    else
    begin
      prevBtnIdx := addafteridx;
    end;
  end;

  if prevBtnIdx > -1 then
    Result.Left := bar.Buttons[prevBtnIdx].Left + bar.Buttons[prevBtnIdx].Width
  else
    Result.Left := 0;

  Result.Parent := bar;
end;

procedure TForm3.Action1Execute(Sender: TObject);
begin
  ShowMessage('Ciao')
end;

procedure TForm3.FormCreate(Sender: TObject);
var
  I: integer;
begin
  ToolBar1.ShowCaptions := True;
  for I := 0 to self.ActionManager1.ActionCount - 1 do
    AddButtonToToolbar(self.ToolBar1, ActionManager1.Actions[I].caption, -1,
      ActionManager1.Actions[I] as TBasicAction);
end;

end.
