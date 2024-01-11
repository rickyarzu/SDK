unit udmPgSystemViewModel;

interface

uses
  System.SysUtils, System.Classes, Data.DB, System.Actions, Vcl.ActnList, Janua.Core.Classes,
  Janua.Core.Customcontrols,
  Janua.Vcl.Dialogs, Vcl.Forms, Janua.Legacy.InputNumber, Janua.System.ViewModel,
  Janua.Core.Servers, Janua.Core.System, Janua.Postgres.System, Janua.Core.Mail,
  System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent;

type
  TdmPgSystemViewModel = class(TDataModule)
    dsSearchDBUsersProfiles: TDataSource;
    ActionListSystem: TActionList;
    JanuaDialog1: TJanuaDialog;
    actUserAdd: TAction;
    actUserPayment: TAction;
    actUserPaymentRevoke: TAction;
    JanuaPostgresSystem1: TJanuaPostgresSystem;
    JanuaCoreLogger1: TJanuaCoreLogger;
    JanuaMailSender1: TJanuaMailSender;
    NetHTTPRequest1: TNetHTTPRequest;
    NetHTTPClient1: TNetHTTPClient;
    JanuaDialogLogin1: TJanuaDialogLogin;
    DBUserSearch: TDBUserBindable;
    JanuaInputNumber1: TJanuaInputNumber;
    procedure DataModuleCreate(Sender: TObject);
    procedure actUserPaymentExecute(Sender: TObject);
    procedure dsSearchDBUsersProfilesDataChange(Sender: TObject; Field: TField);
    { Private declarations }
  public
    { Public declarations }
    procedure UserIDChange(Sender: TObject);
    procedure SearchIndexChange(Sender: TObject);
    procedure SearchNameChange(Sender: TObject);
    procedure UserSearch(const aName: string; aIndex: integer);
    // property DBUserSearch: TDBUserBindable read FDBUserSearch write SetDBUserSearch;
  end;

var
  dmPgSystemViewModel: TdmPgSystemViewModel;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Janua.System.Postgres.Storage, Janua.Postgres.Functions;

{$R *.dfm}
{ TdmPgSystemViewModel }

procedure TdmPgSystemViewModel.actUserPaymentExecute(Sender: TObject);
begin
  self.JanuaInputNumber1.Number := 10.0;
  self.JanuaInputNumber1.Caption := 'Importo pagato dal Cliente';
  JanuaInputNumber1.DisplayText := 'Importo';
  if self.JanuaInputNumber1.Execute then
    dmPgSystemStorage.UserPayment(DBUserSearch.DBUserID, JanuaInputNumber1.Number, Date())
end;

procedure TdmPgSystemViewModel.DataModuleCreate(Sender: TObject);
begin
  Application.CreateForm(TdmPgSystemStorage, dmPgSystemStorage);
  // collego in LiveBinding il valore del campo con la proprietà.
  DBUserSearch.Bind('DBUserID', dmPgSystemStorage.qrySearchDBUsersProfilesdb_user_id, 'AsInteger', True);
  DBUserSearch.SearchDataSource := self.dsSearchDBUsersProfiles;
  DBUserSearch.OnSearchNameChange := self.SearchNameChange;
end;

procedure TdmPgSystemViewModel.dsSearchDBUsersProfilesDataChange(Sender: TObject; Field: TField);
begin
  actUserAdd.Enabled := dsSearchDBUsersProfiles.DataSet.Active;
  actUserPayment.Enabled := dsSearchDBUsersProfiles.DataSet.RecordCount > 0;
  actUserPaymentRevoke.Enabled := dsSearchDBUsersProfiles.DataSet.RecordCount > 0;
end;

procedure TdmPgSystemViewModel.SearchIndexChange(Sender: TObject);
begin
  UserSearch(DBUserSearch.SearchName, DBUserSearch.SearchIndex);
end;

procedure TdmPgSystemViewModel.SearchNameChange(Sender: TObject);
begin
  UserSearch(DBUserSearch.SearchName, DBUserSearch.SearchIndex);
end;

procedure TdmPgSystemViewModel.UserIDChange(Sender: TObject);
begin

end;

procedure TdmPgSystemViewModel.UserSearch(const aName: string; aIndex: integer);
begin
  dmPgSystemStorage.qrySearchDBUsersProfiles.Close;
  // p_search // p_email
  case aIndex of
    0:
      begin
        dmPgSystemStorage.qrySearchDBUsersProfiles.ParamByName('p_search').AsWideString :=
          aName.Trim.ToLower;
        dmPgSystemStorage.qrySearchDBUsersProfiles.ParamByName('p_email').AsWideString := '';
      end;
    1:
      begin
        dmPgSystemStorage.qrySearchDBUsersProfiles.ParamByName('p_email').AsWideString :=
          aName.Trim.ToLower;
        dmPgSystemStorage.qrySearchDBUsersProfiles.ParamByName('p_search').AsWideString := '';
      end;
  end;
  OpenPgThreadedDataset(dmPgSystemStorage.qrySearchDBUsersProfiles, self.dsSearchDBUsersProfiles, True);

end;

end.
