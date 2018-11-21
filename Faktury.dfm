object FakturyOkno: TFakturyOkno
  Left = 0
  Top = 0
  ClientHeight = 670
  ClientWidth = 973
  Caption = 'Faktury'
  OnShow = UniFormShow
  BorderStyle = bsNone
  WindowState = wsMaximized
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 33
    Width = 973
    Height = 637
    Hint = ''
    HeaderTitleAlign = taCenter
    DataSource = dsFaktury
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgConfirmDelete, dgFilterClearButton, dgCancelOnExit, dgAutoRefreshRow]
    LoadMask.WaitData = True
    LoadMask.Message = 'Wczytuj'#281' dane ...'
    Align = alClient
    TabOrder = 0
    Columns = <
      item
        FieldName = 'NUMER_FV'
        Title.Caption = 'Numer faktury'
        Width = 64
      end
      item
        FieldName = 'WARTOSC_NETTO'
        Title.Caption = 'Warto'#347#263' NETTO'
        Width = 150
      end
      item
        FieldName = 'WARTOSC_VAT'
        Title.Caption = 'Warto'#347#263' VAT'
        Width = 150
      end
      item
        FieldName = 'WARTOSC_BRUTTO'
        Title.Caption = 'Warto'#347#263' BRUTTO'
        Width = 150
      end
      item
        FieldName = 'IMIE_KLIENTA'
        Title.Caption = 'Imi'#281' klienta'
        Width = 200
        ReadOnly = True
      end
      item
        FieldName = 'NAZWISKO_KLIENTA'
        Title.Caption = 'Nazwisko klienta'
        Width = 200
        ReadOnly = True
      end>
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 973
    Height = 33
    Hint = ''
    Align = alTop
    TabOrder = 1
    Caption = ''
    object btnWyjscie: TUniButton
      Left = 871
      Top = 1
      Width = 101
      Height = 31
      Hint = ''
      Caption = 'Wyj'#347'cie'
      ModalResult = 8
      Align = alRight
      TabOrder = 1
      OnClick = btnWyjscieClick
    end
    object UniPanel2: TUniPanel
      Left = 1
      Top = 1
      Width = 871
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
        Width = 863
        Height = 24
        Hint = ''
        ButtonHeight = 20
        ButtonWidth = 20
        Images = IM.image16
        ButtonAutoWidth = True
        TabOrder = 1
        ParentColor = False
        Color = clBtnFace
        object tbDodaj: TUniToolButton
          Left = 0
          Top = 0
          Hint = 'Dodaj now'#261' przesy'#322'k'#281
          ImageIndex = 0
          Caption = ''
          TabOrder = 1
          OnClick = tbDodajClick
        end
        object tbEdytuj: TUniToolButton
          Left = 20
          Top = 0
          Hint = 'Edytuj dane przesy'#322'ki'
          ImageIndex = 1
          Caption = ''
          TabOrder = 2
          OnClick = tbEdytujClick
        end
        object tbUsun: TUniToolButton
          Left = 40
          Top = 0
          Hint = 'Usu'#324' przesy'#322'k'#281
          ImageIndex = 5
          Caption = ''
          TabOrder = 3
          OnClick = tbUsunClick
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
  object Faktury: TFDQuery
    Connection = UniMainModule.Polaczenie
    SQL.Strings = (
      'SELECT'
      '  FAKTURA.ID_FV,'
      '  FAKTURA.ID_KLIENT,'
      '  FAKTURA.DATA_WYSTAWIENIA,'
      '  FAKTURA.NUMER_FV,'
      '  FAKTURA.WARTOSC_NETTO,'
      '  FAKTURA.WARTOSC_VAT,'
      '  FAKTURA.WARTOSC_BRUTTO,'
      '  KLIENCI.IMIE AS IMIE_KLIENTA,'
      '  KLIENCI.NAZWISKO AS NAZWISKO_KLIENTA'
      'FROM FAKTURA'
      'JOIN KLIENCI ON KLIENCI.IDKLIENT = FAKTURA.ID_KLIENT')
    Left = 784
    Top = 96
    object FakturyID_FV: TIntegerField
      FieldName = 'ID_FV'
      Origin = 'ID_FV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FakturyID_KLIENT: TIntegerField
      FieldName = 'ID_KLIENT'
      Origin = 'ID_KLIENT'
    end
    object FakturyDATA_WYSTAWIENIA: TDateField
      FieldName = 'DATA_WYSTAWIENIA'
      Origin = 'DATA_WYSTAWIENIA'
    end
    object FakturyNUMER_FV: TStringField
      FieldName = 'NUMER_FV'
      Origin = 'NUMER_FV'
      Required = True
      Size = 10
    end
    object FakturyWARTOSC_NETTO: TBCDField
      FieldName = 'WARTOSC_NETTO'
      Origin = 'WARTOSC_NETTO'
      Precision = 18
    end
    object FakturyWARTOSC_VAT: TBCDField
      FieldName = 'WARTOSC_VAT'
      Origin = 'WARTOSC_VAT'
      Precision = 18
    end
    object FakturyWARTOSC_BRUTTO: TBCDField
      FieldName = 'WARTOSC_BRUTTO'
      Origin = 'WARTOSC_BRUTTO'
      Precision = 18
    end
    object FakturyIMIE_KLIENTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMIE_KLIENTA'
      Origin = 'IMIE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FakturyNAZWISKO_KLIENTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAZWISKO_KLIENTA'
      Origin = 'NAZWISKO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object dsFaktury: TDataSource
    DataSet = Faktury
    Left = 784
    Top = 152
  end
end
