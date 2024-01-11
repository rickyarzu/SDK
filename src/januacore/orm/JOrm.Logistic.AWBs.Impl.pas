unit JOrm.Logistic.AWBs.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.Logistic.AWBRows.Intf, JOrm.Logistic.AWBRows.Custom.Impl,
  JOrm.Logistic.AWBs.Custom.Impl, JOrm.Logistic.AWBs.Intf, JOrm.Anagraph.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TLogisticAWBRow = class(TCustomLogisticAWBRow, ILogisticAWBRow)
  public
    constructor Create; override;
  end;

  TLogisticAWBRows = class(TCustomLogisticAWBRows, IJanuaRecordSet, ILogisticAWBRows)
  public
    constructor Create; override;
  end;

  TLogisticAWB = class(TCustomLogisticAWB, IJanuaRecord, ILogisticAWB)
  private
    FAirAnagraph: IAnagraph;
    FLogistiAWBRows: ILogisticAWBRows;
  protected
    function GetAirAnagraph: IAnagraph;
    // ILogisticAWBRows
    function GetLogisticAWBRows: ILogisticAWBRows;
  public
    constructor Create; override;
  public
    property AirAnagraph: IAnagraph read GetAirAnagraph;
    property LogisticAWBRows: ILogisticAWBRows read GetLogisticAWBRows;
  end;

  TLogisticAWBs = class(TCustomLogisticAWBs, IJanuaRecordSet, ILogisticAWBs)
  public
    constructor Create; override;
  end;

  TLogisticAWBRowFactory = class
    class function CreateRecord(const aKey: string): ILogisticAWBRow; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : ILogisticAWBRows; overload;
  end;

  TLogisticAWBFactory = class
    class function CreateRecord(const aKey: string): ILogisticAWB; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : ILogisticAWBs; overload;
  end;

implementation

uses System.SysUtils, Janua.Orm.Types, Janua.Application.Framework;

// ------------------------------------------ Impl TGroup -------------------------------

{ TGroup }

constructor TLogisticAWBRow.Create;
begin
  inherited;
  SetEntity(TJanuaEntity.LogAWBRows);
  FPrefix := 'awbr';
end;

{ TLogisticAWBRows }
constructor TLogisticAWBRows.Create;
begin
  inherited;
  FRecord := TLogisticAWBRowFactory.CreateRecord('LogisticAWBRow');
end;

{ TLogisticAWBRowFactory }

class function TLogisticAWBRowFactory.CreateRecord(const aKey: string): ILogisticAWBRow;
begin
  Result := TLogisticAWBRow.Create;
end;

class function TLogisticAWBRowFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): ILogisticAWBRows;
begin
  Result := TLogisticAWBRows.Create(aName, aLocalStorage, aRemoteStorage);
end;

{ TLogisticAWB }

constructor TLogisticAWB.Create;
begin
  inherited;
  FLogistiAWBRows := TLogisticAWBRowFactory.CreateRecordset('LogisticAWBRows', nil, nil);
  AddRecordSet(FLogistiAWBRows);

end;

function TLogisticAWB.GetAirAnagraph: IAnagraph;
begin
  Result := FAirAnagraph;
end;

function TLogisticAWB.GetLogisticAWBRows: ILogisticAWBRows;
begin
  Result := FLogistiAWBRows
end;

{ TLogisticAWBFactory }

class function TLogisticAWBFactory.CreateRecord(const aKey: string): ILogisticAWB;
begin
  Result := TLogisticAWB.Create;
end;

class function TLogisticAWBFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): ILogisticAWBs;
begin
  Result := TLogisticAWBs.Create(aName, aLocalStorage, aRemoteStorage);
end;

{ TLogisticAWBs }

constructor TLogisticAWBs.Create;
begin
  inherited;
  FRecord := TLogisticAWBFactory.CreateRecord('LogisticAWB');
end;

end.
