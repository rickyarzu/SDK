unit uVCLBindingInterposers;

interface

uses
  System.Classes, System.UITypes, System.SysUtils, Data.Db, Spring.Collections,
  // VCL
  VCL.ComCtrls, VCL.Buttons, VCL.StdCtrls, VCL.ExtCtrls, VCL.Controls, VCL.Samples.Spin, VCL.Graphics,
  VCL.Mask, VCL.DBCtrls, VCL.ActnList, VCL.Forms,
  // Jedi
  JvToolEdit, JvBaseEdits, jvDBLookup, JvValidateEdit, uBindingEngine;

type
  TEdit = class(VCL.StdCtrls.TEdit, IBindable)
  public
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    // ----- Initialization
  protected
    procedure Change; override;
    procedure DoEnter; override;
    procedure DoExit; override;
  public
    function AsComponent: TComponent;
    // ************************************* Bindings Procedures ***********************************
  private
    FBindManager: IBindManager;
    function GetBindManager: IBindManager;
  protected
    function GetSelf: TObject;
  public
    procedure ClearBindings;
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    property BindManager: IBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************
  end;

implementation

{ TEdit }

function TEdit.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TEdit.Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
  const AReadOnly: boolean; const ACreateOptions: TBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Raise exception.Create(ClassName + '.' + Name + '.Bind Error:' + e.Message);
  end;
end;

procedure TEdit.Change;
begin
  FBindManager.Notify('Text');
  inherited;
end;

procedure TEdit.ClearBindings;
begin
  FBindManager.ClearBindings;
end;

constructor TEdit.Create(AOwner: TComponent);
begin
  FBindManager := TBindManager.Create(Self);
  inherited Create(AOwner);
end;

destructor TEdit.Destroy;
begin
  BindManager.ClearBindings;
  FBindManager := nil;
  inherited;
end;

procedure TEdit.DoEnter;
begin
  inherited;

end;

procedure TEdit.DoExit;
begin
  inherited;

end;

function TEdit.GetBindManager: IBindManager;
begin
  Result := FBindManager
end;

function TEdit.GetSelf: TObject;
begin
  Result := Self as TObject
end;

end.
