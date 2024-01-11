unit ImageFiltersFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IKImage, jpeg, IKLayerView, IKImageView, ExtCtrls, IKTypes,
  ComCtrls, IKDXView, IKRender, Grids;

type
  TImageFiltersForm = class(TForm)
    Categories: TListBox;
    Filters: TListBox;
    Panel1: TPanel;
    Label1: TLabel;
    Splitter1: TSplitter;
    Label2: TLabel;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Label3: TLabel;
    FloatValue: TTrackBar;
    Properties: TListBox;
    ColorValue: TColorBox;
    DXView1: TIKDXView;
    MatrixValue: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure CategoriesClick(Sender: TObject);
    procedure FiltersClick(Sender: TObject);
    procedure FloatValueChange(Sender: TObject);
    procedure PropertiesClick(Sender: TObject);
    procedure ColorValueChange(Sender: TObject);
    procedure DXView1Render(const Render: TDXRenderHelper);
    procedure FormDestroy(Sender: TObject);
    procedure MatrixValueSetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: String);
  private
    Filter: TIKFilter;
    Image: TIKImage;
  public
  end;

var
  ImageFiltersForm: TImageFiltersForm;

implementation

{$R *.dfm}

procedure TImageFiltersForm.FormCreate(Sender: TObject);
begin
  if FileExists(ExtractFilePath(ParamStr(0)) + '..\..\Media\Photo.png') then
    Image := TIKImage.CreateWithFile(ExtractFilePath(ParamStr(0)) + '..\..\Media\Photo.png');
  if FileExists(ExtractFilePath(ParamStr(0)) + '..\Media\Photo.png') then
    Image := TIKImage.CreateWithFile(ExtractFilePath(ParamStr(0)) + '..\Media\Photo.png');

  Categories.Items.Assign(TIKFilter.FilterCategories);
end;

procedure TImageFiltersForm.FormDestroy(Sender: TObject);
begin
  Image.Free;
end;

procedure TImageFiltersForm.CategoriesClick(Sender: TObject);
begin
  Filters.Items.Assign(TIKFilter.FilterNamesInCategory(Categories.Items[Categories.ItemIndex]));
end;

procedure TImageFiltersForm.FiltersClick(Sender: TObject);
var
  I: Integer;
begin
  if Filters.ItemIndex >= 0 then
  begin
    FloatValue.Visible := False;
    ColorValue.Visible := False;

    FreeAndNil(Filter);
    Filter := TIKFilter.CreateWithName(Filters.Items[Filters.ItemIndex]);
    Filter.SetValue('InputRect', IKRect(0, 0, 400, 400));
    Filter.SetValue('InputImage', Image);

    DXView1.Invalidate;

    Properties.Items.Clear;
    for I := 0 to Filter.PropertyNames.Count - 1 do
      if (Pos('_Min', Filter.PropertyNames[I]) = 0) and (Pos('_Max', Filter.PropertyNames[I]) = 0) then
        Properties.Items.Add(Filter.PropertyNames[I]);
  end;
end;

procedure TImageFiltersForm.FloatValueChange(Sender: TObject);
var
  Min, Max: TIKValue;
begin
  if (Filter <> nil) and (Properties.ItemIndex >= 0) then
  begin
    if Filter.PropertyExists(Properties.Items[Properties.ItemIndex] + '_Min') then
    begin
      Min := Filter.GetValue(Properties.Items[Properties.ItemIndex] + '_Min');
      Max := Filter.GetValue(Properties.Items[Properties.ItemIndex] + '_Max');
      Filter.SetValue(Properties.Items[Properties.ItemIndex], (FloatValue.Position / 100) * (Max.AsFloat - Min.AsFloat) + Min.AsFloat);
    end
    else
      Filter.SetValue(Properties.Items[Properties.ItemIndex], FloatValue.Position);
    DXView1.Invalidate;
  end;
end;

procedure TImageFiltersForm.PropertiesClick(Sender: TObject);
var
  I, J: Integer;
  Min, Max, Value: TIKValue;
begin
  if (Properties.ItemIndex >= 0) and (Filter <> nil) then
  begin
    Value := Filter.GetValue(Properties.Items[Properties.ItemIndex]);

    FloatValue.Visible := False;
    ColorValue.Visible := False;
    MatrixValue.Visible := False;

    case Value.Kind of
      ivFloat:
        begin
          FloatValue.Visible := True;
          FloatValue.Min := 0;
          FloatValue.Max := 100;

          if Filter.PropertyExists(Properties.Items[Properties.ItemIndex] + '_Min') then
          begin
            Min := Filter.GetValue(Properties.Items[Properties.ItemIndex] + '_Min');
            Max := Filter.GetValue(Properties.Items[Properties.ItemIndex] + '_Max');
            FloatValue.Position := Round(((Value.AsFloat - Min.AsFloat) / (Max.AsFloat - Min.AsFloat)) * 100);
          end
          else
          begin
            FloatValue.Position := Round(Value.AsFloat);
          end;
        end;
      ivColor:
        begin
          ColorValue.Visible := True;
          ColorValue.Selected := IKColorFToColor(Value.AsColor);
        end;
      ivInt:
        begin
          ColorValue.Visible := True;
          ColorValue.Selected := IKColorFToColor(IKColorF(Value.AsInt));
        end;
      ivMatrix:
        begin
          for I := 0 to 2 do
            for J := 0 to 2 do
              MatrixValue.Cells[I, J] := FloatToStr(Value.AsMatrix.M[J].V[I]);
          MatrixValue.Visible := True;
        end;
    end;
  end;
end;

procedure TImageFiltersForm.ColorValueChange(Sender: TObject);
begin
  if (Filter <> nil) and (Properties.ItemIndex >= 0) then
  begin
    Filter.SetValue(Properties.Items[Properties.ItemIndex], ColorToIKColorF(ColorValue.Selected));
    DXView1.Invalidate;
  end;
end;

procedure TImageFiltersForm.DXView1Render(const Render: TDXRenderHelper);
var
  Context: TIKContext;
begin
  Context := TIKContext.CreateWithRender(Render);
  try
    if Filter <> nil then
      Context.DrawImage(Filter.OutputImage, Filter.OutputImage.Extent)
    else
      Context.DrawImage(Image, Image.Extent)
  finally
    Context.Free;
  end;
end;

procedure TImageFiltersForm.MatrixValueSetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: String);
var
  I, J: Integer;
  M: TIKMatrix;
  F: Single;
begin
  for I := 0 to 2 do
    for J := 0 to 2 do
      if TryStrToFloat(MatrixValue.Cells[I, J], F) then
        M.M[J].V[I] := F;
  Filter.SetValue(Properties.Items[Properties.ItemIndex], M);
  DXView1.Invalidate;
end;

end.
