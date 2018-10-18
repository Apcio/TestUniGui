object KlienciForm: TKlienciForm
  Left = 0
  Top = 0
  ClientHeight = 499
  ClientWidth = 635
  Caption = 'Klienci'
  OnShow = UniFormShow
  BorderStyle = bsNone
  WindowState = wsMaximized
  OldCreateOrder = False
  BorderIcons = []
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 33
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = ''
    object btnWyjscie: TUniButton
      Left = 533
      Top = 1
      Width = 101
      Height = 31
      Hint = ''
      Caption = 'Wyj'#347'cie'
      Align = alRight
      TabOrder = 1
      OnClick = btnWyjscieClick
    end
    object UniPanel2: TUniPanel
      Left = 1
      Top = 1
      Width = 533
      Height = 31
      Hint = ''
      Align = alLeft
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
      Caption = ''
      AlwaysOnTop = True
      object UniToolBar1: TUniToolBar
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 525
        Height = 24
        Hint = ''
        ButtonHeight = 20
        ButtonWidth = 20
        Images = IM.image16
        ButtonAutoWidth = True
        TabOrder = 1
        ParentColor = False
        Color = clBtnFace
        object UniToolButton1: TUniToolButton
          Left = 0
          Top = 0
          Hint = 'Dodaj nowego klienta'
          ImageIndex = 0
          Caption = ''
          TabOrder = 1
          OnClick = UniToolButton1Click
        end
        object KlienciDaneForm: TUniToolButton
          Left = 20
          Top = 0
          Hint = 'Edytuj dane klienta'
          ImageIndex = 1
          Caption = ''
          TabOrder = 2
          OnClick = KlienciDaneFormClick
        end
        object UniToolButton3: TUniToolButton
          Left = 40
          Top = 0
          Hint = 'Usu'#324' klienta'
          ImageIndex = 5
          Caption = ''
          TabOrder = 3
          OnClick = UniToolButton3Click
        end
        object UniToolButton2: TUniToolButton
          Left = 60
          Top = 0
          Width = 8
          Hint = ''
          Style = tbsSeparator
          Caption = ''
          TabOrder = 4
        end
        object UniToolButton4: TUniToolButton
          Left = 68
          Top = 0
          Hint = 'Od'#347'wie'#380' klient'#243'w'
          ImageIndex = 4
          Caption = ''
          TabOrder = 5
          OnClick = UniToolButton4Click
        end
      end
    end
  end
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 33
    Width = 635
    Height = 466
    Hint = ''
    DataSource = dsKlienci
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
    LoadMask.WaitData = True
    LoadMask.Message = 'Wczytuj'#281' dane ...'
    Align = alClient
    TabOrder = 1
    Columns = <
      item
        FieldName = 'IMIE'
        Title.Caption = 'Imi'#281
        Width = 64
      end
      item
        FieldName = 'NAZWISKO'
        Title.Caption = 'Nazwisko'
        Width = 200
      end
      item
        FieldName = 'ADRES_MIEJSCOWOSC'
        Title.Caption = 'Miejscowo'#347#263
        Width = 220
      end
      item
        FieldName = 'ADRES_ULICA'
        Title.Caption = 'Ulica'
        Width = 220
      end
      item
        FieldName = 'ADRES_DOM'
        Title.Caption = 'Nr domu'
        Width = 100
      end
      item
        FieldName = 'ADRES_LOKAL'
        Title.Caption = 'Nr lokalu'
        Width = 100
      end>
  end
  object klienci: TFDQuery
    Connection = UniMainModule.Polaczenie
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'IDKLIENT_GEN'
    UpdateOptions.KeyFields = 'IDKLIENT'
    SQL.Strings = (
      'SELECT * FROM KLIENCI')
    Left = 520
    Top = 88
    object klienciIDKLIENT: TIntegerField
      DisplayLabel = 'ID klienta'
      FieldName = 'IDKLIENT'
      Origin = 'IDKLIENT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object klienciIMIE: TStringField
      DisplayLabel = 'Imi'#281
      FieldName = 'IMIE'
      Origin = 'IMIE'
      Size = 50
    end
    object klienciNAZWISKO: TStringField
      DisplayLabel = 'Nazwisko'
      FieldName = 'NAZWISKO'
      Origin = 'NAZWISKO'
      Size = 50
    end
    object klienciADRES_MIEJSCOWOSC: TStringField
      DisplayLabel = 'Miejscowo'#347#263
      FieldName = 'ADRES_MIEJSCOWOSC'
      Origin = 'ADRES_MIEJSCOWOSC'
      Size = 50
    end
    object klienciADRES_ULICA: TStringField
      DisplayLabel = 'Ulica'
      FieldName = 'ADRES_ULICA'
      Origin = 'ADRES_ULICA'
      Size = 50
    end
    object klienciADRES_DOM: TStringField
      DisplayLabel = 'Nr domu'
      FieldName = 'ADRES_DOM'
      Origin = 'ADRES_DOM'
      Size = 5
    end
    object klienciADRES_LOKAL: TStringField
      DisplayLabel = 'Nr lokalu'
      FieldName = 'ADRES_LOKAL'
      Origin = 'ADRES_LOKAL'
      Size = 5
    end
    object klienciADRES_KOD_POCZTOWY: TStringField
      DisplayLabel = 'Kod pocztowy'
      FieldName = 'ADRES_KOD_POCZTOWY'
      Origin = 'ADRES_KOD_POCZTOWY'
      Size = 6
    end
    object klienciADRES_POWIAT: TStringField
      DisplayLabel = 'Powiat'
      FieldName = 'ADRES_POWIAT'
      Origin = 'ADRES_POWIAT'
    end
    object klienciADRES_WOJEWODZTWO: TStringField
      DisplayLabel = 'Wojew'#243'dztwo'
      FieldName = 'ADRES_WOJEWODZTWO'
      Origin = 'ADRES_WOJEWODZTWO'
      Size = 25
    end
    object klienciKLIENT_VIP: TStringField
      DisplayLabel = 'VIP'
      FieldName = 'KLIENT_VIP'
      Origin = 'KLIENT_VIP'
      Size = 3
    end
  end
  object dsKlienci: TDataSource
    AutoEdit = False
    DataSet = klienci
    Left = 520
    Top = 144
  end
end
