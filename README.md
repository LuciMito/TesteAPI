# Lista de Exercícios - Teste de API com Karate de S206

O projeto foi feito utilizando uma API do South Park

01. Primeiramente para poder executar o projeto, é preciso ter o <code>Maven</code> e o <code>Java</code> instalados na sua máquina.

02. Com o terminal aberto, é necessário executar o seguinte comando:
```bash
    mvn clean test -f "pom.xml" -Dtest=ApiTestRunner "-Dkarate.options=src\test\java\examples\test_Dark_Magician\api.feature"
```
Com ele executado, vai ser criado um arquivo pom.xml e alguns testes padrões.

03. Com o projeto aberto, basta abrir o terminar da IDE e digitar o seguinte comando:
```bash
    mvn test -Dtest=SouthParkTestRunner
```

04. Quando executado o comando, o karate gera um arquivo html que pode ser aberto no navegador e verificar quais os testes que passaram.
