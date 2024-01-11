//AllFeatures: Grid,Delayed Search,icon-grid-live-search
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniGUIBaseClasses, uniEdit, uniLabel, uniBasicGrid,
  uniDBGrid, DB, DBClient;

type
  TMainForm = class(TUniForm)
    UniEdit1: TUniEdit;
    UniLabel1: TUniLabel;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    UniDBGrid1: TUniDBGrid;
    procedure UniEdit1Change(Sender: TObject);
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

procedure TMainForm.UniEdit1Change(Sender: TObject);
begin
  ClientDataSet1.Filter:='company LIKE ''%'+UniEdit1.Text+'%'' or City LIKE ''%'+UniEdit1.Text+'%''';
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
