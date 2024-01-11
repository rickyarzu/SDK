unit Janua.Core.Http.WebBroker;

interface

{$I JANUACORE.INC}

uses
  System.Classes,
{$IF Defined(WEBBROKER)}
  Web.HttpApp,
{$ENDIF}
  IdCustomHTTPServer, IdHTTPWebBrokerBridge, IdHTTPHeaderInfo, System.Rtti;

{$IF Defined(WEBBROKER)}

type
  TIdHTTPAppRequestHelper = class helper for TIdHTTPAppRequest
  public
    function GetRequestInfo: TIdHTTPRequestInfo;
  end;

type
  TStringArray = TArray<string>;

type
  TJanuaWebRequest = record
    class function GetRawHeadersString(aRequest: TWebRequest): string; static;
    class function GetRawHeadersArray(aRequest: TWebRequest): TStringArray; static;
    class procedure GetRawHaders(aRequest: TWebRequest; aList: TStrings); static;
    class function GetURI(aRequest: TWebRequest): string;  static;
  end;
{$ENDIF}

implementation


{$IF Defined(WEBBROKER)}

function TIdHTTPAppRequestHelper.GetRequestInfo: TIdHTTPRequestInfo; // TIdEntityHeaderInfo;
begin
  Result := FRequestInfo;
end;

class function TJanuaWebRequest.GetURI(aRequest: TWebRequest): string;
begin
  Result := TIdHTTPAppRequest(aRequest).GetRequestInfo.URI; // TIdHTTPAppRequest(aRequest).GetRequestInfo.
end;

class function TJanuaWebRequest.GetRawHeadersArray(aRequest: TWebRequest): TStringArray; // static;
var
  RowCount, I: Integer;
begin
  // TIdHTTPAppRequest(aRequest).GetRequestInfo.
  RowCount := TIdHTTPAppRequest(aRequest).GetRequestInfo.RawHeaders.count;
  SetLength(Result, RowCOunt);
  for I := 0 to RowCount - 1 do
    Result[I] :=
    // TIdHTTPAppRequest(aRequest).GetRequestInfo.RawHeaders.Names[I] +
      TIdHTTPAppRequest(aRequest).GetRequestInfo.RawHeaders.ToStringArray[I];
end;

class function TJanuaWebRequest.GetRawHeadersString(aRequest: TWebRequest): string; // static;
var
  aList: TStrings;
begin
  aList := TStringList.Create;
  try
    // GetRawHaders(aRequest, aList);
    aList.Assign(TIdHTTPAppRequest(aRequest).GetRequestInfo.RawHeaders);
    Result := aList.Text;
  finally
    aList.Free;
  end;
end;

class procedure TJanuaWebRequest.GetRawHaders(aRequest: TWebRequest; aList: TStrings); // static;
var
  aStringArray: TStringArray;
  I: Integer;
begin
  aStringArray := GetRawHeadersArray(aRequest);
  if Assigned(aList) and (Length(aStringArray) > 0) then
    aList.Assign(TIdHTTPAppRequest(aRequest).GetRequestInfo.RawHeaders);
  // for I := 0 to Length(aStringArray) - 1 do
  // aList.Add(aStringArray[I])
end;

{$ENDIF}

end.
