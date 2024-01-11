unit EditForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniButton, unimButton, uniGUIBaseClasses, uniEdit, unimEdit;

type
  TUnimEditForm = class(TUnimForm)
    UnimEdit1: TUnimNumberEdit;
    UnimEdit2: TUnimEdit;
    UnimEdit3: TUnimEdit;
    UnimEdit4: TUnimEdit;
    UnimEdit5: TUnimNumberEdit;
    UnimEdit6: TUnimEdit;
    UnimButton1: TUnimButton;
    procedure UnimButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UnimEditForm: TUnimEditForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UnimEditForm: TUnimEditForm;
begin
  Result := TUnimEditForm(UniMainModule.GetFormInstance(TUnimEditForm));
end;

procedure TUnimEditForm.UnimButton1Click(Sender: TObject);
begin
  with UniMainModule do
  begin
    DataSource1.DataSet.Edit;
    DataSource1.DataSet.FieldByName('Species No').AsString := UnimEdit1.Text;
    DataSource1.DataSet.FieldByName('Category').AsString := UnimEdit2.Text;
    DataSource1.DataSet.FieldByName('Common_Name').AsString := UnimEdit3.Text;
    DataSource1.DataSet.FieldByName('Species Name').AsString := UnimEdit4.Text;
    DataSource1.DataSet.FieldByName('Length (cm)').AsString := UnimEdit5.Text;
    DataSource1.DataSet.FieldByName('Length_In').AsString := UnimEdit6.Text;
    DataSource1.DataSet.Post;
  end;
  Close;
end;

end.
