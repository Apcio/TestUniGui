object PaczkiOkno: TPaczkiOkno
  Left = 0
  Top = 0
  ClientHeight = 594
  ClientWidth = 920
  Caption = 'Lista paczek'
  OnShow = UniFormShow
  BorderStyle = bsNone
  WindowState = wsMaximized
  Position = poOwnerFormCenter
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 33
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = ''
    ExplicitWidth = 606
    object btnWyjscie: TUniButton
      Left = 818
      Top = 1
      Width = 101
      Height = 31
      Hint = ''
      Caption = 'Wyj'#347'cie'
      ModalResult = 8
      Align = alRight
      TabOrder = 1
      ExplicitLeft = 504
    end
    object UniPanel2: TUniPanel
      Left = 1
      Top = 1
      Width = 818
      Height = 31
      Hint = ''
      Align = alLeft
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
      Caption = ''
      AlwaysOnTop = True
      ExplicitWidth = 504
      object UniToolBar1: TUniToolBar
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 810
        Height = 24
        Hint = ''
        ButtonHeight = 20
        ButtonWidth = 20
        Images = IM.image16
        ButtonAutoWidth = True
        TabOrder = 1
        ParentColor = False
        Color = clBtnFace
        ExplicitWidth = 496
        object tbDodaj: TUniToolButton
          Left = 0
          Top = 0
          Hint = 'Dodaj now'#261' przesy'#322'k'#281
          ImageIndex = 0
          Caption = ''
          TabOrder = 1
        end
        object tbEdytuj: TUniToolButton
          Left = 20
          Top = 0
          Hint = 'Edytuj dane przesy'#322'ki'
          ImageIndex = 1
          Caption = ''
          TabOrder = 2
        end
        object tbUsun: TUniToolButton
          Left = 40
          Top = 0
          Hint = 'Usu'#324' przesy'#322'k'#281
          ImageIndex = 5
          Caption = ''
          TabOrder = 3
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
        object tbOdswiez: TUniToolButton
          Left = 68
          Top = 0
          Hint = 'Od'#347'wie'#380' przesy'#322'ki'
          ImageIndex = 4
          Caption = ''
          TabOrder = 5
          OnClick = tbOdswiezClick
        end
      end
    end
  end
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 33
    Width = 920
    Height = 561
    Hint = ''
    HeaderTitleAlign = taCenter
    DataSource = dsPaczki
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgConfirmDelete, dgFilterClearButton, dgCancelOnExit, dgAutoRefreshRow]
    LoadMask.WaitData = True
    LoadMask.Message = 'Wczytuj'#281' dane ...'
    Align = alClient
    TabOrder = 1
    Columns = <
      item
        FieldName = 'PRZESYLKA_RODZAJ'
        Title.Caption = 'Rodzaj przesy'#322'ki'
        MinWidth = 100
        Width = 100
        ReadOnly = True
        Sortable = True
      end
      item
        FieldName = 'DATA_NADANIA'
        Title.Caption = 'Data nadania'
        Width = 100
      end
      item
        FieldName = 'ODBIORCA_IMIE'
        Title.Caption = 'Imi'#281' odbiorcy'
        Width = 150
      end
      item
        FieldName = 'ODBIORCA_NAZWISKO'
        Title.Caption = 'Nazwisko odbiorcy'
        Width = 150
      end
      item
        FieldName = 'ODBIORCA_ADR_ULICA'
        Title.Caption = 'Ulica zam. odbiorcy'
        Width = 200
      end
      item
        FieldName = 'NADAWCA_ADR_MIEJSCOWOSC'
        Title.Caption = 'Miejscowo'#347#263' zam. odbiorcy'
        Width = 200
        ReadOnly = True
      end
      item
        FieldName = 'NADAWCA_IMIE'
        Title.Caption = 'Imi'#281' nadawcy'
        Width = 150
        ReadOnly = True
      end
      item
        FieldName = 'NADAWCA_NAZWISKO'
        Title.Caption = 'Nazwisko nadawcy'
        Width = 150
        ReadOnly = True
      end
      item
        FieldName = 'NADAWCA_ADR_ULICA'
        Title.Caption = 'Ulica zam. nadawcy'
        Width = 200
        ReadOnly = True
      end
      item
        FieldName = 'NADAWCA_ADR_MIEJSCOWOSC'
        Title.Caption = 'Miejscowo'#347#263' zam. nadawcy'
        Width = 200
        ReadOnly = True
      end>
  end
  object paczki: TFDQuery
    Connection = UniMainModule.Polaczenie
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    UpdateOptions.AssignedValues = [uvGeneratorName]
    SQL.Strings = (
      'SELECT'
      '    PACZKI.ID_PACZKA,'
      '    PACZKI.IDKLIENT,'
      '    PACZKI.ID_SLW_RODZAJ_PRZESYLKI,'
      '    PACZKI.DATA_NADANIA,'
      '    PACZKI.ODBIORCA_ADR_DOM,'
      '    PACZKI.ODBIORCA_ADR_KOD_POCZTOWY,'
      '    PACZKI.ODBIORCA_ADR_LOKAL,'
      '    PACZKI.ODBIORCA_ADR_POWIAT,'
      '    PACZKI.ODBIORCA_ADR_ULICA,'
      '    PACZKI.ODBIORCA_ADR_WOJEWODZTWO,'
      '    PACZKI.ODBIORCA_IMIE,'
      '    PACZKI.ODBIORCA_NAZWISKO,'
      '    PACZKI.WYSTAWIONA_FV,'
      '    KLIENCI.IMIE AS NADAWCA_IMIE,'
      '    KLIENCI.NAZWISKO AS NADAWCA_NAZWISKO,'
      '    KLIENCI.ADRES_KOD_POCZTOWY AS NADAWCA_ADR_KOD_POCZTOWY,'
      '    KLIENCI.ADRES_MIEJSCOWOSC AS NADAWCA_ADR_MIEJSCOWOSC,'
      '    KLIENCI.ADRES_ULICA AS NADAWCA_ADR_ULICA,'
      '    KLIENCI.ADRES_DOM AS NADAWCA_ADR_DOM,'
      '    KLIENCI.ADRES_LOKAL AS NADAWCA_ADR_LOKAL,'
      '    KLIENCI.ADRES_POWIAT AS NADAWCA_ADR_POWIAT,'
      '    KLIENCI.ADRES_WOJEWODZTWO AS NADAWCA_ADR_WOJEWODZTWO,'
      '    KLIENCI.KLIENT_VIP AS NADAWCA_VIP,'
      '    SLW_PACZKI.RODZAJ AS PRZESYLKA_RODZAJ'
      'FROM PACZKI'
      ''
      'LEFT JOIN KLIENCI ON KLIENCI.IDKLIENT = PACZKI.IDKLIENT'
      
        'LEFT JOIN SLW_PACZKI ON SLW_PACZKI.IDSLW_PACZKI = PACZKI.ID_SLW_' +
        'RODZAJ_PRZESYLKI')
    Left = 520
    Top = 88
    object paczkiID_PACZKA: TIntegerField
      FieldName = 'ID_PACZKA'
      Origin = 'ID_PACZKA'
      Required = True
    end
    object paczkiIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
      Origin = 'IDKLIENT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object paczkiID_SLW_RODZAJ_PRZESYLKI: TIntegerField
      FieldName = 'ID_SLW_RODZAJ_PRZESYLKI'
      Origin = 'ID_SLW_RODZAJ_PRZESYLKI'
    end
    object paczkiODBIORCA_IMIE: TStringField
      FieldName = 'ODBIORCA_IMIE'
      Origin = 'ODBIORCA_IMIE'
      Size = 50
    end
    object paczkiODBIORCA_NAZWISKO: TStringField
      FieldName = 'ODBIORCA_NAZWISKO'
      Origin = 'ODBIORCA_NAZWISKO'
      Size = 50
    end
    object paczkiODBIORCA_ADR_ULICA: TStringField
      FieldName = 'ODBIORCA_ADR_ULICA'
      Origin = 'ODBIORCA_ADR_ULICA'
      Size = 50
    end
    object paczkiODBIORCA_ADR_DOM: TStringField
      FieldName = 'ODBIORCA_ADR_DOM'
      Origin = 'ODBIORCA_ADR_DOM'
      Size = 5
    end
    object paczkiODBIORCA_ADR_LOKAL: TStringField
      FieldName = 'ODBIORCA_ADR_LOKAL'
      Origin = 'ODBIORCA_ADR_LOKAL'
      Size = 5
    end
    object paczkiODBIORCA_ADR_KOD_POCZTOWY: TStringField
      FieldName = 'ODBIORCA_ADR_KOD_POCZTOWY'
      Origin = 'ODBIORCA_ADR_KOD_POCZTOWY'
      Size = 6
    end
    object paczkiODBIORCA_ADR_POWIAT: TStringField
      FieldName = 'ODBIORCA_ADR_POWIAT'
      Origin = 'ODBIORCA_ADR_POWIAT'
    end
    object paczkiODBIORCA_ADR_WOJEWODZTWO: TStringField
      FieldName = 'ODBIORCA_ADR_WOJEWODZTWO'
      Origin = 'ODBIORCA_ADR_WOJEWODZTWO'
      Size = 25
    end
    object paczkiWYSTAWIONA_FV: TStringField
      FieldName = 'WYSTAWIONA_FV'
      Origin = 'WYSTAWIONA_FV'
      Size = 3
    end
    object paczkiDATA_NADANIA: TSQLTimeStampField
      FieldName = 'DATA_NADANIA'
      Origin = 'DATA_NADANIA'
    end
    object paczkiNADAWCA_IMIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NADAWCA_IMIE'
      Origin = 'IMIE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object paczkiNADAWCA_NAZWISKO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NADAWCA_NAZWISKO'
      Origin = 'NAZWISKO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object paczkiNADAWCA_ADR_KOD_POCZTOWY: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NADAWCA_ADR_KOD_POCZTOWY'
      Origin = 'ADRES_KOD_POCZTOWY'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object paczkiNADAWCA_ADR_MIEJSCOWOSC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NADAWCA_ADR_MIEJSCOWOSC'
      Origin = 'ADRES_MIEJSCOWOSC'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object paczkiNADAWCA_ADR_ULICA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NADAWCA_ADR_ULICA'
      Origin = 'ADRES_ULICA'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object paczkiNADAWCA_ADR_DOM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NADAWCA_ADR_DOM'
      Origin = 'ADRES_DOM'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object paczkiNADAWCA_ADR_LOKAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NADAWCA_ADR_LOKAL'
      Origin = 'ADRES_LOKAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object paczkiNADAWCA_ADR_POWIAT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NADAWCA_ADR_POWIAT'
      Origin = 'ADRES_POWIAT'
      ProviderFlags = []
      ReadOnly = True
    end
    object paczkiNADAWCA_ADR_WOJEWODZTWO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NADAWCA_ADR_WOJEWODZTWO'
      Origin = 'ADRES_WOJEWODZTWO'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object paczkiNADAWCA_VIP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NADAWCA_VIP'
      Origin = 'KLIENT_VIP'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object paczkiPRZESYLKA_RODZAJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRZESYLKA_RODZAJ'
      Origin = 'RODZAJ'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dsPaczki: TDataSource
    AutoEdit = False
    DataSet = paczki
    Left = 520
    Top = 144
  end
end
