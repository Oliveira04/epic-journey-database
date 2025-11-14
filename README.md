diff --git a/README.md b/README.md
index 9df74ff939c319be33b440e1eeebdad2dc8a1023..259061ed1a8c09105985669f6e9e0b375b84844e 100644
--- a/README.md
+++ b/README.md
@@ -1 +1,34 @@
-Repositorio criado para criar banco de dados 
\ No newline at end of file
+# Banco de Dados de Narrativas Interativas
+
+Este repositório contém os arquivos necessários para estruturar um banco de dados voltado para o registro de missões, personagens e localidades presentes em campanhas narrativas. O objetivo é centralizar informações de mundo e facilitar consultas analíticas ou integrações com outras aplicações.
+
+## Estrutura Proposta
+
+- **Campanhas**: metadados gerais, período, status e responsável.
+- **Missões**: título, descrição, nível de dificuldade, recompensas previstas e relação com uma campanha.
+- **Personagens**: nome, função, histórico resumido e vínculos com missões.
+- **Localidades**: ambientação, clima narrativo, perigos associados e coordenadas aproximadas.
+- **Eventos**: registros cronológicos que conectam personagens e missões em localidades específicas.
+- **Item**: registros dos itens na qual pode aparecer no chão ou serem comprados.
+- **Inventario**: registros dos itens na qual o personagem possui.
+
+## Como Utilizar
+
+1. Defina o SGDB de sua preferência (PostgreSQL, MySQL, SQLite etc.).
+2. Modele as tabelas com base na estrutura proposta ou adapte conforme sua necessidade.
+3. Importe os dados brutos da campanha para o banco e ajuste chaves estrangeiras para manter integridade referencial.
+4. Crie visões ou consultas parametrizadas para obter relatórios (por exemplo, "missões pendentes por personagem").
+5. Utilize ferramentas de visualização ou APIs para expor as informações em outras plataformas.
+
+## Boas Práticas
+
+- Mantenha consistência nos identificadores primários.
+- Prefira campos normalizados (tabelas auxiliares para classificações como tipos de missão, facções ou regiões).
+- Documente cada migração ou script de carga.
+- Automatize backups do banco e armazene em local seguro.
+
+## Próximos Passos
+
+- Adicionar scripts SQL de criação das tabelas descritas.
+- Incluir dados fictícios para testes.
+- Configurar pipelines de CI para validar migrações.
+
+Contribuições são bem-vindas! Abra uma issue descrevendo a melhoria ou envie um pull request com as alterações propostas.
