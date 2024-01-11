// Curve3D = Miscellaneous
unit MiscellaneousCurve3D;

interface

uses
  Windows, Messages, SysUtils, Types, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniScreenMask, uniMultiItem,
  uniComboBox, uniCheckBox, uniSpinEdit, uniButton, uniPanel, uniLabel,
  uniCanvas;

const
	GRID_COUNT	=	240;

type
	pv=array [0..GRID_COUNT,0..GRID_COUNT] of single;
	prx=^pv;
	CV=array [0..GRID_COUNT*GRID_COUNT*2+100] of integer;
	FW=^CV;

	TCurve = class
  private
    NX		:	Integer;
    ZOOM	:	single;
    START	:	Single;
    MAXX	:	Integer;
    MAXY	:	Integer;
    FuncNo:	Byte;
    CRate	:	Single;
    WireFrame, FirstInit	:	Boolean;
		Lx,Ly,Lz	:	Single;
		x,y,z		:	prx;
		x1,y1,z1	:	prx;
		ss,axs	:	Fw;
		Painter	:	TUniCanvas;
  public
		constructor Create(PaintPtr: TUniCanvas; AFuncNo: Integer);
		destructor Destroy; override;
    procedure Init;
    function f(x,y:single):single;
		PROCEDURE PART(FIRST:integer;VAR MIDDLE:integer;LAST:integer);
		PROCEDURE QUICKSORT(FIRST,LAST:integer);
		procedure rotate(ans,bs,cs:single);
		FUNCTION BIGGEST(AX,BX,CX:single):INTEGER;
		FUNCTION GetShadow(inX1,inY1,inZ1,inX2,inY2,inZ2,inX3,inY3,inZ3:single):BYTE;
		procedure FindBiggest;
		procedure CalcPoints;
		procedure DrawCurve;
	end;

type
  TUniMiscellaneousCurve3D = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    PaintBox1: TUniCanvas;
    Label9: TUniLabel;
    UniPanel1: TUniPanel;
    Label1: TUniLabel;
    Label2: TUniLabel;
    Label3: TUniLabel;
    Label7: TUniLabel;
    Button1: TUniButton;
    Edit1: TUniSpinEdit;
    Edit2: TUniSpinEdit;
    Edit3: TUniSpinEdit;
    Edit4: TUniSpinEdit;
    Edit5: TUniSpinEdit;
    Edit6: TUniSpinEdit;
    UniCheckBox1: TUniCheckBox;
    UniPanel2: TUniPanel;
    ComboBox1: TUniComboBox;
    Label8: TUniLabel;
    procedure Button1Click(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
    Rx	:	Integer;
    Ry	:	Integer;
    Rz	:	Integer;
  	Curve	:	TCurve;
    { Private declarations }
  public
    procedure GetParameters;
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniMiscellaneousCurve3D.Button1Click(Sender: TObject);
begin
	Curve:=TCurve.Create(PaintBox1, ComboBox1.ItemIndex);
  try
  	GetParameters;

    Curve.Init;
    Curve.WireFrame:=UniCheckBox1.Checked;
    Curve.CalcPoints;
    Curve.Rotate(Rx, Ry, Rz);
    Curve.FindBiggest;
    Curve.QuickSort(0, Curve.NX * Curve.NX*2 - 1);
    Curve.DrawCurve;
  finally
  	Curve.Free;
  end;
end;

procedure TUniMiscellaneousCurve3D.GetParameters;
var
	S	:	string;
	Code	:	Integer;
begin
	S:=Edit1.Text;
	Val(S, Curve.NX, Code);


	S:=Edit2.Text;
	Val(S, Curve.Zoom, Code);


	S:=Edit3.Text;
	Val(S,Rx,Code);


	S:=Edit4.Text;
	Val(S,Ry,Code);

	S:=Edit5.Text;
	Val(S,Rz,Code);


	S:=Edit6.Text;
	Val(S, Curve.Start, Code);
	Curve.Start:=-Curve.Start;
end;

procedure TUniMiscellaneousCurve3D.UniFrameCreate(Sender: TObject);
begin
	Edit1.Text:='30';
	Edit2.Text:='1';
	Edit3.Text:='45';
	Edit4.Text:='45';
	Edit5.Text:='45';
	Edit6.Text:='3';

  Rx	:=	45;
  Ry	:=	45;
  Rz	:=	45;
end;

{ TCurve }

function TCurve.BIGGEST(AX, BX, CX: single): INTEGER;
VAR
  T:single;
begin
  IF (Ax>Bx) AND (AX>CX) THEN T:=AX
  ELSE IF BX>CX  THEN T:=BX
  ELSE T:=CX;
  BIGGEST:=ROUND(T);
end;

procedure TCurve.CalcPoints;
var
	dx,xi,yi,rate	:	single;
	i,j	:	integer;
begin
	dx:=-START*2/NX;
	RATE:=-(200*ZOOM)/START;
	for i:=0 to NX do
	begin
		xi:=START+(dx*i);
		for j:=0 to NX do
		begin
			yi:=START+dx*j;
			z^[i,j]:=CRate*rate*f(xi,yi);
			x^[i,j]:=RATE*xi;
			y^[i,j]:=RATE*yi;
		end;
	end;
end;

constructor TCurve.Create(PaintPtr: TUniCanvas; AFuncNo: Integer);
begin
  inherited Create;
  NX		:=	120;
  ZOOM	:=	1.0;
  START	:=	-3;
  MAXX	:=	490;
  MAXY	:=	320;
  FirstInit	:=	True;
  FuncNo:=AFuncNo;

	Painter:=PaintPtr;
	new(x);
	new(y);
	new(z);
	new(x1);
	new(y1);
	new(z1);
	new(ss);
	new(axs);
	LX:=10;
	LY:=0;
	LZ:=0;
	With Painter.BitmapCanvas do
	begin
		Brush.Color:=$02FFFFFF;
		rectangle(ClipRect.Left,ClipRect.Top,
					ClipRect.Right,ClipRect.Bottom);
		MAXX:=ClipRect.Right-ClipRect.Left;
		MAXY:=ClipRect.Bottom-ClipRect.Top;
	end;
end;

destructor TCurve.Destroy;
begin
  inherited;
	Dispose(x);
	Dispose(y);
	Dispose(z);
	Dispose(x1);
	Dispose(y1);
	Dispose(z1);
	Dispose(ss);
	Dispose(axs);
end;

procedure TCurve.DrawCurve;
var
	II,Ix,I,J	:	integer;
	ax1,ay1,az1,
	ax2,ay2,az2,
	ax3,ay3,az3	:	single;
	axi1,ayi1	:	integer;
	axi2,ayi2	:	integer;
	axi3,ayi3	:	integer;
	col	:	Longint;
	PolyCnt	:	Longint;
begin
	PolyCnt:=NX*NX*2-1;
	FOR II:=0 TO PolyCnt DO
	begin
		IX:=axs^[II] DIV 2;
		I:=IX MOD NX;
		J:=IX DIV NX;
		IF ODD(axs^[II]) THEN
		begin
			AX1:=Y1^[I,J];
			AY1:=Z1^[I,J];
			AZ1:=X1^[I,J];
			AX2:=Y1^[I,J+1];
			AY2:=Z1^[I,J+1];
			AZ2:=X1^[I,J+1];
			AX3:=Y1^[I+1,J+1];
			AY3:=Z1^[I+1,J+1];
			AZ3:=X1^[I+1,J+1];
		END
		ELSE
		begin
			AX1:=Y1^[I,J];
			AY1:=Z1^[I,J];
			AZ1:=X1^[I,J];
			AX2:=Y1^[I+1,J];
			AY2:=Z1^[I+1,J];
			AZ2:=X1^[I+1,J];
			AX3:=Y1^[I+1,J+1];
			AY3:=Z1^[I+1,J+1];
			AZ3:=X1^[I+1,J+1];
		END;
		AXI1:=ROUND(AX1);
		AYI1:=ROUND(AY1);
		AXI2:=ROUND(AX2);
		AYI2:=ROUND(AY2);
		AXI3:=ROUND(AX3);
		AYI3:=ROUND(AY3);

    if WireFrame then
    begin
      Painter.BitmapCanvas.Brush.Color:=clWhite;
  		Painter.BitmapCanvas.Pen.Color := clBlack;
    end
    else
    begin
  		COL:=GetShadow(AZ1,AX1,AY1,AZ2,AX2,AY2,AZ3,AX3,AY3);
  		col:=col*2;
      Painter.BitmapCanvas.Brush.Color :=   $02000000 or
                            (Col Shl 16) or
                            (Col Shl 8) or
                            (Col);
  		Painter.BitmapCanvas.Pen.Color := Painter.BitmapCanvas.Brush.Color;
    end;

		Painter.BitmapCanvas.Polygon([Point(AXI1,AYI1),
                                  Point(AXI2,AYI2),
                                  Point(AXI3, AYI3)]);

	END;
end;

function TCurve.f(x, y: single): single;
begin
  Result := 0;
	Case FuncNo of
		0	:	f:=sin(x)*cos(y);
		1	:	f:=(1.5-x/2)*sqr(2.25-y*y)*sqr(2.25-y*y)*sqr(sin(3.1416*x/2));
		2	:	f:=sin(x*cos(x))*cos(y*y);
	End;
end;

procedure TCurve.FindBiggest;
var
	ix,i,j	:	integer;
begin
	IX:=0;
	FOR j:=0 TO NX-1 DO
		FOR i:=0 TO NX-1 DO
		begin
			ss^[IX]:=BIGGEST(X1^[I,J],X1^[I+1,J],X1^[I+1,J+1]);
			ss^[IX+1]:=BIGGEST(X1^[I,J],X1^[I,J+1],X1^[I+1,J+1]);
			INC(IX,2);
		END;

	FOR I:=0 TO NX*NX*2-1 DO axs^[I]:=I;
end;

function TCurve.GetShadow(inX1, inY1, inZ1, inX2, inY2, inZ2, inX3, inY3,
  inZ3: single): BYTE;
VAR
  Angle,VX1,VX2,VY1,VY2,VZ1,VZ2,TG,CS,A,B:single;
	IAngle:INTEGER;

begin
	VX1:=inX1-inX2; VX2:=inX1-inX3;
	VY1:=inY1-inY2; VY2:=inY1-inY3;
	VZ1:=inZ1-inZ2; VZ2:=inZ1-inZ3;

	A:=(-VZ1*VY2+VY1*VZ2)/(VX1*VY2-VY1*VX2);
	B:=(-VX1*VZ2+VZ1*VX2)/(VX1*VY2-VY1*VX2);

	CS:=(A*LX+B*LY+LZ)/
	  (SQRT(LX*LX+LY*LY+LZ*LZ)*SQRT(A*A+B*B+1));

	TG:=SQRT(1-CS*CS)/CS;

	Angle:=(ARCTAN(TG)/PI) * 180;
	IAngle:=ROUND(180+Angle) MOD 181;


	IF IAngle>90 THEN
		GetShadow:=(IAngle-90)
	ELSE
		GetShadow:=(90-IAngle);
end;

procedure TCurve.Init;
begin
	case FuncNo of
		0	:	CRate:=1.5;
		1	:
			begin
				CRate:=0.02;
				if Start<-2 then Start:=-2;
			end;
		2	:	CRate:=1.0;
	end;
  If NX>Grid_Count Then NX:=Grid_Count;
end;

procedure SWAP(VAR A,B:INTEGER);
VAR T:INTEGER;
begin
	T:=A; A:=B; B:=T;
END;

procedure TCurve.PART(FIRST: integer; var MIDDLE: integer; LAST: integer);
VAR
  LEFT,RIGHT:integer;
begin
	LEFT:=FIRST;
	RIGHT:=LAST;
	WHILE LEFT<RIGHT DO
	begin
		WHILE  ss^[RIGHT]>ss^[FIRST] DO RIGHT:=PRED(RIGHT);
		WHILE  (LEFT<RIGHT) AND (ss^[LEFT]<=ss^[FIRST]) DO
			LEFT:=SUCC(LEFT);
		IF  LEFT<RIGHT THEN
		begin
			SWAP(ss^[LEFT],ss^[RIGHT]);
			SWAP(axs^[LEFT],axs^[RIGHT]);
		END;
	END;
	MIDDLE:=RIGHT;
	SWAP(ss^[MIDDLE],ss^[FIRST]);
	SWAP(axs^[MIDDLE],axs^[FIRST]);
end;

procedure TCurve.QUICKSORT(FIRST, LAST: integer);
VAR
	MIDDLE:integer;
begin
	IF FIRST<LAST THEN
	begin
		PART(FIRST,MIDDLE,LAST);
		QUICKSORT(FIRST,MIDDLE-1);
		QUICKSORT(MIDDLE+1,LAST);
	END
end;

procedure TCurve.rotate(ans, bs, cs: single);
var
	c,c1,c2 	:	single;
	s,s1,s2 	:	single;
	a,b,d		:	single;
	i,j	:	integer;
begin
	ans:=ans*pi/180;
	bs:=bs*pi/180;
	cs:=cs*pi/180;
	c:=cos(ans); s:=sin(ans);
	c1:=cos(bs); s1:=sin(bs);
	c2:=cos(cs); s2:=sin(cs);
	for i:=0 to NX do
	begin
		for j:=0 to NX do
		begin
			a:=x^[i,j]*c-y^[i,j]*s;
			b:=x^[i,j]*s+y^[i,j]*c;
			y1^[i,j]:=(b*c1-z^[i,j]*s1)+(MAXX div 2);
			d:=b*s1+z^[i,j]*c1;
			z1^[i,j]:=(MAXY div 2)-(d*c2-a*s2);
			x1^[i,j]:=d*s2+a*c2;
		end;
	end;
end;

initialization
  RegisterClass(TUniMiscellaneousCurve3D);

end.
