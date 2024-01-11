//AllFeatures: Grid,Checkbox,icon-checkbox-selection
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, DB, uniPanel,
  uniDBNavigator, uniButton, uniGUIBaseClasses, uniBasicGrid, uniDBGrid,
  uniImage, uniCheckBox, uniDBCheckBox, jpeg;

type
  TMainForm = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniDBNavigator1: TUniDBNavigator;
    DataSource1: TDataSource;
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
  uniGUIVars, MainModule, uniGUIApplication, StrUtils;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
var
  I: Integer;
begin
  with UniMainModule.ClientDataSet1 do
  begin
    for I := 1 to 100 do
    begin
      Append;
      FieldByName('EmpNo').AsInteger := I;
      FieldByName('Lastname').AsString := Char(65+Random(28));
      FieldByName('Firstname').AsString := Char(65+Random(28));

      FieldByName('shift').AsBoolean := Random(2)=1;
      FieldByName('BoolInt').AsInteger := Random(2);
      FieldByName('Boolstring').AsString := IfThen(Random(2)=0, 'set', 'unset');
      Post;
    end;
    First;
  end;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
