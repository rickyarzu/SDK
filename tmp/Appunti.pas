  Item.Summary := edCalendarItemName.Text;
  Item.Description := Memo1.Lines.Text;
  Item.Location := edCalendarLocation.Text;
  if cbColors.ItemIndex >= 0 then
    Item.Color := TGItemColor(cbColors.ItemIndex)
  else
    Item.Color := icDefault;
	
var
  li: TGCalendarItem;
  SelectedID: string;
begin
  if ListView1.ItemIndex >= 0 then
  begin
    li := ListView1.Items[ListView1.ItemIndex].Data;

    SetCalendarItem(li);
    AdvGCalendar1.Update(li);
    SelectedID := li.ID;	
	