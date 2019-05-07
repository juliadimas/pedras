unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lblista: TListBox;
    btinserir: TButton;
    btdeletar: TButton;
    btatualizar: TButton;
    ednome: TEdit;
    edtipo: TEdit;
    edvalor: TEdit;
    edsalvar: TEdit;
    btsalvar: TButton;
    lb_nome: TLabel;
    lb_tipo: TLabel;
    lb_valor: TLabel;
    lb_arquivo: TLabel;
    procedure btinserirClick(Sender: TObject);
    procedure btdeletarClick(Sender: TObject);
    procedure btatualizarClick(Sender: TObject);
    procedure btsalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
type
Tpedras = class(TObject)
    Nome, tipo, valor: string;
  end;
var pedra : Tpedras;
    ArquivoSalvo : TextFile;




{$R *.dfm}

procedure TForm1.btatualizarClick(Sender: TObject);
begin
 lblista.Clear;
 lblista.Items.Add(ednome.text);
 lblista.Items.Add(edtipo.text);
 lblista.Items.Add(edvalor.text);
end;

procedure TForm1.btdeletarClick(Sender: TObject);
begin
lblista.DeleteSelected;
end;

procedure TForm1.btinserirClick(Sender: TObject);
begin
pedra := Tpedras.Create;
pedra.nome:= Ednome.Text;
pedra.tipo := Edtipo.Text;
pedra.valor := Edvalor.Text;


if (Ednome.Text <> '') and (Edtipo.Text <> '') and (Edvalor.Text <> '') then
begin
lblista.Items.Add(ednome.text);
lblista.Items.Add(edtipo.text);
lblista.Items.Add(edvalor.text);
 end
 else
 begin
  showmessage ('CAMPOS VAZIOS! preencha-os');
  end;
  end;


procedure TForm1.btsalvarClick(Sender: TObject);
begin
  if (Edsalvar.Text <> '') then
begin
  AssignFile(ArquivoSalvo, Edsalvar.text+'.txt' );
  Rewrite(ArquivoSalvo);
  WriteLn(ArquivoSalvo,'nome: '+pedra.Nome);
  WriteLn(ArquivoSalvo,'tipo: '+pedra.tipo);
  WriteLn(ArquivoSalvo,'valor: '+pedra.valor);
  CloseFile(ArquivoSalvo);
  ShowMessage('Arquivo Salvo');
   end
   else
   begin
     showmessage ('PREENCHA O CAMPO');
   end;
end;


end.
