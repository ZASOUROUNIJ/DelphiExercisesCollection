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
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  System.Actions,
  Vcl.ActnList;

type
  TMainView = class(TForm)
    pnlMain: TPanel;
    btnConvert: TButton;
    edtAgeInYears: TEdit;
    edtTitle: TLabel;
    ActionList1: TActionList;
    actConvert: TAction;
    procedure actConvertExecute(Sender: TObject);
  private
    { Private declarations }
    function ConvertYearsInDays(aAge:string):Integer;
  public
    { Public declarations }
  end;

var
  MainView: TMainView;

implementation

{$R *.dfm}

procedure TMainView.actConvertExecute(Sender: TObject);
var
  LDays : Integer;
begin
  LDays := ConvertYearsInDays(edtAgeInYears.Text);

  if LDays >= 0 then
    ShowMessage('total days: '+ IntToStr(LDays))
  else
    ShowMessage('Please, enter a valid number');
end;

function TMainView.ConvertYearsInDays(aAge: string):Integer;
var
  LYears: Integer;
begin
  Result := -1;

  if TryStrToInt(aAge, LYears) then
    result := LYears*365;
end;

end.
