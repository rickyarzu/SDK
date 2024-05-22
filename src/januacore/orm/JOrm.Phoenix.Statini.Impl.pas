unit JOrm.Phoenix.Statini.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Phoenix.Statini.Intf, JOrm.Phoenix.Statini.Custom.Impl;

//------------------------------------------ Impl Record interface ----------------------------------

type
  TStatino = class(TCustomStatino, IStatino)
  private
  public
    constructor Create; override;

  end;

  TStatini = class(TCustomStatini, IJanuaRecordSet, IStatini)
  protected
    function GetStatino: IStatino;
  public
    constructor Create; override;
    property Statino:IStatino read GetStatino;
  end;

  TStatinoFactory = class
    class function CreateRecord(const aKey: string): IStatino; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IStatini; overload;
    class function CreateRecordset(const aName: string): IStatini; overload;
  end;

implementation

//------------------------------------------ Impl TStatino -------------------------------

{TStatino}

  constructor TStatino.Create;
  begin
    inherited;
  end;

  { TStatini }
  constructor TStatini.Create;
  begin
    inherited;
    FRecord := TStatinoFactory.CreateRecord('Statino');
  end;

  function TStatini.GetStatino: IStatino;
  begin
    Result := FRecord as IStatino;
  end;

  { TStatinoFactory }

  class function TStatinoFactory.CreateRecord(const aKey: string): IStatino;
  begin
    Result := TStatino.Create(aKey);
  end;

  class function TStatinoFactory.CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IStatini;
  begin
    Result := TStatini.Create(aName, aLocalStorage, aRemoteStorage);
  end;


  class function TStatinoFactory.CreateRecordset(const aName: string): IStatini;
  begin
    Result := TStatini.Create(aName, nil, nil);
  end;

end.
