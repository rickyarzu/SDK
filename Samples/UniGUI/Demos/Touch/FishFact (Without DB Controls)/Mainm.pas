unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUIBaseClasses,
  uniMultiItem, unimList, FishFact;

type
  TMainmForm = class(TUnimForm)
    UnimList1: TUnimList;
    procedure UnimFormCreate(Sender: TObject);
    procedure UnimList1Disclose(Sender: TObject);
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

procedure TMainmForm.UnimFormCreate(Sender: TObject);
begin
  with UniMainModule.ClientDataSet1 do
  begin
    UnimList1.Clear;
    while not Eof do
    begin
      UnimList1.Items.AddObject(FieldByName('Species Name').AsString, TObject(FieldByName('Species No').AsInteger));
      Next;
    end;

  end;
end;

procedure TMainmForm.UnimList1Disclose(Sender: TObject);
begin
  UniMainModule.Species := Integer(UnimList1.Items.Objects[UnimList1.ItemIndex]);
  UnimForm1.ShowModal();
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
