unit Janua.Core.WebServices;

interface

{$I JANUACORE.INC}

uses
{$IFDEF MSWINDOWS}
  Winapi.Windows, Winapi.WinSock, WinInet,
{$ENDIF}
{$IFDEF WEBBROKER}
  Soap.EncdDecd,
{$ENDIF}
  // Janua Core ...........................................
  Janua.Core.Hash, Janua.Core.Sockets, Janua.Core.Classes,
  // System
  System.SysUtils, Web.HTTPApp, System.NetEncoding;

type
  TJanuaAmazonBooks = class(TJanuaCoreComponent)
  private
    FAWSAccessKeyId: string;
    FTimeStamp: string;
    FISBN: string;
    FSimpleUrlIT: string;
    FISBN13: string;
    procedure SetAWSAccessKeyId(const Value: string);
    procedure SetISBN(const Value: string);
    procedure SetISBN13(const Value: string);
    procedure SetSimpleUrlIT(const Value: string);

  public
{$IFDEF WEBBROKER} function getBookUrl: string; {$ENDIF}
  published
    property AWSAccessKeyId: string read FAWSAccessKeyId write SetAWSAccessKeyId;
    property TimeStamp: string read FTimeStamp;
    property ISBN: string read FISBN write SetISBN;
    property ISBN13: string read FISBN13 write SetISBN13;
    property SimpleUrlIT: string read FSimpleUrlIT write SetSimpleUrlIT;
  end;

implementation

{ TJanuaAmazonBooks }

{$IFDEF WEBBROKER}

function TJanuaAmazonBooks.getBookUrl: string;
var
  toHash, SecretAccessKey, dirstr, sg, ts, link: String;
  awssignature: String;
  sig: T160BitDigest;
{$IFDEF WINDOWS}
  SystemTime1: SYSTEMTIME;
{$ELSE}
  SystemTime1: TDateTime;
{$ENDIF}
  dt1: TDateTime;
begin
{$IFDEF WINDOWS}
  GetSystemTime(SystemTime1);
  dt1 := SystemTimeToDateTime(SystemTime1) + 0.1;
{$ELSE}
  SystemTime1 := Now();
  dt1 := SystemTime1 + 0.1;
{$ENDIF}
  ts := '&Timestamp=' + (TNetEncoding.URL.Encode((FormatDateTime('yyyy"-"mm"-"dd"T"hh":00:00.000Z', dt1))));

  toHash := 'GET' + Chr(10) + 'ecs.amazonaws.com' + Chr(10) + '/onca/xml' + Chr(10) +
    'AWSAccessKeyId=AKIAID6DSLQQRYN3MDQA&AssociateTag=locboo01-20&Keywords=031238792X&Operation=ItemSearch&SearchIndex=Books'
    + '&Service=AWSECommerceService&SignatureMethod=HmacSHA1&SignatureVersion=2' + ts + '&Version=2011-08-01';

  SecretAccessKey := 'Your secret key here';

  sig := Janua.Core.Hash.CalcHMAC_SHA1(SecretAccessKey, toHash);
  dirstr := Janua.Core.Hash.SHA1DigestAsString(sig);
  awssignature := Soap.EncdDecd.EncodeString(dirstr);

  sg := TNetEncoding.URL.Encode(awssignature);
  link := 'http://ecs.amazonaws.com/onca/xml' + '?' +
    'AWSAccessKeyId=AKIAID6DSLQQRYN3MDQA&AssociateTag=locboo01-20&Keywords=031238792X&Operation=ItemSearch&SearchIndex=Books'
    + '&Service=AWSECommerceService&SignatureMethod=HmacSHA1&SignatureVersion=2' + ts + '&Version=2011-08-01' +
    '&Signature=' + sg;
  // Clipboard.AsText := link;
  // Memo1.Lines.Add(sg);

end;
{$ENDIF}

procedure TJanuaAmazonBooks.SetAWSAccessKeyId(const Value: string);
begin
  FAWSAccessKeyId := Value;
end;

procedure TJanuaAmazonBooks.SetISBN(const Value: string);
begin
  FISBN := Value;
end;

procedure TJanuaAmazonBooks.SetISBN13(const Value: string);
begin
  FISBN13 := Value;
end;

procedure TJanuaAmazonBooks.SetSimpleUrlIT(const Value: string);
begin
  FSimpleUrlIT := Value;
end;

end.
