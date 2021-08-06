object frmMain: TfrmMain
  Left = 182
  Top = 37
  Width = 1102
  Height = 648
  Caption = #38376#35786#21307#29983#24037#20316#31449
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 570
    Width = 1086
    Height = 19
    Panels = <
      item
        Width = 65
      end
      item
        Text = #25805#20316#20154#21592#24037#21495':'
        Width = 80
      end
      item
        Width = 50
      end
      item
        Text = #25805#20316#20154#21592#22995#21517':'
        Width = 80
      end
      item
        Width = 50
      end
      item
        Text = #25480#26435#20351#29992#21333#20301':'
        Width = 80
      end
      item
        Width = 150
      end
      item
        Text = #26381#21153#22120':'
        Width = 45
      end
      item
        Width = 75
      end
      item
        Text = #25968#25454#24211':'
        Width = 45
      end
      item
        Width = 50
      end
      item
        Text = #37096#38376':'
        Width = 35
      end
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 1086
    Height = 37
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 33
        Width = 1082
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 1069
      Height = 33
      ButtonWidth = 90
      Caption = 'ToolBar1'
      TabOrder = 0
      object SpeedButton1: TSpeedButton
        Left = 0
        Top = 2
        Width = 95
        Height = 22
        Caption = #36873#25321#24739#32773
        OnClick = SpeedButton1Click
      end
      object ToolButton4: TToolButton
        Left = 95
        Top = 2
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object SpeedButton5: TSpeedButton
        Left = 103
        Top = 2
        Width = 106
        Height = 22
        Caption = #21024#38500#23601#35786#35760#24405
        OnClick = SpeedButton5Click
      end
      object ToolButton1: TToolButton
        Left = 209
        Top = 2
        Width = 8
        Caption = 'ToolButton1'
        Style = tbsSeparator
      end
      object SpeedButton4: TSpeedButton
        Left = 217
        Top = 2
        Width = 66
        Height = 22
        Caption = #21047#26032
        OnClick = SpeedButton4Click
      end
      object ToolButton2: TToolButton
        Left = 283
        Top = 2
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object SpeedButton2: TSpeedButton
        Left = 291
        Top = 2
        Width = 42
        Height = 22
        Caption = #23457#26680
        OnClick = SpeedButton2Click
      end
      object SpeedButton3: TSpeedButton
        Left = 333
        Top = 2
        Width = 72
        Height = 22
        Caption = #21462#28040#23457#26680
        OnClick = SpeedButton3Click
      end
      object ToolButton3: TToolButton
        Left = 405
        Top = 2
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object SpeedButton6: TSpeedButton
        Left = 413
        Top = 2
        Width = 72
        Height = 22
        Caption = #25171#21360#22788#26041
        OnClick = SpeedButton6Click
      end
      object ToolButton5: TToolButton
        Left = 485
        Top = 2
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object SpeedButton7: TSpeedButton
        Left = 493
        Top = 2
        Width = 60
        Height = 22
        Caption = #27169#26495
        OnClick = BitBtn9Click
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 37
    Width = 1086
    Height = 41
    Align = alTop
    TabOrder = 2
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 100
      Height = 39
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -24
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Panel36: TPanel
      Left = 985
      Top = 1
      Width = 100
      Height = 39
      Align = alRight
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Panel37: TPanel
      Left = 885
      Top = 1
      Width = 100
      Height = 39
      Align = alRight
      Caption = #24635#37329#39069':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 78
    Width = 1086
    Height = 492
    Align = alClient
    TabOrder = 3
    object PageControl1: TPageControl
      Left = 321
      Top = 1
      Width = 764
      Height = 490
      ActivePage = TabSheet7
      Align = alClient
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet5: TTabSheet
        Caption = #30149#21382
        ImageIndex = 4
        object Panel13: TPanel
          Left = 0
          Top = 0
          Width = 756
          Height = 357
          Align = alClient
          TabOrder = 0
          object Panel24: TPanel
            Left = 1
            Top = 1
            Width = 88
            Height = 355
            Align = alLeft
            TabOrder = 0
          end
          object Panel25: TPanel
            Left = 89
            Top = 1
            Width = 664
            Height = 355
            Align = alClient
            TabOrder = 1
            object Panel6: TPanel
              Left = 1
              Top = 1
              Width = 662
              Height = 32
              Align = alTop
              TabOrder = 0
              object Label4: TLabel
                Left = 102
                Top = 8
                Width = 13
                Height = 13
                Caption = #8451
              end
              object Label5: TLabel
                Left = 358
                Top = 8
                Width = 28
                Height = 13
                Caption = 'mmHg'
              end
              object Label6: TLabel
                Left = 488
                Top = 8
                Width = 41
                Height = 13
                Caption = #27425'/min'
              end
              object Label15: TLabel
                Left = 554
                Top = 8
                Width = 123
                Height = 13
                Caption = #27880':'#25442#34892':Ctrl+Enter'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -13
                Font.Name = #23435#20307
                Font.Style = []
                ParentFont = False
              end
              object LabeledEdit4: TLabeledEdit
                Left = 49
                Top = 5
                Width = 50
                Height = 21
                EditLabel.Width = 26
                EditLabel.Height = 13
                EditLabel.Caption = #20307#28201
                LabelPosition = lpLeft
                TabOrder = 0
                OnExit = LabeledEdit4Exit
              end
              object LabeledEdit5: TLabeledEdit
                Left = 209
                Top = 5
                Width = 50
                Height = 21
                EditLabel.Width = 72
                EditLabel.Height = 13
                EditLabel.Caption = #34880#21387'-'#25910#32553#21387
                LabelPosition = lpLeft
                TabOrder = 1
                OnExit = LabeledEdit4Exit
              end
              object LabeledEdit6: TLabeledEdit
                Left = 305
                Top = 5
                Width = 50
                Height = 21
                EditLabel.Width = 39
                EditLabel.Height = 13
                EditLabel.Caption = #33298#24352#21387
                LabelPosition = lpLeft
                TabOrder = 2
                OnExit = LabeledEdit4Exit
              end
              object LabeledEdit12: TLabeledEdit
                Left = 435
                Top = 5
                Width = 50
                Height = 21
                EditLabel.Width = 26
                EditLabel.Height = 13
                EditLabel.Caption = #24515#29575
                LabelPosition = lpLeft
                TabOrder = 3
                OnExit = LabeledEdit4Exit
              end
            end
            object Panel22: TPanel
              Left = 1
              Top = 33
              Width = 662
              Height = 78
              Align = alTop
              TabOrder = 1
              object Panel23: TPanel
                Left = 1
                Top = 1
                Width = 65
                Height = 76
                Align = alLeft
                Caption = #20027#35785
                TabOrder = 0
              end
              object Memo1: TMemo
                Left = 66
                Top = 1
                Width = 410
                Height = 76
                Align = alClient
                ScrollBars = ssBoth
                TabOrder = 1
                OnExit = LabeledEdit4Exit
              end
              object Panel8: TPanel
                Left = 476
                Top = 1
                Width = 185
                Height = 76
                Align = alRight
                TabOrder = 2
              end
            end
            object Panel20: TPanel
              Left = 1
              Top = 111
              Width = 662
              Height = 78
              Align = alTop
              TabOrder = 2
              object Panel21: TPanel
                Left = 1
                Top = 1
                Width = 65
                Height = 76
                Align = alLeft
                Caption = #31616#35201#30149#21490
                TabOrder = 0
              end
              object Memo2: TMemo
                Left = 66
                Top = 1
                Width = 410
                Height = 76
                Align = alClient
                ScrollBars = ssBoth
                TabOrder = 1
                OnExit = LabeledEdit4Exit
              end
              object Panel7: TPanel
                Left = 476
                Top = 1
                Width = 185
                Height = 76
                Align = alRight
                TabOrder = 2
              end
            end
            object Panel18: TPanel
              Left = 1
              Top = 189
              Width = 662
              Height = 78
              Align = alTop
              TabOrder = 3
              object Panel19: TPanel
                Left = 1
                Top = 1
                Width = 65
                Height = 76
                Align = alLeft
                Caption = #20307#26597
                TabOrder = 0
              end
              object Memo3: TMemo
                Left = 66
                Top = 1
                Width = 410
                Height = 76
                Align = alClient
                ScrollBars = ssBoth
                TabOrder = 1
                OnExit = LabeledEdit4Exit
              end
              object Panel9: TPanel
                Left = 476
                Top = 1
                Width = 185
                Height = 76
                Align = alRight
                TabOrder = 2
              end
            end
            object Panel16: TPanel
              Left = 1
              Top = 267
              Width = 662
              Height = 78
              Align = alTop
              TabOrder = 4
              object Panel17: TPanel
                Left = 1
                Top = 1
                Width = 65
                Height = 76
                Align = alLeft
                Caption = #36741#21161#26816#26597
                TabOrder = 0
              end
              object Memo4: TMemo
                Left = 66
                Top = 1
                Width = 410
                Height = 76
                Align = alClient
                ScrollBars = ssBoth
                TabOrder = 1
                OnExit = LabeledEdit4Exit
              end
              object Panel10: TPanel
                Left = 476
                Top = 1
                Width = 185
                Height = 76
                Align = alRight
                TabOrder = 2
              end
            end
            object Panel14: TPanel
              Left = 1
              Top = 345
              Width = 662
              Height = 9
              Align = alClient
              TabOrder = 5
              object Panel15: TPanel
                Left = 1
                Top = 1
                Width = 65
                Height = 7
                Align = alLeft
                Caption = #22065#25176
                TabOrder = 0
              end
              object Memo5: TMemo
                Left = 66
                Top = 1
                Width = 410
                Height = 7
                Align = alClient
                ScrollBars = ssBoth
                TabOrder = 1
                OnExit = LabeledEdit4Exit
              end
              object Panel11: TPanel
                Left = 476
                Top = 1
                Width = 185
                Height = 7
                Align = alRight
                TabOrder = 2
              end
            end
          end
        end
        object Panel26: TPanel
          Left = 0
          Top = 357
          Width = 756
          Height = 105
          Align = alBottom
          TabOrder = 1
          object Panel27: TPanel
            Left = 1
            Top = 1
            Width = 155
            Height = 103
            Align = alLeft
            Caption = #35786#26029
            TabOrder = 0
          end
          object Panel12: TPanel
            Left = 393
            Top = 1
            Width = 362
            Height = 103
            Align = alRight
            TabOrder = 1
            object Label7: TLabel
              Left = 105
              Top = 10
              Width = 26
              Height = 13
              Caption = #35786#26029
            end
            object Label8: TLabel
              Left = 79
              Top = 41
              Width = 52
              Height = 13
              Caption = #35786#26029#32467#35770
            end
            object ComboBox6: TComboBox
              Left = 135
              Top = 6
              Width = 157
              Height = 21
              DropDownCount = 20
              ItemHeight = 0
              TabOrder = 0
            end
            object ComboBox7: TComboBox
              Left = 135
              Top = 37
              Width = 157
              Height = 21
              DropDownCount = 20
              ItemHeight = 0
              TabOrder = 1
            end
            object BitBtn4: TBitBtn
              Left = 135
              Top = 66
              Width = 157
              Height = 25
              Caption = #20445#23384#35786#26029
              TabOrder = 2
              OnClick = BitBtn4Click
            end
            object Panel38: TPanel
              Left = 1
              Top = 1
              Width = 70
              Height = 101
              Align = alLeft
              Caption = #26032#22686
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -27
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnDblClick = Panel38DblClick
            end
          end
          object DBGrid4: TDBGrid
            Left = 156
            Top = 1
            Width = 237
            Height = 103
            Align = alClient
            DataSource = DataSource4
            PopupMenu = PopupMenu4
            ReadOnly = True
            TabOrder = 2
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = #23435#20307
            TitleFont.Style = []
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = #35199#33647
        ImageIndex = 5
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 756
          Height = 65
          Align = alTop
          TabOrder = 0
          object Label1: TLabel
            Left = 323
            Top = 21
            Width = 26
            Height = 13
            Caption = #30382#35797
          end
          object Label2: TLabel
            Left = 366
            Top = 21
            Width = 26
            Height = 13
            Caption = #39057#27425
          end
          object Label3: TLabel
            Left = 248
            Top = 21
            Width = 26
            Height = 13
            Caption = #29992#27861
          end
          object Label16: TLabel
            Left = 56
            Top = 3
            Width = 78
            Height = 13
            Caption = #33647#21697#21807#19968#32534#21495
          end
          object LabeledEdit1: TLabeledEdit
            Left = 55
            Top = 37
            Width = 85
            Height = 21
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #21517#31216
            TabOrder = 0
            OnKeyDown = LabeledEdit1KeyDown
          end
          object LabeledEdit2: TLabeledEdit
            Left = 142
            Top = 37
            Width = 25
            Height = 21
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #32452#21495
            TabOrder = 1
            Text = '1'
            OnKeyDown = LabeledEdit2KeyDown
          end
          object LabeledEdit3: TLabeledEdit
            Left = 170
            Top = 37
            Width = 30
            Height = 21
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #29992#37327
            TabOrder = 2
            OnChange = LabeledEdit3Change
          end
          object LabeledEdit7: TLabeledEdit
            Left = 424
            Top = 37
            Width = 30
            Height = 21
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #22825#25968
            TabOrder = 7
            OnChange = LabeledEdit3Change
          end
          object LabeledEdit8: TLabeledEdit
            Left = 454
            Top = 37
            Width = 30
            Height = 21
            Color = clMenu
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #25968#37327
            Enabled = False
            ReadOnly = True
            TabOrder = 8
          end
          object LabeledEdit9: TLabeledEdit
            Left = 536
            Top = 37
            Width = 55
            Height = 21
            Color = clMenu
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #21333#20215
            Enabled = False
            ReadOnly = True
            TabOrder = 10
          end
          object LabeledEdit10: TLabeledEdit
            Left = 591
            Top = 37
            Width = 50
            Height = 21
            EditLabel.Width = 52
            EditLabel.Height = 13
            EditLabel.Caption = #38498#27880#27425#25968
            TabOrder = 11
          end
          object LabeledEdit11: TLabeledEdit
            Left = 641
            Top = 37
            Width = 50
            Height = 21
            EditLabel.Width = 52
            EditLabel.Height = 13
            EditLabel.Caption = #39033#30446#22065#25176
            TabOrder = 12
          end
          object ComboBox1: TComboBox
            Left = 323
            Top = 37
            Width = 40
            Height = 21
            ItemHeight = 13
            TabOrder = 5
            Items.Strings = (
              #26159
              #21542)
          end
          object ComboBox2: TComboBox
            Left = 364
            Top = 37
            Width = 58
            Height = 21
            DropDownCount = 20
            ItemHeight = 0
            TabOrder = 6
            OnChange = LabeledEdit3Change
            OnSelect = LabeledEdit3Change
          end
          object ComboBox3: TComboBox
            Left = 516
            Top = 37
            Width = 20
            Height = 21
            Style = csDropDownList
            DropDownCount = 20
            ItemHeight = 13
            TabOrder = 15
            OnChange = ComboBox3Change
            Items.Strings = (
              #26159
              #21542)
          end
          object ComboBox4: TComboBox
            Left = 200
            Top = 37
            Width = 48
            Height = 21
            DropDownCount = 20
            ItemHeight = 13
            TabOrder = 3
            OnChange = LabeledEdit3Change
            OnKeyDown = ComboBox4KeyDown
            Items.Strings = (
              #26159
              #21542)
          end
          object BitBtn1: TBitBtn
            Left = 692
            Top = 34
            Width = 60
            Height = 25
            Caption = #20445#23384#22788#26041
            TabOrder = 13
            OnClick = BitBtn1Click
          end
          object Panel5: TPanel
            Left = 1
            Top = 1
            Width = 50
            Height = 63
            Align = alLeft
            Caption = #26032#22686
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -20
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 14
            OnDblClick = Panel5DblClick
          end
          object ComboBox5: TComboBox
            Left = 248
            Top = 37
            Width = 75
            Height = 21
            DropDownCount = 20
            ItemHeight = 0
            TabOrder = 4
            OnKeyDown = ComboBox5KeyDown
          end
          object Edit2: TEdit
            Left = 484
            Top = 37
            Width = 32
            Height = 21
            TabOrder = 9
            OnChange = Edit2Change
            OnKeyDown = Edit2KeyDown
          end
        end
        object DBGrid3: TDBGrid
          Left = 0
          Top = 65
          Width = 756
          Height = 397
          Align = alClient
          DataSource = DataSource3
          PopupMenu = PopupMenu3
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
        end
      end
      object TabSheet7: TTabSheet
        Caption = #20013#33647
        ImageIndex = 6
        object Panel32: TPanel
          Left = 0
          Top = 0
          Width = 756
          Height = 65
          Align = alTop
          TabOrder = 0
          object Label11: TLabel
            Left = 345
            Top = 23
            Width = 26
            Height = 13
            Caption = #29006#27861
          end
          object Label13: TLabel
            Left = 387
            Top = 23
            Width = 26
            Height = 13
            Caption = #39057#27425
          end
          object Label14: TLabel
            Left = 267
            Top = 23
            Width = 26
            Height = 13
            Caption = #29992#27861
          end
          object Label17: TLabel
            Left = 54
            Top = 5
            Width = 78
            Height = 13
            Caption = #33647#21697#21807#19968#32534#21495
          end
          object LabeledEdit21: TLabeledEdit
            Left = 54
            Top = 39
            Width = 100
            Height = 21
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #21517#31216
            TabOrder = 0
            OnKeyDown = LabeledEdit21KeyDown
          end
          object LabeledEdit25: TLabeledEdit
            Left = 159
            Top = 39
            Width = 25
            Height = 21
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #32452#21495
            TabOrder = 1
            Text = '1'
            OnKeyDown = LabeledEdit25KeyDown
          end
          object LabeledEdit26: TLabeledEdit
            Left = 187
            Top = 39
            Width = 30
            Height = 21
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #29992#37327
            TabOrder = 2
            OnChange = LabeledEdit26Change
          end
          object LabeledEdit28: TLabeledEdit
            Left = 482
            Top = 39
            Width = 30
            Height = 21
            Color = clMenu
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #25968#37327
            Enabled = False
            ReadOnly = True
            TabOrder = 8
          end
          object LabeledEdit29: TLabeledEdit
            Left = 568
            Top = 39
            Width = 55
            Height = 21
            Color = clMenu
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #21333#20215
            Enabled = False
            ReadOnly = True
            TabOrder = 10
          end
          object LabeledEdit31: TLabeledEdit
            Left = 628
            Top = 39
            Width = 60
            Height = 21
            EditLabel.Width = 52
            EditLabel.Height = 13
            EditLabel.Caption = #39033#30446#22065#25176
            TabOrder = 11
          end
          object ComboBox11: TComboBox
            Left = 345
            Top = 39
            Width = 40
            Height = 21
            ItemHeight = 13
            TabOrder = 5
            OnKeyDown = ComboBox11KeyDown
            Items.Strings = (
              #26159
              #21542)
          end
          object ComboBox14: TComboBox
            Left = 386
            Top = 39
            Width = 58
            Height = 21
            DropDownCount = 20
            ItemHeight = 13
            TabOrder = 6
            OnChange = LabeledEdit26Change
            OnExit = LabeledEdit26Change
            OnSelect = LabeledEdit26Change
          end
          object ComboBox15: TComboBox
            Left = 545
            Top = 39
            Width = 20
            Height = 21
            Style = csDropDownList
            DropDownCount = 20
            ItemHeight = 13
            TabOrder = 14
            OnChange = ComboBox15Change
            Items.Strings = (
              #26159
              #21542)
          end
          object ComboBox16: TComboBox
            Left = 217
            Top = 39
            Width = 48
            Height = 21
            DropDownCount = 20
            ItemHeight = 13
            TabOrder = 3
            OnChange = LabeledEdit26Change
            OnKeyDown = ComboBox16KeyDown
            Items.Strings = (
              #26159
              #21542)
          end
          object BitBtn8: TBitBtn
            Left = 692
            Top = 36
            Width = 60
            Height = 25
            Caption = #20445#23384#22788#26041
            TabOrder = 12
            OnClick = BitBtn8Click
          end
          object Panel33: TPanel
            Left = 1
            Top = 1
            Width = 50
            Height = 63
            Align = alLeft
            Caption = #26032#22686
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -20
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 13
            OnDblClick = Panel33DblClick
          end
          object ComboBox17: TComboBox
            Left = 267
            Top = 39
            Width = 75
            Height = 21
            DropDownCount = 20
            ItemHeight = 13
            TabOrder = 4
            OnKeyDown = ComboBox17KeyDown
          end
          object LabeledEdit35: TLabeledEdit
            Left = 447
            Top = 39
            Width = 30
            Height = 21
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #21058#25968
            TabOrder = 7
            OnChange = LabeledEdit26Change
          end
          object Edit1: TEdit
            Left = 513
            Top = 39
            Width = 32
            Height = 21
            TabOrder = 9
            OnChange = Edit1Change
            OnKeyDown = Edit1KeyDown
          end
        end
        object DBGrid7: TDBGrid
          Left = 0
          Top = 65
          Width = 756
          Height = 397
          Align = alClient
          DataSource = DataSource7
          PopupMenu = PopupMenu7
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
        end
      end
      object TabSheet8: TTabSheet
        Caption = #20013#25104#33647
        ImageIndex = 7
      end
      object TabSheet3: TTabSheet
        Caption = #27835#30103
        ImageIndex = 2
        object Panel28: TPanel
          Left = 0
          Top = 0
          Width = 756
          Height = 65
          Align = alTop
          TabOrder = 0
          object Label10: TLabel
            Left = 225
            Top = 16
            Width = 26
            Height = 13
            Caption = #39057#27425
          end
          object Label9: TLabel
            Left = 520
            Top = 16
            Width = 26
            Height = 13
            Caption = #37096#20301
          end
          object LabeledEdit13: TLabeledEdit
            Left = 55
            Top = 32
            Width = 100
            Height = 21
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #21517#31216
            TabOrder = 0
            OnKeyDown = LabeledEdit13KeyDown
          end
          object LabeledEdit14: TLabeledEdit
            Left = 172
            Top = 32
            Width = 25
            Height = 21
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #32452#21495
            TabOrder = 1
            Text = '1'
          end
          object LabeledEdit16: TLabeledEdit
            Left = 305
            Top = 32
            Width = 30
            Height = 21
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #22825#25968
            TabOrder = 3
            OnChange = LabeledEdit16Change
          end
          object LabeledEdit17: TLabeledEdit
            Left = 359
            Top = 32
            Width = 30
            Height = 21
            Color = clMenu
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #25968#37327
            Enabled = False
            ReadOnly = True
            TabOrder = 4
          end
          object LabeledEdit18: TLabeledEdit
            Left = 451
            Top = 32
            Width = 55
            Height = 21
            Color = clMenu
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #21333#20215
            Enabled = False
            ReadOnly = True
            TabOrder = 6
          end
          object LabeledEdit20: TLabeledEdit
            Left = 598
            Top = 32
            Width = 89
            Height = 21
            EditLabel.Width = 52
            EditLabel.Height = 13
            EditLabel.Caption = #39033#30446#22065#25176
            TabOrder = 8
          end
          object ComboBox9: TComboBox
            Left = 223
            Top = 32
            Width = 58
            Height = 21
            DropDownCount = 20
            ItemHeight = 0
            TabOrder = 2
            OnChange = ComboBox9Change
            OnSelect = ComboBox9Change
          end
          object ComboBox10: TComboBox
            Left = 389
            Top = 32
            Width = 48
            Height = 21
            DropDownCount = 20
            ItemHeight = 0
            TabOrder = 5
            OnKeyDown = ComboBox10KeyDown
          end
          object BitBtn6: TBitBtn
            Left = 692
            Top = 29
            Width = 60
            Height = 25
            Caption = #20445#23384#22788#26041
            TabOrder = 9
            OnClick = BitBtn6Click
          end
          object Panel29: TPanel
            Left = 1
            Top = 1
            Width = 50
            Height = 63
            Align = alLeft
            Caption = #26032#22686
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -20
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            OnDblClick = Panel29DblClick
          end
          object ComboBox8: TComboBox
            Left = 518
            Top = 32
            Width = 62
            Height = 21
            DropDownCount = 20
            ItemHeight = 0
            TabOrder = 7
            OnKeyDown = ComboBox8KeyDown
          end
        end
        object DBGrid5: TDBGrid
          Left = 0
          Top = 65
          Width = 756
          Height = 397
          Align = alClient
          DataSource = DataSource5
          PopupMenu = PopupMenu5
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
        end
      end
      object TabSheet1: TTabSheet
        Caption = #26816#39564
        object Panel34: TPanel
          Left = 0
          Top = 0
          Width = 756
          Height = 65
          Align = alTop
          TabOrder = 0
          object LabeledEdit27: TLabeledEdit
            Left = 55
            Top = 32
            Width = 100
            Height = 21
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #21517#31216
            TabOrder = 0
            OnKeyDown = LabeledEdit27KeyDown
          end
          object LabeledEdit30: TLabeledEdit
            Left = 183
            Top = 32
            Width = 25
            Height = 21
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #32452#21495
            TabOrder = 1
            Text = '1'
          end
          object LabeledEdit32: TLabeledEdit
            Left = 238
            Top = 32
            Width = 30
            Height = 21
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #25968#37327
            TabOrder = 2
          end
          object LabeledEdit33: TLabeledEdit
            Left = 346
            Top = 32
            Width = 55
            Height = 21
            Color = clMenu
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #21333#20215
            Enabled = False
            ReadOnly = True
            TabOrder = 4
          end
          object LabeledEdit34: TLabeledEdit
            Left = 431
            Top = 32
            Width = 130
            Height = 21
            EditLabel.Width = 52
            EditLabel.Height = 13
            EditLabel.Caption = #39033#30446#22065#25176
            TabOrder = 5
          end
          object ComboBox18: TComboBox
            Left = 268
            Top = 32
            Width = 48
            Height = 21
            DropDownCount = 20
            ItemHeight = 0
            TabOrder = 3
            OnKeyDown = ComboBox18KeyDown
          end
          object BitBtn10: TBitBtn
            Left = 565
            Top = 29
            Width = 60
            Height = 25
            Caption = #20445#23384#22788#26041
            TabOrder = 6
            OnClick = BitBtn10Click
          end
          object Panel35: TPanel
            Left = 1
            Top = 1
            Width = 50
            Height = 63
            Align = alLeft
            Caption = #26032#22686
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -20
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnDblClick = Panel35DblClick
          end
        end
        object DBGrid9: TDBGrid
          Left = 0
          Top = 65
          Width = 756
          Height = 397
          Align = alClient
          DataSource = DataSource9
          PopupMenu = PopupMenu9
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
        end
      end
      object TabSheet2: TTabSheet
        Caption = #26816#26597
        ImageIndex = 1
        object Panel30: TPanel
          Left = 0
          Top = 0
          Width = 756
          Height = 65
          Align = alTop
          TabOrder = 0
          object Label12: TLabel
            Left = 412
            Top = 16
            Width = 26
            Height = 13
            Caption = #37096#20301
          end
          object LabeledEdit15: TLabeledEdit
            Left = 55
            Top = 32
            Width = 100
            Height = 21
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #21517#31216
            TabOrder = 0
            OnKeyDown = LabeledEdit15KeyDown
          end
          object LabeledEdit19: TLabeledEdit
            Left = 184
            Top = 32
            Width = 25
            Height = 21
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #32452#21495
            TabOrder = 1
            Text = '1'
          end
          object LabeledEdit22: TLabeledEdit
            Left = 234
            Top = 32
            Width = 30
            Height = 21
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #25968#37327
            TabOrder = 2
          end
          object LabeledEdit23: TLabeledEdit
            Left = 336
            Top = 32
            Width = 55
            Height = 21
            Color = clMenu
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = #21333#20215
            Enabled = False
            ReadOnly = True
            TabOrder = 4
          end
          object LabeledEdit24: TLabeledEdit
            Left = 493
            Top = 32
            Width = 116
            Height = 21
            EditLabel.Width = 52
            EditLabel.Height = 13
            EditLabel.Caption = #39033#30446#22065#25176
            TabOrder = 6
          end
          object ComboBox12: TComboBox
            Left = 264
            Top = 32
            Width = 48
            Height = 21
            DropDownCount = 20
            ItemHeight = 0
            TabOrder = 3
            OnKeyDown = ComboBox12KeyDown
          end
          object BitBtn7: TBitBtn
            Left = 612
            Top = 29
            Width = 60
            Height = 25
            Caption = #20445#23384#22788#26041
            TabOrder = 7
            OnClick = BitBtn7Click
          end
          object Panel31: TPanel
            Left = 1
            Top = 1
            Width = 50
            Height = 63
            Align = alLeft
            Caption = #26032#22686
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -20
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnDblClick = Panel31DblClick
          end
          object ComboBox13: TComboBox
            Left = 410
            Top = 32
            Width = 62
            Height = 21
            DropDownCount = 20
            ItemHeight = 0
            TabOrder = 5
            OnKeyDown = ComboBox13KeyDown
          end
        end
        object DBGrid6: TDBGrid
          Left = 0
          Top = 65
          Width = 756
          Height = 397
          Align = alClient
          DataSource = DataSource6
          PopupMenu = PopupMenu6
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
        end
      end
      object TabSheet9: TTabSheet
        Caption = #27602#40635#33647
        ImageIndex = 8
      end
      object TabSheet4: TTabSheet
        Caption = #23601#35786#21382#21490
        ImageIndex = 3
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 275
          Height = 462
          Align = alLeft
          DataSource = DataSource1
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
        end
        object DBGrid8: TDBGrid
          Left = 275
          Top = 0
          Width = 479
          Height = 462
          Align = alClient
          DataSource = DataSource8
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
        end
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 320
      Height = 490
      Align = alLeft
      Caption = #25105#30340#35786#30103#24037#20316
      TabOrder = 1
      object DBGrid2: TDBGrid
        Left = 2
        Top = 15
        Width = 316
        Height = 473
        Align = alClient
        DataSource = DataSource2
        PopupMenu = PopupMenu2
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
      end
    end
  end
  object MainMenu1: TMainMenu
    AutoHotkeys = maManual
    Left = 842
    Top = 8
    object N1: TMenuItem
      Caption = #25991#20214
      object N6: TMenuItem
        Caption = #37325#26032#30331#24405
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object N8: TMenuItem
        Caption = #20462#25913#23494#30721
        OnClick = N8Click
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object N30: TMenuItem
        Caption = #26597#35810
        OnClick = N30Click
      end
      object N31: TMenuItem
        Caption = '-'
      end
      object N28: TMenuItem
        Caption = #32467#26463#24403#25209#35786#30103#24037#20316
        OnClick = N28Click
      end
      object N29: TMenuItem
        Caption = '-'
      end
      object N5: TMenuItem
        Caption = #36864#20986#31995#32479
        OnClick = N5Click
      end
    end
    object N10: TMenuItem
      Caption = #31995#32479#35774#32622
      object N11: TMenuItem
        Caption = #36873#39033
        OnClick = N11Click
      end
    end
    object N2: TMenuItem
      Caption = #24110#21161
      object N3: TMenuItem
        Caption = #27880#20876
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #20851#20110'...'
      end
    end
  end
  object TimerIdleTracker: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = TimerIdleTrackerTimer
    Left = 810
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = MyQuery2
    Left = 117
    Top = 176
  end
  object MyQuery2: TMyQuery
    AfterOpen = MyQuery2AfterOpen
    AfterScroll = MyQuery2AfterScroll
    Left = 85
    Top = 176
  end
  object MyQuery1: TMyQuery
    AfterOpen = MyQuery1AfterOpen
    AfterScroll = MyQuery1AfterScroll
    Left = 333
    Top = 232
  end
  object DataSource1: TDataSource
    DataSet = MyQuery1
    Left = 365
    Top = 232
  end
  object DosMove1: TDosMove
    Active = True
    Left = 873
    Top = 8
  end
  object DataSource3: TDataSource
    DataSet = MyQuery3
    Left = 365
    Top = 263
  end
  object MyQuery3: TMyQuery
    AfterOpen = MyQuery3AfterOpen
    Left = 333
    Top = 263
  end
  object PopupMenu3: TPopupMenu
    AutoHotkeys = maManual
    Left = 405
    Top = 263
    object N12: TMenuItem
      Caption = #20462#25913
      OnClick = N12Click
    end
    object N13: TMenuItem
      Caption = '-'
    end
    object N14: TMenuItem
      Caption = #21024#38500#22788#26041
      OnClick = N14Click
    end
  end
  object PopupMenu2: TPopupMenu
    AutoHotkeys = maManual
    Left = 153
    Top = 175
    object N15: TMenuItem
      Caption = #20462#25913#24180#40836
      OnClick = N15Click
    end
    object N35: TMenuItem
      Caption = '-'
    end
    object N36: TMenuItem
      Caption = #21478#23384#20026#27169#26495
      OnClick = N36Click
    end
  end
  object DataSource4: TDataSource
    DataSet = MyQuery4
    Left = 532
    Top = 398
  end
  object MyQuery4: TMyQuery
    AfterOpen = MyQuery4AfterOpen
    Left = 500
    Top = 398
  end
  object DataSource5: TDataSource
    DataSet = MyQuery5
    Left = 365
    Top = 303
  end
  object MyQuery5: TMyQuery
    AfterOpen = MyQuery5AfterOpen
    Left = 333
    Top = 303
  end
  object PopupMenu5: TPopupMenu
    AutoHotkeys = maManual
    Left = 405
    Top = 303
    object N16: TMenuItem
      Caption = #20462#25913
      OnClick = N16Click
    end
    object N17: TMenuItem
      Caption = '-'
    end
    object N18: TMenuItem
      Caption = #21024#38500#22788#26041
      OnClick = N18Click
    end
  end
  object DataSource6: TDataSource
    DataSet = MyQuery6
    Left = 365
    Top = 335
  end
  object MyQuery6: TMyQuery
    AfterOpen = MyQuery6AfterOpen
    Left = 333
    Top = 335
  end
  object PopupMenu6: TPopupMenu
    AutoHotkeys = maManual
    Left = 405
    Top = 335
    object N19: TMenuItem
      Caption = #20462#25913
      OnClick = N19Click
    end
    object N20: TMenuItem
      Caption = '-'
    end
    object N21: TMenuItem
      Caption = #21024#38500#22788#26041
      OnClick = N21Click
    end
  end
  object DataSource7: TDataSource
    DataSet = MyQuery7
    Left = 365
    Top = 367
  end
  object PopupMenu7: TPopupMenu
    AutoHotkeys = maManual
    Left = 405
    Top = 367
    object N22: TMenuItem
      Caption = #20462#25913
      OnClick = N22Click
    end
    object N23: TMenuItem
      Caption = '-'
    end
    object N24: TMenuItem
      Caption = #21024#38500#22788#26041
      OnClick = N24Click
    end
  end
  object MyQuery7: TMyQuery
    AfterOpen = MyQuery7AfterOpen
    Left = 333
    Top = 367
  end
  object DataSource8: TDataSource
    DataSet = MyQuery8
    Left = 365
    Top = 399
  end
  object MyQuery8: TMyQuery
    AfterOpen = MyQuery8AfterOpen
    Left = 333
    Top = 399
  end
  object DataSource9: TDataSource
    DataSet = MyQuery9
    Left = 365
    Top = 431
  end
  object MyQuery9: TMyQuery
    AfterOpen = MyQuery9AfterOpen
    Left = 333
    Top = 431
  end
  object PopupMenu9: TPopupMenu
    AutoHotkeys = maManual
    Left = 405
    Top = 431
    object N25: TMenuItem
      Caption = #20462#25913
      OnClick = N25Click
    end
    object N26: TMenuItem
      Caption = '-'
    end
    object N27: TMenuItem
      Caption = #21024#38500#22788#26041
      OnClick = N27Click
    end
  end
  object mq_slave: TMyQuery
    SQL.Strings = (
      'select *,'
      '0 as min_content,'#39'1'#39' as unit_min_content,'
      '0 as amount'
      'from treat_slave')
    Left = 689
    Top = 40
  end
  object frxReport1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #39044#35774
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44337.913513217600000000
    ReportOptions.LastChange = 44414.455360439820000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 657
    Top = 8
    Datasets = <
      item
        DataSet = masterDBfrx
        DataSetName = 'master'
      end
      item
        DataSet = slaveDBfrx
        DataSetName = 'slave'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page_No_Chinese_Medicine: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      PaperWidth = 148.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 11
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 166.299320000000000000
        Top = 18.897650000000000000
        Width = 483.779840000000000000
        Stretched = True
        object Shape1: TfrxShapeView
          Left = 3.779530000000000000
          Top = 71.811070000000000000
          Width = 476.220780000000000000
          Height = 52.913420000000000000
        end
        object Memo3: TfrxMemoView
          Left = 102.047310000000000000
          Top = 100.252010000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #37804#1091#22470'  [master."patient_sex"]')
        end
        object Memo4: TfrxMemoView
          Left = 102.047310000000000000
          Top = 78.574830000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #39582#25774#32222'  [master."patient_age"]')
        end
        object Memo5: TfrxMemoView
          Left = 207.874150000000000000
          Top = 78.574830000000000000
          Width = 18.897650000000000000
          Height = 41.574830000000000000
          Memo.UTF8 = (
            #32457'?'
            #37714'?')
        end
        object Memo6: TfrxMemoView
          Left = 303.141930000000000000
          Top = 78.574830000000000000
          Width = 177.637812360000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #38315#27691#20426'  [master."telephone"]')
        end
        object Memo7: TfrxMemoView
          Left = 303.141930000000000000
          Top = 100.252010000000000000
          Width = 30.236142360000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          Memo.UTF8 = (
            #29831#23107#26567)
        end
        object Memo10: TfrxMemoView
          Left = 11.338590000000000000
          Top = 78.574830000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataSetName = 'UmasterDBfrx'
          Memo.UTF8 = (
            #28654#25779#24725)
        end
        object Memo11: TfrxMemoView
          Left = 234.330860000000000000
          Top = 78.574830000000000000
          Width = 52.913420000000000000
          Height = 41.574830000000000000
          Memo.UTF8 = (
            '[master."department"]')
        end
        object Memo12: TfrxMemoView
          Left = 343.937230000000000000
          Top = 100.252010000000000000
          Width = 128.503922360000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          Memo.UTF8 = (
            '[master."diagnose"]')
        end
        object Memo13: TfrxMemoView
          Left = 11.338590000000000000
          Top = 20.220470000000000000
          Width = 468.661720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SCSYDW]'#28598#21228#26591)
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo14: TfrxMemoView
          Left = 419.527830000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #37829#57792#8364#27692#58921#37826'?')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 11.338590000000000000
          Top = 99.929190000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSetName = 'UmasterDBfrx'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[master."patient_name"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 343.937230000000000000
          Top = 49.574830000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataSetName = 'UmasterDBfrx'
          Memo.UTF8 = (
            #28751#36779#30230#37827#12518#28257':[FormatDateTime('#39'yyyy-mm-dd'#39',<master."creat_date_time">)]')
        end
        object Memo24: TfrxMemoView
          Left = 11.338590000000000000
          Top = 49.133890000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataSetName = 'UmasterDBfrx'
          Memo.UTF8 = (
            #38338#12584#30230#37721'?[master."unid"]')
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 98.267780000000000000
          Width = 200.315090000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Left = 98.267780000000000000
          Top = 71.811070000000000000
          Height = 52.913420000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line3: TfrxLineView
          Left = 204.094620000000000000
          Top = 71.811070000000000000
          Height = 52.913420000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          Left = 230.551330000000000000
          Top = 71.811070000000000000
          Height = 52.913420000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 298.582870000000000000
          Top = 71.811070000000000000
          Height = 52.913420000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          Left = 340.157700000000000000
          Top = 71.811070000000000000
          Height = 52.913420000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          Left = 298.582870000000000000
          Top = 98.267780000000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line8: TfrxLineView
          Left = 132.283550000000000000
          Top = 71.811070000000000000
          Height = 52.913420000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo25: TfrxMemoView
          Left = 3.779530000000000000
          Top = 120.944960000000000000
          Width = 37.795300000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -35
          Font.Name = #24494#36719#38597#40657
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'R')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 68.031540000000000000
        Top = 408.189240000000000000
        Width = 483.779840000000000000
        object Memo17: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.000000000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #37718#35826#31488':[master."operator"]')
        end
        object Memo18: TfrxMemoView
          Left = 11.338590000000000000
          Top = 25.677180000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #28729#8451#29299#38000'?[master."audit_doctor"]')
        end
        object Memo19: TfrxMemoView
          Left = 181.417440000000000000
          Top = 3.000000000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #37824#24816#22402#37723'?')
        end
        object Memo20: TfrxMemoView
          Left = 181.417440000000000000
          Top = 25.677180000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #29835#20910#21412#37723'?')
        end
        object Memo21: TfrxMemoView
          Left = 336.378170000000000000
          Top = 3.000000000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #38322#25126#58754'('#37711'?:[Sum(<slave."drug_num">*<slave."unit_price">)]')
        end
        object Memo22: TfrxMemoView
          Left = 336.378170000000000000
          Top = 25.677180000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #37721#25123#23874#37723'?')
        end
        object TotalPages1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 49.133890000000000000
          Width = 464.882190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '('#37711#30453'TotalPages#]'#26916'?'#32471#29724'Page#]'#26916'?')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Line9: TfrxLineView
          Width = 483.779840000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 298.582870000000000000
        Width = 483.779840000000000000
        DataSet = slaveDBfrx
        DataSetName = 'slave'
        Filter = '<slave."item_type"><>'#39#20013#33647#39
        KeepFooter = True
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataSetName = 'UmasterDBfrx'
          Memo.UTF8 = (
            '[slave."group_num"]')
        end
        object Memo1: TfrxMemoView
          Left = 41.574830000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataSetName = 'UmasterDBfrx'
          Memo.UTF8 = (
            '[slave."item_name"]')
        end
        object Memo9: TfrxMemoView
          Left = 366.614410000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSetName = 'UmasterDBfrx'
          Memo.UTF8 = (
            '[slave."use_method"] [slave."drug_freq"]*[slave."drug_days"]'#28598'?')
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo16: TfrxMemoView
          Left = 188.976500000000000000
          Top = 26.456710000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            #37922#12582#30838':[slave."dosage"][slave."unit_dosage"]')
          Formats = <
            item
            end
            item
            end>
        end
        object Memo8: TfrxMemoView
          Left = 188.976500000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            
              '[slave."min_content"][slave."unit_min_content"]*[slave."drug_num' +
              '"][slave."unit_drug"]')
          Formats = <
            item
            end
            item
            end>
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 245.669450000000000000
        Width = 483.779840000000000000
        Condition = 'slave."item_type"'
        StartNewPage = True
        object Memo49: TfrxMemoView
          Left = 41.574830000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataSetName = 'UmasterDBfrx'
          Memo.UTF8 = (
            '[slave."item_type"]')
        end
      end
    end
    object Page_Chinese_Medicine: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      PaperWidth = 148.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 11
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader2: TfrxPageHeader
        FillType = ftBrush
        Height = 166.299320000000000000
        Top = 18.897650000000000000
        Width = 483.779840000000000000
        Stretched = True
        object Shape2: TfrxShapeView
          Left = 3.779530000000000000
          Top = 71.811070000000000000
          Width = 476.220780000000000000
          Height = 52.913420000000000000
        end
        object Memo26: TfrxMemoView
          Left = 102.047310000000000000
          Top = 100.252010000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #37804#1091#22470'  [master."patient_sex"]')
        end
        object Memo27: TfrxMemoView
          Left = 102.047310000000000000
          Top = 78.574830000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #39582#25774#32222'  [master."patient_age"]')
        end
        object Memo28: TfrxMemoView
          Left = 207.874150000000000000
          Top = 78.574830000000000000
          Width = 18.897650000000000000
          Height = 41.574830000000000000
          Memo.UTF8 = (
            #32457'?'
            #37714'?')
        end
        object Memo29: TfrxMemoView
          Left = 303.141930000000000000
          Top = 78.574830000000000000
          Width = 177.637812360000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #38315#27691#20426'  [master."telephone"]')
        end
        object Memo30: TfrxMemoView
          Left = 303.141930000000000000
          Top = 100.252010000000000000
          Width = 30.236142360000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          Memo.UTF8 = (
            #29831#23107#26567)
        end
        object Memo31: TfrxMemoView
          Left = 11.338590000000000000
          Top = 78.574830000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataSetName = 'UmasterDBfrx'
          Memo.UTF8 = (
            #28654#25779#24725)
        end
        object Memo32: TfrxMemoView
          Left = 234.330860000000000000
          Top = 78.574830000000000000
          Width = 52.913420000000000000
          Height = 41.574830000000000000
          Memo.UTF8 = (
            '[master."department"]')
        end
        object Memo33: TfrxMemoView
          Left = 343.937230000000000000
          Top = 100.252010000000000000
          Width = 128.503922360000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          Memo.UTF8 = (
            '[master."diagnose"]')
        end
        object Memo34: TfrxMemoView
          Left = 11.338590000000000000
          Top = 20.220470000000000000
          Width = 468.661720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SCSYDW]'#28051#57697#23874#28598#21228#26591)
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo35: TfrxMemoView
          Left = 419.527830000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #37829#57792#8364#27692#58921#37826'?')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 11.338590000000000000
          Top = 99.929190000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSetName = 'UmasterDBfrx'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[master."patient_name"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 343.937230000000000000
          Top = 49.574830000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataSetName = 'UmasterDBfrx'
          Memo.UTF8 = (
            #28751#36779#30230#37827#12518#28257':[FormatDateTime('#39'yyyy-mm-dd'#39',<master."creat_date_time">)]')
        end
        object Memo38: TfrxMemoView
          Left = 11.338590000000000000
          Top = 49.133890000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataSetName = 'UmasterDBfrx'
          Memo.UTF8 = (
            #38338#12584#30230#37721'?[master."unid"]')
        end
        object Line10: TfrxLineView
          Left = 3.779530000000000000
          Top = 98.267780000000000000
          Width = 200.315090000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line11: TfrxLineView
          Left = 98.267780000000000000
          Top = 71.811070000000000000
          Height = 52.913420000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          Left = 204.094620000000000000
          Top = 71.811070000000000000
          Height = 52.913420000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line13: TfrxLineView
          Left = 230.551330000000000000
          Top = 71.811070000000000000
          Height = 52.913420000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          Left = 298.582870000000000000
          Top = 71.811070000000000000
          Height = 52.913420000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          Left = 340.157700000000000000
          Top = 71.811070000000000000
          Height = 52.913420000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          Left = 298.582870000000000000
          Top = 98.267780000000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line17: TfrxLineView
          Left = 132.283550000000000000
          Top = 71.811070000000000000
          Height = 52.913420000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo39: TfrxMemoView
          Left = 3.779530000000000000
          Top = 120.944960000000000000
          Width = 37.795300000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -35
          Font.Name = #24494#36719#38597#40657
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'R')
          ParentFont = False
        end
      end
      object PageFooter2: TfrxPageFooter
        FillType = ftBrush
        Height = 68.031540000000000000
        Top = 483.779840000000000000
        Width = 483.779840000000000000
        object Memo40: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.000000000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #37718#35826#31488':[master."operator"]')
        end
        object Memo41: TfrxMemoView
          Left = 11.338590000000000000
          Top = 25.677180000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #28729#8451#29299#38000'?[master."audit_doctor"]')
        end
        object Memo42: TfrxMemoView
          Left = 181.417440000000000000
          Top = 3.000000000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #37824#24816#22402#37723'?')
        end
        object Memo43: TfrxMemoView
          Left = 181.417440000000000000
          Top = 25.677180000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #29835#20910#21412#37723'?')
        end
        object Memo44: TfrxMemoView
          Left = 336.378170000000000000
          Top = 3.000000000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #38322#25126#58754'('#37711'?:[Sum(<slave."drug_num">*<slave."unit_price">)]')
        end
        object Memo45: TfrxMemoView
          Left = 336.378170000000000000
          Top = 25.677180000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #37721#25123#23874#37723'?')
        end
        object Memo46: TfrxMemoView
          Left = 11.338590000000000000
          Top = 49.133890000000000000
          Width = 464.882190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '('#37711#30453'TotalPages#]'#26916'?'#32471#29724'Page#]'#26916'?')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Line18: TfrxLineView
          Width = 483.779840000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 298.582870000000000000
        Width = 483.779840000000000000
        Columns = 3
        ColumnWidth = 160.629921259843000000
        DataSet = slaveDBfrx
        DataSetName = 'slave'
        Filter = '<slave."item_type">='#39#20013#33647#39
        RowCount = 0
        Stretched = True
        object Memo48: TfrxMemoView
          Left = 19.779530000000000000
          Top = 7.559060000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataSetName = 'UmasterDBfrx'
          Memo.UTF8 = (
            '[slave."item_name"] [slave."dosage"][slave."unit_dosage"]')
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 245.669450000000000000
        Width = 483.779840000000000000
        Condition = 'slave."item_type"'
        StartNewPage = True
        object Memo50: TfrxMemoView
          Left = 45.354360000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataSetName = 'UmasterDBfrx'
          Memo.UTF8 = (
            '[slave."item_type"]')
        end
        object Memo51: TfrxMemoView
          Left = 177.637910000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataSetName = 'UmasterDBfrx'
          Memo.UTF8 = (
            '[slave."drug_days"]')
        end
        object Memo52: TfrxMemoView
          Left = 294.803340000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataSetName = 'UmasterDBfrx'
          Memo.UTF8 = (
            '[slave."use_method"]')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 370.393940000000000000
        Width = 483.779840000000000000
        object Memo47: TfrxMemoView
          Left = 18.897650000000000000
          Top = 30.236240000000000000
          Width = 321.259952360000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            
              #37922#12582#30838':[master."Chinese_Medicine_Use_Method"]  '#37813#59169'master."Chinese_Me' +
              'dicine_Drug_Days"]'#37715'?')
          Formats = <
            item
            end
            item
            end>
        end
      end
    end
  end
  object mq_master: TMyQuery
    SQL.Strings = (
      'select * from treat_master')
    Left = 689
    Top = 8
  end
  object masterDBfrx: TfrxDBDataset
    UserName = 'master'
    CloseDataSource = False
    DataSet = mq_master
    BCDToCurrency = False
    Left = 721
    Top = 7
  end
  object slaveDBfrx: TfrxDBDataset
    UserName = 'slave'
    CloseDataSource = False
    FieldAliases.Strings = (
      'unid=unid'
      'tm_unid=tm_unid'
      'item_type=item_type'
      'item_unid=item_unid'
      'item_name=item_name'
      'group_num=group_num'
      'dosage=dosage'
      'unit_dosage=unit_dosage'
      'made_method=made_method'
      'use_method=use_method'
      'if_skin_test=if_skin_test'
      'drug_freq=drug_freq'
      'drug_days=drug_days'
      'drug_num=drug_num'
      'unit_drug=unit_drug'
      'unit_price=unit_price'
      'hosp_inje_num=hosp_inje_num'
      'item_advice=item_advice'
      'item_value=item_value'
      'body_position=body_position'
      'remark=remark'
      'reserve1=reserve1'
      'reserve2=reserve2'
      'reserve3=reserve3'
      'reserve4=reserve4'
      'reserve5=reserve5'
      'reserve6=reserve6'
      'reserve7=reserve7'
      'reserve8=reserve8'
      'reserve9=reserve9'
      'reserve10=reserve10'
      'creat_date_time=creat_date_time'
      'update_date_time=update_date_time'
      'min_content=min_content'
      'unit_min_content=unit_min_content'
      'amount=amount')
    DataSet = mq_slave
    BCDToCurrency = False
    Left = 721
    Top = 40
  end
  object PopupMenu4: TPopupMenu
    AutoHotkeys = maManual
    Left = 565
    Top = 398
    object N32: TMenuItem
      Caption = #20462#25913
      OnClick = N32Click
    end
    object N33: TMenuItem
      Caption = '-'
    end
    object N34: TMenuItem
      Caption = #21024#38500#35786#26029
      OnClick = N34Click
    end
  end
end
