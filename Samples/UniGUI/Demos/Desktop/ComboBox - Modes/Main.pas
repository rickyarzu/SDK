unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniLabel, uniGUIBaseClasses,
  uniMultiItem, uniComboBox, uniMemo;

type
  TMainForm = class(TUniForm)
    UniComboBox1: TUniComboBox;
    UniComboBox2: TUniComboBox;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniMemo1: TUniMemo;
    procedure UniFormCreate(Sender: TObject);
    procedure UniComboBox1Change(Sender: TObject);
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

procedure TMainForm.UniComboBox1Change(Sender: TObject);
begin
  UniMemo1.Lines.Add((Sender as TUniComboBox).Name + ', Selected Index: ' +
                      IntToStr((Sender as TUniComboBox).ItemIndex));
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
var
  I : Integer;
begin
  for I := 1 to 5 do
    begin
      UniComboBox1.Items.Add('Same Text');
      UniComboBox2.Items.Add('Same Text');
    end;

  UniMemo1.Clear;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
