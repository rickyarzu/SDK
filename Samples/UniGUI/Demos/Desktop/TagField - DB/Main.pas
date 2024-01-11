//AllFeatures: Tag Field,Tag Field - DB,icon-form-tag
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, Data.DB, Datasnap.DBClient,
  uniMultiItem, uniListBox, uniDBListBox, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid, uniDBNavigator;

type
  TMainForm = class(TUniForm)
    ClientDataSet1: TClientDataSet;
    UniDBGrid1: TUniDBGrid;
    UniDBTagField1: TUniDBTagField;
    DataSource1: TDataSource;
    UniDBNavigator1: TUniDBNavigator;
    ClientDataSet1TextField: TStringField;
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
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  ClientDataSet1.Append;
  ClientDataSet1TextField.AsString := 'Banana';
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1TextField.AsString := 'Banana;Apple';
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1TextField.AsString := 'Orange;Banana;Apple';
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1TextField.AsString := 'Apple';
  ClientDataSet1.Post;

  ClientDataSet1.First;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
