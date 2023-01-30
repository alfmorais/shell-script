# Shell

- Interface entre o usuário e o sistema Unix/Linux
- Interpretador de Instruções

```
Usuário > Shell > Kernel > Hardware`
```

# Tipos de Shell

- **Bourne Shell (sh):** Shell original e padrão do Unix.
- **Bourne-Again Shell (bash):** Shell padrão no Linux Compatível com sh mas com melhorias. Também incorpora recursos do csh e ksh.
- **Korn Shell (ksh):** Também uma melhoria do bourne shell.
- **C Shell (csh):** Traz para o shell recursos da linguagem C.

Curso vai abordar o Bash.

# Comandos Linux

**cd** = Exibe o nome do diretório atual ou altera o diretório atual.

Exemplos:

```bash
cd arquivos
cd ../../
````

**ls** = Lista arquivo e diretórios.

Exemplos:

```bash
ls -ltr
ls -1
```

**ps** = Este comando exibe informações sobre os processos que estão executando na máquina.

Exemplos:

```bash
ps
```

**touch** = O Comando Touch do Linux é usado principalmente para criar arquivos vazios, além de alterar o registro de data e hora (timestamp) de arquivos ou pastas.

Exemplos:

```bash
touch requirements.txt
```

**--help** | **man** = O comando help serve para mostrar as opções disponíveis de um aplicativo e man é o visualizador manual do sistema; pode ser usado para exibir páginas de manual, rolar para cima e para baixo, procurar ocorrências de texto específico e outras funções úteis. Cada argumento dado ao homem é normalmente o nome de um programa , utilitário ou função .

Exemplos:

```bash
man ls
ls --help
```

**echo** = Este comando mostra texto na saída padrão seguido por uma nova linha.

Exemplos:

```bash
echo Joaquim
```

- n = Não quebra linha no comando.
- e = Habilita inserir paramêtros especiais.

**mkdir** = O comando mkdir no Linux cria um ou mais diretórios abaixo do diretório local. Você precisa ter permissões para escrita no diretório para executar o mkdir.

Exemplos:

```bash
mkdir folder1
```

- p = Cria o diretório especificado mesmo que o diretório pai não exista.

**rm** = O comando rm no Linux é utilizado para remover arquivos ou diretórios.

Exemplos:

```bash
rm -r folder1
rm -f arquivo-inexistente
```

**sleep** = Podemos forçar a espera de um certo período de tempo entre a execução de comandos usando o comando sleep. É um comando muito útil em scripts, por exemplo, nós quais temos tarefas que devem ser executadas após um certo tempo especificado.

Exemplos:

```bash
sleep 10
```

# Comandos para manipular arquivo

**cat** = O comando cat permite a criação de novos arquivos de texto de forma rápida. 

Exemplos:

```bash
cat arquivo.txt
```

- -A = Indica caracteres especiais.
- -b = Indica indice das linhas.

**tac** = tac (que é ” cat ” para trás) concatena cada FILE para a saída padrão, exatamente como o comando cat , mas ao contrário: linha por linha, imprimindo a última linha primeiro. Isso é útil (por exemplo) para examinar um arquivo de log cronológico no qual a última linha do arquivo contém as informações mais recentes.

Exemplos:

```bash
tac arquivo.txt
```

**tail** = O comando tail é utilizado para imprimir os últimos números N ou tails de uma entrada. Geralmente, ele exibe, ou imprime, os últimos 10 números do arquivo. Se utilizarmos em um único nome de arquivo, dados de cada arquivo procedem de seu nome de arquivo com um header.

Exemplos:

```bash
tail arquivo.txt
```

- n5 = Indica a quantidade de linhas que imprime na tela.

**head** = O comando head é usado para ver as primeiras linhas de um arquivo de texto. Por padrão, ele vai mostrar as primeiras 10 linhas, mas você pode mudar essa quantidade para qualquer outra. 

Exemplos:

```bash
head -n10 arquivo.txt
head -c10 arquivo.txt
```

- n5 = Indica a quantidade de linhas que imprime na tela.
- c5 = Indica a quantidade de caracteres que imprime na tela.

**wc** = O comando wc no Linux mostra as linhas, palavras e número de caracteres em um arquivo, nesta ordem. Suponha que você quer contar o número de linhas, palavras ou caracteres de um arquivo. O comando wc pode ser usado para contar as linhas, palavras e caracteres de um ou mais arquivos.

```bash
wc arquivo.txt
wc -l arquivo.txt
wc -w arquivo.txt
wc -m arquivo.txt
wc -c arquivo.txt
wc arquivo*
```

- -l = Número de linhas
- -w = Número de palavras
- -m = Número de caracteres
- -c = Número de bytes
- '*'  = Conta de todos os arquivos que possuem o prefixo alunos

**|** = O Pipe é um comando usado em sistemas operacionais GNU/Linux que permite usar dois ou mais comandos, de forma que a saída de um comando sirva como entrada para o próximo. Em resumo, a saída de cada processo diretamente como entrada para o próximo como um pipeline. O símbolo '|' denota um cano.

Exemplos:

```bash
tail -n5 arquivo.txt |wc -w
```

**sort** = O comando sort é utilizado para organizar os dados dentro de um arquivo, de acordo com a necessidade do usuário, e exibir esses dados classificados na saída padrão, ou redirecionar essa saída a outro arquivo.

Exemplos:

```bash
sort arquivo.txt
```

- -r = Ordernação Reversa
- -k = Indica segundo campo para ordernação.
- -t":" = Indica o caracter que delimita o arquivo.
- -g = Considera númeração na ordernação.

**uniq** = Em sistemas operacionais do tipo Unix, o comando uniq reporta ou filtra linhas repetidas em um arquivo.

Exemplos:

```bash
uniq arquivos.txt
```

- -u = Mostra somente que repetiu apenas uma vez.
- -d = Mostra que apareceu repetidas vezes.
- -c = Mostra a contagem de repetidas.

**tr** = O comando TR é uma ótima ferramenta de manipulação de caracteres e símbolos. Aprenda a utiliza-lo de uma maneira rápida e prática.

Exemplos:

```bash
cat alunos.txt | tr a-z A-Z
```

- -d = Deleta caracteres

**cut** = O comando cut pode ser usado para mostrar apenas seções específicas de um arquivo de texto ou da saída de outros comandos.

Exemplos:

```bash
cat alunos.txt | cut -c1,2,3
```

**diff** = O comando diff no Linux serve para mostrar a diferença entre o conteúdo de um arquivo e outro. Muito útil por exemplo para comparar arquivos de configuração. 

Exemplos: 

```bash
diff alunos.txt alunos3.txt
```

**grep** = O Comando Grep é uma das ferramentas mais úteis e versáteis disponível no Unix. Ele procura por padrões especificados pelo usuário dentro de arquivos de texto. Em outras palavras, você pode pesquisar por palavras ou padrões e a linha ou linhas que serão exibidas.

Exemplos:

```bash
grep Claudia alunos.txt
```

```bash
Output control:
  -m, --max-count=NUM       stop after NUM selected lines
  -b, --byte-offset         print the byte offset with output lines
  -n, --line-number         print line number with output lines
      --line-buffered       flush output on every line
  -H, --with-filename       print file name with output lines
  -h, --no-filename         suppress the file name prefix on output
      --label=LABEL         use LABEL as the standard input file name prefix
  -o, --only-matching       show only nonempty parts of lines that match
  -q, --quiet, --silent     suppress all normal output
      --binary-files=TYPE   assume that binary files are TYPE;
                            TYPE is 'binary', 'text', or 'without-match'
  -a, --text                equivalent to --binary-files=text
  -I                        equivalent to --binary-files=without-match
  -d, --directories=ACTION  how to handle directories;
                            ACTION is 'read', 'recurse', or 'skip'
  -D, --devices=ACTION      how to handle devices, FIFOs and sockets;
                            ACTION is 'read' or 'skip'
  -r, --recursive           like --directories=recurse
  -R, --dereference-recursive  likewise, but follow all symlinks
      --include=GLOB        search only files that match GLOB (a file pattern)
      --exclude=GLOB        skip files that match GLOB
      --exclude-from=FILE   skip files that match any file pattern from FILE
      --exclude-dir=GLOB    skip directories that match GLOB
  -L, --files-without-match  print only names of FILEs with no selected lines
  -l, --files-with-matches  print only names of FILEs with selected lines
  -c, --count               print only a count of selected lines per FILE
  -T, --initial-tab         make tabs line up (if needed)
  -Z, --null                print 0 byte after FILE name
```

**fgrep** = Em sistemas operacionais do tipo Unix, o comando fgrep procura por cadeias de caracteres fixos em um arquivo ou arquivos. “Caractere fixo” significa que a string é interpretada literalmente – os metacaracteres não existem e, portanto, expressões regulares não podem ser usadas.

**egrep** = Nos sistemas operacionais do tipo Unix, o comando egrep procura um padrão de texto, usando expressões regulares estendidas para executar a correspondência. Executar o egrep é equivalente a executar o grep com a opção -E .

**sed** = O comando sed é um editor poderoso de fluxo de textos, utilizado para filtrá-los e transformá-los. 

Exemplos:

```bash
sed '1,2 d' arquivos.txt
```

**more** = O comando more pode ser usado como comando para leitura de arquivos que ocupem mais de uma tela. Quando toda a tela é ocupada, o more efetua uma pausa e permite que você pressione Enter ou espaço para continuar avançando no arquivo sendo visualizado.

Exemplos:

```bash
more alunos.txt
```

**less** = O comando less pode ser usado como comando para leitura de arquivos que ocupem mais de uma tela. Quando toda a tela é ocupada, o less efetua uma pausa (semelhante ao more ) e permite que você pressione Seta para Cima e Seta para Baixo ou PgUP/PgDown para fazer o rolamento da página. Para sair do less pressione q.

Exemplos:

```bash
less alunos.txt
```

**find** = O comando FIND é um poderoso comando para encontrar informações no Linux, seja texto dentro de arquivo ou arquivos baseados em tamanho/permissão. O FIND é um poderoso comando para você encontrar informações no Linux.

Exemplos:

```bash
find ./ -name alunos.txt
```

# Execução Sequencial de Comandos do Shell

; -> Após os comandos:

Exemplo:
```bash
ls ; find ./ -name alunos* ; pwd
```

&& -> Executa o segundo comando somente se o primeiro estiver certo. 

Exemplos:
```bash
ls ; find ./ -name alunos* ; pwd
```


|| -> Executa condição OR.

# Redirecionamento de Entrada e Saída

Programa apresenta uma entrada (STDIN) processa essa entrada e gera uma saída (STDOUT) ou erro (STDERR).

# Variaveis no Shell

```bash
NOME=Alfredo
export NOME
```

