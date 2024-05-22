unit JOrm.Phoenix.Amministratori.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Phoenix.Amministratori.Intf, JOrm.Phoenix.Amministratori.Custom.Impl;

//------------------------------------------ Impl Record interface ----------------------------------

type
  TAmministratore = class(TCustomAmministratore, IAmministratore)
  private
  public
    constructor Create; override;

  end;

  TAmministratori = class(TCustomAmministratori, IJanuaRecordSet, IAmministratori)
  protected
    function GetAmministratore: IAmministratore;
  public
    constructor Create; override;
    property Amministratore:IAmministratore read GetAmministratore;
  end;

  TAmministratoreFactory = class
    class function CreateRecord(const aKey: string): IAmministratore; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IAmministratori; overload;
    class function CreateRecordset(const aName: string): IAmministratori; overload;
  end;

implementation

//------------------------------------------ Impl TAmministratore -------------------------------

{TAmministratore}

  constructor TAmministratore.Create;
  begin
    inherited;
  end;

  { TAmministratori }
  constructor TAmministratori.Create;
  begin
    inherited;
    FRecord := TAmministratoreFactory.CreateRecord('Amministratore');
  end;

  function TAmministratori.GetAmministratore: IAmministratore;
  begin
    Result := FRecord as IAmministratore;
  end;

  { TAmministratoreFactory }

  class function TAmministratoreFactory.CreateRecord(const aKey: string): IAmministratore;
  begin
    Result := TAmministratore.Create(aKey);
  end;

  class function TAmministratoreFactory.CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IAmministratori;
  begin
    Result := TAmministratori.Create(aName, aLocalStorage, aRemoteStorage);
  end;


  class function TAmministratoreFactory.CreateRecordset(const aName: string): IAmministratori;
  begin
    Result := TAmministratori.Create(aName,  nil, nil);
  end;

end.
