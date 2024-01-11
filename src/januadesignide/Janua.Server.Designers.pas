unit Janua.Server.Designers;

interface

uses
  // Design Editors........................................................
  System.Classes, DesignEditors, DesignIntf, Janua.Core.Types, Janua.Designers.Editors;



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
  RegisterPropertyEditor(TypeInfo(TJanuaJsonString), TJanuaRemoteComponent, 'JSonStructure', TJanuaJsonProperty);
end;



end.
