unit Unit1;

{
Article:

Reading and manipulating XML files with Delphi

http://delphi.about.com/library/weekly/aa072903a.htm

Learn how to read and manipulate XML documents with Delphi using
the TXMLDocument component. Let's see how to extract the most
current "In The Spotlight" blog entries from the About Delphi Programming (this site).


..............................................
Zarko Gajic, BSCS
About Guide to Delphi Programming
http://delphi.about.com
email: delphi.guide@about.com
free newsletter: http://delphi.about.com/library/blnewsletter.htm
forum: http://forums.about.com/ab-delphi/start/
..............................................
}


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xmldom, XMLIntf,  XMLDoc, msxmldom, ComCtrls,
  StdCtrls, ExtCtrls, Xml.omnixmldom;

type
  TForm1 = class(TForm)
    lv: TListView;
    XMLDoc: TXMLDocument;
    pnlTop: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    btnRefresh: TButton;
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
{$R *.dfm}

uses ExtActns; //to be able to iuse TDownLoadURL

function DownloadURLFile(const ADPXMLBLOG, ADPLocalFile : TFileName) : boolean;
begin
  Result:=True;

  with TDownLoadURL.Create(nil) do
  try
    URL:=ADPXMLBLOG;
    Filename:=ADPLocalFile;
    try
      ExecuteTarget(nil);
    except
      Result:=False;
    end;
  finally
    Free;
  end;
end;

procedure TForm1.btnRefreshClick(Sender: TObject);
const
  ADPXMLBLOG = 'http://z.about.com/6/g/delphi/b/index.xml';
var
  ADPLocalFile : TFileName;

  StartItemNode : IXMLNode;
  ANode : IXMLNode;
  STitle, sDesc, sLink : widestring;
begin
  ADPLocalFile := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) + 'temp.adpheadlines.xml';

  Screen.Cursor:=crHourglass;
  try
    if not DownloadURLFile(ADPXMLBLOG, ADPLocalFile)  then
    begin
      Screen.Cursor:=crDefault;
      Raise Exception.CreateFmt('Unable to connect to the Internet, make sure you are connected!',[]);
      Exit;
    end;

    if not FileExists(ADPLocalFile) then
    begin
      Screen.Cursor:=crDefault;
      raise exception.Create('Can''t locate the *headlines* file?!');
      Exit;
    end;

    lv.Clear;

    XMLDoc.FileName := ADPLocalFile;
    XMLDoc.Active:=True;


    StartItemNode:=XMLDoc.DocumentElement.ChildNodes.First.ChildNodes.FindNode('item');
    ANode := StartItemNode;
    repeat
      STitle := ANode.ChildNodes['title'].Text;
      sLink := ANode.ChildNodes['link'].Text;
      sDesc := ANode.ChildNodes['description'].Text;

      //add to list view
      with LV.Items.Add do
      begin
        Caption := STitle;
        SubItems.Add(sLink);
        SubItems.Add(sDesc)
      end;

      ANode := ANode.NextSibling;
    until ANode = nil;
  finally
    DeleteFile(ADPLocalFile);
    Screen.Cursor:=crDefault;
  end;
end;

end.
