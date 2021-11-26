Feature: Executar testes funcionais na API do South Park

Background: Executa antes de cada teste
    * def url_base = "https://spapi.dev/api/"

# Primeiro cenario de teste
Scenario: Verificar o retorno com sucesso da API com dados validos de requisicao
    Given url url_base
    And path 'characters/37'
    When method get
    Then status 200

# Segundo cenario de teste (negativo)
Scenario: Verificar o retorno com sucesso da API com dados invalidos de requisicao
    Given url url_base
    And path 'charactersasfasfasf/37'
    When method get
    Then status 404

# Terceiro cenario de teste
Scenario: Verificar o retorno com sucesso do episodio 67 com dados válidos de requisicao

    Given url url_base
    And path 'episodes/67'
    When method get
    Then status 200
    And match response.data.name == "Cripple Fight"
    And match response.data.season == 5
    And match response.data.episode == 2

# Quarto cenario de teste
Scenario: Verificar o retorno com sucesso com dados válidos de requisicao caso o Gerald Broflovski for pai do personagem 3

    Given url url_base
    And path 'characters/1'
    When method get
    Then status 200
    And match response.data.relatives[1].url == "https://spapi.dev/api/characters/3"
    And match response.data.relatives[1].relation == "Father"

# Quinto cenario de teste (negativo)
Scenario: Verificar o retorno com sucesso da API com erro de servidor

    Given url url_base
    And path 'characters?search=eric'
    When method get
    Then status 500

# Sexto cenario de teste
Scenario: Verificar o retorno com sucesso sobre a data de lancamento do episodio 13

    Given url url_base
    And path 'episodes/13'
    When method get
    Then status 200
    And match response.data.air_date == "1998-02-25"