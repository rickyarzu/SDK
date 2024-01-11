unit Janua.Server.Designers;

interface

uses
  // Design Editors........................................................
  System.Classes, DesignEditors, DesignIntf, Janua.Core.Types;

type
  TJsonProperty = class(TStringProperty)
  public
    function GetAttributes: TPropertyAttributes; override;
    procedure Edit; override;
    function GetValue: string; override;
  end;

  { type
    TSoundProperty = class (TStringProperty)
    public
    function GetAttributes: TPropertyAttributes; override;
    procedure GetValues(Proc: TGetStrProc); override;
    procedure Edit; override;
    end; }

procedure Register;

implementation

uses Janua.Server.Components;

procedure Register;
begin
  RegisterPropertyEditor(TypeInfo(TJsonString), TJanuaRemoteComponent, 'JSonStructure', TJsonProperty);
end;

{ TJsonProperty }

procedure TJsonProperty.Edit;
begin
  inherited;

end;

function TJsonProperty.GetAttributes: TPropertyAttributes;
begin
  // editor, sorted list, multiple selection
  Result := [paDialog { , paMultiSelect, paValueList, paSortList } ];
end;

function TJsonProperty.GetValue: string;
begin
   Result := inherited GetValue;
end;

end.
