unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniEdit, uniGUIBaseClasses,
  uniPanel, uniStatusBar, uniBasicGrid, uniDBGrid, uniDBNavigator, DB,
  DBClient, uniCalendar, uniDBEdit;

type
  TMainForm = class(TUniForm)
    UniPanel1: TUniPanel;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniDBGrid1: TUniDBGrid;
    UniDBNavigator1: TUniDBNavigator;
    UniStatusBar1: TUniStatusBar;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1Fld1: TWideStringField;
    ClientDataSet1Fld2: TWideStringField;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
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
  ClientDataSet1.FieldByName('Fld1').AsString := 'رستم';
  ClientDataSet1.FieldByName('Fld2').AsString := 'زال';
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Fld1').AsString := 'سهراب';
  ClientDataSet1.FieldByName('Fld2').AsString := 'رستم';
  ClientDataSet1.Post;


end;

initialization
  RegisterAppFormClass(TMainForm);

end.
