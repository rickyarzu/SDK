unit uTestHtml;

interface

uses Janua.Html.Intf;

function SimplePage: string;
function SimpleTag: string;
function SimpleMeta: string;
function SimpleJavascript: string;
function SimpleHead: string;
function SimpleLink: string;
function PageLoader: string;
function FullWebPage: string;

implementation

uses Janua.Html.Impl, Janua.Html.Types;

function SimplePage: string;
var
  aPage: Janua.Html.Impl.TJanuaHtmlPage;
begin
  aPage := Janua.Html.Impl.TJanuaHtmlPage.Create(Janua.Html.Impl.THtmlHelper.Create);
  try
    Result := (aPage.AsHtml)
  finally
    aPage.Free;
  end;
end;

function SimpleTag: string;
var
  aPage: Janua.Html.Impl.TJanuaHtmlObject;
  aParams: TJanuaHtmlParams;
begin
  aPage := TJanuaHtmlObject.Create(Janua.Html.Impl.THtmlHelper.Create, 'h1', 'Questo è un Titolo');
  try
    aPage.CommentBefore := ('Start Simple Tag');
    aPage.CommentAfter := ('End Simple Tag');
    Result := (aPage.AsHtml);
  finally
    aPage.Free;
  end;

  aParams := [TJanuaHtmlParam.Create('charset', 'UTF-8')];
  aPage := TJanuaHtmlObject.Create(Janua.Html.Impl.THtmlHelper.Create, 'meta', aParams, True, False);
  try
    Result := Result + slineBreak + (aPage.AsHtml);
  finally
    aPage.Free;
  end;

  aPage := TJanuaHtmlObject.Create(Janua.Html.Impl.THtmlHelper.Create, 'div');
  try
    aPage.CommentBefore := ('Start Simple Div');
    aPage.CommentAfter := ('End Simple Div');
    aPage.Id := 'testdiv';
    aPage.addClass('testclass');
    Result := Result + slineBreak + (aPage.AsHtml);
  finally
    aPage.Free;
  end;

end;

function SimpleMeta: string;
begin

end;

function SimpleJavascript: string;
begin

end;

function SimpleHead: string;
begin

end;

function SimpleLink: string;
begin

end;

function PageLoader: string;
begin

end;

function FullWebPage: string;
var
  aPage: IJanuaHtmlPage;
begin
  aPage := TJanuaHtmlFactory.CreatePage as IJanuaHtmlPage;

  aPage.AssetsUrl := 'http://cdn.ergomercator.com/metronic_v5.2/default/dist/demo10';
  aPage.PageTitle :=  'Metronic | Dashboard';
  // aPage.HeadSection.AddSimpleTag('title', 'Metronic | Dashboard', True);
  aPage.PageDescription := 'Latest updates and statistic charts';
  aPage.ViewPort := 'width=device-width, initial-scale=1, shrink-to-fit=no';
  aPage.HeadSection.AddScriptUrl('https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js');
  aPage.HeadSection.SelectedItem.CommentBefore := 'begin::Web font ';
  aPage.HeadSection.AddScript('WebFont.load({');
  with aPage.HeadSection.SelectedItem do
  begin
    AddLineText
      ('   google: {"families":["Poppins:300,400,500,600,700","Roboto:300,400,500,600,700","Asap+Condensed:500"]},');
    AddLineText('  active: function() {');
    AddLineText('    sessionStorage.fonts = true;');
    AddLineText('  }');
    AddLineText('});');
    CommentAfter := 'end::Web font';
  end;
  aPage.HeadSection.AddCssRef('assets/vendors/custom/fullcalendar/fullcalendar.bundle.css');
  aPage.HeadSection.SelectedItem.CommentBefore := 'begin::Base Styles';
  aPage.HeadSection.AddCssRef('assets/vendors/base/vendors.bundle.css');
  aPage.HeadSection.AddCssRef('assets/demo/demo10/base/style.bundle.css');
  aPage.HeadSection.SelectedItem.CommentAfter := 'end::Base Styles';
  Result := (aPage.AsHtml)

end;

end.
