unit EditForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniButton, unimButton, unimEdit, uniGUIBaseClasses, uniEdit, uniMultiItem,
  unimSelect;

type
  TUnimEditForm = class(TUnimForm)
    UnimEdit1: TUnimNumberEdit;
    UnimEdit3: TUnimEdit;
    UnimEdit4: TUnimEdit;
    UnimEdit5: TUnimNumberEdit;
    UnimEdit6: TUnimEdit;
    UnimButton1: TUnimButton;
    UnimSelect1: TUnimSelect;
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    SpNo,Cat,ComName,SpNm,LCm,LIn: string;
    postCondition : Boolean;
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
  SpNo := UnimEdit1.Text;
  Cat := UnimSelect1.Text;
  ComName := UnimEdit3.Text;
  SpNm := UnimEdit4.Text;
  LCm := UnimEdit5.Text;
  LIn := UnimEdit6.Text;
  postCondition := True;
      if (UnimEditForm.postCondition = true) then
    begin
      UniMainModule.DataSourceFishFact.DataSet.Edit;
      UniMainModule.DataSourceFishFact.DataSet.FieldByName('Species No').AsString := SpNo;
      UniMainModule.DataSourceFishFact.DataSet.FieldByName('Category').AsString := Cat;
      UniMainModule.DataSourceFishFact.DataSet.FieldByName('Common_Name').AsString := ComName;
      UniMainModule.DataSourceFishFact.DataSet.FieldByName('Species Name').AsString := SpNm;
      UniMainModule.DataSourceFishFact.DataSet.FieldByName('Length (cm)').AsString := LCm;
      UniMainModule.DataSourceFishFact.DataSet.FieldByName('Length_In').AsString := LIn;
      UniMainModule.DataSourceFishFact.DataSet.Post;
    end;
  Close;
end;

procedure TUnimEditForm.UnimFormCreate(Sender: TObject);
begin
  postCondition := False;
end;

end.
