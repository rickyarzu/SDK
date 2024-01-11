unit qrcb;
{
  QRCustomCheckBox   - FREEWARE, UNWARRANTED -
  QRCheckBox         - FREEWARE, UNWARRANTED -
  QRDBCheckBox       - FREEWARE, UNWARRANTED -
  *

  Files:
  README.TXT         - Notes
  QRCB.PAS           - Source
  QRCB.DCR           - 32 bit resource file (Delphi 2, 3, 4)
  QRCB.16            - 16 bit resource file (rename to QRCB.DCR
                       for Delphi 1
  *

  Paul Doland, 1-13-99
  pdoland@flash.net

  Andy Corteen, 5-Nov-1998
  andy@telecam.demon.co.uk.nospam

  I (Paul Doland) used some of Qusoft's sample code to write this.
  Andy Corteen improved it.  He tested it with Delphi 3/QR 2.  I tested
  it with Delphi 4/QR 3 and Delphi 1/QR 2.  I tested my original version 
  with Delphi 2/QR 2 but have not tested Andy's version with it, but I
  think it should work.  I don't believe anyone has tested with QR 1.
  *
  Andy's contribution was to remove the need to alter QuSoft's source code,
  by providing a database fields property editor and enabling the full
  use of the Frame properties in defining the look of the box, and to
  give the option of cross or tick as the logical true style.
  *
  Paul's Delphi 4 installation notes:
  Put QRCB.DCR and QRCB.PAS in a location of your choosing.
  Most of the QR stuff goes in DELPHI4\LIB directory, so this seems a
  reasonable place.

  Close all open projects/files.
  To install, use "Install Component" on Component menu.  I chose to
  install into existing package, "DCLUSR40.DPK"  To be perfectly honest,
  I don't know much about packages.  There doesn't seem to be a QR specific
  package, so this seemed to be a good place for it.  Compiled it and it
  seems to work.

  Andy's Delphi 3 installation notes:
  (I (Paul) suspect Andy means the same thing I said Delphi about 4
  installation, but I don't have Delphi 3 installed currently...)

  Close all open projects/files.
  To install, use "Install Component" on Component menu and select
  qrcb.pas (qrcb.pas and qrcb.dcr must remain together).

  Delphi 2 installation:
  I haven't tested it, but I think it should work.  Use Delphi 1 instructions
  except use the 32 bit resource file.

  Delphi 1 installation:
  Install QRCB.PAS and QRCB.DCR in a location of your choosing.  (Rename
  QRCB.16 to QRCB.DCR.)  I used the same directory as QuickReport. Use 
  Options/Install Components.  Then ADD, then Browse and find QRCB.PAS. 
  Hit okay and that should do it.
  *
}

interface

{$ifdef WIN32}
uses graphics, classes, DB, DBTables, DesignIntf, quickrpt, BdeConst, 
  DesignEditors;
{$else}
uses graphics, classes, DB, DBTables, DsgnIntf, quickrpt;
{$endif}


type
    {Object Inspector - generic editor for data field names}
     TcFieldsEditor = class(TStringProperty)
  public
     function GetAttributes: TPropertyAttributes; override;
     procedure GetValues(proc: TGetStrProc); override;
  end;

TcTickStyle = (tsCross, tsTick);

type
  TQRCustomCheckBox = class(TQRPrintable)
  private
    FChecked : boolean;
    FTickStyle: TcTickStyle;
    procedure SetTickStyle(Style: TcTickStyle);
  protected
    procedure ReadVisible(Reader : TReader); virtual;
    procedure WriteDummy(Writer : TWriter); virtual;
  public
    constructor Create(AOwner : TComponent); override;
    procedure Paint; override;
    procedure Print(OfsX, OfsY : integer); override;
  published
    property TickStyle: TcTickStyle read FTickStyle write SetTickStyle;
  end;

  TQRCheckBox = class(TQRCustomCheckBox)
  public
    constructor Create(AOwner : TComponent); override;
    procedure SetChecked(Value : boolean);
  published
    property Checked : boolean read FChecked write SetChecked;
  end;

  TQRDBCheckBox = class(TQRCustomCheckBox)
  private
    Field : TField;
    FieldNo : integer;
    FieldOK : boolean;
    DataSourceName : string[30];
    FDataSet : TDataSet;
    FDataField : string;
    procedure SetDataSet(Value : TDataSet);
    procedure SetDataField(Value : string);
  protected
    procedure DefineProperties(Filer: TFiler); override;
    procedure Prepare; override;
    procedure ReadValues(Reader : TReader); virtual;
    procedure Unprepare; override;
    procedure WriteValues(Writer : TWriter); virtual;
  public
    constructor Create(AOwner : TComponent); override;
    procedure Print(OfsX, OfsY : integer); override;
  published
    property DataSet : TDataSet read FDataSet write SetDataSet;
    property DataField : string read FDataField write SetDataField;
  end;

procedure Register;

implementation

constructor TQRCustomCheckBox.Create(AOwner : TComponent);
begin
  inherited Create(AOwner);

  {override default frame settings to suite a checkbox}
  Frame.DrawBottom := True;
  Frame.DrawLeft   := True;
  Frame.DrawRight  := True;
  Frame.DrawTop    := True;
end;

procedure TQRCustomCheckBox.SetTickStyle(Style: TcTickStyle);
begin
  if Style in [tsCross, tsTick] then
    if Style <> FTickStyle then
      FTickStyle := Style;
  Invalidate;
end;

procedure TQRCustomCheckBox.Paint;
begin
  with Canvas do
  begin
    Pen.Color := Frame.Color;
    Pen.Width := Frame.Width;
    Pen.Style := Frame.Style;
    MoveTo(0,0);

    if Frame.DrawTop then LineTo(Width-1,0)
	 else MoveTo(Width-1,0);
    if Frame.DrawRight then LineTo(Width-1,Height-1)
	 else MoveTo(Width-1,Height-1);
    if Frame.DrawBottom then LineTo(0,Height-1)
      else MoveTo(0,Height-1);
    if Frame.DrawLeft then LineTo(0,0);

    if FChecked then
    begin
      Case TickStyle of
	tsCross:
	begin
	  MoveTo(0, 0);
	  LineTo(Width, Height - 1);
	  MoveTo(0, Height - 1);
	  LineTo(Width - 1, 0);
	end;

	tsTick:
	begin
	  Pen.Width := Frame.Width + 1;
	  MoveTo(2, 2*(Height div 3));
	  LineTo(Width div 3, Height - 3);
	  LineTo(Width - 2, 2);
	end;
      end;
    end;
  end;
end;

procedure TQRCustomCheckBox.Print(OfsX, OfsY : integer);
var
  CalcLeft, CalcTop, CalcRight, CalcBottom : Longint;
begin
  with ParentReport.QRPrinter do
  begin
    Canvas.Pen.Color := Frame.Color;
    Canvas.Pen.Width := Frame.Width;
    Canvas.Pen.Style := Frame.Style;
    CalcLeft := XPos(OfsX + Size.Left)+1;
    CalcTop := YPos(OfsY + Size.Top)+1;
    CalcRight := XPos(OfsX + Size.Left + Size.Width)-1;
    CalcBottom := YPos(OfsY + Size.Top + Size.Height)-1;

    Canvas.MoveTo(CalcLeft,CalcTop);
    if Frame.DrawTop then Canvas.LineTo(CalcRight,CalcTop)
	 else Canvas.MoveTo(CalcRight,CalcTop);
    if Frame.DrawRight then Canvas.LineTo(CalcRight,CalcBottom)
	 else Canvas.MoveTo(CalcRight,CalcBottom);
    if Frame.DrawBottom then Canvas.LineTo(CalcLeft,CalcBottom)
	 else Canvas.MoveTo(CalcLeft,CalcBottom);
    if Frame.DrawLeft then Canvas.LineTo(CalcLeft,CalcTop);

    if FChecked then
    begin
      Case TickStyle of
	tsCross:
	begin
	  Canvas.MoveTo(CalcLeft, CalcTop);
	  Canvas.LineTo(CalcRight, CalcBottom);
	  Canvas.MoveTo(CalcLeft, CalcBottom);
	  Canvas.LineTo(CalcRight, CalcTop);
	end;

	tsTick:
	begin
	  Canvas.Pen.Width := Frame.Width + 1;
	  Canvas.MoveTo(CalcLeft + 2, CalcTop + 2*((CalcBottom-CalcTop) div 3));
	  Canvas.LineTo(CalcLeft + (CalcRight-CalcLeft) div 3, CalcBottom - 2);
	  Canvas.LineTo(CalcRight - 2, CalcTop + 2);
	end;
      end;
    end;
  end;
end;

procedure TQRCustomCheckBox.ReadVisible(Reader : TReader);
begin
  Enabled := Reader.ReadBoolean;
end;

procedure TQRCustomCheckBox.WriteDummy(Writer : TWriter);
begin
end;

constructor TQRCheckBox.Create(AOwner : TComponent);
begin
  inherited Create(AOwner);
  FChecked := False;
end;

procedure TQRCheckBox.SetChecked(Value : boolean);
begin
  if Value <> FChecked then
  begin
    FChecked := Value;
    Invalidate;
  end;
end;

constructor TQRDBCheckBox.Create(AOwner : TComponent);
begin
  inherited Create(AOwner);
  FChecked := FALSE;
  DataSourceName := '';
end;

procedure TQRDBCheckBox.DefineProperties(Filer: TFiler);
begin
  Filer.DefineProperty('DataSource',ReadValues,WriteValues,false);
  Filer.DefineProperty('Visible', ReadVisible, WriteDummy, false);
  inherited DefineProperties(Filer);
end;

procedure TQRDBCheckBox.SetDataSet(Value : TDataSet);
begin
  FDataSet := Value;

{$ifdef WIN32}
  if Value <> nil then
    Value.FreeNotification(self);
{$endif}
end;

procedure TQRDBCheckBox.SetDataField(Value : string);
begin
  FDataField := Value;
end;

procedure TQRDBCheckBox.Prepare;
begin
  inherited Prepare;
  if assigned(FDataSet) then
  begin
    Field := FDataSet.FindField(FDataField);
    if (Field <> nil) and (Field is TBooleanField) then
    begin
      FieldNo := Field.Index;
      FieldOK := true;
    end else
    begin
      Field := nil;
      FieldOK := false;
    end;
  end else
  begin
    Field := nil;
    FieldOK := false;
  end;
end;

procedure TQRDBCheckBox.Unprepare;
begin
  Field := nil;
  inherited Unprepare;
  if DataField <> '' then
    SetDataField(DataField) { Reset component caption }
  else
    SetDataField(Name);
end;

procedure TQRDBCheckBox.ReadValues(Reader : TReader);
begin
  DataSourceName := Reader.ReadIdent;
end;

procedure TQRDBCheckBox.WriteValues(Writer : TWriter);
begin
end;

procedure TQRDBCheckBox.Print(OfsX, OfsY : integer);
begin
  if FieldOK then
  begin
    if FDataSet.DefaultFields then
      Field := FDataSet.Fields[FieldNo];
  end
  else
    Field := nil;

  FChecked := FALSE;
  if assigned(Field) then
    if (Field is TBooleanField) then
      FChecked := TBooleanField(Field).value;

  inherited Print(OfsX,OfsY);
end;

function TcFieldsEditor.GetAttributes: TPropertyAttributes;
begin
  {Tell Object Inspector what to expect...}
  Result := [paAutoUpdate, paValueList, paReadOnly, paSortList];
end;

procedure TcFieldsEditor.GetValues(proc: TGetStrProc);
var
  ThisComponent: TQRDbCheckBox;
  Counter: Integer;
begin
  {Provide list of ftBoolean fields to Object Inspector...}
  ThisComponent := TQRDbCheckBox(GetComponent(0));
  with ThisComponent do
    try
      if DataSet <> nil then
	{List every field in the selected DataSet}
	for Counter := 0 to DataSet.FieldCount-1 do
	  if DataSet.Fields[Counter].DataType = ftBoolean then
	    proc(DataSet.Fields[Counter].FieldName);
    except
      {Raise exception}
{$ifdef WIN32}
      DatabaseError(SDatabaseNameMissing);
{$else}
      DatabaseError('Database Alias Missing');
{$endif}
    end;
end;

procedure Register;
begin
  RegisterComponents('QReport', [TQRCheckBox, TQRDbCheckBox]);
  RegisterPropertyEditor(TypeInfo(String), TQRDbCheckBox,
			 'DataField', TcFieldsEditor);

{$ifdef ver100}
  {More comments by Paul Doland...

  I don't know what compilers define what.  I just tried to seach
  the Delphi 4 help and didn't find it.  At any rate, in Qusoft's
  QREPORT.PAS, they call RegisterNonActiveX in the case of 'ver100'
  being defined.  Is this C++ Builder 1?  I don't know.  Anyway,
  As I've never messed with Active X, I really don't know for certain
  the implications here.  Forgive my ignorance.  However, the Delphi 4
  version of RegisterNonActiveX has two parameters instead of 1.
  It probably should be called.  But I'd have to know better what
  compilers define which version of the function.  The bottom line is
  it doesn't seem to be critical.  If someone has QR 3 pro (I don't,
  only 2 Pro) maybe they could see how Qusoft currently codes this.

  {RegisterNonActiveX([TQRCheckBox, TQRDbCheckBox]);}
{$endif}
end;

end.

