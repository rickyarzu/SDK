unit Janua.Core.Collections;

interface

{$I JANUACORE.INC}

uses
  System.SysUtils, System.Classes, Generics.Collections,
  // System.Bindings.Expression,
  // System.Bindings.Helper,
  Janua.Core.Functions, Janua.Core.Classes, DB,
  Janua.Core.CustomControls;

type
  TJanuaProperties = class(TCollectionItem)
  private

  protected
    FHint: string;
    FTargetField: string;
    FTarget: TObject;
    FComponentName: string;
    FComponent: TComponent;
    procedure SetHint(const Value: string); virtual;
    procedure WriteError(aError: String; e: Exception);
    procedure WriteLog(aLog: string);
    // procedure BindTarget; virtual; abstract;
    procedure SetComponentName(const Value: string); virtual;
    procedure SetComponent(const Value: TComponent); virtual; abstract;
    procedure SetTargetField(const Value: string); virtual;
  public
  published
    property ComponentName: string read FComponentName write SetComponentName;
    property Component: TComponent read FComponent write SetComponent;
    property Hint: string read FHint write SetHint;
    property TargetField: string read FTargetField write SetTargetField;
  end;

implementation

{ TJanuaProperties }

procedure TJanuaProperties.SetComponentName(const Value: string);
begin

end;

procedure TJanuaProperties.SetHint(const Value: string);
begin

end;

procedure TJanuaProperties.SetTargetField(const Value: string);
begin

end;

procedure TJanuaProperties.WriteError(aError: String; e: Exception);
begin

end;

procedure TJanuaProperties.WriteLog(aLog: string);
begin

end;

end.
