CREATE DATABASE projeto_integrador;

USE  projeto_integrador;


CREATE TABLE usuario
(      
	idUsuario INT AUTO_INCREMENT,
    nomeCompleto VARCHAR(255),
    email VARCHAR(255),
    senha VARCHAR(255),
    PRIMARY KEY(idUsuario)
);


CREATE TABLE acessibilidade -- (TEMA)
(
	idAcessibilidade INT AUTO_INCREMENT,		
    tipoDeficiencia VARCHAR(255),  						  # Deficiências: visuais, auditivas, física, intelectual
	acompanhante VARCHAR(255),
    PRIMARY KEY(idAcessibilidade)
);


CREATE TABLE postagem  
(	
   idPostagem INT AUTO_INCREMENT,											  
   categoriaEstabelecimento VARCHAR(255),											
   tipoEstabelecimento VARCHAR(255) NULL,
   avaliação INT,  -- (0 a 5)
   comentario VARCHAR(255),
   localizacao VARCHAR(255),
   fkUsuario INT,
   fkAcessibilidade INT,
   PRIMARY KEY(idPostagem),
   FOREIGN KEY(fkUsuario) REFERENCES usuario(idUsuario),
   FOREIGN KEY(fkAcessibilidade) REFERENCES acessibilidade(idAcessibilidade)
);

SELECT * FROM usuario, acessibilidade, postagem;