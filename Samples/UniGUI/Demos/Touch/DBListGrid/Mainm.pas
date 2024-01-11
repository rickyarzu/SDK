unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniDBNavigator, unimDBNavigator, uniGUIBaseClasses, uniBasicGrid, uniDBGrid,
  unimDBListGrid, EditForm, DB, ShowDataForm, uniLabel, unimLabel;

type
  TMainmForm = class(TUnimForm)
    UnimDBListGrid1: TUnimDBListGrid;
    UnimLabel1: TUnimLabel;
    UnimDBNavigator1: TUnimDBNavigator;
    procedure UnimDBListGrid1ClickHold(Sender: TObject);
    procedure UnimDBListGrid1DblClick(Sender: TObject);
    procedure UnimDBListGrid1Disclose(Sender: TObject);
    procedure UnimDBListGrid1Swipe(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UnimDBListGrid1ClickHold(Sender: TObject);
begin
  with UniMainModule do
  begin
    DataSource1.DataSet.Edit;
    DataSource1.DataSet.FieldByName('Length (cm)').AsFloat := DataSource1.DataSet.FieldByName('Length (cm)').AsFloat + 1;
    DataSource1.DataSet.Post;
  end;
  ShowMessage('Length (cm) is increased');
end;

procedure TMainmForm.UnimDBListGrid1DblClick(Sender: TObject);
begin
  with UniMainModule do
  begin
    UnimEditForm.UnimEdit1.Text := DataSource1.DataSet.FieldByName('Species No').AsString;
    UnimEditForm.UnimEdit2.Text := DataSource1.DataSet.FieldByName('Category').AsString;
    UnimEditForm.UnimEdit3.Text := DataSource1.DataSet.FieldByName('Common_Name').AsString;
    UnimEditForm.UnimEdit4.Text := DataSource1.DataSet.FieldByName('Species Name').AsString;
    UnimEditForm.UnimEdit5.Text := DataSource1.DataSet.FieldByName('Length (cm)').AsString;
    UnimEditForm.UnimEdit6.Text := DataSource1.DataSet.FieldByName('Length_In').AsString;
  end;
  UnimEditForm.ShowModal();
end;

procedure TMainmForm.UnimDBListGrid1Disclose(Sender: TObject);
begin
  with UniMainModule do
  begin
    UnimShowDataForm.UnimImage1.Assign(TBlobField(DataSource1.DataSet.FieldByName('Graphic')));
    UnimShowDataForm.UnimEdit1.Text := DataSource1.DataSet.FieldByName('Species No').AsString;
    UnimShowDataForm.UnimEdit2.Text := DataSource1.DataSet.FieldByName('Category').AsString;
    UnimShowDataForm.UnimEdit3.Text := DataSource1.DataSet.FieldByName('Common_Name').AsString;
    UnimShowDataForm.UnimEdit4.Text := DataSource1.DataSet.FieldByName('Species Name').AsString;
    UnimShowDataForm.UnimEdit5.Text := DataSource1.DataSet.FieldByName('Length (cm)').AsString;
    UnimShowDataForm.UnimEdit6.Text := DataSource1.DataSet.FieldByName('Length_In').AsString;
    UnimShowDataForm.UnimMemo1.Text := DataSource1.DataSet.FieldByName('Notes').AsString;
  end;
  UnimShowDataForm.ShowModal();
end;

procedure TMainmForm.UnimDBListGrid1Swipe(Sender: TObject);
begin
  with UniMainModule do
  begin
    DataSource1.DataSet.Delete;
  end;
  ShowMessage('Record is deleted');
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
