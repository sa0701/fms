object Form1: TForm1
  Left = 274
  Top = 154
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1059#1074#1077#1076#1086#1084#1083#1077#1085#1080#1077' '#1086' '#1087#1088#1080#1073#1099#1090#1080#1080' '#1080#1085#1086#1089#1090#1088#1072#1085#1085#1086#1075#1086' '#1075#1088#1072#1078#1076#1072#1085#1080#1085#1072' ('#1053#1086#1074#1072#1103' '#1092#1086#1088#1084#1072')'
  ClientHeight = 828
  ClientWidth = 1506
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1506
    Height = 828
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1057#1090#1088#1072#1085#1080#1094#1072' 1'
      object GroupBox1: TGroupBox
        Left = 3
        Top = 3
        Width = 1486
        Height = 772
        Caption = 
          #1057#1042#1045#1044#1045#1053#1048#1071' '#1054' '#1051#1048#1062#1045', '#1055#1054#1044#1051#1045#1046#1040#1065#1045#1052' '#1055#1054#1057#1058#1040#1053#1054#1042#1050#1045' '#1053#1040' '#1059#1063#1045#1058' '#1055#1054' '#1052#1045#1057#1058#1059' '#1055#1056#1045#1041#1067#1042#1040#1053 +
          #1048#1071
        TabOrder = 0
        object Label1: TLabel
          Left = 688
          Top = 69
          Width = 83
          Height = 15
          Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        end
        object Label8: TLabel
          Left = 1072
          Top = 563
          Width = 64
          Height = 15
          Caption = #1044#1072#1090#1072' '#1074#1098#1077#1079#1076#1072
        end
        object fam_ru_edit: TLabeledEdit
          Left = 16
          Top = 40
          Width = 225
          Height = 23
          EditLabel.Width = 51
          EditLabel.Height = 15
          EditLabel.Caption = #1060#1072#1084#1080#1083#1080#1103
          TabOrder = 0
        end
        object fam_en_edit: TLabeledEdit
          Left = 16
          Top = 88
          Width = 225
          Height = 23
          EditLabel.Width = 113
          EditLabel.Height = 15
          EditLabel.Caption = #1060#1072#1084#1080#1083#1080#1103' '#1083#1072#1090#1080#1085#1080#1094#1077#1081
          TabOrder = 1
        end
        object name_ru_edit: TLabeledEdit
          Left = 264
          Top = 40
          Width = 177
          Height = 23
          EditLabel.Width = 24
          EditLabel.Height = 15
          EditLabel.Caption = #1048#1084#1103
          TabOrder = 2
        end
        object name_en_edit: TLabeledEdit
          Left = 264
          Top = 88
          Width = 177
          Height = 23
          EditLabel.Width = 86
          EditLabel.Height = 15
          EditLabel.Caption = #1048#1084#1103' '#1083#1072#1090#1080#1085#1080#1094#1077#1081
          TabOrder = 3
        end
        object oth_ru_edit: TLabeledEdit
          Left = 488
          Top = 40
          Width = 161
          Height = 23
          EditLabel.Width = 51
          EditLabel.Height = 15
          EditLabel.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
          TabOrder = 4
        end
        object oth_en_edit: TLabeledEdit
          Left = 488
          Top = 88
          Width = 161
          Height = 23
          EditLabel.Width = 113
          EditLabel.Height = 15
          EditLabel.Caption = #1054#1090#1095#1077#1089#1090#1074#1086' '#1083#1072#1090#1080#1085#1080#1094#1077#1081
          TabOrder = 5
        end
        object oth_check: TCheckBox
          Left = 488
          Top = 117
          Width = 97
          Height = 17
          Caption = #1045#1089#1090#1100' '#1086#1090#1095#1077#1089#1090#1074#1086
          Checked = True
          State = cbChecked
          TabOrder = 6
          OnClick = oth_checkClick
        end
        object grazd_edit: TLabeledEdit
          Left = 688
          Top = 40
          Width = 193
          Height = 23
          EditLabel.Width = 71
          EditLabel.Height = 15
          EditLabel.Caption = #1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086
          TabOrder = 7
        end
        object date_roz: TDateTimePicker
          Left = 688
          Top = 88
          Width = 193
          Height = 23
          Date = 45697.000000000000000000
          Time = 0.438559537040418900
          TabOrder = 8
        end
        object mesto_roz: TLabeledEdit
          Left = 904
          Top = 40
          Width = 145
          Height = 23
          EditLabel.Width = 97
          EditLabel.Height = 15
          EditLabel.Caption = #1057#1090#1088#1072#1085#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
          TabOrder = 9
        end
        object gender: TComboBox
          Left = 904
          Top = 88
          Width = 145
          Height = 23
          TabOrder = 10
          Text = #1055#1086#1083
          Items.Strings = (
            #1052#1091#1078#1089#1082#1086#1081
            #1046#1077#1085#1089#1082#1080#1081)
        end
        object GroupBox2: TGroupBox
          Left = 16
          Top = 125
          Width = 425
          Height = 188
          Caption = #1044#1086#1082#1091#1084#1077#1085#1090', '#1091#1076#1086#1089#1090#1086#1074#1077#1088#1103#1102#1097#1080#1081' '#1083#1080#1095#1085#1086#1089#1090#1100':'
          TabOrder = 11
          object Label2: TLabel
            Left = 11
            Top = 69
            Width = 69
            Height = 15
            Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
          end
          object Label3: TLabel
            Left = 200
            Top = 72
            Width = 99
            Height = 15
            Caption = #1057#1088#1086#1082' '#1076#1077#1081#1089#1090#1074#1080#1103' '#1076#1086':'
          end
          object doc_type_edit: TLabeledEdit
            Left = 11
            Top = 40
            Width = 121
            Height = 23
            EditLabel.Width = 81
            EditLabel.Height = 15
            EditLabel.Caption = #1042#1080#1076' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
            TabOrder = 0
          end
          object ser_edit: TLabeledEdit
            Left = 152
            Top = 40
            Width = 89
            Height = 23
            EditLabel.Width = 34
            EditLabel.Height = 15
            EditLabel.Caption = #1057#1077#1088#1080#1103
            TabOrder = 1
          end
          object num_edit: TLabeledEdit
            Left = 264
            Top = 40
            Width = 121
            Height = 23
            EditLabel.Width = 38
            EditLabel.Height = 15
            EditLabel.Caption = #1053#1086#1084#1077#1088
            TabOrder = 2
          end
          object doc_date: TDateTimePicker
            Left = 11
            Top = 88
            Width = 166
            Height = 23
            Date = 45697.000000000000000000
            Time = 0.456553483796597000
            TabOrder = 3
          end
          object doc_date_exp: TDateTimePicker
            Left = 199
            Top = 88
            Width = 186
            Height = 23
            Date = 45697.000000000000000000
            Time = 0.457811631946242400
            TabOrder = 4
          end
        end
        object telEdit: TLabeledEdit
          Left = 1064
          Top = 40
          Width = 121
          Height = 23
          EditLabel.Width = 90
          EditLabel.Height = 15
          EditLabel.Caption = #1058#1077#1083'., ('#1073#1077#1079' +7 '#1080' 8)'
          MaxLength = 10
          NumbersOnly = True
          TabOrder = 12
        end
        object GroupBox3: TGroupBox
          Left = 488
          Top = 140
          Width = 561
          Height = 198
          TabOrder = 13
          object Label4: TLabel
            Left = 224
            Top = 16
            Width = 66
            Height = 15
            Caption = #1044#1072#1090#1072' '#1079#1072#1087#1080#1089#1080
            Enabled = False
          end
          object Label5: TLabel
            Left = 16
            Top = 112
            Width = 177
            Height = 15
            Caption = #1047#1072#1082#1086#1085#1085#1099#1081' '#1087#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100' ('#1060#1048#1054')'
            Enabled = False
          end
          object Label9: TLabel
            Left = 152
            Top = 168
            Width = 224
            Height = 15
            Caption = #1076#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103' '#1079#1072#1082#1086#1085#1085#1086#1075#1086' '#1087#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1103
            Enabled = False
          end
          object num_akt_kids: TLabeledEdit
            Left = 16
            Top = 32
            Width = 177
            Height = 23
            EditLabel.Width = 172
            EditLabel.Height = 15
            EditLabel.Caption = #1085#1086#1084#1077#1088' '#1079#1072#1087#1080#1089#1080' '#1072#1082#1090#1072' '#1086' '#1088#1086#1078#1076#1077#1085#1080#1080
            Enabled = False
            TabOrder = 0
          end
          object date_num_kids: TDateTimePicker
            Left = 224
            Top = 32
            Width = 113
            Height = 23
            Date = 45697.000000000000000000
            Time = 0.488013761576439700
            Enabled = False
            TabOrder = 1
          end
          object name_org_kids_edit: TLabeledEdit
            Left = 16
            Top = 80
            Width = 521
            Height = 23
            EditLabel.Width = 124
            EditLabel.Height = 15
            EditLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1072
            Enabled = False
            TabOrder = 2
          end
          object fam_k_edit: TEdit
            Left = 16
            Top = 133
            Width = 121
            Height = 23
            TabOrder = 3
            TextHint = #1060#1072#1084#1080#1083#1080#1103
          end
          object name_k_edit: TEdit
            Left = 191
            Top = 133
            Width = 121
            Height = 23
            TabOrder = 4
            TextHint = #1048#1084#1103
          end
          object oth_k_edit: TEdit
            Left = 350
            Top = 136
            Width = 121
            Height = 23
            Enabled = False
            TabOrder = 5
            TextHint = #1054#1090#1095#1077#1089#1090#1074#1086
          end
          object date_roz_k: TDateTimePicker
            Left = 16
            Top = 168
            Width = 121
            Height = 23
            Date = 45698.000000000000000000
            Time = 0.820852800927241300
            Enabled = False
            TabOrder = 6
          end
        end
        object kids_check: TCheckBox
          Left = 504
          Top = 140
          Width = 161
          Height = 17
          Caption = #1047#1072#1087#1080#1089#1100' '#1072#1082#1090#1072' '#1086' '#1088#1086#1078#1076#1077#1085#1080#1080
          TabOrder = 14
          OnClick = kids_checkClick
        end
        object taegetvisit: TRadioGroup
          Left = 1072
          Top = 88
          Width = 289
          Height = 225
          Caption = #1062#1077#1083#1100' '#1074#1098#1077#1079#1076#1072
          ItemIndex = 0
          Items.Strings = (
            #1057#1083#1091#1078#1077#1073#1085#1072#1103
            #1058#1091#1088#1080#1079#1084
            #1044#1077#1083#1086#1074#1072#1103
            #1059#1095#1077#1073#1072
            #1056#1072#1073#1086#1090#1072
            #1063#1072#1089#1090#1085#1072#1103
            #1058#1088#1072#1085#1079#1080#1090
            #1043#1091#1084#1072#1085#1080#1090#1072#1088#1085#1072#1103
            #1048#1085#1072#1103)
          TabOrder = 15
        end
        object GroupBox4: TGroupBox
          Left = 16
          Top = 336
          Width = 425
          Height = 329
          TabOrder = 16
          object label6: TLabel
            Left = 16
            Top = 192
            Width = 69
            Height = 15
            Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
            Enabled = False
          end
          object Label7: TLabel
            Left = 144
            Top = 192
            Width = 99
            Height = 15
            Caption = #1057#1088#1086#1082' '#1076#1077#1081#1089#1090#1074#1080#1103' '#1076#1086':'
            Enabled = False
          end
          object type_doc_pravo: TRadioGroup
            Left = 16
            Top = 32
            Width = 369
            Height = 97
            Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
            Enabled = False
            ItemIndex = 0
            Items.Strings = (
              #1042#1080#1079#1072
              #1042#1053#1046
              #1056#1042#1055
              #1056#1042#1055' '#1074' '#1094#1077#1083#1103#1093' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1103)
            TabOrder = 0
          end
          object doc_prv_ser: TLabeledEdit
            Left = 16
            Top = 152
            Width = 97
            Height = 23
            EditLabel.Width = 34
            EditLabel.Height = 15
            EditLabel.Caption = #1057#1077#1088#1080#1103
            Enabled = False
            MaxLength = 6
            TabOrder = 1
          end
          object doc_prv_num: TLabeledEdit
            Left = 136
            Top = 152
            Width = 145
            Height = 23
            EditLabel.Width = 38
            EditLabel.Height = 15
            EditLabel.Caption = #1053#1086#1084#1077#1088
            Enabled = False
            TabOrder = 2
          end
          object doc_prv_date: TDateTimePicker
            Left = 16
            Top = 208
            Width = 108
            Height = 23
            Date = 45697.000000000000000000
            Time = 0.568884953703673100
            Enabled = False
            TabOrder = 3
          end
          object doc_prv_exp: TDateTimePicker
            Left = 144
            Top = 208
            Width = 137
            Height = 23
            Date = 45697.000000000000000000
            Time = 0.570035983793786700
            Enabled = False
            TabOrder = 4
          end
          object doc_prv_exp_check: TCheckBox
            Left = 264
            Top = 192
            Width = 97
            Height = 17
            TabOrder = 5
          end
        end
        object doc_pravo_check: TCheckBox
          Left = 27
          Top = 319
          Width = 288
          Height = 49
          Caption = #1042#1080#1076' '#1080' '#1088#1077#1082#1074#1080#1079#1080#1090#1099' '#1076#1086#1082#1091#1084#1077#1085#1090#1072', '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1072#1102#1097#1077#1075#1086' '#1087#1088#1072#1074#1086' '#1085#1072' '#1087#1088#1077#1073#1099#1074#1072#1085#1080#1077
          TabOrder = 17
          WordWrap = True
          OnClick = doc_pravo_checkClick
        end
        object GroupBox5: TGroupBox
          Left = 488
          Top = 344
          Width = 561
          Height = 321
          Caption = #1040#1076#1088#1077#1089' '#1084#1077#1089#1090#1072' '#1087#1088#1077#1073#1099#1074#1072#1085#1080#1103
          TabOrder = 18
          object adres_edit: TMemo
            Left = 16
            Top = 32
            Width = 521
            Height = 89
            TabOrder = 0
          end
          object type_pomez: TRadioGroup
            Left = 16
            Top = 135
            Width = 185
            Height = 58
            Caption = #1090#1080#1087' '#1087#1086#1084#1077#1097#1077#1085#1080#1103
            ItemIndex = 0
            Items.Strings = (
              #1078#1080#1083#1086#1077
              #1080#1085#1086#1077
              #1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103)
            TabOrder = 1
          end
          object doc_base_edit: TLabeledEdit
            Left = 240
            Top = 168
            Width = 297
            Height = 23
            EditLabel.Width = 94
            EditLabel.Height = 15
            EditLabel.Caption = #1042#1099#1087#1080#1089#1082#1072' '#1080#1079' '#1045#1043#1056#1053
            TabOrder = 2
          end
        end
        object GroupBox6: TGroupBox
          Left = 1072
          Top = 344
          Width = 289
          Height = 209
          Caption = #1052#1080#1075#1088#1072#1094#1080#1086#1085#1085#1072#1103' '#1082#1072#1088#1090#1072
          TabOrder = 19
          object mgr_ser: TLabeledEdit
            Left = 16
            Top = 40
            Width = 121
            Height = 23
            EditLabel.Width = 34
            EditLabel.Height = 15
            EditLabel.Caption = #1057#1077#1088#1080#1103
            TabOrder = 0
          end
          object mgr_num: TLabeledEdit
            Left = 16
            Top = 88
            Width = 201
            Height = 23
            EditLabel.Width = 38
            EditLabel.Height = 15
            EditLabel.Caption = #1053#1086#1084#1077#1088
            TabOrder = 1
          end
        end
        object date_in: TDateTimePicker
          Left = 1072
          Top = 584
          Width = 186
          Height = 23
          Date = 45698.000000000000000000
          Time = 0.799978391201875600
          TabOrder = 20
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1057#1090#1088#1072#1085#1080#1094#1072' 2'
      ImageIndex = 1
      object GroupBox7: TGroupBox
        Left = 0
        Top = 0
        Width = 1498
        Height = 798
        Align = alClient
        Caption = #1057#1042#1045#1044#1045#1053#1048#1071' '#1054' '#1055#1056#1048#1053#1048#1052#1040#1070#1065#1045#1049' '#1057#1058#1054#1056#1054#1053#1045
        TabOrder = 0
        object fam_p2: TLabeledEdit
          Left = 32
          Top = 48
          Width = 265
          Height = 23
          EditLabel.Width = 51
          EditLabel.Height = 15
          EditLabel.Caption = #1060#1072#1084#1080#1083#1080#1103
          TabOrder = 0
        end
        object nam_p2: TLabeledEdit
          Left = 32
          Top = 104
          Width = 265
          Height = 23
          EditLabel.Width = 24
          EditLabel.Height = 15
          EditLabel.Caption = #1048#1084#1103
          TabOrder = 1
        end
        object oth_p2: TLabeledEdit
          Left = 32
          Top = 160
          Width = 265
          Height = 23
          EditLabel.Width = 51
          EditLabel.Height = 15
          EditLabel.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
          TabOrder = 2
        end
        object GroupBox8: TGroupBox
          Left = 360
          Top = 48
          Width = 521
          Height = 135
          Caption = #1044#1086#1082#1091#1084#1077#1085#1090', '#1091#1076#1086#1089#1090#1086#1074#1077#1088#1103#1102#1097#1080#1081' '#1083#1080#1095#1085#1086#1089#1090#1100':'
          TabOrder = 3
          object doc_type_p2: TLabeledEdit
            Left = 16
            Top = 32
            Width = 121
            Height = 23
            EditLabel.Width = 81
            EditLabel.Height = 15
            EditLabel.Caption = #1042#1080#1076' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
            TabOrder = 0
          end
          object doc_ser_p2: TLabeledEdit
            Left = 176
            Top = 32
            Width = 121
            Height = 23
            EditLabel.Width = 34
            EditLabel.Height = 15
            EditLabel.Caption = #1057#1077#1088#1080#1103
            TabOrder = 1
          end
          object doc_num_p2: TLabeledEdit
            Left = 312
            Top = 32
            Width = 153
            Height = 23
            EditLabel.Width = 38
            EditLabel.Height = 15
            EditLabel.Caption = #1053#1086#1084#1077#1088
            TabOrder = 2
          end
          object date_doc_p2: TLabeledEdit
            Left = 16
            Top = 80
            Width = 121
            Height = 23
            EditLabel.Width = 69
            EditLabel.Height = 15
            EditLabel.Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
            TabOrder = 3
          end
          object date_doc_exp_p2: TLabeledEdit
            Left = 176
            Top = 80
            Width = 121
            Height = 23
            EditLabel.Width = 69
            EditLabel.Height = 15
            EditLabel.Caption = #1076#1077#1081#1089#1090#1074#1091#1077#1090' '#1076#1086
            TabOrder = 4
          end
        end
        object GroupBox9: TGroupBox
          Left = 32
          Top = 256
          Width = 849
          Height = 177
          Caption = #1052#1077#1089#1090#1086' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072
          TabOrder = 4
          object adress_v_p2: TMemo
            Left = 16
            Top = 24
            Width = 801
            Height = 129
            TabOrder = 0
          end
        end
        object Button1: TButton
          Left = 696
          Top = 504
          Width = 185
          Height = 25
          Caption = #1057#1086#1079#1076#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
          TabOrder = 5
          OnClick = Button1Click
        end
        object RadioGroup1: TRadioGroup
          Left = 32
          Top = 463
          Width = 233
          Height = 66
          Caption = #1060#1086#1088#1084#1072#1090' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          ItemIndex = 1
          Items.Strings = (
            'PDF'
            'MS Excel (xlsx)')
          TabOrder = 6
        end
        object type_org_p2: TRadioGroup
          Left = 32
          Top = 192
          Width = 265
          Height = 58
          Caption = #1058#1080#1087' '#1087#1088#1080#1085#1080#1084#1072#1102#1097#1077#1081' '#1089#1090#1086#1088#1086#1085#1099
          ItemIndex = 1
          Items.Strings = (
            #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
            #1060#1080#1079#1080#1095#1077#1089#1082#1086#1077' '#1083#1080#1094#1086)
          TabOrder = 7
        end
      end
    end
  end
end
