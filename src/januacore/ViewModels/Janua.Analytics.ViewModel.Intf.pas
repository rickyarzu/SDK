unit Janua.Analytics.ViewModel.Intf;

interface

uses Janua.ViewModels.Dynamic.Intf, Janua.ViewModels.Intf, Janua.Orm.Intf, System.JSON;

implementation

type
  IJanuaAnalyticsModel = interface(IJanuaModel)
    ['{3F707968-BA85-4FD8-BFFB-2DE14862D8C2}']
  end;

  IJanuaAnalyticsViewModel = interface(IJanuaModel)
    ['{228E313A-152F-4D0B-814B-78CFB9A8795B}']

  end;

  IJanuaAnalyticsMainForm = interface
    ['{1AB6EE4E-E377-4707-976E-C6E3B3A6180D}']
  end;

end.
