unit Janua.Mime.Types;

interface

uses System.Classes, Spring, Spring.Collections;

// ******************* Janua Mimme and Charset Type Management *************************************

type
  TJanuaMimeType = (jmtApplicationJson, jmtApplicationXml, jmtTextHtml, jmtTextCss, jmtTextXml, jmtTextPlain,
    jmtOctetStream, jmtApplicationJavascript, jmtRSSXML, jmtImageIcon, jmtTextJavascript, jmtUnknown);

type
  TJanuaCharsetType = (jcsUnknown, jcsUTF8, jcsANSI, jcsASCII, jcsISO8859_1);

const
  JanuaMimeString: array [TJanuaMimeType] of string = ('application/json', 'application/xml', 'text/html', 'text/css',
    'text/xml', 'text/plain', 'application/octet-stream', 'application/javascript', 'application/rss+xml',
    'image/x-icon', 'text/javascript', '');

  JanuaCharsetString: array [TJanuaCharsetType] of string = ('', 'UTF-8', 'ANSI', 'ASCII', 'ISO-8859-1');


type
  TJanuaMimeDef = class
    class function GetMimeFromExtension(const aExt: string): string;

  end;

implementation

var
  FMimeExtDict: IDictionary<string, string>;

  { TJanuaMime }

class function TJanuaMimeDef.GetMimeFromExtension(const aExt: string): string;
begin
  if not  FMimeExtDict.TryGetValue(aExt, Result) then Result := 'application/octet-stream'
end;

initialization

FMimeExtDict := TCollections.CreateDictionary<string, string>;
(*

*)
FMimeExtDict.Add('.pfr', 'application/font-tdpfr');
FMimeExtDict.Add('.bdf', 'application/x-font-bdf');
FMimeExtDict.Add('.gsf', 'application/x-font-ghostscript');
FMimeExtDict.Add('.psf', 'application/x-font-linux-psf');
FMimeExtDict.Add('.otf', 'application/x-font-otf');
FMimeExtDict.Add('.pcf', 'application/x-font-pcf');
FMimeExtDict.Add('.snf', 'application/x-font-snf');
FMimeExtDict.Add('.ttf', 'application/x-font-ttf');
FMimeExtDict.Add('.ttc', 'application/x-font-ttf');
FMimeExtDict.Add('.pfa', 'application/x-font-type1');
FMimeExtDict.Add('.pfb', 'application/x-font-type1');
FMimeExtDict.Add('.pfm', 'application/x-font-type1');
FMimeExtDict.Add('.afm', 'application/x-font-type1');
FMimeExtDict.Add('.woff', 'application/font-woff');
FMimeExtDict.Add('.jpg', 'image/jpeg');
FMimeExtDict.Add('.png', 'image/png');
FMimeExtDict.Add('.gif', 'image/gif');
FMimeExtDict.Add('.pdf', 'application/pdf');
FMimeExtDict.Add('.js', 'application/javascript');
FMimeExtDict.Add('.css', 'text/css');
FMimeExtDict.Add('.json', 'application/json');
FMimeExtDict.Add('.zip', 'application/zip');
end.

