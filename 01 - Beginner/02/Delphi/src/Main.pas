unit Main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  StrUtils;

type
  TMainView = class(TForm)
    edtFindNemo: TEdit;
    lblTitle: TLabel;
    btnFindNemo: TButton;
    procedure btnFindNemoClick(Sender: TObject);
  private
    { Private declarations }
    function FindNemo(aPhrase: string): string;
  public
    { Public declarations }
  end;

var
  MainView: TMainView;

implementation

{$R *.dfm}

procedure TMainView.btnFindNemoClick(Sender: TObject);
begin
  ShowMessage(FindNemo(edtFindNemo.Text));
end;

function TMainView.FindNemo(aPhrase: string): string;
var
  LFoundWord: string;
  LPosition, LWordNumber, LCurrentPosition: Integer;
begin
  Result := 'I can''t find Nemo :(';
  LFoundWord := 'Nemo';

  LPosition := Pos(LFoundWord, aPhrase);

  if LPosition > 0 then
  begin
    LWordNumber := 0;
    LCurrentPosition := 0;

    repeat
      Inc(LWordNumber);

      // Encontrar a próxima posição de espaço em branco
      LCurrentPosition := Pos(' ', aPhrase, LCurrentPosition + 1);

      // Se não houver mais espaço em branco, usamos o comprimento total da string
      if LCurrentPosition = 0 then
        LCurrentPosition := Length(aPhrase);

    until LCurrentPosition >= LPosition;

    Result := 'I found Nemo at ' + IntToStr(LWordNumber);
  end;
end;

end.
