unit JanuaXML;

interface

uses SysUtils, Classes, Janua.Core.Functions,  DB, XMLDoc, XMLIntf;


function DatasetToXML( Dataset: TDataset; RootName, RecordName: string): String ;
function DecodeXmlDate(dDate: string ): TDateTime;

implementation

function DatasetToXML( Dataset: TDataset; RootName, RecordName: string): String ;
var
  XMLDoc: TXMlDocument;
  i: integer;
  iNode, iChild: IXMLNode;
begin
  if Dataset.RecordCount > 0 then
  begin
   XMLDoc := TXMlDocument.Create(nil);
   try
      XMLDoc.Active := True;
      XMLDoc.DocumentElement :=  XMLDoc.CreateNode(RootName);
      if Dataset.Active and (Dataset.RecordCount > 0) then
      begin
        Dataset.First;
        while not Dataset.Eof do
        begin
           iNode := XMLDoc.DocumentElement.AddChild(RecordName);
           for i := 0 to Dataset.FieldCount - 1 do
           begin
              iChild := iNode.AddChild(Dataset.Fields[i].FieldName);
              iChild.Text := Dataset.Fields[i].AsWideString;
           end;
           Dataset.Next;
        end;
      end;
      Result := XMLDoc.XML.Text;
      XMLDoc.Active := False;
   finally
      FreeAndNil(XMLDoc);
   end;
  end
  else
  begin
    Result := ''; 
  end;
end;

function MakeXmlDate(dDate: TDateTime): string;
var
  Year: Word;
  Month: Word;
  Day: Word;
begin
     // funnzione di creazione date per xml
   DecodeDate(dDate, Year, Month, Day );
   Result := IntToSTr(year) + '-' + lpad(intToStr(month), 2, '0') + '-' + lpad(intToStr(Day), 2, '0');
end;

function DecodeXmlDate(dDate: string ): TDateTime;
var
  Year: Word;
  Month: Word;
  Day: Word;
begin
     // funnzione di creazione date per xml
   // '2012-10-24'
   //  1234567890'
   year := StrToInt(Copy(dDate, 1, 4));
   month := StrToInt(Copy(dDate, 6, 2));
   day := StrToInt(Copy(dDate, 9, 2));
   Result :=  EncodeDate(Year, Month, Day );
end;


function MakeXmlAttribute (attrName, attrValue: string): string;
begin
  Result := attrName + '="' + attrValue + '"';
end;



function FieldsToXmlField (rootName: string; data: TDataSet; baseFieldName: string): string;
var
  i: Integer;
  id: string;
begin
    for i := 0 to data.FieldCount - 1 do
      if (data.Fields[i].Tag > 0) and (data.Fields[i].FieldName <> baseFieldName) then
      case data.Fields[i].Tag of
        1: id := id + MakeXmlAttribute(data.Fields[i].DisplayLabel, data.Fields[i].AsString);
        2: id := id + MakeXmlAttribute(data.Fields[i].DisplayLabel, MakeXmlDate(data.Fields[i].AsDateTime));

      end;
    Result := id;
end;



end.
