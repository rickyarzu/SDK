unit Janua.CarService.DMVC.www.CustConf;

interface

uses
  System.SysUtils, System.Classes, System.Types, System.UITypes, System.Variants, System.Generics.Collections,
  // Spring
  Spring, Spring.Collections,
  // DB Libraries
  FireDAC.Comp.Client, Data.DB,
  // DMVC Framework
  MVCFramework, MVCFramework.Commons, MVCFramework.Serializer.Commons,
  // Januaproject Interfaces
  Janua.Orm.Dataset.Intf, Janua.Orm.Intf, Janua.Core.Classes.Intf, Janua.Bindings.Intf,
  Janua.ViewModels.Intf, Janua.Core.DB.Intf, JOrm.System.Settings.Intf,
  // Janua DMVC
  Janua.DMVC.Controller.Template,
  // Janua.Libraries
  Janua.Core.Commons, Janua.Core.Classes, Janua.Core.DB.Impl, Janua.Core.Types, Janua.Core.DB.Types,
  Janua.Http.Types;

type

  [MVCPath('/')]
  TPikappCustConfWWWController = class(TCustomMVVMSrvController)

  public
    [MVCPath]
    [MVCHTTPMethod([httpPOST])]
    procedure IndexPost;

    [MVCPath]
    [MVCHTTPMethod([httpGET])]
    procedure Index; override;

  end;

implementation

{ TPikappCustConfWWWController }

procedure TPikappCustConfWWWController.Index;
var
  aPair: System.Generics.Collections.TPair<string, string>;
  lResponse: string;
begin
  // Completely override inhterited behaviour
  // inherited;
  var
  aBuilder := TStringBuilder.Create;
  try
    var
    lParams := Context.Request.QueryString;

    aBuilder.Append('<html><body>') // body
      .Append('QueryString = <br />' + lParams + '<br />') // QueryString
      .Append('<table>') // table
      .Append('<tr><th>Parametro </th><th>Valore</th></tr>'); // table header
    for aPair in Context.Request.ContentFields do
      aBuilder.Append('<tr><th>' + aPair.Key + '</th><th>' + aPair.Value + '</th></tr>');
    aBuilder.Append('</table>');
    aBuilder.Append('</body></html>');
    lResponse := aBuilder.ToString;
  finally
    aBuilder.Free;
  end;

  { we are going to produce simple text.
    let's inform the client about the format
    of the body response format }
  ContentType := TJanuaMimeString.TEXT_HTML;
  { Render a simple string }
  Render(lResponse)

end;

procedure TPikappCustConfWWWController.IndexPost;
begin

end;

end.
