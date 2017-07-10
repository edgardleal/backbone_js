/*
 * app.js
 * Copyright (C) 2017  
 *
 * Distributed under terms of the MIT license.
 */

var Model = Backbone.Model.extend({
    url: "/.json",
    defaults: {
        _id: 0,
        data: new Date(),
        vencimento: null,
        valor: 0,
        descricao: "Não informada"
    }
});

var conta = new Model();

conta.fetch();

var $descricao = $("input[name=descricao]");
var $valor     = $("input[name=valor]");

$("#salvar").click(function(event) {
    event.preventDefault();
    console.log("Salvandos os dados: %s , %s", $descricao.val(), $valor.val());
    conta.set("descricao", $descricao.val());
    conta.set("valor"    , $valor.val());

    conta.save();
    alert("Registro salvo!");
});


/* vim: set tabstop=4 softtabstop=4 shiftwidth=4 expandtab : */
