unit Janua.Designers.Editors;

interface

uses
  // Design Editors........................................................
  System.Classes, DesignEditors, DesignIntf, Janua.Core.Types;

type
  TJanuaJsonProperty = class(TStringProperty)
  public
    function GetAttributes: TPropertyAttributes; override;
    procedure Edit; override;
    function GetValue: string; override;
  end;

implementation

{ TJsonProperty }

uses udlgAdvMemoEditor, System.UITypes;

procedure TJanuaJsonProperty.Edit;
var
  LEditor: udlgAdvMemoEditor.TdlgAdvMemoEditor;
begin
  inherited;
  LEditor := udlgAdvMemoEditor.TdlgAdvMemoEditor.Create(nil);
  try
    LEditor.AdvMemo1.Lines.Text := GetValue;
    if LEditor.ModalResult = mrOk then
      SetValue(LEditor.AdvMemo1.Lines.Text);

  finally
    LEditor.Free;
  end;
end;

function TJanuaJsonProperty.GetAttributes: TPropertyAttributes;
begin
  // editor, sorted list, multiple selection
  Result := [paDialog { , paMultiSelect, paValueList, paSortList } ];
end;

function TJanuaJsonProperty.GetValue: string;
begin
  Result := inherited GetValue;
end;

end.
