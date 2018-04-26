<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="./_resources/estiloPaginaInicial.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="./_imagens/favicon1.ico" />
        <script type="text/javascript" src="./_resources/domPaginaInicial.js"></script>
        <script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script>
        <link href="https://fonts.googleapis.com/css?family=Acme|Lobster" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Marck+Script" rel="stylesheet">
        <title>Pizzaria Donatello</title>
    </head>
    <body>
        <header class="static-header">
            <div class="inside-header">
                <nav>
                    <a href="#section1"><strong>Home</strong></a>
                    <a href="#section2"><strong>Promoções</strong></a>
                    <a href="#section3"><strong>Cardápio</strong></a>
                    <a href="#section4"><strong>Localização</strong></a>
                    <a href="#section5"><strong>Contato</strong></a>
                </nav>
            </div>
        </header>

        <header class="fixed-header">
            <div class="fheader__container">
                <nav>
                    <a href="#section1"><strong>Home</strong></a>
                    <a href="#section2"><strong>Promoções</strong></a>
                    <a href="#section3"><strong>Cardápio</strong></a>
                    <a href="#section4"><strong>Localização</strong></a>
                    <a href="#section5"><strong>Contato</strong></a>
                </nav>
            </div>
        </header>
        <div class="container-fluid">

            <div class="row justify-content-center">
                <div id="section1" class="col-xs-12 col-sm-12 col-md-10 col-lg-8 backgrounded section1">
                    <h1 class="fonte-lobster">Home</h1>
                    <hr/>
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <img class="img-fluid" src="./_imagens/pizzahome.jpg" alt="imagem de uma pizza">
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <p>A <strong>NAPOLITANA</strong> surge como uma nova opção no bairro juntando a tradição da pizza com a sofisticação informal. Adotando sempre o lema: “Atender bem para atender sempre” como sinônimo de qualidade.</p>
                            <p>Com investimento constante nas instalações, produtos e serviços, faz com que a <strong>NAPOLITANA</strong> seja considerada um novo clássico na terra das pizzarias.</p>
                            <p>Todos os recursos são colocados à disposição dos funcionários, para que a filosofia desde a fundação continue sempre a ser: SERVIR PIZZAS COM CARINHO, DEDICAÇÃO E ALEGRIA.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row justify-content-center">
                <div id="section2" class="col-xs-12 col-sm-12 col-md-10 col-lg-8 backgrounded section2">
                    <h1 class="fonte-lobster">Promoções</h1>
                    <hr/>
                    <c:forEach var="promocao" items="${promocoes}">
                        <div class="row justify-content-center">
                            <div class="paineis col-xs-12 col-sm-12 col-md-8 col-lg-6 border border-danger text-center">
                                <h2 class="text-danger fonte-acme">${promocao.nome}</h2>
                                <h3 class="text-dark fonte-acme">${promocao.descricao}</h3>
                                <h1 class="text-success fonte-acme">${promocao.preco}</h1>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>

            <div class="row justify-content-center">
                <div id="section3" class="col-xs-12 col-sm-12 col-md-10 col-lg-8 backgrounded section3">
                    <h1 class="fonte-lobster">Cardápio</h1>
                    <hr/>
                    <div class="row justify-content-center">
                        <div class="col-xs-12 col-sm-12 col-lg-8">
                            <button type="button" class="col-12 botoes-menu" data-toggle="modal" data-target="#modal-pizzas">
                                <img class="col-5" src="./_imagens/pizzasalgada.png" alt="Foto de uma pizza salgada"><h3>Clique para abrir as Pizzas Salgadas</h3>
                            </button>
                        </div>
                    </div>

                    <div class="row justify-content-center">
                        <div class="col-xs-12 col-sm-12 col-lg-8">
                            <button type="button" class="col-12 botoes-menu" data-toggle="modal" data-target="#modal-doces">
                                <img class="col-5" src="./_imagens/pizzadoce.png" alt="Foto de uma pizza doce"><h3>Clique para abrir as Pizzas Doces</h3>
                            </button>
                        </div>
                    </div>

                    <div class="row justify-content-center">
                        <div class="col-xs-12 col-sm-12 col-lg-8">
                            <button type="button" class="col-12 botoes-menu" data-toggle="modal" data-target="#modal-porcoes">
                                <img class="col-5" src="./_imagens/porcao.png" alt="Foto de uma porção"><h3>Clique para abrir as Porções</h3>
                            </button>
                        </div>
                    </div>
            </div>
          </div>

            <div class="row justify-content-center">
                <div id="section4" class="col-xs-12 col-sm-12 col-md-10 col-lg-8 backgrounded section4">
                    <h1 class="fonte-lobster">Localização</h1>
                    <hr/>
                    <h4 class="text-center">Avenida Nossa Senhora Do Sabará, 4355 - Vila Emir, São Paulo - SP</h4>
                    <iframe class="col-12" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d384.03666262161664!2d-46.677953545305066!3d-23.69050680309346!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce4ff1a1172155%3A0x834841ef17f9a8d8!2sNapolitana+Buono+Pizza!5e0!3m2!1spt-BR!2sbr!4v1524768063054" height="450"allowfullscreen></iframe>
                </div>
            </div>

            <div class="row justify-content-center">
                <div id="section5" class="col-xs-12 col-sm-12 col-md-10 col-lg-8 backgrounded section5">
                    <h1 class="fonte-lobster">Contato</h1>
                    <hr/>
                    <div class="row justify-content-center">
                        <div class="col-12">
                            <h2 class="text-center display-4">
                                <a class="text-dark" href="tel:01156118003"><strong>5011-8003</strong></a><br/>
                                <a class="text-dark" href="tel:01156110146"><strong>5611-0146</strong></a><br/>
                                <a class="text-dark" href="tel:011990036369"><strong>99003-6369</strong></a>
                                <img class="col-1" src="./_imagens/whatsapp.png" alt="whatsapp">
                            </h2>
                            <h3 class="text-center">Horário de funcionamento</h3>
                            <h4 class="text-center">Domingo a Quinta das 18:00h às 23:30h</h4>
                            <h4 class="text-center">Sexta e Sábado das 18:00h às 00:00h</h4>
                            <p class="text-center">Copyright (c) Pizzaria Napolitana Copyright Holder All Rights Reserved.</p>
                            <p class="text-center">Developed by Jonata Hessa</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="modal-pizzas" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Pizzas</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <ul class="col-12 cardapios">
                            <c:forEach var="pizza" items="${pizzas}">
                                <li class="menu-category titulopreco">
                                    <div class="">
                                        <p class="titulo text-danger"><strong>${pizza.codigo} - ${pizza.nome}</strong></p>
                                        <p class="preco text-success"><strong>Grande: R$ ${pizza.preco}</strong></p>
                                        <p class="preco text-success"><strong>Broto: R$ ${pizza.precoBroto}</strong></p>
                                        <p class="preco text-success"><strong>Calzone: R$ ${pizza.precoCalzone}</strong></p>
                                        <p class="descricao text-dark">${pizza.descricao}</p>
                                        <hr class="linha-preta"/>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar Cardapio</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="modal-doces" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Pizzas Doces</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <ul class="col-12 cardapios">
                            <c:forEach var="doce" items="${doces}">
                                <li class="menu-category titulopreco">
                                    <div class="">
                                        <p class="text-danger titulo"><strong>${doce.codigo} - ${doce.nome}</strong></p>
                                        <p class="preco text-success"><strong>Grande: R$ ${doce.preco}</strong></p>
                                        <p class="preco text-success"><strong>Broto: R$ ${doce.precoBroto}</strong></p>
                                        <p class="preco text-success"><strong>Calzone: R$ ${doce.precoCalzone}</strong></p>
                                        <p class="descricao text-dark">${doce.descricao}</p>
                                        <hr class="linha-preta"/>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar Cardapio</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="modal-porcoes" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Porções</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <ul class="col-12 cardapios">
                            <c:forEach var="porcao" items="${porcoes}">
                                <li class="menu-category titulopreco">
                                    <div class="">
                                        <p class="titulo text-danger"><strong>${porcao.codigo} - ${porcao.nome}</strong></p>
                                        <p class="preco text-success"><strong>R$ ${porcao.preco}</strong></p>
                                        <p class="descricao text-dark">${porcao.descricao}</p>
                                        <hr class="linha-preta"/>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar Cardapio</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
