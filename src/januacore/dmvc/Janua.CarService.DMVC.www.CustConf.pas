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
  Janua.DMVC.Srv.Template,
  // Janua.Libraries
  Janua.Core.Commons, Janua.Core.Classes, Janua.Core.DB.Impl, Janua.Core.Types, Janua.Core.DB.Types,
  Janua.Http.Types;

type

  [MVCPath('/')]
  TPikappCustConfWWWController = class(TJanuaCustomDMVCSrvController)

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
begin
  inherited;
  var
  lParams := Context.Request.QueryString;
  var
  lResponse := '<html><body>';
  lResponse := 'QueryString = <br />' + lParams + '<br />';
  lResponse := lResponse + '<table>';
  lResponse := lResponse + '<tr><th>Parametro </th><th>Valore</th></tr>';
  for aPair in Context.Request.ContentFields do
    lResponse := lResponse + '<tr><th>' + aPair.Key + '</th><th>' + aPair.Value + '</th></tr>';
  lResponse := lResponse + '</table>';
  lResponse := '</body></html>';

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
