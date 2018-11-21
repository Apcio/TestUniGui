object slwPaczkiOkno: TslwPaczkiOkno
  Left = 0
  Top = 0
  ClientHeight = 526
  ClientWidth = 797
  Caption = 'S'#322'ownik paczki'
  OnShow = UniFormShow
  BorderStyle = bsNone
  WindowState = wsMaximized
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 797
    Height = 33
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = ''
    object btnWyjscie: TUniButton
      Left = 695
      Top = 1
      Width = 101
      Height = 31
      Hint = ''
      Caption = 'Wyj'#347'cie'
      ModalResult = 8
      Align = alRight
      TabOrder = 1
    end
    object UniToolBar1: TUniToolBar
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 336
      Height = 25
      Hint = ''
      ButtonHeight = 20
      ButtonWidth = 20
      Images = IM.image16
      ButtonAutoWidth = True
      Align = alLeft
      TabOrder = 2
      ParentColor = False
      Color = clBtnFace
      object btnDodaj: TUniToolButton
        Left = 0
        Top = 0
        Hint = 'Dodaj pozycj'#281' do s'#322'ownika'
        ImageIndex = 0
        Caption = ''
        TabOrder = 1
        OnClick = btnDodajClick
      end
      object btnEdytuj: TUniToolButton
        Left = 20
        Top = 0
        Hint = 'Edytuj pozycj'#281' s'#322'ownika'
        ImageIndex = 1
        Caption = ''
        TabOrder = 2
        OnClick = btnEdytujClick
      end
      object btnUsun: TUniToolButton
        Left = 40
        Top = 0
        Hint = 'Usu'#324' pozycj'#281' ze s'#322'ownika'
        ImageIndex = 5
        Caption = ''
        TabOrder = 3
        OnClick = btnUsunClick
      end
      object UniToolButton4: TUniToolButton
        Left = 60
        Top = 0
        Width = 8
        Hint = ''
        Style = tbsSeparator
        Caption = ''
        TabOrder = 4
      end
      object btnOdswiez: TUniToolButton
        Left = 68
        Top = 0
        Hint = 'Od'#347'wie'#380' s'#322'ownik'
        ImageIndex = 4
        Caption = ''
        TabOrder = 5
        OnClick = btnOdswiezClick
      end
    end
  end
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 33
    Width = 797
    Height = 493
    Hint = ''
    RowEditor = True
    DataSource = dsPaczki
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgAutoRefreshRow]
    ReadOnly = True
    LoadMask.WaitData = True
    LoadMask.Message = 'Wczytuj'#281' dane ...'
    HiddenPanel = UniHiddenPanel1
    Align = alClient
    TabOrder = 1
    Columns = <
      item
        FieldName = 'NAZWA'
        Filtering.Editor = rodzajDBEdit
        Title.Caption = 'Rodzaj paczki'
        Width = 120
      end
      item
        FieldName = 'MAKS_WAGA'
        Title.Caption = 'Maksymalna waga'
        Width = 150
        Editor = wagaMaksDBEdit
      end
      item
        FieldName = 'CENA'
        Title.Caption = 'Cena standardowa'
        Width = 110
        Editor = cenaDBEdit
      end>
  end
  object UniHiddenPanel1: TUniHiddenPanel
    Left = 328
    Top = 112
    Width = 160
    Height = 256
    Hint = ''
    Visible = True
    object rodzajDBEdit: TUniDBEdit
      Left = 16
      Top = 3
      Width = 121
      Height = 22
      Hint = ''
      DataField = 'NAZWA'
      DataSource = dsPaczki
      TabOrder = 1
    end
    object wagaMaksDBEdit: TUniDBNumberEdit
      Left = 16
      Top = 31
      Width = 121
      Height = 22
      Hint = ''
      DataField = 'MAKS_WAGA'
      DataSource = dsPaczki
      TabOrder = 2
      DecimalSeparator = ','
    end
    object cenaDBEdit: TUniDBNumberEdit
      Left = 16
      Top = 59
      Width = 121
      Height = 22
      Hint = ''
      DataField = 'CENA'
      DataSource = dsPaczki
      TabOrder = 3
      DecimalSeparator = ','
    end
  end
  object paczki: TFDQuery
    AfterPost = paczkiAfterPost
    Connection = UniMainModule.Polaczenie
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    UpdateOptions.AssignedValues = [uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.GeneratorName = 'IDSLW_PACZKI_GEN'
    UpdateOptions.KeyFields = 'ID_SLW_RODZAJ_PRZESYLKI'
    SQL.Strings = (
      'SELECT * FROM SLW_RODZAJ_PRZESYLKI')
    Left = 520
    Top = 88
    object paczkiID_SLW_RODZAJ_PRZESYLKI: TIntegerField
      FieldName = 'ID_SLW_RODZAJ_PRZESYLKI'
      Origin = 'ID_SLW_RODZAJ_PRZESYLKI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object paczkiNAZWA: TStringField
      FieldName = 'NAZWA'
      Origin = 'NAZWA'
      Size = 50
    end
    object paczkiCENA: TBCDField
      FieldName = 'CENA'
      Origin = 'CENA'
      Precision = 18
    end
    object paczkiMAKS_WAGA: TSingleField
      FieldName = 'MAKS_WAGA'
      Origin = 'MAKS_WAGA'
    end
  end
  object dsPaczki: TDataSource
    DataSet = paczki
    Left = 520
    Top = 144
  end
end
