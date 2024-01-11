unit WidgetForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniGUIBaseClasses, uniFieldSet,
  uniDBEdit, uniEdit, DB;

type
  TColumnWidgetForm = class(TUniForm)
    UniFieldSet1: TUniFieldSet;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBNumberEdit1: TUniDBNumberEdit;
    DataSource1: TDataSource;
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
  private
    Fds: TDataSet;
    procedure Setds(const Value: TDataSet);
    { Private declarations }
  public
    { Public declarations }
    property ds: TDataSet read Fds write Setds;
  end;

function ColumnWidgetForm: TColumnWidgetForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function ColumnWidgetForm: TColumnWidgetForm;
begin
  Result := TColumnWidgetForm(UniMainModule.GetFormInstance(TColumnWidgetForm));
end;

procedure TColumnWidgetForm.Setds(const Value: TDataSet);
begin
  Fds := Value;
  DataSource1.DataSet := Fds;
end;

procedure TColumnWidgetForm.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(ds) then
    if ModalResult = mrOK then
    begin
      if ds.State in dsEditModes then
        ds.Post;
    end
    else if ds.State in dsEditModes then
      ds.Cancel;
end;

end.
