unit udmJanuaCoreRSS;

{$I JANUACORE.INC}

interface

uses
  System.SysUtils, System.Classes,
  // janua
  janua.core.functions, janua.core.Classes,
  // XML
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc, Xml.omnixmldom,
  // DB
  Data.DB;

type
  TdmJanuaCoreRSS = class(TDataModule)
    XMLDoc: TXMLDocument;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmJanuaCoreRSS: TdmJanuaCoreRSS;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

end.
