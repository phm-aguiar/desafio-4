document.addEventListener("DOMContentLoaded", function() {
    const cabecalho = document.querySelector(".cabecalho");
    const texto = document.querySelector(".conteudo__texto");
    const rodape = document.querySelector(".rodape")

    // Use setTimeout para adicionar a classe 'visible' após um atraso
    setTimeout(() => {
        cabecalho.classList.add("visible");
        texto.classList.add("visible");
        rodape.classList.add("visible");
    }, 100); // Adicione um pequeno atraso de 100ms para garantir que a classe 'visible' seja adicionada após o carregamento
});