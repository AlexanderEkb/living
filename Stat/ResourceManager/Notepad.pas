unit Notepad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TNotepadForm = class(TForm)
    Memo: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NotepadForm: TNotepadForm;

implementation

{$R *.dfm}

procedure TNotepadForm.FormCreate(Sender: TObject);
begin
  Memo.Font.Name := 'Consolas';
  Memo.Font.Size := 11;
end;

procedure TNotepadForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr($01) then
    Memo.SelectAll
  else if Key = chr($1B) then
    Close;
end;

end.
