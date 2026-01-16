<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="index.css">
    <link rel="icon" type="image/svg" href="img/borboleta-tartara.svg">
    <title>Arquivo Tártaro</title>
</head>
<body>
    <figure style="background-image: url('img/banner_arquivo_tartaro.jpg');"></figure>
    <main>
        <h1>Arquivo Tártaro</h1>
        <p style="text-align: center;"><q><i>O que nós falamos para quem acredita que o inferno não é verde?</i></q></p>
        <blockquote class="recado">Este é o Arquivo Tártaro! Uma plataforma digital criada do zero com o objetivo de catalogar informações cruciais, como matérias e eventos, para os estudantes da 4422 (2025) do Curso de Eletrônica da Fundação Liberato. O objetivo é proporcionar um acesso fácil e organizado a todo o conteúdo disponível nas aulas em um só lugar!<br><br>- Kauã Marcelino</blockquote>
        <h2>Navegação</h2>
        <nav>
            <ul>
                <li><a href="faces.html">As faces do Arquivo Tártaro</a></li>
            </ul>
        </nav>
        <h2>Disciplinas</h2>
        <section>
            <?php
                include("config.php");
                $result = $con->query("SELECT * FROM disciplinas ORDER BY Título");
                while($roll = $result->fetch_object()){
                    $caminho = "disciplinas/{$roll->Arquivo}";
                    echo "<a href=\"{$caminho}.php\" class=\"card-disciplina\">
    <figure style=\"background-image: url('img/{$caminho}.jpg');\"></figure>
    <div class=\"titulo\">
        <p><b>{$roll->Título}</b></p>
    </div>
</a>";
                }
	        ?>
        </section>
    </main>
    <footer>
        <hr>
        <p>Criado com amor por Davi Arthur e Kauã Marcelino!</p>
    </footer>
</body>
</html>