object MainForm: TMainForm
  Left = 597
  Top = 240
  Width = 1173
  Height = 640
  Caption = 'Livingstone, supongo?'
  Color = clBtnFace
  Constraints.MinWidth = 650
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 372
    Width = 1157
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 150
    Width = 1157
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object Workspace: TPanel
    Left = 0
    Top = 153
    Width = 1157
    Height = 219
    Align = alClient
    TabOrder = 0
    OnResize = WorkspaceResize
    object Display: TImage
      Left = 8
      Top = 8
      Width = 640
      Height = 400
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 375
    Width = 1157
    Height = 227
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 1
    object AnimGrid: TDrawGrid
      Left = 1
      Top = 1
      Width = 1155
      Height = 225
      Align = alClient
      ColCount = 120
      FixedCols = 0
      RowCount = 2
      TabOrder = 0
      OnDrawCell = AnimGridDrawCell
      ColWidths = (
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64)
    end
  end
  object ControlBar1: TControlBar
    Left = 0
    Top = 0
    Width = 1157
    Height = 30
    Align = alTop
    AutoSize = True
    TabOrder = 2
    object ToolBar1: TToolBar
      Left = 11
      Top = 2
      Width = 198
      Height = 22
      ButtonHeight = 20
      Caption = 'ToolBar1'
      EdgeBorders = []
      Flat = True
      TabOrder = 0
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 49
        Height = 20
        AutoSize = False
        Caption = #1047#1072#1076#1085#1080#1082': '
        Layout = tlCenter
      end
      object LocationCombo: TComboBox
        Left = 49
        Top = 0
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        OnChange = LocationComboChange
      end
    end
    object Button1: TButton
      Left = 222
      Top = 2
      Width = 75
      Height = 22
      Caption = #1041#1083#1086#1082#1080
      TabOrder = 1
      OnClick = ExportBlocks
    end
    object Button2: TButton
      Left = 310
      Top = 2
      Width = 89
      Height = 22
      Caption = #1058#1072#1081#1083#1099' (WORLD)'
      TabOrder = 2
      OnClick = ExportWorldTiles
    end
    object Button3: TButton
      Left = 412
      Top = 2
      Width = 93
      Height = 22
      Caption = #1058#1072#1081#1083#1099' (FOOTER)'
      TabOrder = 3
      OnClick = ExportFooterTiles
    end
    object Button4: TButton
      Left = 518
      Top = 2
      Width = 75
      Height = 22
      Caption = #1047#1072#1076#1085#1080#1082#1080
      TabOrder = 4
      OnClick = ExportBackgrounds
    end
    object Button5: TButton
      Left = 606
      Top = 2
      Width = 75
      Height = 22
      Caption = #1040#1085#1080#1084#1072#1094#1080#1103
      TabOrder = 5
      OnClick = ExportAnimations
    end
    object Button6: TButton
      Left = 694
      Top = 2
      Width = 75
      Height = 22
      Caption = #1051#1086#1082#1072#1094#1080#1080
      TabOrder = 6
      OnClick = ExportLocations
    end
  end
  object TileGrid: TDrawGrid
    Left = 0
    Top = 30
    Width = 1157
    Height = 120
    Align = alTop
    FixedCols = 0
    RowCount = 3
    TabOrder = 3
    OnDrawCell = TileGridDrawCell
  end
end
