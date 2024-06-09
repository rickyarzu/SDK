unit Janua.Core.Maps;

interface

uses System.SysUtils, Xml.XmlIntf, Xml.XmlDoc, Janua.Maps.Intf, Janua.Maps.Types;

Type
  TOSMXmlParser = class(TInterfacedObject, IOSMXmlParser)
  private
    FOSMNodeArray: TOSMNodeArray;
    FXMLDocument: string;
  public
    function ParseDocument: integer; overload;
    function ParseDocument(aDocument: string): integer; overload;
    procedure LoadDocumentFromFile(aDocumentFileName: TFileName);
    function GetOSMNodeArray: TOSMNodeArray;
    function FindNodes(Group, AddressType: string): TOSMNodeArray; overload;
    function FindNodes(aAddressType: TOSMLocationType): TOSMNodeArray; overload;
  private
    procedure AddNode(aNode: TOSMNode);
    procedure SetOSMNodeArray(Value: TOSMNodeArray);
    function GetXMLDocument: string;
    procedure SetXMLDocument(Value: string);
    // properties
  public
    property OSMNodeArray: TOSMNodeArray read GetOSMNodeArray write SetOSMNodeArray;
    property XMLDocument: string read GetXMLDocument write SetXMLDocument;
  end;

  // Janua.Maps.Types

implementation

uses
  System.Classes, Xml.xmldom, Xml.Omnixmldom, Janua.Core.Functions;

{ TOSMXmlParser }

procedure TOSMXmlParser.AddNode(aNode: TOSMNode);
begin
  SetLength(self.FOSMNodeArray, Length(FOSMNodeArray) + 1);
  FOSMNodeArray[Length(FOSMNodeArray) - 1] := aNode;
end;

function TOSMXmlParser.FindNodes(Group, AddressType: string): TOSMNodeArray;
begin
  Result := FindNodes(Janua.Maps.Types.FindType(Group, AddressType));
end;

function TOSMXmlParser.FindNodes(aAddressType: TOSMLocationType): TOSMNodeArray;
var
  aNode: TOSMNode;
begin
  for aNode in self.FOSMNodeArray do
    if aNode.Location.OSMType = aAddressType then
    begin
      SetLength(Result, Length(Result) + 1);
      Result[Length(Result) - 1] := aNode;
    end;
end;

function TOSMXmlParser.GetOSMNodeArray: TOSMNodeArray;
begin
  Result := self.FOSMNodeArray
end;

function TOSMXmlParser.GetXMLDocument: string;
begin
  Result := FXMLDocument
end;

procedure TOSMXmlParser.LoadDocumentFromFile(aDocumentFileName: TFileName);
var
  aStringList: TStringList;
begin
  aStringList := TStringList.Create;
  try
    // LoadFromFile(sFilePath, TEncoding.UTF8);
    aStringList.LoadFromFile(aDocumentFileName, TEncoding.UTF8);
    self.SetXMLDocument(aStringList.Text);
  finally
    aStringList.Free;
  end;
  // self.ParseDocument;
end;

function TOSMXmlParser.ParseDocument(aDocument: string): integer;
begin
  Result := 0;
  SetXMLDocument(aDocument);
  self.ParseDocument;
end;

function TOSMXmlParser.ParseDocument: integer;
var
  Doc: IXMLDocument;
  i: integer;
  // Doc: TXMLDocument;
  NodesList: IDOMNodeList;
  aOSMNode: TOSMNode;
  temp: string;
begin
  // Container.DOMVendor. := TDOMVendor.
  Doc := TXMLDocument.Create(nil);
  Assert(self.FXMLDocument <> '', 'TOSMXmlParser.ParseDocument FXMLDocument not loaded');
  // IXMLDocument :=
  Doc.LoadFromXML(self.FXMLDocument);
  NodesList := Doc.DOMDocument.getElementsByTagName('node');
  Result := 0;
  // recupero i dati dai contributi alle Open Street Maps   ...........................................................
  if NodesList.Length > 0 then
  begin
    for i := 0 to NodesList.Length - 1 do
      if NodesList.item[i].childNodes.Length > 0 then
      begin
        temp := NodesList.item[i].attributes.getNamedItem('id').nodeValue;
        if temp <> '' then
        begin
          Inc(Result);
          aOSMNode.Create(NodesList.item[i], temp.ToInt64);
          self.AddNode(aOSMNode);
        end;
      end;
  end;
  // recupero i dati dal Catasto e dallo stradario di Genova ...........................................................
  { NodesList := Doc.DOMDocument.getElementsByTagName('way');
    Result := 0;
    if NodesList.Length > 0 then
    begin
    for i := 0 to NodesList.Length - 1 do
    if NodesList.item[i].childNodes.Length > 0 then
    begin
    temp := NodesList.item[i].attributes.getNamedItem('id').nodeValue;
    if temp <> '' then
    begin
    Inc(Result);
    aOSMNode.Create(NodesList.item[i], temp.ToInt64);
    self.AddNode(aOSMNode);
    end;
    end;
    end }
end;

procedure TOSMXmlParser.SetOSMNodeArray(Value: TOSMNodeArray);
begin
  self.FOSMNodeArray := Value
end;

procedure TOSMXmlParser.SetXMLDocument(Value: string);
begin
  self.FXMLDocument := Value;
end;

initialization

Xml.xmldom.DefaultDOMVendor := 'Omni XML';

end.
