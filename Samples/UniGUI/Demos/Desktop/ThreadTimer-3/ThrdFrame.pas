unit ThrdFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniTimer, uniThreadTimer,
  uniLabel, uniRadioGroup, UniChart, uniPanel, uniSpinEdit, uniButton,
  uniProgressBar;

type
  TUniFrame1 = class(TUniFrame)
    UniProgressBar1: TUniProgressBar;
    UniButton1: TUniButton;
    UniSpinEdit1: TUniSpinEdit;
    UniButton2: TUniButton;
    UniChart1: TUniChart;
    UniLineSeries1: TUniLineSeries;
    UniRadioGroup1: TUniRadioGroup;
    UniLabel1: TUniLabel;
    ThreadTimer: TUniThreadTimer;
    UniTimer1: TUniTimer;
    procedure ThreadTimerTimer(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniTimer1Timer(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
  private
    { Private declarations }
    FSortMethod, NCnt, FProgress, FMaxCount: Integer;
    FBusy, FAbort : Boolean;
    FSortArray : array of Integer;
    procedure UpdateSeries;
    procedure InitArray(ASize: Integer);
    procedure BubbleSort(var A : array of Integer);
    procedure QuickSort(var A: array of Integer);
  public
    { Public declarations }
    property Busy: Boolean read FBusy;
  end;

implementation

{$R *.dfm}


procedure TUniFrame1.UniButton1Click(Sender: TObject);
begin
  if FBusy then Exit;

  FMaxCount := UniSpinEdit1.Value;
  InitArray(FMaxCount);

  FAbort := False;
  Fprogress := 0;

  UpdateSeries;

  FSortMethod:=UniRadioGroup1.ItemIndex;
  UniButton1.Enabled := False;
  UniButton2.Enabled := True;
  UniTimer1.Enabled := True;
  UniSpinEdit1.Enabled := False;
  UniRadioGroup1.Enabled := False;
  UniProgressBar1.Position := 0;

  FBusy := True;
  ThreadTimer.Enabled := True;
end;

procedure TUniFrame1.UniButton2Click(Sender: TObject);
begin
  UniButton2.Enabled := False;
  FAbort := True;
end;

procedure TUniFrame1.UniFrameDestroy(Sender: TObject);
begin
  ThreadTimer.Lock; // actually we don't to put a lock here because all we are accessing is a "ONE BYTE" boolean
                    // We put it anyway to demontrate locking mechanism
  try
    FAbort := True;
  finally
    ThreadTimer.Release;
  end;

  while True do
  begin
    ThreadTimer.Lock; // actually we don't to put a lock here because all we are accessing is a "ONE BYTE" boolean
                      // We put it anyway to demontrate locking mechanism
    try
      if not FBusy then Break;
    finally
      ThreadTimer.Release;
    end;
    Sleep(50);
  end;
end;

procedure TUniFrame1.ThreadTimerTimer(Sender: TObject);
var
  I : Integer;
begin
  try
    case FSortMethod of
      0 : BubbleSort(FSortArray);
      1 : QuickSort(FSortArray);
    end;

  finally
    ThreadTimer.Lock;
    try
      ThreadTimer.Enabled := False;
      if not FAbort then
        FProgress := FMaxCount;

      FBusy := False;
    finally
      ThreadTimer.Release;
    end;
  end;
end;

procedure TUniFrame1.UniTimer1Timer(Sender: TObject);
begin
  ThreadTimer.Lock;
  try
    UniProgressBar1.Position := Round((FProgress / FMaxCount) * UniProgressBar1.Max);
  finally
    ThreadTimer.Release;
  end;

  Inc(NCnt);

  if NCnt mod 3 = 0 then UpdateSeries;

  if not FBusy then
  begin
    UniButton1.Enabled := True;
    UniButton2.Enabled := False;
    UniTimer1.Enabled := False;
    UniSpinEdit1.Enabled := True;
    UniRadioGroup1.Enabled := True;
    UpdateSeries;
    SetLength(FSortArray, 0); // free memory
  end;
end;

procedure TUniFrame1.InitArray(ASize: Integer);
var
  I : Integer;
begin
  SetLength(FSortArray, ASize);
  Randomize;
  for I := Low(FSortArray) to High(FSortArray) do
    FSortArray[I] := Random(1000);
end;

procedure TUniFrame1.UpdateSeries;
var
  I, M : Integer;
begin
  M := Length(FSortArray) div 100;
  if M>0 then
  begin
    UniLineSeries1.Clear;
    for I := 0 to 99 do
      UniLineSeries1.Add(FSortArray[I*M], '');
  end;
end;

procedure TUniFrame1.QuickSort(var A: array of Integer);

  procedure QSort(var A: array of Integer; iLo, iHi: Integer);
  var
    Lo, Hi, Mid, T: Integer;
  begin
    Lo := iLo;
    Hi := iHi;
    Mid := A[(Lo + Hi) div 2];
    repeat
      while A[Lo] < Mid do Inc(Lo);
      while A[Hi] > Mid do Dec(Hi);
      if Lo <= Hi then
      begin
        T := A[Lo];
        A[Lo] := A[Hi];
        A[Hi] := T;
        Inc(Lo);
        Dec(Hi);
      end;
    until Lo > Hi;
    if Hi > iLo then QSort(A, iLo, Hi);
    if Lo < iHi then QSort(A, Lo, iHi);

    ThreadTimer.Lock; // Lock thread when accessing shared variables
                      // (Again putting a lock here is not required, because FAbort is a ONE BYTE boolean.
                      // We put the lock to demonstrate locking )
    try
      if FAbort then Exit;
    finally
      ThreadTimer.Release;
    end;
  end;

begin
  QSort(A, Low(A), High(A));
end;

procedure TUniFrame1.BubbleSort(var A : array of Integer);
var
  I, J, T: Integer;
begin
  for I := High(A) downto Low(A) do
  begin
    ThreadTimer.Lock; // Lock thread when accessing shared variables
    try
      Inc(FProgress);

      if FAbort then Break;
    finally
      ThreadTimer.Release;
    end;

    for J := Low(A) to High(A) - 1 do
      if A[J] > A[J + 1] then
      begin
        T := A[J];
        A[J] := A[J + 1];
        A[J + 1] := T;
      end;
  end;
end;

end.
