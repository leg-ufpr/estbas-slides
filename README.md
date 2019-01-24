# estbas-slides

[![Build Status](https://travis-ci.org/leg-ufpr/estbas-slides.svg?branch=master)](https://travis-ci.org/leg-ufpr/estbas-slides)

## Slides de Estatística Básica

Esta página hospeda os slides com o conteúdo das seguintes disciplinas
de Estatística Básica oferecidas na UFPR:

- **CE001 - Bioestatística**
- **CE003 - Estatística II**
- **CE009 - Introdução à Estatística**
- **CE020 - Bioestatística**

Os slides foram elaborados e são de responsabilidade dos professores:

- [Elias Teixeira Krainski][], [LEG][]/DEST/UFPR
- [Fernando de Pol Mayer][], [LEG][]/DEST/UFPR
- [Wagner Hugo Bonat][], [LEG][]/DEST/UFPR

Os slides são baseados no livro:

- [Magalhães, MN](http://www.ime.usp.br/~marcos);
      [Lima, ACP](http://www.ime.usp.br/~acarlos).
      [Noções de Probabilidade e
      Estatística](http://www.ime.usp.br/~noproest). São Paulo: EDUSP,
      2015 (7ª edição).

### Arquivos

1. [Introdução à Análise Exploratória de dados](slides/01_Analise_Exploratoria.pdf)
2. [Probabilidades](slides/02_Probabilidades.pdf)
3. [Variáveis Aleatórias Discretas](slides/03_Variaveis_Discretas.pdf)
4. [Medidas Resumo](slides/04_Medidas_Resumo.pdf)
5. [Variáveis Bidimensionais](slides/05_Variaveis_Bidimensionais.pdf)
6. [Variáveis Aleatórias Contínuas](slides/06_Variaveis_Continuas.pdf)
7. Inferência Estatística
    a. [Propriedades de estimadores e distribuições
    amostrais](slides/07a_Estimacao.pdf)
    b. [Estimação por intervalo](slides/07b_Estimacao.pdf)
8. Inferência Estatística - [Testes de
   Hipóteses](slides/08_Teste_Hipotese.pdf)
9. [Regressão Linear Simples](slides/09_Regressao.pdf)


## Para gerar os PDFs

Os slides são criados usando [R Markdown][] com saída no formato Beamer.
O tema utilizado é o tema do LEG
([legtheme](https://github.com/leg-ufpr/legtheme)), que deve ser
instalado antes com

```r
devtools::install_github("leg-ufpr/legtheme")
```

Outros pacotes necessários, que são utilizados dentro dos slides são:
`xtable`, `latticeExtra`, `plyr`, `printr`, e `TeachingDemos`.

Para compilar um arquivo individualmente basta fazer

```r
library(rmarkdown)
render("arquivo.Rmd")
```

Para compilar todos os arquivos de uma só vez, use o script
[_build.R](slides/_build.R) em um terminal

```r
Rscript _build.R
```

## Para gerar o site

O site é todo construído usando apenas o [R Markdown][], por isso, o
código fonte está nos arquivos `Rmd`. Para gerar o site você precisará
das versões mais recentes dos pacotes `rmarkdown` e `knitr`.

1. Copie (clone ou fork) esse repositório
2. Abra o R na raíz, carregue os pacotes e renderize o site com
   `render_site()`

```r
library(rmarkdown)
render_site()
```

**Observações**:

- A publicação no site é automatizada através do
  [Travis](https://travis-ci.org). Os arquivos para essa automatização
  são [.travis.yml](./.travis.yml) (configura o build como se fosse um
  pacote do R), [_build.sh](./_build.sh) (roda o **rmarkdown**) na raíz
  do site, e [_deploy.sh](./_deploy.sh) (clona e gera o site diretamente
  no branch *gh-pages*).

### Licença

O conteúdo deste repositório, das páginas, e do material da disciplina
está está disponível por meio da [Licença Creative Commons 4.0][]
(Atribuição/NãoComercial/PartilhaIgual).

![Licença Creative Commons 4.0](https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png)


[Licença Creative Commons 4.0]: https://creativecommons.org/licenses/by-nc-sa/4.0/deed.pt_BR
[R Markdown]: http://rmarkdown.rstudio.com
