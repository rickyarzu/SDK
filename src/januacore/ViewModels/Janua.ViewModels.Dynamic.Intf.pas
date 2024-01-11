unit Janua.ViewModels.Dynamic.Intf;

interface

uses Janua.ViewModels.Intf, Janua.Orm.Intf, System.JSON;

type
  IJanuaDynSqlDataset = interface(IJanuaDBDataset)
   ['{4CCDB53A-FDD8-436F-B29A-F338A6F4FF27}']
   function AddLine(const aLine: string): IJanuaDynSqlDataset;
   function GetAsJsonOBject: TJsonObject;
   procedure SetAsJsonOBject(const aValue: TJsonObject);
   property AsJsonOBject: TJsonObject read GetAsJsonOBject write SetAsJsonObject;
   procedure GenerateDataset;
   function AddDetailDataset(const aDataset:  IJanuaDynSqlDataset): IJanuaDynSqlDataset; overload;
   function AddDetailDataset(const aJsonObject: TJSONObject): IJanuaDynSqlDataset; overload;
   function AddDetailDataset(const aName: string): IJanuaDynSqlDataset; overload;
  end;

  IJanuaDBDynModel = interface(IJanuaDBModel)
    ['{ED732D2D-A437-40D5-B246-08EA93C68657}']
   function AddDataset(const aDataset:  IJanuaDynSqlDataset): IJanuaDynSqlDataset; overload;
   function AddDataset(const aJsonObject: TJSONObject): IJanuaDynSqlDataset; overload;
   function AddDataset(const aName: string): IJanuaDynSqlDataset; overload;
   function GenerateRecordSet: IJanuaRecordSet;
   function GetAsJsonOBject: TJsonObject;
   procedure SetAsJsonOBject(const aValue: TJsonObject);
   property AsJsonOBject: TJsonObject read GetAsJsonOBject write SetAsJsonObject;
  end;

implementation

end.
