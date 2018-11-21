object UniMainModule: TUniMainModule
  OldCreateOrder = False
  OnCreate = UniGUIMainModuleCreate
  Theme = 'neptune'
  MonitoredKeys.Keys = <>
  Height = 296
  Width = 427
  object Polaczenie: TFDConnection
    Params.Strings = (
      
        'Database=C:\Praca\Projekty\euco\Testy\UniGuiTest\Aplikacja\files' +
        '\UGPOCZTA.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=WIN1250'
      'DriverID=FB')
    FetchOptions.AssignedValues = [evCache, evAutoClose, evRecordCountMode, evAutoFetchAll]
    FetchOptions.RecordCountMode = cmTotal
    ResourceOptions.AssignedValues = [rvAutoConnect]
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    ConnectedStoredUsage = []
    LoginPrompt = False
    Left = 56
    Top = 32
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Praca\Projekty\DLL\fbclient.dll'
    Left = 152
    Top = 32
  end
  object fdTmp: TFDQuery
    Connection = Polaczenie
    Left = 48
    Top = 96
  end
end
