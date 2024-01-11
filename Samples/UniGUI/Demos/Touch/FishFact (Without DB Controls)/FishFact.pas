unit FishFact;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUImForm, uniGUIBaseClasses, uniImage, unimImage,
  jpeg, pngimage,  uniEdit, unimEdit, uniMemo, unimMemo, uniToolBar,
  unimToolbar ;

type
  TUnimForm1 = class(TUnimForm)
    UnimImage1: TUnimImage;
    UnimEdit1: TUnimEdit;
    UnimEdit2: TUnimEdit;
    UnimEdit3: TUnimEdit;
    UnimEdit4: TUnimEdit;
    UnimEdit5: TUnimEdit;
    UnimEdit6: TUnimEdit;
    UnimMemo1: TUnimMemo;
    UnimToolBar1: TUnimToolBar;
    UnimToolButton1: TUnimToolButton;
    procedure UnimFormCreate(Sender: TObject);
    procedure UnimToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UnimForm1: TUnimForm1;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, DB;

function UnimForm1: TUnimForm1;
begin
  Result := TUnimForm1(UniMainModule.GetFormInstance(TUnimForm1));
end;

procedure TUnimForm1.UnimFormCreate(Sender: TObject);
begin
  with UniMainModule.ClientDataSet1 do
  begin
    Locate('Species No', UniMainModule.Species, []);
    UnimImage1.Assign(TBlobField(FieldByName('Graphic')));

     UnimEdit1.Text := FieldByName('Species No').AsString;
     UnimEdit2.Text := FieldByName('Category').AsString;
     UnimEdit3.Text := FieldByName('Common_Name').AsString;
     UnimEdit4.Text := FieldByName('Species Name').AsString;
     UnimEdit5.Text := FieldByName('Length (cm)').AsString;
     UnimEdit6.Text := FieldByName('Length_In').AsString;
     UnimMemo1.Text := FieldByName('Notes').AsString;

     UnimToolBar1.Caption := FieldByName('Common_Name').AsString;
  end;
end;

procedure TUnimForm1.UnimToolButton1Click(Sender: TObject);
begin
  Close;
end;

end.
