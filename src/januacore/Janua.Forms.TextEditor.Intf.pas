unit Janua.Forms.TextEditor.Intf;

interface

uses System.Classes, Janua.Forms.Types, Janua.Controls.Forms.Intf;

type
  IJanuaTextEditForm = interface(IJanuaForm)
    ['{B0EAF201-8541-4A54-9203-FBC38C9BABBA}']
    // Text
    function GetText: TStrings;
    procedure SetText(const Value: TStrings);
    /// <summary>
    /// Text propery is a StringList property that represents the StringList
    /// contained in the Form. This property is Bindable to a Janua Field
    /// as a string property.
    /// </summary>
    property Text: TStrings read GetText write SetText;
  end;

type
  IJanuaRTFEditForm = interface(IJanuaForm)
    ['{ACBB28F2-DB35-4BC6-B0CD-EF32C3CFABBB}']
  end;

type
  TJanuaTextEditForm = class(TInterfacedObject)
  private
    FText: TStrings;
  protected
    function GetText: TStrings;
    procedure SetText(const Value: TStrings);
  public
    Constructor Create; overload; virtual;
    /// <summary>
    ///
    /// </summary>
    Destructor Destroy; override;
  end;

type
  IJanuaEditFormFactory = interface
    ['{EFE9EFB8-8703-4585-B415-6FC5F4DB817E}']
    function CreateTextEditForm: IJanuaTextEditForm;
    function CreateRTFEditForm: IJanuaRTFEditForm;
  end;

type
  IJanuaEditFormBuilder = interface
    ['{45604ED4-7982-4792-95C1-CDF131328475}']
    function BuildTextEditForm: IJanuaTextEditForm;
    function BuildRTFEditForm: IJanuaTextEditForm;

  end;

implementation

{ TJanuaTextEditForm }

constructor TJanuaTextEditForm.Create;
begin
  inherited;

end;

destructor TJanuaTextEditForm.Destroy;
begin
  self.FText.Free;
  inherited;
end;

function TJanuaTextEditForm.GetText: TStrings;
begin
  Result := self.FText
end;

procedure TJanuaTextEditForm.SetText(const Value: TStrings);
begin
  self.FText := Value
end;

end.
