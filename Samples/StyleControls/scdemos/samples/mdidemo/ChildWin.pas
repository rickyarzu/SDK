unit CHILDWIN;

interface

uses Windows, Classes, Graphics, Forms, Controls, StdCtrls, Messages,
  scStyledForm, scControls;

type
  TMDIChild = class(TForm)
    scStyledForm1: TscStyledForm;
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  protected
    procedure CreateWindowHandle(const Params: TCreateParams); override;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TMDIChild.CreateWindowHandle(const Params: TCreateParams);
var
  CreateStruct: TMDICreateStruct;
begin
inherited;
exit;
  if (FormStyle = fsMDIChild) and not (csDesigning in ComponentState) then
  begin
    if (Application.MainForm = nil) or
      (Application.MainForm.ClientHandle = 0) then
      inherited;
    with CreateStruct do
    begin
      szClass := Params.WinClassName;
      szTitle := Params.Caption;
      hOwner := HInstance;
      X := Params.X;
      Y := Params.Y;
      cX := Params.Width;
      cY := Params.Height;
      style := Params.Style;
      lParam := Longint(Params.Param);
    end;
    Include(FFormState, fsCreatedMDIChild);
  end else inherited;
end;

procedure TMDIChild.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
