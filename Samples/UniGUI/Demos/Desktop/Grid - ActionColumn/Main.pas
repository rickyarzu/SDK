//AllFeatures: Grid,Action Column,icon-actions-grid
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, Data.DB, Datasnap.DBClient,
  uniGUIBaseClasses, uniBasicGrid, uniDBGrid, uniImageList, uniDBNavigator,
  System.Actions, Vcl.ActnList, uniMainMenu;

type
  TMainForm = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    UniNativeImageList1: TUniNativeImageList;
    UniDBNavigator1: TUniDBNavigator;
    UniActionList1: TUniActionList;
    Action1: TAction;
    procedure UniDBGrid1ColumnActionClick(Column: TUniDBGridColumn;
      ButtonId: Integer);
    procedure UniDBGrid1DrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure Action1Execute(Sender: TObject);
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

procedure TMainForm.Action1Execute(Sender: TObject);
begin
  ShowMessage('Grid custom action: ' + (Sender as TAction).Name);
end;

procedure TMainForm.UniDBGrid1ColumnActionClick(Column: TUniDBGridColumn;
  ButtonId: Integer);
begin
  case ButtonId of
    0 :
      begin
        ClientDataSet1.Edit;
      end;

    1 :
      MessageDlg('Are you sure', mtConfirmation, mbYesNo,
        procedure(Sender: TComponent; ARes: Integer)
        begin
          case ARes of
            mrYes : ClientDataSet1.Delete;
          end;
        end
      );

    2 :
      begin
        ClientDataSet1.Edit;
        ClientDataSet1.FieldByName('LastInvoiceDate').AsDateTime := Date;
        ClientDataSet1.Post;
      end;

  end;
end;

procedure TMainForm.UniDBGrid1DrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  if ClientDataSet1.FieldByName('LastInvoiceDate').AsDateTime >= Date then
    Attribs.Color := $FFDDDD;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
