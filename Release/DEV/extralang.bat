@echo off
goto ExtraMenu

:BackTo
goto %Position%
:GoingTo
goto %Position%
:DownloadCheck
echo %Downloaded% >>log.log



:InstallMenu
  cls 
  exit
  ::just for not get failure





:ExtraMenu
  cls
  Title Rainbow Six Siege Extra Menu
  MODE 50,25
  set LastSelector=Extra
  echo [93m-----------------------NOTES----------------------[0m
  echo                Extra Language Menu
  echo               Placeholder
  echo [93m-----------------------SELECT---------------------[0m
  Resources\cmdmenusel f8f0 "    Extra Version" "    Extra Release" "    Extra Event" "    Back"

  if %ERRORLEVEL%==1 (
  set Position=ExtraVersion
  goto GoingTo
  )
  if %ERRORLEVEL%==2 (
  set Position=ExtraRelease
  goto GoingTo
  )
  if %ERRORLEVEL%==3 (
  set Position=ExtraEvent
  goto GoingTo
  )
  if %ERRORLEVEL% == 4 (
    if %LastSelector% == MainMenu (
      set Position=MainMenu
      goto BackTo
    ) else (
      set Position=InstallMenu
      goto BackTo
    )
  )
  goto ExtraMenu


:ExtraEvent
  cls
  Title Rainbow Six Siege Extra Event
  MODE 50,25
  echo ExtraEvent Loaded>>log.log
  echo [93m-----------------------NOTES----------------------[0m
  echo             Extra Event Language Menu
  echo               Placeholder
  echo [93m-----------------------SELECT---------------------[0m
  Resources\cmdmenusel f8f0 "   Outback" "   Mad House" "   Rainbow is Magic" "   Showdown" "   Doctors Curse" "   Road To S.I. 2020" "   Gang Destruction / Golden Gun" "   M.U.T.E Protocol (Supported Omega)" "   Sugar Fright / Telly" "   Back"
  
  if %ERRORLEVEL%==1 (
  set Position=ExtraEvent
  goto GoingTo
  )
  if %ERRORLEVEL%==10 (
  set Position=ExtraMenu
  goto BackTo
  )
  goto ExtraEvent


::Extra START
:ExtraVersion
  cls
  Title Rainbow Six Siege Extra Version
  MODE 50,30
  set LastSelector=Extra
  echo [93m-----------------------NOTES----------------------[0m
  echo             Extra Event Language Menu
  ::echo               Placeholder - /Red Crow/
  echo [93m-----------------------SELECT---------------------[0m
  Resources\cmdmenusel f8f0 "  Vanilla" "  Black Ice" "  Dust Line" "  Skull Rain" "  Red Crow" "  Velvet Shell" "  Health" "  Blood Orchid" "  White Noise" "  Chimera" "  Para Bellum" "  Grim Sky" "  Wind Bastion" "  Burnt Horizon" "  Phantom Sight" "  Ember Rise" "  Shifting Tides" "  Void Edge" "  Steel Wave" "  Shadow Legacy" "  Neon Dawn"  "  Back"
  
  if %ERRORLEVEL%==1 (
  set Position=VanillaLang
  goto GoingTo
  )
  if %ERRORLEVEL%==2 (
  set Position=BlackIceLang
  goto GoingTo
  )
  if %ERRORLEVEL%==3 (
  set Position=DustLineLang
  goto GoingTo
  )
  if %ERRORLEVEL%==4 (
  set Position=SkullRainLang
  goto GoingTo
  )
  if %ERRORLEVEL%==5 (
  set Position=RedCrowLang
  goto GoingTo
  )
  if %ERRORLEVEL% == 22 (
  set Position=ExtraMenu
  goto BackTo
  )
  goto Extra
::Extra END


::Vanilla START
:VanillaLang
  cls
  Title Rainbow Six Siege Vanilla Lang Downloader
  MODE 50,38
  echo [93m-----------------------NOTES----------------------[0m
  echo          Vanilla Language Downloader
  echo               Placeholder
  echo [93m-----------------------SELECT---------------------[0m
  Resources\cmdmenusel f8f0 "    French Lang" "    Italian Lang" "    German Lang" "    Spanish - Spain Lang" "    Portuguese - Brazil Lang" "    Polish Lang" "    Dutch Lang" "    Czech Lang" "    Korean Lang" "    Traditional Chinese Lang" "    Simplified Chinese Lang" "    Japanese Lang" "    Russian Lang" "    Back"

  if %ERRORLEVEL%==1 (
  :VanillaFrench
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 359553 -manifest 940838089858119714 -username %username% -remember-password -dir "R6Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's French Lang on Vanilla
  pause
  cls
  set Downloaded=French Lang on Vanilla
  goto DownloadCheck
  )
  if %ERRORLEVEL%==2 (
  :VanillaItalian
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 359554 -manifest 7179158265062294015 -username %username% -remember-password -dir "R6Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's Italian Lang on Vanilla
  pause
  cls
  set Downloaded=Italian Lang on Vanilla
  goto DownloadCheck
  )
  if %ERRORLEVEL%==3 (
  :VanillaGerman
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 359555 -manifest 3953006809848583127 -username %username% -remember-password -dir "R6Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's German Lang on Vanilla
  pause
  cls
  set Downloaded=German Lang on Vanilla
  goto DownloadCheck
  )
  if %ERRORLEVEL%==4 (
  :VanillaSpanish
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 359556 -manifest 6248979332984503061 -username %username% -remember-password -dir "R6Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's Spanish Lang on Vanilla
  pause
  cls
  set Downloaded=Spanish Lang on Vanilla
  goto DownloadCheck
  )
  if %ERRORLEVEL%==5 (
  :VanillaBrasilian
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 359557 -manifest 4246528818872796970 -username %username% -remember-password -dir "R6Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's Brasilian Lang on Vanilla
  pause
  cls
  set Downloaded=Brasilian Lang on Vanilla
  goto DownloadCheck
  )
  if %ERRORLEVEL%==6 (
  :VanillaPolish
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 359558 -manifest 3650448467998593870 -username %username% -remember-password -dir "R6Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's Polish Lang on Vanilla
  pause
  cls
  set Downloaded=Polish Lang on Vanilla
  goto DownloadCheck
  )
  if %ERRORLEVEL%==7 (
  :VanillaDutch
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 377230 -manifest 434053950562761763 -username %username% -remember-password -dir "R6Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's Dutch Lang on Vanilla
  pause
  cls
  set Downloaded=Dutch Lang on Vanilla
  goto DownloadCheck
  )
  if %ERRORLEVEL%==8 (
  :VanillaCzech
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 377231 -manifest 961787742874674106 -username %username% -remember-password -dir "R6Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's Czech Lang on Vanilla
  pause
  cls
  set Downloaded=Czech Lang on Vanilla
  goto DownloadCheck
  )
  if %ERRORLEVEL%==9 (
  :VanillaKorean
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 377232 -manifest 4666462401429503167 -username %username% -remember-password -dir "R6Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's Korean Lang on Vanilla
  pause
  cls
  set Downloaded=Korean Lang on Vanilla
  goto DownloadCheck
  )
  if %ERRORLEVEL%==10 (
  :VanillaTChinese
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 377233 -manifest 8123484057310613369 -username %username% -remember-password -dir "R6Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's TChinese Lang on Vanilla
  pause
  cls
  set Downloaded=TChinese Lang on Vanilla
  goto DownloadCheck
  )
  if %ERRORLEVEL%==11 (
  :VanillaSChinese
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 377234 -manifest 7408437752633543455 -username %username% -remember-password -dir "R6Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's SChinese Lang on Vanilla
  pause
  cls
  set Downloaded=SChinese Lang on Vanilla
  goto DownloadCheck
  )
  if %ERRORLEVEL%==12 (
  :VanillaJapanese
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 377235 -manifest 3426628477659109421 -username %username% -remember-password -dir "R6Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's Japanese Lang on Vanilla
  pause
  cls
  set Downloaded=Japanese Lang on Vanilla
  goto DownloadCheck
  )
  if %ERRORLEVEL%==13 (
  :VanillaRussian
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 377236 -manifest 4326401341058506434 -username %username% -remember-password -dir "R6Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's Russian Lang on Vanilla
  pause
  cls
  set Downloaded=Russian Lang on Vanilla
  goto DownloadCheck
  )
  if %ERRORLEVEL%==14 (
  set Position=ExtraMenu
  goto BackTo
  )
  goto VanillaLang
::Vanilla END




::NoLang START
:NoLang
  cls
  Title Rainbow Six Siege No Language File
  MODE 50,20
  echo [93m-----------------------NOTES----------------------[0m
  echo          [31mNo Language for this operation[0m
  echo      Sorry , but for this operation not contain 
  echo          any language file or depot :(
  echo [93m-----------------------SELECT---------------------[0m
  Resources\cmdmenusel f8f0 "   Back"

  if %ERRORLEVEL%==1 (
  set Position=ExtraMenu
  goto BackTo
  )
  goto NoLang
::NoLang END

::LANG END





























::_ START
:_Lang
  cls
  Title Rainbow Six Siege _ Lang Downloader
  MODE 50,38
  echo [93m-----------------------NOTES----------------------[0m
  echo          _ Language Downloader
  echo               Placeholder
  echo [93m-----------------------SELECT---------------------[0m
  Resources\cmdmenusel f8f0 "    French Lang" "    Italian Lang" "    German Lang" "    Spanish - Spain Lang" "    Portuguese - Brazil Lang" "    Polish Lang" "    Dutch Lang" "    Czech Lang" "    Korean Lang" "    Traditional Chinese Lang" "    Simplified Chinese Lang" "    Japanese Lang" "    Russian Lang" "    Back"

  if %ERRORLEVEL%==1 (
  :=French
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 359553 -manifest 00000000000000000000 -username %username% -remember-password -dir "R6Downloads\" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's French Lang on _
  pause
  cls
  set Downloaded=French Lang on _
  goto DownloadCheck
  )
  if %ERRORLEVEL%==2 (
  :=Italian
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 359554 -manifest 00000000000000000000 -username %username% -remember-password -dir "R6Downloads\" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's Italian Lang on _
  pause
  cls
  set Downloaded=Italian Lang on _
  goto DownloadCheck
  )
  if %ERRORLEVEL%==3 (
  :=German
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 359555 -manifest 00000000000000000000 -username %username% -remember-password -dir "R6Downloads\" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's German Lang on _
  pause
  cls
  set Downloaded=German Lang on _
  goto DownloadCheck
  )
  if %ERRORLEVEL%==4 (
  :=Spanish
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 359556 -manifest 00000000000000000000 -username %username% -remember-password -dir "R6Downloads\" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's Spanish Lang on _
  pause
  cls
  set Downloaded=Spanish Lang on _
  goto DownloadCheck
  )
  if %ERRORLEVEL%==5 (
  :=Brasilian
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 359557 -manifest 00000000000000000000 -username %username% -remember-password -dir "R6Downloads\" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's Brasilian Lang on _
  pause
  cls
  set Downloaded=Brasilian Lang on _
  goto DownloadCheck
  )
  if %ERRORLEVEL%==6 (
  :=Polish
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 359558 -manifest 00000000000000000000 -username %username% -remember-password -dir "R6Downloads\" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's Polish Lang on _
  pause
  cls
  set Downloaded=Polish Lang on _
  goto DownloadCheck
  )
  if %ERRORLEVEL%==7 (
  :=Dutch
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 377230 -manifest 00000000000000000000 -username %username% -remember-password -dir "R6Downloads\" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's Dutch Lang on _
  pause
  cls
  set Downloaded=Dutch Lang on _
  goto DownloadCheck
  )
  if %ERRORLEVEL%==8 (
  :=Czech
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 377231 -manifest 00000000000000000000 -username %username% -remember-password -dir "R6Downloads\" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's Czech Lang on _
  pause
  cls
  set Downloaded=Czech Lang on _
  goto DownloadCheck
  )
  if %ERRORLEVEL%==9 (
  :=Korean
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 377232 -manifest 00000000000000000000 -username %username% -remember-password -dir "R6Downloads\" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's Korean Lang on _
  pause
  cls
  set Downloaded=Korean Lang on _
  goto DownloadCheck
  )
  if %ERRORLEVEL%==10 (
  :=TChinese
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 377233 -manifest 00000000000000000000 -username %username% -remember-password -dir "R6Downloads\" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's TChinese Lang on _
  pause
  cls
  set Downloaded=TChinese Lang on _
  goto DownloadCheck
  )
  if %ERRORLEVEL%==11 (
  :=SChinese
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 377234 -manifest 00000000000000000000 -username %username% -remember-password -dir "R6Downloads\" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's SChinese Lang on _
  pause
  cls
  set Downloaded=SChinese Lang on _
  goto DownloadCheck
  )
  if %ERRORLEVEL%==12 (
  :=Japanese
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 377235 -manifest 00000000000000000000 -username %username% -remember-password -dir "R6Downloads\" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's Japanese Lang on _
  pause
  cls
  set Downloaded=Japanese Lang on _
  goto DownloadCheck
  )
  if %ERRORLEVEL%==13 (
  :=Russian
  MODE 100,40
  dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 377236 -manifest 00000000000000000000 -username %username% -remember-password -dir "R6Downloads\" -validate -max-servers 15 -max-downloads 10
  echo.
  echo Download complete!
  echo It's Russian Lang on _
  pause
  cls
  set Downloaded=Russian Lang on _
  goto DownloadCheck
  )
  if %ERRORLEVEL%==14 (
  set Position=ExtraMenu
  goto BackTo
  )
  goto _Lang
::_ END
