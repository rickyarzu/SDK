program ImageFilters;

uses
  Forms,
  ImageFiltersFrm in 'ImageFiltersFrm.pas' {ImageFiltersForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TImageFiltersForm, ImageFiltersForm);
  Application.Run;
end.
