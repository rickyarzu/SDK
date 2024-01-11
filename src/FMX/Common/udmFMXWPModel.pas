unit udmFMXWPModel;

interface

uses
  System.SysUtils, System.Classes, Janua.Http.Intf, Janua.Wordpress.Types, System.Actions;

type
  TdmFMXWPModel = class(TDataModule)
  private
    FRecords: TWPRecords;
    FSelectedArticle: TWPRecord;
    procedure SetRecords(const Value: TWPRecords);
    procedure SetSelectedArticle(const Value: TWPRecord);
    { Private declarations }
  public
    { Public declarations }
    procedure OpenArticles(const aCatID: integer; aProc: TProc<TWPRecords>; aExProc: TProc<Exception>);
  public
    property Records: TWPRecords read FRecords write SetRecords;
    property SelectedArticle: TWPRecord read FSelectedArticle write SetSelectedArticle;
  end;

var
  dmFMXWPModel: TdmFMXWPModel;

implementation

uses Janua.Core.Json, Janua.Core.Functions, Janua.Http.Impl, AsyncTask, Janua.Wordpress.Impl;

{$R *.dfm}
{ TDataModule1 }

procedure TdmFMXWPModel.OpenArticles(const aCatID: integer; aProc: TProc<TWPRecords>;
  aExProc: TProc<Exception>);
begin
  Async.Run<boolean>(
    function: boolean
    var
      LHttpParams: TJanuaHttpParams;
      LText: string;
    begin
      FRecords := TWordpressClass.LoadArticles(aCatID); // chiamo la funzione da TWordpresClass
      // la funzione carica l'array json degli articoli in background.
      Result := True;
    end,
    procedure(const aValue: boolean)
    begin
      // This is the "success" callback. Runs in the UI thread and
      // gets the result of the "background" anonymous method.
      if aValue and Assigned(aProc) then
        aProc(FRecords);
    end,
    procedure(const Ex: Exception)
    begin
      // This is the "error" callback.
      // Runs in the UI thread and is called only if the
      // "background" anonymous method raises an exception.
      aExProc(Ex);
    end);
end;

procedure TdmFMXWPModel.SetRecords(const Value: TWPRecords);
begin
  FRecords := Value;
end;

procedure TdmFMXWPModel.SetSelectedArticle(const Value: TWPRecord);
begin
  FSelectedArticle := Value;
end;

end.
