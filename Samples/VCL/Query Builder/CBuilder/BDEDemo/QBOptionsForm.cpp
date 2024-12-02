//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "QBOptionsForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfmQBOptions *fmQBOptions;
//---------------------------------------------------------------------------
__fastcall TfmQBOptions::TfmQBOptions(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall ShowQBOptions(TCustomQueryBuilder *QueryBuilder)
{
  TfmQBOptions *fmQBOptions = new TfmQBOptions(0);
  try
  {
    fmQBOptions->QueryBuilder = QueryBuilder;
    fmQBOptions->ShowModal();
  }
  __finally
  {
    delete fmQBOptions;
  }
}
//---------------------------------------------------------------------------
void __fastcall TfmQBOptions::ColorClick(TObject *Sender)
{
  TPaintBox *PB;
  if ((PB = dynamic_cast<TPaintBox*>(Sender)) != 0)
  {
    dlgColors->Color = PB->Color;
    if (dlgColors->Execute())
      PB->Color = dlgColors->Color;
  }
}
//---------------------------------------------------------------------------
void __fastcall TfmQBOptions::SetQueryBuilder(TCustomQueryBuilder *Value)
{
  if (FQueryBuilder != Value)
  {
    FQueryBuilder = Value;
    if (FQueryBuilder)
    {
      chRowSelect->Checked = FQueryBuilder->Options.Contains(qboRowSelect);
      chDragFieldName->Checked = FQueryBuilder->Options.Contains(qboDragFieldName);
      chHideSelection->Checked = FQueryBuilder->Options.Contains(qboHideSelection);
      chShowFieldTypes->Checked = FQueryBuilder->Options.Contains(qboShowFieldTypes);
      pbActiveCondition->Color = FQueryBuilder->Palette->ActiveCondition;
      pbConditionText->Color = FQueryBuilder->Palette->ConditionText;
      pbConditionItemText->Color = FQueryBuilder->Palette->ConditionItemText;
      pbTableClient->Color = FQueryBuilder->Palette->TableClient;
      pbActiveCaption->Color = FQueryBuilder->Palette->ActiveCaption;
      pbInactiveCaption->Color = FQueryBuilder->Palette->InactiveCaption;
      pbFieldText->Color = FQueryBuilder->Palette->ItemText;
      pbSelectedFieldText->Color = FQueryBuilder->Palette->SelectedItemText;
      cbConditionButton->ItemIndex = FQueryBuilder->Style->ButtonStyle;
      cbObjectBorderKind->ItemIndex = FQueryBuilder->Style->ObjectStyle->BorderKind;
      chFlatObjects->Checked = FQueryBuilder->Style->ObjectStyle->Flat;
      chFlatObjectButtons->Checked = FQueryBuilder->Style->ObjectStyle->FlatButtons;
      chCriterions->Checked = FQueryBuilder->VisibleTabs.Contains(qbtCriterions);
      chSelection->Checked = FQueryBuilder->VisibleTabs.Contains(qbtSelection);
      chGroupCriterions->Checked = FQueryBuilder->VisibleTabs.Contains(qbtGroupCriterions);
      chSorting->Checked = FQueryBuilder->VisibleTabs.Contains(qbtSorting);
      cbKeywordsFormat->ItemIndex = QueryBuilder->ScriptFormat->KeywordsFormat;
      cbFunctionsFormat->ItemIndex = FQueryBuilder->ScriptFormat->FunctionsFormat;
    }
  }
}
//---------------------------------------------------------------------------
void __fastcall TfmQBOptions::FormClose(TObject *Sender,
  TCloseAction &Action)
{
  Action = caFree;
  if (FQueryBuilder && (ModalResult == mrOk))
  {
    if (chRowSelect->Checked) FQueryBuilder->Options << qboRowSelect;
    if (chDragFieldName->Checked) FQueryBuilder->Options << qboDragFieldName;
    if (chHideSelection->Checked) FQueryBuilder->Options << qboHideSelection;
    if (chShowFieldTypes->Checked) FQueryBuilder->Options << qboShowFieldTypes;
    FQueryBuilder->Palette->ActiveCondition = pbActiveCondition->Color;
    FQueryBuilder->Palette->ConditionText = pbConditionText->Color;
    FQueryBuilder->Palette->ConditionItemText = pbConditionItemText->Color;
    FQueryBuilder->Palette->TableClient = pbTableClient->Color;
    FQueryBuilder->Palette->ActiveCaption = pbActiveCaption->Color;
    FQueryBuilder->Palette->InactiveCaption = pbInactiveCaption->Color;
    FQueryBuilder->Palette->ItemText = pbFieldText->Color;
    FQueryBuilder->Palette->SelectedItemText = pbSelectedFieldText->Color;
    FQueryBuilder->Style->ButtonStyle = (TQBButtonStyle)cbConditionButton->ItemIndex;
    FQueryBuilder->Style->ObjectStyle->BorderKind = (TQBBorderKind)cbObjectBorderKind->ItemIndex;
    FQueryBuilder->Style->ObjectStyle->Flat = chFlatObjects->Checked;
    FQueryBuilder->Style->ObjectStyle->FlatButtons = chFlatObjectButtons->Checked;
    FQueryBuilder->ScriptFormat->KeywordsFormat = (TQBFormatMode)cbKeywordsFormat->ItemIndex;
    FQueryBuilder->ScriptFormat->FunctionsFormat = (TQBFormatMode)cbFunctionsFormat->ItemIndex;

    if (chCriterions->Checked) FQueryBuilder->VisibleTabs << qbtCriterions;
    else FQueryBuilder->VisibleTabs >> qbtCriterions;
    if (chSelection->Checked) FQueryBuilder->VisibleTabs << qbtSelection;
    else FQueryBuilder->VisibleTabs >> qbtSelection;
    if (chGroupCriterions->Checked) FQueryBuilder->VisibleTabs << qbtGroupCriterions;
    else FQueryBuilder->VisibleTabs >> qbtGroupCriterions;
    if (chSorting->Checked) FQueryBuilder->VisibleTabs << qbtSorting;
    else FQueryBuilder->VisibleTabs >> qbtSorting;
  }
}
//---------------------------------------------------------------------------
void __fastcall TfmQBOptions::ColorPaint(TObject *Sender)
{
  TPaintBox *PB;
  if ((PB = dynamic_cast<TPaintBox*>(Sender)) != 0)
  {
    PB->Canvas->FillRect(PB->ClientRect);
    TPoint points[4];
    points[0] = Point(1,1);
    points[1] = Point(1, PB->Height - 2);
    points[2] = Point(PB->Width - 2, PB->Height - 2);
    points[3] = Point(PB->Width - 2, 1);

    PB->Canvas->Polygon(points, 3);
  }
}
//--------------------------------------------------------------------------