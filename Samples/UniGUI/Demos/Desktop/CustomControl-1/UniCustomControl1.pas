unit UniCustomControl1;

interface

uses
  SysUtils, Classes, Controls, uniGUIBaseClasses, uniGUIClasses;

type
  // TUniControl is base for all visual controls
  // TuniControl is not a container and can not be a parent for other TUniControls 
  TUniMyButton = class(TUniControl)
  private
    { Private declarations }
    FHrefTarget : string;
    FHref : string;
    FPressed : Boolean;
  protected
    { Protected declarations }
    procedure ConfigJSClasses(ALoading: Boolean); override;
    function VCLControlClassName: string; override;

    function GetHref: string;
    procedure SetHref(const Value: string);

    procedure InternalSetCaption(Value: string); override;

    function GetHrefTarget: string;
    procedure SetHrefTarget(const Value: string);

    procedure WebCreate; override;
    procedure LoadCompleted; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
    property Href: string read GetHref write SetHref;
    property HrefTarget: string read GetHrefTarget write SetHrefTarget;
    property Pressed: Boolean read FPressed write FPressed default False;
    property Caption;
    property RTL;
  end;

procedure Register;

implementation


// Here we declare the default Ext JS component class name that we want to use in our control
// The default Ext JS class will be created automatically by uniGUI and displayed on Form
procedure TUniMyButton.ConfigJSClasses(ALoading: Boolean);
begin
  // http://docs.sencha.com/extjs/4.2.1/#!/api/Ext.button.Button
  JSObjects.DefaultJSClassName:='Ext.button.Button';
end;

// VCL Class Name is the control class which will be used in design time
// In this demo we leave it as blank so an empty box will be displayed on Form
function TUniMyButton.VCLControlClassName: string;
begin
  Result:='';
end;

constructor TUniMyButton.Create(AOwner: TComponent);
begin
  inherited;

// Define the default height and width for this control
  Width:=85;
  Height:=25;
  // Set default value for other properties
  FHrefTarget := '_blank';
end;

// WebCreate is called only in web mode. It is called once after component is created
procedure TUniMyButton.WebCreate;
begin
  inherited;
  // Directly add new config property to the Ext JS component
  // This will appear as
  // border : 5
  // in JS code
  JSConfig('border', [5]);
end;

// This procedure is called only in web mode
// It will be called when all design time properties are loaded
// and Ext JS compoenent is fully initialized
procedure TUniMyButton.LoadCompleted;
begin
  inherited;

  // Config pressed config property of the Ext JS component
  JSConfig('pressed', [FPressed]);
end;

function TUniMyButton.GetHref: string;
begin
  Result:=FHref;
end;

procedure TUniMyButton.SetHref(const Value: string);
begin
  if FHref<>Value then
  begin
    FHref:=Value;

    // JSProperty assigns FHref to href config property of Ext.button.Button (see ext JS API doc)
    // When component is newly created the config proprty "href" is assigned
    // After component created the "setHref" function is called to set the property
    // Not all components provide runtime functions to change a config propety after component is created
    // In this case Ext JS API provides "setHref" to do this
    // You must check Ext JS API to see if a config property has a proper function to modify its value at runtime
    JSProperty('href', [FHref], 'setHref');
  end;
end;

function TUniMyButton.GetHrefTarget: string;
begin
  Result:=FHrefTarget;
end;

procedure TUniMyButton.SetHrefTarget(const Value: string);
begin
  if FHrefTarget<>Value then
  begin
    FHrefTarget:=Value;

    // JSProperty assigns FHrefTarget to hrefTarget config property of Ext.button.Button (see ext JS API doc)
    // When component is newly created the config proprty "hrefTarget" is assigned
    // After component created we can't change this property because Ext JS API doesn't provide such a function
    JSProperty('hrefTarget', [FHrefTarget]);
  end;
end;

// Base TUniControl.Caption property has no default implementation to set the caption in web mode
// We need to override TUniControl.InternalSetCaption virtual method and
// add the required code to set the Ext JS component caption  
procedure TUniMyButton.InternalSetCaption(Value: string);
begin
  inherited;
  JSProperty('text', [Value], 'setText');
end;

procedure Register;
begin
  RegisterComponents('uniSamples', [TUniMyButton]);
end;

end.
