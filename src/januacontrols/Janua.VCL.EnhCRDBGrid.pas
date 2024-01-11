unit Janua.VCL.EnhCRDBGrid;

interface

uses
  Winapi.Windows, System.Classes, VCL.Graphics, VCL.Grids, VCL.DBGrids, CRGrid;

type
  TEnhCRDBGrid = class(TCRDBGrid)
  private
    FHighlightBGColor: TColor;
    FHighlightFont: TFont;
    FDoRowHighlight: Boolean;
    procedure DrawField(const Value: String; const Rect: TRect; vCanvas: TCanvas;
      const vFont: TFont; vAlignment: TAlignment; const FontStyle: TFontStyles;
      const FontColor: TColor; const BGColor: TColor);
  protected
    procedure DrawColumnCell(const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState); override;
    procedure SetHighlightFont(Value: TFont);
  public
    destructor Destroy; override;
    constructor Create(AOwner: TComponent); override;
    property Canvas;
    property SelectedRows;
    property DoRowHighLight: Boolean read FDoRowHighlight write FDoRowHighlight default False;
  published
    property Align;
    property BorderStyle;
    property Color;
    property Columns stored False; // StoreColumns;
    property Ctl3D;
    property DataSource;
    property DefaultDrawing;
    property DragCursor;
    property DragMode;
    property Enabled;
    property FixedColor;
    property Font;
    property HighlightBGColor: TColor read FHighlightBGColor write FHighlightBGColor;
    property HighlightFont: TFont read FHighlightFont write SetHighlightFont;
    property ImeMode;
    property ImeName;
    property Options;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ReadOnly;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property TitleFont;
    property Visible;
    property OnCellClick;
    property OnColEnter;
    property OnColExit;
    property OnColumnMoved;
    property OnDrawDataCell; { obsolete }
    property OnDrawColumnCell;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEditButtonClick;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnStartDrag;
    property OnTitleClick;
  end;


implementation

constructor TEnhCRDBGrid.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  // Give the highlight font a default value
  FHighlightFont := TFont.Create;
end;

destructor TEnhCRDBGrid.Destroy;
begin
  JanuaFreeAndNil(  FHighlightFont);
  inherited;
end;

procedure TEnhCRDBGrid.DrawField(const Value: String; const Rect: TRect; vCanvas: TCanvas;
  const vFont: TFont; vAlignment: TAlignment; const FontStyle: TFontStyles; const FontColor: TColor;
  const BGColor: TColor);
var
  I: Integer;
begin
  I := 0;

  // First, fill in the background color of the cell
  vCanvas.Brush.Color := BGColor;
  vCanvas.FillRect(Rect);
  // SetBkMode ensures that the background is transparent
  SetBkMode(Canvas.Handle, TRANSPARENT);

  // Now draw out the text in the cell
  vCanvas.Font := vFont;
  vCanvas.Font.Color := FontColor;
  vCanvas.Font.Style := vCanvas.Font.Style + FontStyle;

  // Now set the text alignment
  case vAlignment of { }
    taRightJustify:
      begin
        SetTextAlign(vCanvas.Handle, TA_RIGHT);
        I := Rect.Right - 2;
      end;

    taLeftJustify:
      begin
        SetTextAlign(vCanvas.Handle, TA_LEFT);
        I := Rect.Left + 2;
      end;

    taCenter:
      begin
        SetTextAlign(vCanvas.Handle, TA_CENTER);
        I := (Rect.Right + Rect.Left) DIV 2;
      end;
  end; { case }
  // Write the text!!!
  vCanvas.TextRect(Rect, I, Rect.Top + 2, Value);
  // Necessary step to align rest of the text in the DBGrid
  SetTextAlign(vCanvas.Handle, TA_LEFT);
end;

procedure TEnhCRDBGrid.DrawColumnCell(const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  // Do the inherited method
  inherited DrawColumnCell(Rect, DataCol, Column, State);

  // If user wants row highlighted, then call DrawField
  if DoRowHighLight then
    DrawField(Column.Field.DisplayText, Rect, Canvas, FHighlightFont, Column.Alignment,
      FHighlightFont.Style, FHighlightFont.Color, FHighlightBGColor);
end;

procedure TEnhCRDBGrid.SetHighlightFont(Value: TFont);
begin
  // Assign the font
  FHighlightFont.Assign(Value);
end;


end.
