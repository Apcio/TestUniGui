object fvDaneOkno: TfvDaneOkno
  Left = 0
  Top = 0
  ClientHeight = 380
  ClientWidth = 407
  Caption = 'Dane faktury'
  OnShow = UniFormShow
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 8
    Top = 184
    Width = 393
    Height = 188
    Hint = ''
    DataSource = dsFVPozycje
    LoadMask.ShowMessage = False
    LoadMask.Message = 'Loading data...'
    TabOrder = 0
  end
  object UniButton1: TUniButton
    Left = 56
    Top = 40
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'UniButton1'
    TabOrder = 1
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 200
    Top = 40
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'UniButton2'
    TabOrder = 2
    OnClick = UniButton2Click
  end
  object fdFv: TFDQuery
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'ID_FV_GEN'
    UpdateOptions.KeyFields = 'ID_FV'
    UpdateOptions.AutoIncFields = 'ID_FV'
    SQL.Strings = (
      'SELECT * FROM FAKTURA')
    Left = 168
    Top = 80
  end
  object fdFVPozycje: TFDQuery
    CachedUpdates = True
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvRefreshMode, uvFetchGeneratorsPoint, uvGeneratorName, uvUpdateNonBaseFields, uvAutoCommitUpdates]
    UpdateOptions.UpdateNonBaseFields = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.GeneratorName = 'ID_FV_POZ_GEN'
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.KeyFields = 'ID_FV_POZ'
    UpdateOptions.AutoIncFields = 'ID_FV_POZ'
    SQL.Strings = (
      'SELECT * FROM FAKTURA_POZ'
      'WHERE ID_FV = :id')
    Left = 240
    Top = 80
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object dsFv: TDataSource
    DataSet = fdFv
    Left = 160
    Top = 136
  end
  object dsFVPozycje: TDataSource
    DataSet = fdFVPozycje
    Left = 240
    Top = 136
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Praca\Projekty\euco\Testy\UniGuiTest\Aplikacja\files' +
        '\UGPOCZTA.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=WIN1250'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 96
    Top = 80
  end
end
