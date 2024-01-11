unit uniCustomControl2;

interface

uses
  SysUtils, Classes, Controls, uniGUIBaseClasses, uniGUIClasses, Graphics,
  uniGUITypes;

type
  TUniDrawObjectType = ( udoCircle, udoEllipse, udoPath, udoRect, udoText, udoImage );

  TUniDrawObject = class(TCollectionItem)
  private
    FObjectType: TUniDrawObjectType;
    FX, FY, FRadius : Integer;
    FRadiusX : Integer;
    FRadiusY : Integer;
    FWidth, FHeight : Integer;
    FColor : TColor;
    FStroke: TColor;
    FStrokeWidth: Integer;
  protected
    //
  public
    constructor Create(Collection: TCollection); override;
  published
    property ObjectType: TUniDrawObjectType read FObjectType write FObjectType default udoCircle;
    property X: Integer read FX write FX default 0;
    property Y: Integer read FY write FY default 0;
    property Radius: Integer read FRadius write FRadius default 0;
    property Color: TColor read FColor write FColor default 0;
    property Width : Integer read FWidth write FWidth default 0;
    property Height : Integer read FHeight write FHeight default 0;
    property RadiusX: Integer read FRadiusX write FRadiusX default 0;
    property RadiusY: Integer read FRadiusY write FRadiusY default 0;
    property Stroke: TColor read FStroke write FStroke default 0;
    property StrokeWidth: Integer read FStrokeWidth write FStrokeWidth default 1;
  end;

  TUniDrawObjects = class(TCollection)
  protected
    function GetItems(Index: Integer): TUniDrawObject;
    procedure SetItems(Index: Integer; Value: TUniDrawObject);
  public
    property Items[Index: Integer]: TUniDrawObject read GetItems write SetItems; default;
  end;

  TUniMyDrawComponent = class(TuniControl)
  private
    { Private declarations }
    FDrawObjects: TUniDrawObjects;
    function DrawObjectTypeToStr(AType : TUniDrawObjectType): string;
  protected
    { Protected declarations }
    procedure ConfigJSClasses(ALoading: Boolean); override;
    function VCLControlClassName: string; override;

    procedure SetDrawObjects(Value: TUniDrawObjects);

    procedure LoadCompleted; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property DrawObjects: TUniDrawObjects read FDrawObjects write SetDrawObjects;
  end;

procedure Register;

implementation

uses
  uniGUIJSUtils, StrUtils;

// Here we declare the default Ext JS component class name that we want to use in our control
// The default Ext JS class will be created automatically by uniGUI and displayed on Form
procedure TUniMyDrawComponent.ConfigJSClasses(ALoading: Boolean);
begin
   // http://docs.sencha.com/extjs/4.2.1/#!/api/Ext.draw.Sprite
  JSObjects.DefaultJSClassName:='Ext.draw.Component';
end;

// VCL Class Name is the control class which will be used in design time
// In this demo we leave it as blank so an empty box will be displayed on Form
function TUniMyDrawComponent.VCLControlClassName: string;
begin
  Result:='';
end;

constructor TUniMyDrawComponent.Create(AOwner: TComponent);
begin
  inherited;

// Define the default height and width for this control
  Width:=256;
  Height:=256;

  FDrawObjects := TUniDrawObjects.Create(TUniDrawObject);
end;

destructor TUniMyDrawComponent.Destroy;
begin
  inherited;
  FDrawObjects.Free;
end;

function TUniMyDrawComponent.DrawObjectTypeToStr(AType : TUniDrawObjectType): string;
begin
  case AType of
    udoCircle: Result:='circle';
    udoEllipse: Result:='ellipse';
    udoPath: Result:='path';
    udoRect: Result:='rect';
    udoText: Result:='text';
    udoImage: Result:='image';
  else
    Result:='';
  end;
end;

// This procedure is called only in web mode
// It will be called when all design time properties are loaded
// and Ext JS compoenent is fully initialized
procedure TUniMyDrawComponent.LoadCompleted;
var
  I: Integer;
  FArr : array of TJSVariable; // TJSVariable ia an alias for Delphi TVarRec
begin
  inherited;

  SetLength(FArr, FDrawObjects.Count);
  for I := 0 to FDrawObjects.Count - 1 do
  begin
    // array element is an object
    FArr[I].VType:=vtObject;
    // assign a new object to array element
    FArr[I].VObject:=JSObject([
                        'type', DrawObjectTypeToStr(FDrawObjects[I].FObjectType),
                        'x', IntToStr(FDrawObjects[I].FX)+'px',
                        'y', IntToStr(FDrawObjects[I].FY)+'px',
                        IfThen(FDrawObjects[I].FRadius = 0, '', 'radius'), IntToStr(FDrawObjects[I].FRadius)+'px',
                        'fill', uniColor2Web(FDrawObjects[I].FColor),
                        IfThen(FDrawObjects[I].FWidth = 0, '', 'width'), IntToStr(FDrawObjects[I].FWidth)+'px',
                        IfThen(FDrawObjects[I].FHeight = 0, '', 'height'), IntToStr(FDrawObjects[I].FHeight)+'px',
                        IfThen(FDrawObjects[I].FRadiusX = 0, '', 'radiusX'), IntToStr(FDrawObjects[I].FRadiusX)+'px',
                        IfThen(FDrawObjects[I].FRadiusY = 0, '', 'radiusY'), IntToStr(FDrawObjects[I].FRadiusY)+'px',
                        'stroke', uniColor2Web(FDrawObjects[I].FStroke),
                        'stroke-width', FDrawObjects[I].FStrokeWidth
                      ]);
  end;

  if FDrawObjects.Count>0 then
    // Here we config "items" array property of Ext JS component 
    JSConfigArray('items', FArr); // all objects passed here are automatically freed by framework
end;

procedure TUniMyDrawComponent.SetDrawObjects(Value: TUniDrawObjects);
begin
  FDrawObjects.Assign(Value);
end;

function TUniDrawObjects.GetItems(Index: Integer): TUniDrawObject;
begin
  Result:=inherited Items[Index] as TUniDrawObject;
end;

procedure TUniDrawObjects.SetItems(Index: Integer; Value: TUniDrawObject);
begin
  inherited Items[Index]:=Value;
end;

constructor TUniDrawObject.Create(Collection: TCollection);
begin
  inherited;
  FStrokeWidth:=1;
end;

procedure Register;
begin
  RegisterComponents('uniSamples', [TUniMyDrawComponent]);
end;

end.
