<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../index.css">
    <link rel="icon" type="image/svg" href="../img/disciplinas/programacao.svg">
    <title>Programação</title>
</head>
<body>
    <figure style="background-image: url('../img/disciplinas/programacao.jpg');"></figure>
    <main>
        <h1>Programação</h1>
        <table width="100%">
            <thead>
                <tr>
                    <th>Série</th>
                    <th>Título</th>
                    <th>Categoria</th>
                    <th>Estado</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    include("../config.php");
                    $result = $con->query("SELECT * FROM materias ORDER BY Título");
                    while ($roll = $result->fetch_object()) {
                        if("programacao" == $roll->Disciplina){
                            $caminho = "programacao/{$roll->Arquivo}.html";
                            echo "<tr>
                            <td>{$roll->Série}ª</td>
                            <td><a href=\"{$caminho}\">{$roll->Título}</a></td>
                            <td>{$roll->Categoria}</td>
                            <td>{$roll->Estado}</td>
                        </tr>";
                        }
                    }
                ?>
            </tbody>
        </table>
    </main>
    <footer>
        <hr>
        <a href="../index.php">Página Principal</a>
    </footer>
</body>
</html>