unit Janua.Phoenix.VCL.dlgGoogleSync;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.StrUtils,
  System.DateUtils,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.DBCtrls, JvExControls, JvDBLookup, DBAccess, Uni;

type
  TdlgPhoenixVCLGoogleSync = class(TForm)
    CRDBGrid1: TCRDBGrid;
    pnlBottom: TPanel;
    edSearch: TButtonedEdit;
    btnOK: TButton;
    btnCancel: TButton;
    JvDBLookupCombo1: TJvDBLookupCombo;
    DBText1: TDBText;
    UniDataSource: TUniDataSource;
    DBText2: TDBText;
    DBText3: TDBText;
    btnFilter: TButton;
    ckbFilter: TCheckBox;
    procedure btnFilterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgPhoenixVCLGoogleSync: TdlgPhoenixVCLGoogleSync;

implementation

{$R *.dfm}

uses Janua.Phoenix.Vcl.dmPlannerController;

procedure TdlgPhoenixVCLGoogleSync.btnFilterClick(Sender: TObject);
begin
  var
  eMail := '';
  if ckbFilter.Checked then
    eMail := dmVCLPhoenixPlannerController.qryReportPlannerEMAIL_TECNICO.AsString;

  dmVCLPhoenixPlannerController.FilterGoogleCalendarSubject(edSearch.Text, eMail);
end;

end.
