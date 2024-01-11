unit uniCustomControl4;

interface

uses
  SysUtils, Classes, Controls, uniGUIBaseClasses, uniGUIClasses, Graphics,
  uniGUITypes;

type
  TMyButtonGroupItem = class(TCollectionItem)
  private
    FControl : TUniControl;
    FRowspan : Integer;
  published
    property Control: TUniControl read FControl write FControl;
    property Rowspan: Integer read FRowspan write FRowspan default 0;
  end;

  TMyButtonGroupCollection = class(TCollection)
  protected
    function GetItem(Index: Integer): TMyButtonGroupItem;
    procedure SetItem(Index: Integer; Value: TMyButtonGroupItem);
  public
    property Items[Index: Integer]: TMyButtonGroupItem read GetItem write SetItem; default;
  end;


  TUniMyButtonGroup = class(TUniContainer)
  private
    { Private declarations }
    FColumnCount : Integer;
    FItems : TMyButtonGroupCollection;
    FTitle : string;
    FAutoHeight : Boolean;
  protected
    { Protected declarations }
    procedure ConfigJSClasses(ALoading: Boolean); override;
    function VCLControlClassName: string; override;

    procedure LoadCompleted; override;

    procedure SetItems(const Value: TMyButtonGroupCollection);

  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property ColumnCount: Integer read FColumnCount write FColumnCount default 1;
    property Items: TMyButtonGroupCollection read FItems write SetItems;
    property Title: string read FTitle write FTitle;
    property AutoHeight: Boolean read FAutoHeight write FAutoHeight default False;

    property Align;
    property Anchors;
    property ClientEvents;

    // events
  end;

procedure Register;

implementation


// Here we declare the default Ext JS component class name that we want to use in our control
// The default Ext JS class will be created automatically by uniGUI and displayed on Form
procedure TUniMyButtonGroup.ConfigJSClasses(ALoading: Boolean);
begin
   // http://docs.sencha.com/extjs/4.2.1/#!/api/Ext.container.ButtonGroup
  JSObjects.DefaultJSClassName:='Ext.container.ButtonGroup';
end;

// VCL Class Name is the control class which will be used in design time
// In this demo we leave it as blank so an empty box will be displayed on Form
function TUniMyButtonGroup.VCLControlClassName: string;
begin
  Result:='';
end;

constructor TUniMyButtonGroup.Create(AOwner: TComponent);
begin
  FItems := TMyButtonGroupCollection.Create(TMyButtonGroupItem);
  inherited;

// Define the default height and width for this control
  Align:=alTop;
  Height:=46;
  ColumnCount:=1;
end;

destructor TUniMyButtonGroup.Destroy;
begin
  inherited;
  FItems.Free;
end;

procedure TUniMyButtonGroup.SetItems(const Value: TMyButtonGroupCollection);
begin
  FItems.Assign(Value);
end;

// This procedure is called only in web mode
// It will be called when all design time properties are loaded
// and Ext JS compoenent is fully initialized
procedure TUniMyButtonGroup.LoadCompleted;
var
  I: Integer;
  FArr : array of TJSVariable; // TJSVariable ia an alias for Delphi TVarRec
begin
  if FAutoHeight then IgnoreHeight:=True;

  inherited;
  JSConfig('columns', [FColumnCount]);
  if FTitle<>'' then
    JSConfig('title',  [FTitle] );


  SetLength(FArr, 0);
  for I := 0 to FItems.Count - 1 do
  begin
    if FItems[I].Control<>nil then
    begin
      SetLength(FArr, Length(FArr)+1);
      // array element is an object
      FArr[I].VType:=vtObject;
      // assign a new object to array element
      FArr[I].VObject:=FItems[I].Control.JSControl;
      if FItems[I].Rowspan>0 then
        JSConfig('rowspan', [FItems[I].Rowspan], FItems[I].Control.JSControl);

    end;
  end;

  if Length(FArr)>0 then
    JSCall('add', [JSArray(FArr)]);
end;

procedure Register;
begin
  RegisterComponents('uniSamples', [TUniMyButtonGroup]);
end;

function TMyButtonGroupCollection.GetItem(Index: Integer): TMyButtonGroupItem;
begin
  Result := TMyButtonGroupItem(inherited Items[Index]);
end;

procedure TMyButtonGroupCollection.SetItem(Index: Integer; Value: TMyButtonGroupItem);
begin
  inherited Items[Index]:=Value;
end;

end.
