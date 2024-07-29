inherited frameVCLPhoenixPlannerCalendar2: TframeVCLPhoenixPlannerCalendar2
  Width = 1176
  Height = 905
  ExplicitWidth = 1176
  ExplicitHeight = 905
  DesignSize = (
    1176
    905)
  inherited lbCalendarList: TLabel
    Width = 1170
  end
  inherited edDays: TSpinEdit
    Top = 62
    Value = 3
    ExplicitTop = 62
  end
  inherited grpMeeting: TGroupBox
    Top = 794
    Width = 1176
    ExplicitTop = 794
    ExplicitWidth = 1176
  end
  inherited Panel2: TPanel
    Width = 1176
    ExplicitWidth = 1176
    inherited ckbCalendarList: TCheckListBox
      Width = 1117
      ExplicitWidth = 1117
    end
  end
  inherited PageControl1: TPageControl
    inherited tabCalendar: TTabSheet
      inherited DBPlanner1: TDBPlanner
        TMSStyle = 0
      end
    end
    inherited tabCalendarGrid: TTabSheet
      inherited EnhCRDBGrid1: TEnhCRDBGrid
        DataSource = dmVCLPhoenixPlannerController.dsCalendarEvents2
      end
    end
  end
end
