unit udmFMXWPController;

interface

uses
  System.SysUtils, System.Classes, System.Actions,
  System.Bindings.Expression,
  System.Bindings.Helper,
  System.Generics.Collections,
  // Janua
  Janua.Http.Intf, Janua.Wordpress.Types,
  // FMX
  FMX.ActnList, FMX.ListView,
  // Custom Controller (inherited)
  udmCustomController, ufrmCustomLogin, udmFMXWPModel;

type
  TdmFMXWPController = class(TdmCustomController)
    procedure DataModuleCreate(Sender: TObject);

  private
    FTitle: string;
    FOnNewArticle: TNotifyEvent;
    FOnDeleteArticle: TNotifyEvent;
    FArticlesView: TListView;
    FModel: udmFMXWPModel.TdmFMXWPModel;
    FArticleTitle: string;
    FSelectedArticle: TWPRecord;
    function GetSelectedArticle: TWPRecord;
    function GetArticleTitle: string;
    function GetRecords: TWPRecords;
    procedure SetRecords(const Value: TWPRecords);
    procedure SetOnDeleteArticle(const Value: TNotifyEvent);
    procedure SetOnNewArticle(const Value: TNotifyEvent);
    procedure SetTitle(const Value: string);
    procedure SetArticlesView(const Value: TListView);
    procedure SetSelectedArticle(const Value: TWPRecord);
    procedure SetArticleTitle(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    procedure SelectArticle(const aID: Int64);
    function Login(const adlgLoginClass: ufrmCustomLogin.TClassCustomLogin): boolean;
    property Records: TWPRecords read GetRecords write SetRecords;
    procedure OpenArticles(aCategoryID: Integer);
  public
    property OnNewArticle: TNotifyEvent read FOnNewArticle write SetOnNewArticle;
    property OnDeleteArticle: TNotifyEvent read FOnDeleteArticle write SetOnDeleteArticle;
    property Title: string read FTitle write SetTitle;
    property ArticlesView: TListView read FArticlesView write SetArticlesView;
    property SelectedArticle: TWPRecord read FSelectedArticle write SetSelectedArticle;
  public // Article Properties ..........................................................
    property ArticleTitle: string read FArticleTitle write SetArticleTitle;

  end;

var
  dmFMXWPController: TdmFMXWPController;

implementation

uses Janua.Core.Json, Janua.Core.Functions, Janua.Http.Impl, AsyncTask, FMX.Dialogs, Janua.Wordpress.Impl;

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}
{ TdmFMXWPController }

procedure TdmFMXWPController.DataModuleCreate(Sender: TObject);
begin
  FModel := udmFMXWPModel.TdmFMXWPModel.Create(self);
end;

function TdmFMXWPController.GetArticleTitle: string;
begin
  Result := SelectedArticle.Title;
end;

function TdmFMXWPController.GetRecords: TWPRecords;
begin
  Result := FModel.Records;
end;

function TdmFMXWPController.GetSelectedArticle: TWPRecord;
begin
  Result := self.FModel.SelectedArticle
end;

function TdmFMXWPController.Login(const adlgLoginClass: TClassCustomLogin): boolean;
var
  aMessage: string;
  LdlgLogin: TfrmCustomLogin;
begin
  LdlgLogin := adlgLoginClass.Create(self);
  try
    Result := TWordpressClass.JWTLogin(LdlgLogin.UserName, LdlgLogin.Password, aMessage);
    if not Result then
      ShowMessage(aMessage);
  finally
    LdlgLogin.Free;
  end;
end;

procedure TdmFMXWPController.OpenArticles(aCategoryID: Integer);
begin
  FModel.OpenArticles(aCategoryID,
    procedure(ARecords: TWPRecords)
    var
      LRecord: TWPRecord;
    begin
      FArticlesView.BeginUpdate;
      FArticlesView.Items.Clear;
      for LRecord in ARecords.Items do
      begin;
        with self.FArticlesView.Items.Add do
        begin
          // Tag := LNDMainDataModule.MainArguments.Main_argument_id.AsInteger;
          Tag := LRecord.ID;
          Text := LRecord.Title;
          // Detail := Format('%d kg of paper', [1000 + Random(1234)]);
          ImageIndex := 0;
        end;
      end;
      FArticlesView.EndUpdate;
    end,
    procedure(const Ex: Exception)
    begin
      ShowMessage('Errore ricezione dati dal sito: ' + Ex.Message);
    end);
end;

procedure TdmFMXWPController.SelectArticle(const aID: Int64);
begin

end;

procedure TdmFMXWPController.SetArticlesView(const Value: TListView);
begin
  FArticlesView := Value;
end;

procedure TdmFMXWPController.SetArticleTitle(const Value: string);
begin
  FArticleTitle := Value;
end;

procedure TdmFMXWPController.SetOnDeleteArticle(const Value: TNotifyEvent);
begin
  FOnDeleteArticle := Value;
end;

procedure TdmFMXWPController.SetOnNewArticle(const Value: TNotifyEvent);
begin
  FOnNewArticle := Value;
end;

procedure TdmFMXWPController.SetRecords(const Value: TWPRecords);
begin
  FModel.Records := Value;
end;

procedure TdmFMXWPController.SetSelectedArticle(const Value: TWPRecord);
begin
  FSelectedArticle := Value;
end;

procedure TdmFMXWPController.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

end.
