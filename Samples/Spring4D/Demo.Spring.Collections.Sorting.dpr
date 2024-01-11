program Demo.Spring.Collections.Sorting;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  uCustomer in '..\..\..\Lib\spring4d\Samples\SpringDemos\Demo.Collections\uCustomer.pas',
  uCustomerListFiller in '..\..\..\Lib\spring4d\Samples\SpringDemos\Demo.Collections\uCustomerListFiller.pas',
  uSortCustomers in '..\..\..\Lib\spring4d\Samples\SpringDemos\Demo.Collections\uSortCustomers.pas',
  uCustomerToConsole in '..\..\..\Lib\spring4d\Samples\SpringDemos\Demo.Collections\uCustomerToConsole.pas';

begin
  try
    Writeln('Unsorted Customers:');
    UnsortedCustomers;
    WriteLn('--------------------------------');
    WriteLn('Sorting by Salary:');
    SortCustomersBySalary;
    WriteLn('--------------------------------');
    WriteLn('Sorting by Last Name:');
    SortCustomerByLastName
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  Readln;
end.
