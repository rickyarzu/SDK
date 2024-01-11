unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid, DB, uniButton, uniEdit, uniDBEdit;

type
  TMainForm = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    DataSource1: TDataSource;
    UniButton1: TUniButton;
    UniDBEdit1: TUniDBEdit;
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
begin
  UniDBGrid1.Refresh;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
