unit QBOptionsForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, QBWindow, QBMSWindow, QBWherePanel, QBFloatPanel, QBParser;

type
  TfmQBOptions = class(TForm)
    gbGeneral: TGroupBox;
    chRowSelect: TCheckBox;
    chDragFieldName: TCheckBox;
    chHideSelection: TCheckBox;
    chShowFieldTypes: TCheckBox;
    gbPalette: TGroupBox;
    laActiveConditionRow: TLabel;
    laTableClient: TLabel;
    dlgColors: TColorDialog;
    pbActiveCondition: TPaintBox;
    pbTableClient: TPaintBox;
    gbStyle: TGroupBox;
    cbConditionButton: TComboBox;
    cbObjectBorderKind: TComboBox;
    laConditionButton: TLabel;
    laObjectBorderKind: TLabel;
    chFlatObjects: TCheckBox;
    chFlatObjectButtons: TCheckBox;
    paButtons: TPanel;
    buOk: TButton;
    buCancel: TButton;
    gbVisibleTabs: TGroupBox;
    chCriterions: TCheckBox;
    chSelection: TCheckBox;
    chGroupCriterions: TCheckBox;
    chSorting: TCheckBox;
    laActiveCaption: TLabel;
    pbActiveCaption: TPaintBox;
    laInactiveCaption: TLabel;
    pbInactiveCaption: TPaintBox;
    pbConditionText: TPaintBox;
    laConditionText: TLabel;
    Label1: TLabel;
    pbConditionItemText: TPaintBox;
    laFieldText: TLabel;
    pbFieldText: TPaintBox;
    laSelectedFieldText: TLabel;
    pbSelectedFieldText: TPaintBox;
    gbScriptFormat: TGroupBox;
    laKeywordsFormat: TLabel;
    cbKeywordsFormat: TComboBox;
    laFunctionsFormat: TLabel;
    cbFunctionsFormat: TComboBox;
    cbBracketAllConditions: TCheckBox;
    cbCaseSensitiveIdents: TCheckBox;
    Label2: TLabel;
    pbWorkSpace: TPaintBox;
    chData: TCheckBox;
    Label3: TLabel;
    pbField: TPaintBox;
    Label4: TLabel;
    pbOperation: TPaintBox;
    Label5: TLabel;
    pbGroup: TPaintBox;
    Label6: TLabel;
    pbPredicate: TPaintBox;
    gbAdditional: TGroupBox;
    chOnlySelect: TCheckBox;
    chUnionAllByDefault: TCheckBox;
    chXPTablesStyle: TCheckBox;
    Label7: TLabel;
    pbSubQuery: TPaintBox;
    chUseIcons: TCheckBox;
    procedure ColorClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ColorPaint(Sender: TObject);
  private
    FQueryBuilder: TFullQueryBuilder;
    procedure SetQueryBuilder(const Value: TFullQueryBuilder);
  public
    property QueryBuilder: TFullQueryBuilder read FQueryBuilder
      write SetQueryBuilder;
  end;


procedure ShowQBOptions(QueryBuilder: TFullQueryBuilder);

implementation

{$R *.DFM}

procedure ShowQBOptions(QueryBuilder: TFullQueryBuilder);
var
  fmQBOptions: TfmQBOptions;
begin
  fmQBOptions := TfmQBOptions.Create(nil);
  try
    fmQBOptions.QueryBuilder := QueryBuilder;
    fmQBOptions.ShowModal();
  finally
    fmQBOptions.Free();
  end;
end;

procedure TfmQBOptions.ColorClick(Sender: TObject);
begin
  if Sender is TPaintBox then
  begin
    dlgColors.Color := TPaintBox(Sender).Color;
    if dlgColors.Execute then
      TPaintBox(Sender).Color := dlgColors.Color;
  end;
end;

procedure TfmQBOptions.SetQueryBuilder(const Value: TFullQueryBuilder);
begin
  if FQueryBuilder <> Value then begin
    FQueryBuilder := Value;
    if Assigned(FQueryBuilder) then begin
      chRowSelect.Checked := qboRowSelect in FQueryBuilder.Options;
      chDragFieldName.Checked := qboDragFieldName in FQueryBuilder.Options;
      chHideSelection.Checked := qboHideSelection in FQueryBuilder.Options;
      chShowFieldTypes.Checked := qboShowFieldTypes in FQueryBuilder.Options;
      cbCaseSensitiveIdents.Checked := FQueryBuilder.CaseSensitiveIdentifiers;
      chXPTablesStyle.Checked := FQueryBuilder.Style.TableStyle = qtsXPStyle;
      chUnionAllByDefault.Checked := FQueryBuilder.UnionAllByDefault;
      chUseIcons.Checked := FQueryBuilder.UseIcons;
      chOnlySelect.Checked := FQueryBuilder.OnlySelect;
      pbActiveCondition.Color := FQueryBuilder.Palette.ActiveCondition;
      pbConditionText.Color := FQueryBuilder.Palette.ConditionText;
      pbConditionItemText.Color := FQueryBuilder.Palette.ConditionItemText;
      pbTableClient.Color := FQueryBuilder.Palette.TableClient;
      pbActiveCaption.Color := FQueryBuilder.Palette.ActiveCaption;
      pbInactiveCaption.Color := FQueryBuilder.Palette.InactiveCaption;
      pbFieldText.Color := FQueryBuilder.Palette.ItemText;
      pbSelectedFieldText.Color := FQueryBuilder.Palette.SelectedItemText;
      pbWorkSpace.Color := FQueryBuilder.Palette.WorkSpace;
      pbField.Color := FQueryBuilder.Palette.Field;
      pbOperation.Color := FQueryBuilder.Palette.Operation;
      pbPredicate.Color := FQueryBuilder.Palette.Predicate;
      pbSubQuery.Color  := FQueryBuilder.Palette.SubQuery; 
      pbGroup.Color := FQueryBuilder.Palette.Group;
      cbConditionButton.ItemIndex := Ord(FQueryBuilder.Style.ButtonStyle);
      cbObjectBorderKind.ItemIndex := Ord(FQueryBuilder.Style.ObjectStyle.BorderKind);
      chFlatObjects.Checked := FQueryBuilder.Style.ObjectStyle.Flat;
      chFlatObjectButtons.Checked := FQueryBuilder.Style.ObjectStyle.FlatButtons;
      chCriterions.Checked := qbtCriterions in FQueryBuilder.VisibleTabs;
      chSelection.Checked := qbtSelection in FQueryBuilder.VisibleTabs;
      chGroupCriterions.Checked := qbtGroupCriterions in FQueryBuilder.VisibleTabs;
      chSorting.Checked := qbtSorting in FQueryBuilder.VisibleTabs;
      chData.Checked := qbtData in FQueryBuilder.VisibleTabs;
      cbKeywordsFormat.ItemIndex :=
        Ord(FQueryBuilder.ScriptFormat.KeywordsFormat);
      cbFunctionsFormat.ItemIndex :=
        Ord(FQueryBuilder.ScriptFormat.FunctionsFormat);
      cbBracketAllConditions.Checked :=
        FQueryBuilder.ScriptFormat.AlwaysBracketConditions;
    end;
  end;
end;

procedure TfmQBOptions.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  if Assigned(FQueryBuilder) and (ModalResult = mrOk) then begin
    if chRowSelect.Checked
      then FQueryBuilder.Options := FQueryBuilder.Options + [qboRowSelect];
    if chDragFieldName.Checked
      then FQueryBuilder.Options := FQueryBuilder.Options + [qboDragFieldName];
    if chHideSelection.Checked
      then FQueryBuilder.Options := FQueryBuilder.Options + [qboHideSelection];
    if chShowFieldTypes.Checked
      then FQueryBuilder.Options := FQueryBuilder.Options + [qboShowFieldTypes];
    if chXPTablesStyle.Checked then FQueryBuilder.Style.TableStyle := qtsXPStyle
    else FQueryBuilder.Style.TableStyle := qtsStandard;
    FQueryBuilder.OnlySelect := chOnlySelect.Checked;
    FQueryBuilder.UnionAllByDefault := chUnionAllByDefault.Checked;
    FQueryBuilder.CaseSensitiveIdentifiers := cbCaseSensitiveIdents.Checked;
    FQueryBuilder.UseIcons :=  chUseIcons.Checked;
//    FQueryBuilder.Style.TableStyle
    FQueryBuilder.Palette.ActiveCondition := pbActiveCondition.Color;
    FQueryBuilder.Palette.ConditionText := pbConditionText.Color;
    FQueryBuilder.Palette.ConditionItemText := pbConditionItemText.Color;
    FQueryBuilder.Palette.TableClient := pbTableClient.Color;
    FQueryBuilder.Palette.ActiveCaption := pbActiveCaption.Color;
    FQueryBuilder.Palette.InactiveCaption := pbInactiveCaption.Color;
    FQueryBuilder.Palette.ItemText := pbFieldText.Color;
    FQueryBuilder.Palette.SelectedItemText := pbSelectedFieldText.Color;
    FQueryBuilder.Palette.WorkSpace := pbWorkSpace.Color;
    FQueryBuilder.Palette.Field := pbField.Color;
    FQueryBuilder.Palette.Operation := pbOperation.Color;
    FQueryBuilder.Palette.Group := pbGroup.Color;
    FQueryBuilder.Palette.Predicate := pbPredicate.Color;
    FQueryBuilder.Palette.SubQuery := pbSubQuery.Color;
    FQueryBuilder.Style.ButtonStyle :=
      TQBButtonStyle(cbConditionButton.ItemIndex);
    FQueryBuilder.Style.ObjectStyle.BorderKind :=
      TQBBorderKind(cbObjectBorderKind.ItemIndex);
    FQueryBuilder.Style.ObjectStyle.Flat := chFlatObjects.Checked;
    FQueryBuilder.Style.ObjectStyle.FlatButtons := chFlatObjectButtons.Checked;
    FQueryBuilder.ScriptFormat.KeywordsFormat :=
      TQBFormatMode(cbKeywordsFormat.ItemIndex);
    FQueryBuilder.ScriptFormat.FunctionsFormat :=
      TQBFormatMode(cbFunctionsFormat.ItemIndex);
    FQueryBuilder.ScriptFormat.AlwaysBracketConditions :=
      cbBracketAllConditions.Checked;

    if chCriterions.Checked
      then FQueryBuilder.VisibleTabs := FQueryBuilder.VisibleTabs + [qbtCriterions]
      else FQueryBuilder.VisibleTabs := FQueryBuilder.VisibleTabs - [qbtCriterions];

    if chSelection.Checked
      then FQueryBuilder.VisibleTabs := FQueryBuilder.VisibleTabs + [qbtSelection]
      else FQueryBuilder.VisibleTabs := FQueryBuilder.VisibleTabs - [qbtSelection];
    if chGroupCriterions.Checked
      then FQueryBuilder.VisibleTabs := FQueryBuilder.VisibleTabs +
        [qbtGroupCriterions]
      else FQueryBuilder.VisibleTabs := FQueryBuilder.VisibleTabs -
        [qbtGroupCriterions];
    if chSorting.Checked
      then FQueryBuilder.VisibleTabs := FQueryBuilder.VisibleTabs + [qbtSorting]
      else FQueryBuilder.VisibleTabs := FQueryBuilder.VisibleTabs - [qbtSorting];
    if chData.Checked
      then FQueryBuilder.VisibleTabs := FQueryBuilder.VisibleTabs + [qbtData]
      else FQueryBuilder.VisibleTabs := FQueryBuilder.VisibleTabs - [qbtData];
  end;
end;

procedure TfmQBOptions.ColorPaint(Sender: TObject);
begin
  if Sender is TPaintBox then
  begin
    TPaintBox(Sender).Canvas.FillRect(TPaintBox(Sender).ClientRect);
    TPaintBox(Sender).Canvas.Polygon([Point(1, 1),
      Point(1, TPaintBox(Sender).Height - 2),
      Point(TPaintBox(Sender).Width - 2, TPaintBox(Sender).Height - 2),
      Point(TPaintBox(Sender).Width - 2, 1)]);
  end;
end;

end.
