procedure TframeVCLPhoenixPlannerEvent.Filter;
var
  lFilter: TRecordFilter;
begin
  if not cboTecnici.Value.IsEmpty then
    lFilter.TecnicoDB := cboTecnici.Value.ToInteger
  else
    lFilter.TecnicoDB := -1;
  lFilter.TecnicoCk := True; { not lkpGroups.Value.IsEmpty and ckbFilterTech.Checked; }
  lFilter.CAP := lkpCAP.Value;
  lFilter.CAPCk := not lkpCAP.Value.IsEmpty;
  if not cboCustomers.Value.IsEmpty then
    lFilter.ClienteID := cboCustomers.Value.ToInteger
  else
    lFilter.ClienteID := -1;
  lFilter.ClienteCk := not cboCustomers.Value.IsEmpty;
  lFilter.Status := grpStato.ItemIndex;
  dmVCLPhoenixPlannerController.FilterMeetingDialog(lFilter);
end;