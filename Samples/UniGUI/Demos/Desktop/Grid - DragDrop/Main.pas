//AllFeatures: Grid,Drag Drop,icon-drag-drop-grid
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, DB, DBClient, uniGUIBaseClasses,
  uniBasicGrid, uniDBGrid, uniButton, uniBitBtn, uniImage, uniDBImage, uniEdit,
  uniDBEdit, uniStatusBar, uniDBNavigator, uniLabel;

type
  TMainForm = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniDBGrid2: TUniDBGrid;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ClientDataSet2: TClientDataSet;
    UniBitBtn3: TUniBitBtn;
    UniStatusBar1: TUniStatusBar;
    UniLabel1: TUniLabel;
    procedure UniBitBtn3Click(Sender: TObject);
    procedure UniDBGrid1SelectionChange(Sender: TObject);
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

procedure TMainForm.UniBitBtn3Click(Sender: TObject);
begin
  ClientDataSet2.EmptyDataSet;
end;

procedure TMainForm.UniDBGrid1SelectionChange(Sender: TObject);
begin
  UniStatusBar1.Panels[0].Text := 'Selected: ' + IntToStr(UniDBGrid1.SelectedRows.Count);
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
