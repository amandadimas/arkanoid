unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Ball: TShape;
    Paddle: TShape;
    Timer1: TTimer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

  PaddleMoveAmount = 15;

  procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin

  // ---- Move left or right ---- //
  if key = VK_LEFT then begin

    if (Paddle.Left > PaddleMoveAmount ) then
      Paddle.Left := Paddle.Left - PaddleMoveAmount

    else if (paddle.Left > 0) then
      Paddle.Left := 0;


  end else if key = VK_RIGHT then begin

    if (Paddle.Left + Paddle.Width < ClientWidth - PaddleMoveAmount) then
      Paddle.Left := Paddle.Left + PaddleMoveAmount

    else if (Paddle.Left + Paddle.Width < ClientWidth) then
      Paddle.Left := ClientWidth - Paddle.Width;

  end;


end;

end.
