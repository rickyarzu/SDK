unit Janua.Core.Books;

interface

{$I JANUACORE.INC}

uses Janua.Core.Classes, Janua.Core.System, Data.DB, Janua.Core.Servers, System.SysUtils, System.Classes,
  Janua.Core.Users, Janua.Core.Types, Janua.Core.JPublic, Janua.Core.Entities;

type
  /// <summary>
  /// TJanuaBook is the record of a Single Book.
  /// </summary>
  /// <remarks>
  /// This will be using when the user will be browsing books in the application.....
  /// </remarks>
  TJanuaBook = record
    Title: string;
    Country: TISOCountry;
    ISBN10: string;
    ISBN13: string;

  end;

type
  TJanuaCustomServerBooks = class(TJanuaCustomServer)
  private
    FcdsBooksDefs: TDataset;
    FLocalMyBase: boolean;
    FAutoCreateCDS: boolean;
    procedure SetcdsBooksDefs(const Value: TDataset);
    procedure SetLocalMyBase(const Value: boolean);
    procedure SetAutoCreateCDS(const Value: boolean);
    procedure CreateLocalDatasets;
    procedure DestroyLocalDatasets;
  protected
    function InternalActivate: boolean; override;
  public
    destructor Destroy; override;
  published
    property cdsBooksDefs: TDataset read FcdsBooksDefs write SetcdsBooksDefs;
    property LocalMyBase: boolean read FLocalMyBase write SetLocalMyBase default False;
    property AutoCreateCDS: boolean read FAutoCreateCDS write SetAutoCreateCDS default True;
  end;

implementation

uses FireDAC.Comp.Client, Janua.Core.Functions, Janua.Application.Framework;

{ TJanuaCustomServerUni }

procedure TJanuaCustomServerBooks.CreateLocalDatasets;
begin
  begin
    FcdsBooksDefs := TFdMemTable.Create(self);
    FcdsBooksDefs.Name := 'cdsBooksDefs';
  end;
end;

destructor TJanuaCustomServerBooks.Destroy;
begin
  try
    DestroyLocalDatasets;
  except
    on e: exception do
      begin
        LogException('Destroy', e, self);
      end;
  end;
  inherited;
end;

procedure TJanuaCustomServerBooks.DestroyLocalDatasets;
begin
  if Assigned(self.FcdsBooksDefs) then
    self.FcdsBooksDefs.Free;

end;

function TJanuaCustomServerBooks.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        if Result and AutoCreateCDS then
          CreateLocalDatasets
        else
          DestroyLocalDatasets;
      end;
    except
      on e: exception do
        RaiseLocalException('InternalActivate', e);
    end;
end;

procedure TJanuaCustomServerBooks.SetAutoCreateCDS(const Value: boolean);
begin
  FAutoCreateCDS := Value;
end;

procedure TJanuaCustomServerBooks.SetcdsBooksDefs(const Value: TDataset);
begin
  FcdsBooksDefs := Value;
end;

procedure TJanuaCustomServerBooks.SetLocalMyBase(const Value: boolean);
begin
  FLocalMyBase := Value;
end;

end.
