object frmDgnsBigTemp: TfrmDgnsBigTemp
  Left = 403
  Top = 152
  Width = 846
  Height = 500
  AlphaBlend = True
  AlphaBlendValue = 220
  Caption = #27169#26495#20869#23481#35774#32622
  Color = clBtnFace
  TransparentColor = True
  TransparentColorValue = clMaroon
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 211
    Top = 34
    Height = 427
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 830
    Height = 34
    Align = alTop
    TabOrder = 0
    object BitBtn6: TBitBtn
      Left = 442
      Top = 4
      Width = 88
      Height = 25
      Caption = #36864#20986'(Esc)'
      TabOrder = 0
      OnClick = BitBtn6Click
    end
    object BitBtn2: TBitBtn
      Left = 101
      Top = 4
      Width = 75
      Height = 25
      Caption = #23548#20837#22823#27169#26495
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 34
    Width = 211
    Height = 427
    Align = alLeft
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 209
      Height = 425
      Align = alClient
      Caption = #31867#21035
      TabOrder = 0
      object tvWareHouse: TTreeView
        Left = 2
        Top = 15
        Width = 205
        Height = 408
        Align = alClient
        HideSelection = False
        Indent = 19
        ReadOnly = True
        TabOrder = 0
        OnChange = tvWareHouseChange
        OnDeletion = tvWareHouseDeletion
      end
    end
  end
  object Panel3: TPanel
    Left = 214
    Top = 34
    Width = 616
    Height = 427
    Align = alClient
    TabOrder = 2
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 614
      Height = 225
      Align = alTop
      TabOrder = 0
      object Memo1: TMemo
        Left = 10
        Top = 63
        Width = 519
        Height = 155
        ImeMode = imOpen
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 226
      Width = 614
      Height = 200
      Align = alClient
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    OnDataChange = DataSource1DataChange
    Left = 280
    Top = 281
  end
  object ActionList1: TActionList
    Left = 48
    Top = 72
    object ActAdd: TAction
      Caption = 'ActAdd'
      ShortCut = 113
    end
    object ActSave: TAction
      Caption = 'ActSave'
      ShortCut = 114
    end
    object ActDel: TAction
      Caption = 'ActDel'
      ShortCut = 115
    end
    object ActEsc: TAction
      Caption = 'ActEsc'
      ShortCut = 27
      OnExecute = BitBtn6Click
    end
    object ActSearch: TAction
      Caption = 'ActSearch'
      ShortCut = 116
    end
  end
  object ADOQuery1: TUniQuery
    AfterOpen = ADOQuery1AfterOpen
    AfterScroll = ADOQuery1AfterScroll
    Left = 240
    Top = 282
  end
  object DosMove1: TDosMove
    Active = True
    Left = 664
    Top = 8
  end
end
