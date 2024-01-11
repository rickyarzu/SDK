unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  DB, uniLabel, unimLabel, uniBasicGrid, uniDBGrid, unimDBListGrid,
  uniGUIBaseClasses, uniEdit, unimEdit, InsertEditUnit;

type
  TMainmForm = class(TUnimForm)
    UnimEdit1: TUnimEdit;
    UnimDBListGrid1: TUnimDBListGrid;
    UnimLabel1: TUnimLabel;
    DataSource1: TDataSource;
    procedure UnimFormCreate(Sender: TObject);
    procedure UnimEdit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UnimFormTitleButtonClick(Sender: TUnimTitleButton);
  private
     procedure DCallBack2(Sender: TComponent; Res: Integer);
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

procedure TMainmForm.UnimEdit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   with DataSource1.DataSet do
  begin
    Filter:='Name LIKE ''%'+UnimEdit1.Text+'%'' or Phone_Number LIKE ''%'+UnimEdit1.Text+'%''';
  end;
end;

procedure TMainmForm.UnimFormCreate(Sender: TObject);
begin
  DataSource1.DataSet.Open;
end;

procedure TMainmForm.UnimFormTitleButtonClick(Sender: TUnimTitleButton);
begin
  if Sender.ButtonId=0 then
  begin
    UnimForm1.WhatToDo := 'Add';
     UnimForm1.Caption := 'Add';
    UnimForm1.UnimButton1.Caption := 'Add';
  end
  else if Sender.ButtonId=1 then
  begin
    UnimForm1.WhatToDo := 'Edit';
    UnimForm1.Caption := 'Edit';
    UnimForm1.UnimButton1.Caption := 'Edit';
    with DataSource1 do
    begin
      UnimForm1.UnimEdit1.Text := DataSet.FieldByName('Name').AsString;
      UnimForm1.UnimEdit2.Text := DataSet.FieldByName('Phone_Number').AsString;
    end;
  end
  else if Sender.ButtonId=2 then
  begin
    MessageDlg('Delete', mtConfirmation, mbYesNo, DCallBack2);
  end
  else if Sender.ButtonId=4 then
  begin
    UniSession.AddJS('window.location.href="tel://'+DataSource1.DataSet.FieldByName('Phone_Number').AsString+'"');
  end;

end;

procedure TMainmForm.DCallBack2(Sender: TComponent; Res: Integer);
begin
  case Res of
    mrYes : DataSource1.DataSet.Delete;
    mrNo : ;
  end;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
