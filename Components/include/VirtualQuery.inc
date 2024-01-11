
//////////////////////////////////////////////////
//  Virtual Data Access Components
//  Copyright © 2008-2022 Devart. All right reserved.
//////////////////////////////////////////////////

{$UNDEF VIRTUAL_QUERY}

{$IFNDEF NO_VIRTUAL_QUERY}
  {$DEFINE VIRTUAL_QUERY}
  {$IFNDEF NOSTATIC}
    {$IFDEF FPC}
      {$IFDEF LINUX}
        {$DEFINE LINUX_FPC}
      {$ELSE}
        {$IFDEF DARWIN}
          {$DEFINE DARWIN_FPC}
        {$ENDIF}
      {$ENDIF}
    {$ENDIF}
    {$IFDEF IOS}
      {$IFNDEF CPUARM}
        {$DEFINE NOSTATIC}
      {$ENDIF}
    {$ENDIF}
  {$ENDIF}
{$ENDIF}
