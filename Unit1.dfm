object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Pascal Ping Pong'
  ClientHeight = 301
  ClientWidth = 444
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Ball: TShape
    Left = 208
    Top = 80
    Width = 25
    Height = 41
    Shape = stCircle
  end
  object Paddle: TShape
    Left = 144
    Top = 240
    Width = 161
    Height = 17
  end
  object Timer1: TTimer
    Interval = 30
    Left = 320
    Top = 184
  end
end
