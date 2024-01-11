//AllFeatures: Grid,Row Widget,icon-row-widget-grid
unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid, uniSplitter, MidasLib, uniButton, uniPanel, uniDBNavigator, uniEdit,
  uniDBEdit;

type
  TMainForm = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniDBNavigator1: TUniDBNavigator;
    UniPanel1: TUniPanel;
    procedure UniDBGrid1RowExpand(Sender: TUniCustomDBGrid;
      const RowId: Integer; var RowControl: TControl; Container: TUniContainer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, DetailFrm;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniDBGrid1RowExpand(Sender: TUniCustomDBGrid;
  const RowId: Integer; var RowControl: TControl; Container: TUniContainer);
begin
  RowControl := TDetailFrame.Create(Container);
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
