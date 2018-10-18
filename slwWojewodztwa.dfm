object slwWojewodztwaOkno: TslwWojewodztwaOkno
  Left = 0
  Top = 0
  ClientHeight = 608
  ClientWidth = 722
  Caption = 'slwWojewodztwaForm'
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
    Width = 722
    Height = 33
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = ''
    object btnWyjscie: TUniButton
      Left = 620
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
        Hint = 'Eydtuj pozycj'#281' s'#322'ownika'
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
    Width = 722
    Height = 575
    Hint = ''
    RowEditor = True
    DataSource = dsWojewodztwa
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgAutoRefreshRow]
    ReadOnly = True
    LoadMask.WaitData = True
    LoadMask.Message = 'Wczytuj'#281' dane ...'
    Align = alClient
    TabOrder = 1
    Columns = <
      item
        FieldName = 'WOJEWODZTWO'
        Title.Caption = 'Wojew'#243'dztwo'
        Width = 64
      end>
  end
  object wojewodztwa: TFDQuery
    AfterPost = wojewodztwaAfterPost
    Connection = UniMainModule.Polaczenie
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    UpdateOptions.AssignedValues = [uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.GeneratorName = 'ID_SLW_WOJEWODZTWA_GEN'
    UpdateOptions.KeyFields = 'ID_SLW_WOJEWODZTWA'
    SQL.Strings = (
      'SELECT * FROM SLW_WOJEWODZTWA')
    Left = 520
    Top = 88
    object wojewodztwaID_SLW_WOJEWODZTWA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_SLW_WOJEWODZTWA'
      Origin = 'ID_SLW_WOJEWODZTWA'
      Required = True
    end
    object wojewodztwaWOJEWODZTWO: TStringField
      FieldName = 'WOJEWODZTWO'
      Origin = 'WOJEWODZTWO'
    end
  end
  object dsWojewodztwa: TDataSource
    DataSet = wojewodztwa
    Left = 520
    Top = 144
  end
end
