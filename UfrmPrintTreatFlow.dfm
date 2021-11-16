object frmPrintTreatFlow: TfrmPrintTreatFlow
  Left = 268
  Top = 202
  BorderStyle = bsDialog
  Caption = #25171#21360#23601#35786#27969#27700
  ClientHeight = 177
  ClientWidth = 343
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 50
    Top = 35
    Width = 52
    Height = 13
    Caption = #23601#35786#26085#26399
  end
  object Label2: TLabel
    Left = 169
    Top = 59
    Width = 7
    Height = 13
    Caption = '-'
  end
  object Label3: TLabel
    Left = 24
    Top = 156
    Width = 182
    Height = 13
    Caption = #27880#65306#20165#25171#21360#12304#24050#23457#26680#12305#23601#35786#35760#24405
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object DateTimePicker1: TDateTimePicker
    Left = 50
    Top = 55
    Width = 95
    Height = 21
    Date = 44513.460397372680000000
    Time = 44513.460397372680000000
    TabOrder = 0
  end
  object DateTimePicker2: TDateTimePicker
    Left = 202
    Top = 55
    Width = 95
    Height = 21
    Date = 44513.460397372680000000
    Time = 44513.460397372680000000
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 70
    Top = 119
    Width = 75
    Height = 25
    Caption = #30830#23450
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 202
    Top = 120
    Width = 75
    Height = 25
    Caption = #20851#38381
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object MyQuery1: TMyQuery
    Connection = DM.MyConnection1
    SQL.Strings = (
      'select '
      '  0 as unid,'
      '  0 as patient_unid,'
      '  0 as register_unid,'
      '  '#39#39' as patient_name,'
      '  '#39#39' as patient_pinyin,'
      '  '#39#39' as patient_wbm,'
      '  '#39#39' as patient_sex,'
      '  '#39#39' as patient_age,'
      '  '#39#39' as certificate_type,'
      '  '#39#39' as certificate_num,'
      '  '#39#39' as clinic_card_num,'
      '  '#39#39' as health_care_num,'
      '  '#39#39' as address,'
      '  '#39#39' as work_company,'
      '  '#39#39' as work_address,'
      '  '#39#39' as if_marry,'
      '  '#39#39' as native_place,'
      '  '#39#39' as telephone,'
      '  '#39#39' as remark,'
      '  '#39#39' as reserve1,'
      '  '#39#39' as reserve2,'
      '  '#39#39' as reserve3,'
      '  '#39#39' as reserve4,'
      '  0 as reserve5,'
      '  0 as reserve6,'
      '  0 as reserve7,'
      '  0 as reserve8,'
      '  NOW() as reserve9,'
      '  NOW() as reserve10,'
      '  '#39#39' as operator,'
      '  '#39#39' as department,'
      '  '#39#39' as audit_doctor,'
      '  NOW() as audit_date,'
      '  NOW() as creat_date_time,'
      '  NOW() as update_date_time,'
      '  '#39#39' as `'#35786#26029'`,'
      '  '#39#39' as `'#20027#35785'`')
    Left = 194
    Top = 7
  end
  object frxReport1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #39044#35774
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44513.465943726800000000
    ReportOptions.LastChange = 44516.414267835700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 162
    Top = 7
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'tfset'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'tfset'
        RowCount = 0
        Stretched = True
        object frxDBDataset1patient_name: TfrxMemoView
          Left = 170.078850000000000000
          Top = 1.677180000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          DataField = 'patient_name'
          DataSet = frxDBDataset1
          DataSetName = 'tfset'
          Memo.UTF8 = (
            '[tfset."patient_name"]')
        end
        object frxDBDataset1telephone: TfrxMemoView
          Left = 226.771800000000000000
          Top = 2.133890000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'telephone'
          DataSet = frxDBDataset1
          DataSetName = 'tfset'
          Memo.UTF8 = (
            '[tfset."telephone"]')
        end
        object frxDBDataset1patient_sex: TfrxMemoView
          Left = 313.700990000000000000
          Top = 2.133890000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'patient_sex'
          DataSet = frxDBDataset1
          DataSetName = 'tfset'
          Memo.UTF8 = (
            '[tfset."patient_sex"]')
        end
        object frxDBDataset1patient_age: TfrxMemoView
          Left = 347.716760000000000000
          Top = 2.133890000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'patient_age'
          DataSet = frxDBDataset1
          DataSetName = 'tfset'
          Memo.UTF8 = (
            '[tfset."patient_age"]')
        end
        object frxDBDataset1clinic_card_num: TfrxMemoView
          Left = 79.370130000000000000
          Top = 1.677180000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'clinic_card_num'
          DataSet = frxDBDataset1
          DataSetName = 'tfset'
          Memo.UTF8 = (
            '[tfset."clinic_card_num"]')
        end
        object frxDBDataset1creat_date_time: TfrxMemoView
          Top = 1.677180000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'creat_date_time'
          DataSet = frxDBDataset1
          DataSetName = 'tfset'
          Memo.UTF8 = (
            '[tfset."creat_date_time"]')
        end
        object Memo2: TfrxMemoView
          Left = 396.850650000000000000
          Top = 2.133890000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = #35786#26029
          DataSet = frxDBDataset1
          DataSetName = 'tfset'
          Memo.UTF8 = (
            '[tfset."'#29831#23107#26567'"]')
        end
        object Memo12: TfrxMemoView
          Left = 548.031850000000000000
          Top = 2.133890000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = #20027#35785
          DataSet = frxDBDataset1
          DataSetName = 'tfset'
          Memo.UTF8 = (
            '[tfset."'#28051#26127#30228'"]')
        end
        object Memo15: TfrxMemoView
          Left = 631.181510000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataSet = frxDBDataset1
          DataSetName = 'tfset'
          Memo.UTF8 = (
            '[tfset."testcol"]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Top = 69.826840000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          Memo.UTF8 = (
            #28751#36779#30230#37827#12518#28257)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 79.370130000000000000
          Top = 69.826840000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          Memo.UTF8 = (
            #37719#8243#24447)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 170.078850000000000000
          Top = 69.826840000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          Memo.UTF8 = (
            #28654#25779#24725)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 226.771800000000000000
          Top = 69.826840000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          Memo.UTF8 = (
            #37922#20291#30269)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 313.700990000000000000
          Top = 69.826840000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          Memo.UTF8 = (
            #37804#1091#22470)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 351.496290000000000000
          Top = 69.826840000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          Memo.UTF8 = (
            #39582#25774#32222)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 396.850650000000000000
          Top = 69.826840000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          Memo.UTF8 = (
            #29831#23107#26567)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 548.031850000000000000
          Top = 69.826840000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          Memo.UTF8 = (
            #28051#26127#30228)
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Top = 45.031540000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          Memo.UTF8 = (
            '')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo3: TfrxMemoView
          Left = 491.338900000000000000
          Top = 45.031540000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          Memo.UTF8 = (
            #37813#25779#23875#37827#22549#26879#38171#27476'DATE] [TIME]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Top = 7.559060000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SCSYDW]-'#28751#36779#30230#23092#20345#25353)
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 90.283550000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          Top = 11.338590000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'tfset'
    CloseDataSource = False
    FieldAliases.Strings = (
      'unid=unid'
      'patient_unid=patient_unid'
      'register_unid=register_unid'
      'patient_name=patient_name'
      'patient_pinyin=patient_pinyin'
      'patient_wbm=patient_wbm'
      'patient_sex=patient_sex'
      'patient_age=patient_age'
      'certificate_type=certificate_type'
      'certificate_num=certificate_num'
      'clinic_card_num=clinic_card_num'
      'health_care_num=health_care_num'
      'address=address'
      'work_company=work_company'
      'work_address=work_address'
      'if_marry=if_marry'
      'native_place=native_place'
      'telephone=telephone'
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
      'operator=operator'
      'department=department'
      'audit_doctor=audit_doctor'
      'audit_date=audit_date'
      'creat_date_time=creat_date_time'
      'update_date_time=update_date_time'
      #35786#26029'='#35786#26029
      #20027#35785'='#20027#35785)
    DataSet = MyQuery1
    BCDToCurrency = False
    Left = 226
    Top = 7
  end
end
