unit ufrmViewHtml;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, advmjson, AdvmWS, AdvMemo, AdvmCSS;

type
  TForm14 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    AdvMemo1: TAdvMemo;
    AdvCSSMemoStyler1: TAdvCSSMemoStyler;
    AdvHTMLMemoStyler1: TAdvHTMLMemoStyler;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

uses
  Janua.Html.Bootstrap4.Builder, Janua.Html.Bootstrap4, Janua.Html.Bootstrap4.Intf,
  Janua.Html.Bootstrap4.Types, Janua.Html.Builder.Impl,
  Janua.Html.Builder.Intf, Janua.Html.Impl, Janua.Html.Intf, Janua.Html.Metro5.Impl, Janua.Html.Metro5.Intf,
  Janua.Html.Metro5.Pages,
  Janua.Html.Metro5.Types, Janua.Html.Types;

{$R *.dfm}

procedure TForm14.Button1Click(Sender: TObject);
var
  LCssStyle: IJanuaCssStyle;
  LCss: IJanuaCssObject;
  LMedia: IJanuaCssMedia;
begin
  AdvMemo1.SyntaxStyles := self.AdvCSSMemoStyler1;

  LCssStyle := TJanuaCssStyle.Create(Metro5Helper);
  LCss := TJanuaCssObject.CreateWithClasses(['prima', 'seconda', 'terza']);
  LCss.AddStyle(THtmlStyle.BackgroundColor, '#809923');
  LCss.AddStyle(THtmlStyle.PaddingLeft, '10px');
  LCssStyle.AddCss(LCss);
  LCss := nil;
  LCss := TJanuaCssObject.CreateWithTags(['a', 'p', 'span']);
  LCss.AddStyle(THtmlStyle.color, '#809923');
  LCss.AddStyle(THtmlStyle.FontSize, '12px');
  LCssStyle.AddCss(LCss);
  self.AdvMemo1.Lines.Text := LCssStyle.AsHtml;
  LCssStyle := nil;
  LCssStyle := TJanuaCssStyle.Create(Metro5Helper);

  LCss := LCssStyle.AddCssByTags(['a', 'p', 'span']);
  LCss.AddStyle(THtmlStyle.color, '#809923');
  LCss.AddStyle(THtmlStyle.FontSize, '12px');

  LCss := LCssStyle.AddCssByClasses(['prima', 'seconda', 'terza']);
  LCss.AddStyle(THtmlStyle.BackgroundColor, '#809923');
  LCss.AddStyle(THtmlStyle.PaddingLeft, '10px');

  AdvMemo1.Lines.Add(LCssStyle.AsHtml);
  AdvMemo1.Lines.Add('');
  AdvMemo1.Lines.Add('/* media */');
  AdvMemo1.Lines.Add('');

  LMedia := LCssStyle.AddMediaByFeature(TcssMediaType.MediaNone, TCssMediaFeature.MaxWidth, '1024px');
  LCss := LMedia.AddCssByClasses(['m-page', 'm-page__container']);
  LCss.AddStyle(THtmlStyle.Padding, '0 5px;');
  LCss := LMedia.AddCssByClasses(['m-page--fluid', 'm-page', 'm-page__container']);
  LCss.AddStyle(THtmlStyle.Padding, '0 15px;');
  LCss := LMedia.AddCssByClasses(['m-body', 'm-wrapper']);
  LCss.AddStyle(THtmlStyle.Padding, '0 0px;');
  AdvMemo1.Lines.Add(LCssStyle.AsHtml);
end;

procedure TForm14.Button2Click(Sender: TObject);
var
  LFooterMenu: IMetro5FooterNav;
begin
  LFooterMenu := TMetro5FooterNav.Create(Metro5Helper);
  LFooterMenu.IsInline := False;
  LFooterMenu.AddStyle(THtmlStyle.color, '#fff');
  LFooterMenu.AddNavItem('http://www.aia-figc.it', 'A.I.A.', TMetro5IconType.jmiNone,
    'Sito ufficiale dell’Associazione Italia Arbitri', True);
  LFooterMenu.AddNavItem('http://www.craliguria.it', 'C.R.A. Liguria', TMetro5IconType.jmiNone,
    'Sito ufficiale dell’Associazione Italia Arbitri', True);
  // <li><a href="http://www.figc.it" title="Sito ufficiale della Federcalcio" target="_blank">F.I.G.C.</a></li>
  LFooterMenu.AddNavItem('http://www.figc.it', 'F.I.G.C.', TMetro5IconType.jmiNone,
    'Sito ufficiale della Federcalcio', True);
  // <li><a href="http://www.lnd.it" title="Sito ufficiale della Lega Nazionale Dilettanti" target="_blank">LEGA NAZIONALE DILETTANTI</a></li>
  LFooterMenu.AddNavItem('http://www.lnd.it', 'L.N.D. Nazionale', TMetro5IconType.jmiNone,
    'Sito ufficiale della Lega Nazionale Dilettanti', True);
  // <li><a href="http://www.legapro.it" title="Sito ufficiale della Lega Pro" target="_blank">LEGA PRO</a></li>
  LFooterMenu.AddNavItem('https://www.figc.it/it/federazione/norme/norme-organizzative-interne/', 'N.O.I.FIGC', TMetro5IconType.jmiNone,
    'Norme Organizzative Interne F.I.G.C.', True);
  AdvMemo1.SyntaxStyles := self.AdvHTMLMemoStyler1;
  self.AdvMemo1.Lines.Text := LFooterMenu.AsHtml
end;

end.
