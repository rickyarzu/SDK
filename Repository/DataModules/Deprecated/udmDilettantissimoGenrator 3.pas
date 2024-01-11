unit udmDilettantissimoGenrator;

interface

uses
  System.SysUtils, System.Classes, Janua.Html.Metro5.Impl, Janua.Html.Impl, Janua.Html.Bootstrap4,
  Janua.Html.Metro5.Types, Janua.Core.Types, Janua.Core.Classes, Janua.Orm.Intf, Janua.Html.Types,
  JOrm.Cms.Articles.Intf, JOrm.Cms.Articles.Impl, Janua.Metro5.Builder.Intf, Janua.Html.Intf,
  Janua.Html.Metro5.Intf, udmFootballGenerator, JOrm.Cms.MainArguments.Intf, JOrm.Cms.Arguments.Intf;

type
  TdmDilettantissimoGenrator = class(TdmFootballGenerator)
  private
    { Private declarations }
  public
    { Public declarations }
    function GetHome(aMainCategory, aCategory, aLimit, aPage: Word): string;
    function GetArticlesList(aArgumentID: integer): Janua.Html.Intf.IJanuaHtmlObject;
    function GetArticlePage(aID: Int64): string;
    function GetArgumentPage(aID: integer): string;
  end;

var
  dmDilettantissimoGenrator: TdmDilettantissimoGenrator;

implementation

uses Janua.Dilettantissimo.Impl, Janua.Dilettantissimo.Intf;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdmDilettantissimoGenrator }

function TdmDilettantissimoGenrator.GetArgumentPage(aID: integer): string;
begin

end;

function TdmDilettantissimoGenrator.GetArticlePage(aID: Int64): string;
begin

end;

function TdmDilettantissimoGenrator.GetArticlesList(aArgumentID: integer): Janua.Html.Intf.IJanuaHtmlObject;
begin

end;

function TdmDilettantissimoGenrator.GetHome(aMainCategory, aCategory, aLimit, aPage: Word): string;
var
  p: Janua.Dilettantissimo.Intf.IDilettantissimoHomePage;
  ma: IMainArguments;
  ar: IArguments;
  avi, art: IArticles;
begin
  // Test completo menu ORM da Football Academy.........................................................
  // DMCms := udmPgCmsStorage.TdmPgCmsStorage.Create(nil);
  try
    SetupDM(ma, ar);
    // 1 = comunicati, 2 = circolari, 3 = news, 4 = urgenze
    p := TDilettantissimoFactory.CreateHomePage(ma, ar, avi, art);
    avi := DMCms.GetArticlesList(0, 0);
    art := DMCms.GetArticlesList(0, 0);
    {
      p.NewsSet := DMCms.GetArticlesListPos(aMainCategory, 3, aLimit, aPage);
      p.ComunicatiSet := DMCms.GetArticlesListPos(aMainCategory, 1, aLimit, aPage);
      p.CircolariSet := DMCms.GetArticlesListPos(aMainCategory, 2, aLimit, aPage);
      p.UrgenzeSet := DMCms.GetArticlesListPos(aMainCategory, 4, aLimit, aPage);
    }
    Result := p.AsHtml
  finally
    DMCms.Free;
  end;

end;

end.
