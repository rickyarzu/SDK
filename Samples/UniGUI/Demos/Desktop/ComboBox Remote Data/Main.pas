//AllFeatures: DBLookupComboBox,DBLookup - Basic,icon-custom-template-combo
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniMultiItem,
  uniComboBox, uniButton;

type
  TMainForm = class(TUniForm)
    UniComboBox1: TUniComboBox;
    UniButton1: TUniButton;
    procedure UniFormCreate(Sender: TObject);
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
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
var
  I: Integer;
begin
  // Again, since RemoteQuery is true data will be sent only when user clicks the combobox trigger
  UniComboBox1.Items.Clear;
  for I := 0 to 100 do
    UniComboBox1.Items.Add(IntToStr(Random(100)));
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
var
  I: Integer;
begin
  // create combo items
  UniComboBox1.Items.Clear;
  for I := 0 to 100 do
    UniComboBox1.Items.Add(IntToStr(I));

  // since RemoteQuery is true data will be sent only when user clicks the trigger
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
