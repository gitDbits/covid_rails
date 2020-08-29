# Covid19 Rails

Projeto apresentado na semana científica da Farol - Faculdade de Rolim de Moura - Rondônia, o projeto faz parte da palestra  com o seguinte tema: Como o Ruby on Rails "salvou a minha vida" por Diego Noronha;

- Estrutura da palestra

![Apresentaçao palestra](https://covidrailsnoronha.herokuapp.com/users/sign_in)

Objetivo: deverá ser criado um portal que liste os caso de COVID  no Brasil por estados do

- Quantidade total de casos

- Quantidade de mortos

- Quantidade de curados

- Quantidade de suspeitos 

- Deverá constar uma interface amigável através de graficos para facilitar a interpretação do usuário.

- Deverá possuir um  controle de usuários ao acessar  a aplicação.

- Realizar o deploy da aplicação para que o cliente possa visualizar o projeto

- Deverá ser criado um repositório do projeto no GITHUB

  

## Roteiro da criação do projeto

- Criar um novo projeto e configurações inicias

  - Rails new covid_rails -B -T --no-document -d postgresql
  - Configure o seu arquivo database.yml
  - rails db:create -> Criar o banco de dados
  - gem 'awesome_print', '~> 1.8'  -> Facilitar o visual do console

- Configurando a gem devise -> Caso tenha alguma dúvida, basta seguir o README no Github

  - Adicionar a gem devise no Gemfile
  - rails g devise:install -> Executar a instalação da GEM
  - rails g devise User -> Criar o model chamado User, por padrão ele vem como Devise
  - https://gist.github.com/withoutwax/46a05861aa4750384df971b641170407 -> Caso seja necessário add algum novo campo
  - Descomentar o trackable e o config scope views deixar para true
  - rails g devise:views users
  - rails db:migrate
  - Reiniciar o serviço localhost do Rails para validar as alterações(um initializer)
  - before_action authenticate_user! -> No application_controller

- Home do projeto

  - rails g controller Home index -> Criar um controller home com a action index para ser o nosso root_path

- Alterar o estilo do projeto

  - CSS Bootstrap e Fontawesome

    ```html
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    ```

  - JS Boostrap e Jquery

    ```html
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    ```

- Configurar a aplicação para PT-BR

  - https://gist.github.com/gitDbits/76c1bcbddcd574f970879333a853dddb -> Gist no github
  - config.i18n.default_locale = 'pt-BR' -> Configurar no application.rb;
  - Reniciar o servidor localhost Rails para confirmar a alteração;

- Alteração básica nas views do devise

  - Alterar a new.html.erb -> Tela de login
  - Alterar a registration.html.erb -> Tela de  cadastro
    - ​	Alterar a cor dos notices

- Criar um menu básico

  - _header.html.erb -> Partial básica para um menu que será usado em toda a aplicação
  - <%= render 'layouts/header' if user_signed_in? %> ->  Reinderizar o menu, porém somente se o usuário estiver logado

- Criar um scaffold para o Estado

  - rails g scaffold State name uf --no-stylesheets
  - Criar um scaffold para os Casos de Covid
    - rails g scaffold CovidCase amount:bigint death:bigint suspect:bigint cured:bigint state:references --no-stylesheets

- Rodar o arquivo seed para popular o banco de dados

- Alterar view states e covid states

  - Alterar textos para pt-BR
  - Alterar botões 
  - Alterar table para deixar com os ícones e cores diferentes
  - Colocar lista de estados em ordem alfabética

- Implementado gráficos

  - gem 'apexcharts', '~> 0.1.9' -> Mostrar o README da gem https://github.com/styd/apexcharts.rb -> Web Support

  - ```
    yarn add apexcharts
    ```

  - Adicionar no application.js

  - Configurando o controller Home

    - Vamos criar um atributo que calcule o tal de caso por estados e ordene do estado com maior número de casos

    ```ruby
    @list_cases_states = CovidCase.joins(:state).group("states.name")
    ```

- Criando os helpers

  - Vamos criar a series e o  options do Gráfico que mostra o total de casos por estados

    ```ruby
    def series_cases_states
    	[
    		{ name: "Total de casos",  data: @amount_cases_states.sum(:amount).sort_by {|k, v| -v } }
    	]
    end
    
    def options_cases_states
        [
            { 
              title: '',
              subtitle: '',
              xtitle: 'UF',
              ytitle: 'Total de casos',
              stacked: true,
              colors: ['#e53242']
            }   
        ]
    end
    ```

- Agora vamos criar o gráfico onde demostra total de mortes x curados x suspeito

  ​	

  ```ruby
  def series_detail_cases
      [
        { name: "Total mortes", data: @list_cases_states.sum(:death) },
        { name: "Total curados", data: @list_cases_states.sum(:cured) },
        { name: "Total suspeito", data: @list_cases_states.sum(:suspect) }
    end
  
    def options_details_cases
      { 
        title: '',
        subtitle: '',
        xtitle: 'UF',
        ytitle: 'Mortes x Curados x Suspeito',
        colors: ['#EC7063', '#1ABC9C', '#F4D03F']
      }   
    end
  ```



- Publicar o projeto no Heroku
  - https://devcenter.heroku.com/articles/getting-started-with-rails6
- Publicar o projeto no GITHUB
  - Criar o projeto no gitHub e pegar o remote de lá
