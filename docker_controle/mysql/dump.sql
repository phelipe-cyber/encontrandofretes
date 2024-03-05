-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 03/12/2023 às 14:04
-- Versão do servidor: 10.6.15-MariaDB-cll-lve
-- Versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `controle_pdv`
--
CREATE DATABASE IF NOT EXISTS `controle_pdv` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `controle_pdv`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sobrenome` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `socio` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `cpf` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `rg` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `tel` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `tel2` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `atividade` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `endereco` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `cep` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `cnpj` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `numero` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `bairro` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `municipio` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `uf` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `complemento` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `referencia` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `cep_emp` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `lougadouro_emp` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `number_emp` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `municipio_emp` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `uf_emp` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `bairro_emp` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `complemento_emp` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `referencia_emp` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status_cliente` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `user_created` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `data_hora_cliente` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `sobrenome`, `socio`, `cpf`, `rg`, `tel`, `tel2`, `atividade`, `endereco`, `cep`, `cnpj`, `numero`, `bairro`, `municipio`, `uf`, `complemento`, `referencia`, `cep_emp`, `lougadouro_emp`, `number_emp`, `municipio_emp`, `uf_emp`, `bairro_emp`, `complemento_emp`, `referencia_emp`, `status_cliente`, `id_cliente`, `user_created`, `data_hora_cliente`) VALUES
(1, 'MAYARA KELLY ALVES ', 'MAYARA 0001', '', '553.032.528-92', '634211213', '(11) 93460-2061', '', 'cabeleireira ', 'Rua Vitória Régia', '04854-550', '', '64', 'Jardim Azano II', 'São Paulo', 'SP', '', '', '04854-040', 'Rua Professor Haroldo Nogueira', '28', 'São Paulo', 'SP', 'Chácara Cocaia', '', '', 0, 0, 'thais.franco', '2022-10-04 11:26:24'),
(2, '', 'Cleonice dos Santos ', '', '142.382.428-82', '248842377', '(11) 95176-2706', '', '', 'Rua Álvares Afonso ', '02268-060', '', '312 ', 'Parque Vitória', 'São Paulo', 'SP', 'Apartamento 03 ', '', '', '', '', '', '', '', 'Apartamento 03 ', '', 1, 2, 'manuella.santos', '2022-10-04 11:46:07'),
(3, '', 'Daniel Felipe da Silva de Oliveira ', '', '482.918.688-75', '540494276', '(11) 98723-7176', '', 'Aux Rede Telefonica', 'Rua Lusitano Soares', '05882-050', '', '126', 'Jardim São Bento Novo', 'São Paulo', 'SP', 'Casa', '', '', 'ICOMON TECNOLOGIA LTDA', '', '', '', '', 'Casa', '', 1, 2, 'manuella.santos', '2022-10-04 12:12:26'),
(4, '', 'GABRIELA FERREIRA DOS SANTOS 0007', 'Gabriela Ferreira dos Santos ', '106.226.296-46', '647436954', '(11) 96703-2080', '', 'Pastelaria ', 'Avenida Marcial Lourenço Serodio', '07151-370', '45.834.873/0001-38', '283', 'Cidade Seródio', 'Guarulhos', 'SP', '', '', '07179-167', 'Rua Rafael da Silva Santos', '302', 'Guarulhos', 'SP', 'Jardim Santa Paula', '', '', 0, 0, 'thais.franco', '2022-10-04 12:15:14'),
(5, '', 'Edna Maria de Oliveira Salles ', '', '263.610.748-70', '294698413', '(11) 98591-9056', '', '', 'Rua Osvaldo Manoel de Oliveira ', '06162-070', '', '320', 'Padroeira ', 'Osasco', 'SP', 'Casa ', '', '', 'eSocial ', '', '', '', '', 'Casa ', '', 1, 2, 'manuella.santos', '2022-10-04 12:17:38'),
(6, '', 'EDILSON CANDIDO JUNIOR 0067', '', '', '', '', '', '', '', '08557-505', '44.493.118/0001-74', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 'thais.franco', '2022-10-04 12:25:50'),
(7, '', 'Gabriel Aragao Dias ', '', '395.665.848-57', '381000485', '(11) 98601-5610', '', 'Aux de Ar Condicionado Automot', 'Rua Arroio da Palma', '02991-050', '', '147', 'Jardim Rincão', 'São Paulo', 'SP', 'Casa 01', '', '', 'Norte Buss Transportes S.A', '', '', '', '', 'Casa 01', '', 0, 2, 'manuella.santos', '2022-10-04 12:52:11'),
(8, '', ' Lucas de Almeida Abreu', '', '445.661.048-42', '420754611', '(11) 91370-7275', '', '', 'Rua Américo Maffia', '09980-260', '', '123', 'Serraria', 'Diadema', 'SP', 'Casa 03', '', '', '', '', '', '', '', 'Casa 03', '', 1, 2, 'manuella.santos', '2022-10-04 13:08:20'),
(9, '', ' Lucineide Freire dos Santos', '', '410.202.928-14', '490742312', '(11) 96175-9822', '', '', 'Avenida Fundibem', '09961-390', '', '936', 'Casa Grande', 'Diadema', 'SP', 'Apartamento BL 19 AP 6', '', '', '', '', '', '', '', 'Apartamento BL 19 AP 6', '', 1, 2, 'manuella.santos', '2022-10-04 13:17:45'),
(10, '', ' Paulo Sérgio Fidelis da Silva ', '', '664.068.116-15', '653522174', '(11) 95217-4376', '', 'Aux de Produção', 'Viela Cabo Verde', '06170-002', '', '115', 'Jardim Roberto', 'Osasco', 'SP', 'Casa ', '', '', 'Carbomec Industria de Produtos Eletromecanicos LTD', '', '', '', '', 'Casa ', '', 1, 2, 'manuella.santos', '2022-10-04 13:31:03'),
(11, '', ' Priscila Gloria Alves de Souza', '', '156.869.428-89', '23491951', '(11) 97303-8852', '', 'Confeiteira ', 'Rua Arley Gilberto de Araújo', '02326-000', '', '05', 'Jardim Felicidade (Zona Norte)', 'São Paulo', 'SP', 'Casa 03', '', '', 'Autonoma Confeiteira', '', '', '', '', 'Casa 03', '', 1, 2, 'manuella.santos', '2022-10-04 13:40:04'),
(12, '', 'Valéria de Almeida Carvalho', '', '132.985.248-67', '241411014', '(11) 97626-1524', '', '', 'Rua Nelson Melli', '06253-070', '', '960', 'Helena Maria', 'Osasco', 'SP', 'Casa ', '', '', 'Trabalha em Escola', '', '', '', '', 'Casa ', '', 1, 2, 'manuella.santos', '2022-10-04 13:48:11'),
(13, '', ' Michele de Almeida Vieira ', '', '380.124.748-16', '44331469X', '(11) 96762-9428', '', 'Auxiliar de Limpeza', 'Rua da Ceramica ', '', '', '1046', 'Jardim Jaqueline ', 'São Paulo', 'SP', 'Casa ', '', '', 'Pratika LTDA', '', '', '', '', 'Casa ', '', 1, 2, 'manuella.santos', '2022-10-04 14:00:02'),
(14, '', ' Maria Del Carmen Vasquez Vasquez Moreira ', '', '013.977.148-40', 'w560727w', '(11) 94534-1783', '', 'Autonoma Consultório Dentista ', 'Rua Maria Jose Teixeira Freitas', '06753-085', '', '18', 'Jd Kuabara ', 'Taboão da Serra', 'SP', 'Casa ', '', '05528-200', 'Rua Bartolomeo Bon ', '05', 'São Paulo', 'SP', 'Jardim Dracena ', 'Casa ', '', 1, 2, 'manuella.santos', '2022-10-04 14:00:18'),
(15, '', ' Everton Gomes dos Santos', '', '340.426.038-40', '44303433', '(11) 93471-8303', '', 'Orientador Socio Educativo 2, E tem um Lava Rápido', 'Rua Rosângela Rigo', '02987-145', '', '19', 'Parque Taipas', 'São Paulo', 'SP', 'Casa 01 ', '', '', 'Orientador Socio Educativo 2, E tem um Lava Rápido', '', '', '', '', 'Casa 01 ', '', 1, 2, 'manuella.santos', '2022-10-04 14:48:13'),
(16, 'EVANDRO JOSÉ DOS SANTOS ', 'EVANDRO JOSÉ DOS SANTOS  0004', '', '350.054.198-45', '441624455', '(11) 7709-2802', '', 'ADEGA', 'R SERRA VERMELHA ', '08373-195', '', '140', 'JARDIM NOVA VITORIA I', 'SAO PAULO ', 'SP', '', '', '08373-195', 'R SERRA VERMELHA ', '140', 'São Paulo', 'SP', 'JARDIM NOVA VITORIA I', '', '', 0, 0, 'thais.franco', '2022-10-04 15:11:22'),
(17, '', ' Marli de Almeida Lima ', '', '271.478.538-73', '30516968', '(11) 94034-9883', '', 'Autonoma ', 'Rua Emílio Ribas', '06753-100', '', '26', 'Jardim Pazini', 'Taboão da Serra', 'SP', 'Casa 04', '', '', '', '', '', '', '', 'Casa 04', '', 1, 2, 'manuella.santos', '2022-10-04 16:03:58'),
(18, '', 'Talles de Jesus Macedo Brandao ', '', '375.735.708-64', '35712225', '(11) 99195-6996', '', 'Autonomo Uber', 'Rua do Oratório', '03117-000', '', '385', 'Mooca', 'São Paulo', 'SP', 'Casa ', '', '', 'Autonomo Uber ', '', '', '', '', 'Casa ', '', 1, 2, 'manuella.santos', '2022-10-04 16:13:40'),
(19, '', ' Michelle Calonga Miranda ', '', '175.823.818-66', '293003300', '(11) 94916-5288', '', 'Autonoma Diarista ', 'Rua João Amado Coutinho', '02815-000', '', '853', 'Conjunto Residencial Elisio Teixeira Leite', 'São Paulo', 'SP', 'Apartamento 21', '', '', 'Autonoma Diarista ', '', '', '', '', 'Apartamento 21', '', 1, 2, 'manuella.santos', '2022-10-04 16:20:48'),
(20, '', ' Tamires Cláudia da Silva ', '', '422.041.958-63', '490966627', '(11) 98803-6305', '', 'Monitor Se Sist . Ele1 . Interno ', 'Rua Paulo Soares', '06130-120', '', '391', 'Santo Antonio ', 'Osasco', 'SP', 'Casa', '', '06065-165', 'Avenida Jaguaribe ', '920', 'Osasco', 'SP', 'Jaguaribe ', 'Casa', '', 1, 2, 'manuella.santos', '2022-10-04 16:29:54'),
(21, '', ' Paulo Wione Augusto ', '', '406.127.538-08', '490826647', '(11) 91571-4381', '', 'ILM FARMER - ANALYST ', 'Rua Galileo Torrano', '05365-190', '', '161', 'Jardim Centenário', 'São Paulo', 'SP', 'Casa ', '', '04533-012', 'Rua Tabapuã', '743', 'São Paulo', 'SP', 'Itaim Bibi', 'Casa ', 'TRABALHO', 1, 2, 'manuella.santos', '2022-10-05 12:41:14'),
(22, '', 'Elizabete dos Santos Souza', '', '246.679.808-50', '204791042', '(11) 95316-0180', '', 'Funcionária Pública Municipal ', 'Rua Guido Laccetti', '04849-190', '', '327', 'Parque Residencial Cocaia', 'São Paulo', 'SP', 'Casa ', '', '', 'Funcionária Pública Municipal ', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-05 13:16:22'),
(23, '', 'Karina Cardoso Dourado ', '', '369.712.698-96', '445284134', '(11) 95396-4320', '', 'Operador de Telecobrança Jr', 'Rua Alfredo de Melo', '08190-290', '', '696', 'Vila Itaim', 'São Paulo', 'SP', 'Casa 02 ', '', '08190-290', 'Rua Alfredo de Melo', '596', 'São Paulo', 'SP', 'Vila Itaim', 'Trabalho', '', 1, 2, 'manuella.santos', '2022-10-05 13:26:27'),
(24, '', 'João Vitor Costa  Gonçalves ', '', '453.460.588-93', '', '(11) 96219-1295', '', '', 'Rua Paulo Arentino', '02998-140', '', '1429', 'Conjunto City Jaraguá', 'São Paulo', 'SP', 'BL A 5 AP 52 ', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-05 13:48:29'),
(25, '', 'Leticia Andrade Rey ', '', '532.343.788-00', '50438594X', '(11) 94615-4036', '', 'Aprendiz ', 'Rua Mário Lago', '02281-265', '', '130', 'Jardim Guapira', 'São Paulo', 'SP', 'Casa ', '', '', 'Renapsi ', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-05 15:41:41'),
(26, '', 'Francisco Ambrósio Rodrigues ', '', '379.215.778-06', '35282086', '(11) 95070-4231', '', '', 'Rua Portugal', '08558-200', '', '379', 'Vila Varela', 'Poá', 'SP', 'Casa ', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-05 16:09:11'),
(27, '', 'Bruna Blogoslawski', '', '059.132.409-10', '4233566', '(11) 97552-4254', '', 'Assistente de pré e pós produção', 'Rua Tomás Gonçalves', '05590-030', '', '70', 'Vila Gomes', 'São Paulo', 'SP', 'Casa ', '', '', 'Assistente de pré e pós produção', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-05 16:28:48'),
(28, '', 'Rose ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-05 16:38:12'),
(29, '', 'Danilo Silva França ', '', '412.124.478-83', '431234796', '(11) 98603-8898', '', 'Vigia ', 'Rua Sinimbu', '01507-010', '', '111', 'Liberdade', 'São Paulo', 'SP', 'AP 34 A ', '', '', 'Nova Augusta Comercio Varejista - EIRELI', '', '', '', '', '', '', 0, 2, 'manuella.santos', '2022-10-05 16:54:48'),
(30, '', 'Lucy Aparecida Lacerda de Almeida', '', '319.512.598-66', '444301951', '', '', '', 'Rua Sizenando Gomes de SA ', '06162-130', '', '44 B ', 'Padroeira ', 'Osasco ', 'SP', 'Casa 02', '', '', '', '', '', '', '', 'Casa 02', '', 1, 2, 'manuella.santos', '2022-10-05 16:55:07'),
(31, '', 'Rodrigo Ferreira Fernandes da Fonseca ', '', '361.527.778-36', '44887106', '(11) 99567-2872', '', 'Autonomo ', 'Rua Professor Simões Magro', '02217-030', '', '13', 'Vila Medeiros', 'São Paulo', 'SP', 'Casa ', '', '', 'Trabalha com Tecnologia em Computadores (Manutenção e Instalação)', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-05 17:03:01'),
(32, '', 'Julia Alvez dos Santos ', '', '391.246.488-09', '49468124X', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-05 17:04:06'),
(33, '', 'Raimundo Nonato Cardozo da Silva ', '', '515.397.053-15', '383772655', '(11) 97669-9138', '', 'Auxiliar de Manutenção ', 'Rua Augusta', '01413-100', '', '2875', 'Cerqueira César', 'São Paulo', 'SP', 'AP 4 AN 1 ', '', '', 'Mx Brasil Gestora de Sistema Nacional de Franquia S.A', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-06 15:17:01'),
(34, 'Phelipe', 'Geraldo', 'da Silveira', '311.203.168-71', '406555357', '(11) 96408-1280', '', 'Dev', 'Rua Manoel Alves Garcia', '06618-010', '', '155', 'Jardim São Luiz', 'Jandira', 'SP', 'Apto 74 Torre 4', 'Proximo a prefeitura de Jandira', '06618-010', 'Rua Manoel Alves Garcia', '155', 'Jandira', 'SP', 'Jardim São Luiz', 'Apto 74 Torre 4', 'Proximo a prefeitura de Jandira', 0, 0, 'phelipe', '2022-10-07 10:02:52'),
(35, '', 'Elaine Luciene da Silva Cabral ', '', '335.671.878-99', '437834967', '(11) 97625-4432', '', '', 'Rua Cônego Antônio Manzi', '08150-310', '', '22', 'Jardim Robru', 'São Paulo', 'SP', 'Casa ', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-07 10:55:50'),
(36, '', 'Jose Nildo de Araujo ', '', '706.539.334-87', '27275996', '(11) 97319-3500', '', 'Orientador Socio Educativo 2/ E Trabalha de Uber ', 'Rua da Floresta', '02987-120', '', '42', 'Vila Santo Antônio', 'São Paulo', 'SP', 'Casa 03', '', '01214-100', 'Avenida Duque de Caxias ', '325', 'São Paulo', 'SP', 'Campos Elíseos', 'Casa 03', '', 1, 2, 'manuella.santos', '2022-10-07 10:59:16'),
(37, '', 'Maria Edna Silva Coelho', '', '297.302.438-24', '331874878', '(11) 98107-9785', '', 'Chefe Seção ', 'Rua Rick Nelson', '04963-180', '', '207', 'Chácara da Enseada', 'São Paulo', 'SP', 'Casa 02 ', '', '', 'Companhia Brasileira de Distribuição ', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-07 11:17:28'),
(38, '', 'Karina Aparecida Gomes ', '', '362.412.868-03', '424077747', '(11) 98491-9693', '', 'Doméstica ', 'Rua Nelson Melli', '06253-070', '', '960', 'Helena Maria', 'Osasco', 'SP', 'Casa 02 ', '', '', 'Doméstica ', '', '', '', '', '', '', 0, 2, 'manuella.santos', '2022-10-07 11:27:34'),
(39, '', 'Antonio Soares Fagundes Junior ', '', '362.798.948-19', '392042617', '(11) 99602-4824', '', 'Confeiteiro ', 'Rua da Floresta', '02323-083', '', '25', 'Furnas', 'São Paulo', 'SP', 'Casa 02 ', '', '', 'Confeiteiro', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-07 11:37:39'),
(40, '', 'Júnior Prédio ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 2, 'manuella.santos', '2022-10-07 11:40:47'),
(41, '', 'Ricardo Cunha Cavalcante  ', '', '858.311.755-10', '1505769515', '(11) 94588-9871', '', 'Ajudante de Motorista ', 'Avenida Áurea', '09175-130', '', '1091', 'Jardim do Estádio', 'Santo André', 'SP', 'Casa ', '', '', 'Ajudante de Motorista ', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-07 11:51:30'),
(42, 'FÁBIO MIGUEL CARNEIRO ', 'FÁBIO MIGUEL CARNEIRO  0005', '', '280.099.068-67', '27747706', '(11) 94869-8972', '(11) 94869-8972', 'material de construção ', 'Rua Schoroeder', '07273-250', '', '21', 'Jardim Santa Maria', 'Guarulhos', 'SP', '', '', '07273-160', 'Rua Pomerode', '198', 'Guarulhos', 'SP', 'Jardim Santa Maria', '', '', 0, 0, 'thais.franco', '2022-10-07 11:56:31'),
(43, '', 'Jhefferson André Rosa Nunes ', '', '027.953.575-93', '556073009', '(11) 96731-1341', '', 'Manutencista ', 'Rua Vale Verde do Conde', '04859-395', '', '16', 'Chácara do Conde', 'São Paulo', 'SP', 'Casa ', '', '', 'Pilar Empreend e Serv de Limpeza LTDA', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-07 12:00:33'),
(44, '', 'WILLIANS CARDOSO CARNEIRO 0006', 'WILLIANS CARDOSO CARNEIRO', '420.300.888-38', '395726943', '(11) 95949-0180', '', 'hamburgueria ', 'Rua Santa Quitéria', '07240-200', '', '449', 'Jardim Cumbica', 'Guarulhos', 'SP', '', '', '07240-200', 'Rua Santa Quitéria', '449', 'Guarulhos', 'SP', 'Jardim Cumbica', '', '', 0, 0, 'thais.franco', '2022-10-07 12:16:24'),
(45, '', 'Thiago Ramos de Oliveira ', '', '358.324.948-81', '478833374', '(11) 94743-6016', '', '', 'Rua Bandeirantes', '09912-230', '', '239', 'Diadema ', 'São Paulo', 'SP', 'TOR 3 AP 184 ', '', '', 'Irmaos Sarafian Comercio DE ', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-07 13:00:33'),
(46, '', 'Bruna Rafaela Bispo dos Santos ', '', '350.352.358-82', '357281202', '(11) 98876-0698', '', 'Salão de Cabelereira ', 'Rua Vicente Florindo Netto', '06268-160', '', '365', 'Baronesa', 'Osasco', 'SP', 'Casa 02 ', '', '', 'Salão de Cabelereira ', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-07 13:24:34'),
(47, '', 'Pezão', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-07 13:25:24'),
(48, '', 'Amanda Joana da Silva Bezerra ', '', '426.875.168-80', '543012657', '(11) 99341-1322', '', 'Babá', 'Rua Ernest Renam', '05659-020', '', '605', 'Paraisópolis', 'São Paulo', 'SP', 'AP 31 BL 2 ', '', '', 'Babá', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-07 13:37:47'),
(49, 'PATRICIA CORDEIRO TORRES ', '', '', '362.640.468-41', '476813207', '(11) 5677-7849', '(11) 93309-2779', '', 'Rua Atenas', '08595-410', '', '45', 'Parque Macedo', 'Itaquaquecetuba', 'SP', '', '', '08595-410', 'Rua Atenas', '45', 'Itaquaquecetuba', 'SP', 'Parque Macedo', '', '', 0, 2, 'dani.ribeiro', '2022-10-10 12:02:35'),
(50, '', 'Gabrielly de Oliveira Gomes da Silva ', '', '531.925.748-10', '637509286', '(11) 97688-7531', '', '', 'Rua Elza de Carvalho Mello Battiston', '06160-285', '', '06', 'Bandeiras', 'Osasco', 'SP', 'Casa 04', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-10 12:17:50'),
(51, '', 'Fabiana Casotto Silva de Souza ', '', '316.731.368-42', '36272944X', '(11) 99447-0491', '', '', 'Avenida Deputado Cantídio Sampaio', '02860-001', '', '40', 'Vila Souza', 'São Paulo', 'SP', 'Casa ', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-10 13:38:09'),
(52, '', 'Andrea Aparecida de Souza Amorim Santos ', '', '155.632.018-30', '23132952', '(11) 95197-5643', '', 'Autonoma estética ', 'Rua Primo Zacante', '06160-200', '', '231', 'Bandeiras', 'Osasco', 'SP', '', '', '', 'Autonoma estética ', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-10 14:02:58'),
(53, '', 'Claudia Cassemiro Vitoreto', '', '271.656.488-44', '329396870', '(11) 91334-9232', '', 'Atendente ', 'Rua João Guimarães Rosa', '06160-040', '', '590', 'Veloso', 'Osasco ', 'SP', 'BC 20 AP 42 ', '', '01431-000', 'Avenida Brasil', '367', 'São Paulo', 'SP', 'Jardim América', 'Trabalho ', '', 0, 2, 'manuella.santos', '2022-10-10 14:21:10'),
(54, '', 'Tiago Lavanderia ', '', '312.214.288-02', '35131995', '(11) 98672-3274', '', 'Higienizador', 'Alameda Jaú', '01420-007', '', '1743', 'Jardim Paulista', 'São Paulo', 'SP', '', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-10 14:35:53'),
(55, '', 'Tiago (indic davi)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-10 14:37:11'),
(56, '', 'Thais Campos Rodrigues ', '', '113.146.076-69', '495974286', '(11) 94022-1038', '', 'Autonoma Salão de Cabelereira', 'Rua Oswaldo Teixeira', '08558-210', '', '120', 'Vila Varela', 'Poá', 'SP', 'Casa 02 ', '', '', 'Autonoma Salão de Cabelereira', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-10 14:43:49'),
(57, '', 'Valéria Augusta Ribeiro dos Passos', '', '344.110.168-50', '40210030X', '(11) 93705-3262', '', 'Cabelereira ', 'Avenida Nove de Julho', '08557-100', '', '1513', 'Vila das Acácias', 'Poá', 'SP', 'Casa 02 ', '', '', 'Cabelereira ', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-10 14:56:33'),
(58, '', 'Antonio Soares Fagundes (pai do gordão)', '', '007.695.578-80', '122721044', '(11) 96456-7353', '', '', 'Rua da Floresta', '02323-083', '', '25', 'Furnas', 'São Paulo', 'SP', 'Casa 02 ', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-10 15:11:07'),
(59, '', 'Camila Rocha da Silva Pimenta ', '', '364.100.878-61', '42647899X', '(11) 99512-0709', '', 'Cras da Padroeira ', 'Rua Manoel Gomes Gonçalves', '06162-200', '', '32B', 'Padroeira', 'Osasco', 'SP', 'Casa ', '', '06132-000', 'Avenida João de Andrade', '100', 'Osasco', 'SP', 'Santo Antônio', 'Casa ', '', 0, 2, 'manuella.santos', '2022-10-10 15:34:56'),
(60, '', 'Emerson Costa de Souza ', '', '382.727.648-90', '471978358', '(11) 93326-0706', '', 'Personal Treiner ', 'Rua Frei Caneca', '01307-000', '', '58 ', 'Consolação', 'São Paulo', 'SP', 'Casa FUNDOS 2', '', '', 'Personal Treiner ', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-10 15:47:52'),
(61, '', 'Ivanildo Paulino da Silva ', '', '252.512.458-82', '456849348', '(11) 98747-0167', '', '', 'Rua José Bento', '01523-030', '', '271', 'Cambuci', 'São Paulo', 'SP', 'Casa ', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-10 15:58:52'),
(62, '', 'Rosivaldo Luis da Silva ', '', '218.528.938-18', '29437379', '(11) 95720-7037', '', 'Zelador ', 'Rua Vicente Leporace', '04619-030', '', '945', 'Campo Belo', 'São Paulo', 'SP', '', '', '', 'Zelador', '', '', '', '', '', '', 0, 2, 'manuella.santos', '2022-10-10 16:54:59'),
(63, '', 'Maria Madalena Rocha Robles ', '', '053.794.248-30', '169627652', '(11) 97587-2581', '', 'Auxiliar de Loja ', 'Rua Antônio Benedito Ferreira', '06246-110', '', '1302', 'Munhoz Júnior', 'Osasco', 'SP', 'Casa ', '', '06020-010', 'Avenida dos Autonomistas', '1400', 'Osasco', 'SP', 'Vila Yara', 'Trabalho ', '', 1, 2, 'manuella.santos', '2022-10-11 11:26:22'),
(64, '', 'Ednaldo da Silva Bezerra', '', '346.696.958-19', '37432410', '(11) 95812-4889', '', 'Motorista de Caminhão', 'Rua Arenápolis', '02169-020', '', '68', 'Jardim Andaraí', 'São Paulo', 'SP', 'Casa 01 ', '', '', 'Motorista de Caminhão', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-11 11:36:04'),
(65, '', 'Marcio da Silva Costa ', '', '', '1473715709', '', '', 'Pedreiro ', 'Rua Doutor Laerte Setúbal', '05665-010', '', '655', 'Vila Suzana', 'São Paulo', 'SP', 'AP 136 BL ', '', '', 'Pedreiro ', '', '', '', '', '', '', 0, 2, 'manuella.santos', '2022-10-11 11:48:10'),
(66, '', 'Lucas (amigo da núbia)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-11 11:49:15'),
(67, '', 'Jean Kaue da Silva ', '', '334.134.808-55', '', '(11) 95481-2827', '', '', 'Rua Nice', '02266-090', '', '281 BX', 'Vila Gustavo', 'São Paulo', 'SP', 'Casa ', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-11 12:12:08'),
(68, '', 'Wellington de Freitas dos Passos', '', '304.767.838-36', '35282410', '(11) 97159-2178', '', 'Tecnico em Química ', 'Rua Padre Eustáquio', '08560-500', '', '1115', 'Vila Arquimedes', 'Poá', 'SP', 'Casa ', '', '', 'Tecnico em Química', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-11 12:27:35'),
(69, '', 'Marlucia Aparecida Marciano ', '', '177.774.088-60', '270226199', '(11) 98145-2003', '', 'Analista Financeiro JR ', 'Rua Ministro Rafael de Barros Monteiro', '05632-010', '', '339', 'Jardim Monte Kemel', 'São Paulo', 'SP', 'Casa ', '', '01002-901', 'Rua Direita, 32', '32', 'São Paulo', 'SP', 'Sé', 'Casa ', '', 1, 2, 'manuella.santos', '2022-10-11 12:34:03'),
(70, 'Cleonice Rosa de Jesus ', '', '', '104.491.648-61', '155286626', '(11) 97036-2646', '', 'Autonoma Fogão de lenha ', 'Rua Ouro Preto', '06823-110', '', '202', 'Jd Santo Eduardo', 'Embu das Artes ', 'SP', 'Casa 01 ', '', '', 'Autonoma Fogão de lenha ', '', '', '', '', 'Casa 01 ', '', 1, 2, 'manuella.santos', '2022-10-18 12:49:14'),
(71, '', 'Pablo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-18 13:01:54'),
(72, '', 'Priscila Franco de Souza Feldberg ', '', '329.251.948-93', '343762870', '(11) 98215-9474', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-18 13:11:51'),
(73, '', 'Regina Ribeiro da Silva ', '', '740.770.077-04', '36939835X', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-18 13:16:43'),
(74, '', 'Jauri Mariano de Freitas ', '', '307.977.178-89', '300655289', '(11) 98080-1385', '', 'Zelador ', 'Rua Bela Cintra', '01415-008', '', '2230', 'Consolação', 'São Paulo', 'SP', 'Condomínio ', '', '', 'Zelador', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-18 13:27:37'),
(75, '', 'Maria Creuza dos Santos Pereira ', '', '099.429.298-86', '193693513', '(11) 95905-7571', '', '', 'Rua Ângelo Aloísio', '02276-100', '', '122', ' Jaçanã', 'São Paulo', 'SP', 'AP 36 BL 3 ', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-18 13:39:21'),
(76, '', 'Adilson Elisio ', '', '104.718.538-52', '203915847', '(11) 99975-8330', '', '', 'Avenida Rio Branco', '01206-000', '', '320', 'Campos Elíseos', 'São Paulo', 'SP', '8 AND AP 84', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-18 13:49:05'),
(77, '', 'Thaina de Moura Franco Alves ', '', '499.038.248-07', '589174289', '(11) 96428-3363', '', 'Aux Administrativo Pleno ', 'Rua José Barreto da Silva', '06770-130', '', '149', 'Parque Iracema ', 'Taboão da Serra', 'SP', 'Casa ', '', '', 'Santo Expedito Locadora LTDA ', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-18 13:59:52'),
(78, '', 'Débora da Silva Pinheiro ', '', '341.634.388-31', '423707267', '(11) 95606-3234', '', 'Agente Atendim. 111', 'Avenida Circular', '05547-025', '', '0', 'Raposo Tavares', 'São Paulo', 'SP', 'BL 04 AP 43', '', '', 'Facily Solucoes e Tecnologia LTDA ', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-18 14:11:06'),
(79, '', 'Wagner Emerson Pereira Mariz', '', '289.059.368-14', '34300385', '(11) 91351-7805', '', 'AJ DE OP PR LAEIS ', 'Rua do Brilhante', '08670-070', '', '608', 'Jardim Monte Cristo', 'Suzano', 'SP', 'Casa ', '', '', 'INDS . BRAS . DE . ART . REFRATARIOS - IBAR - LTDA', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-18 14:17:57'),
(80, '', 'Fátima Maria Ribeiro da Silva ', '', '069.620.627-70', '107629552', '(21) 96417-0295', '', '', 'Travessa Gaspar', '26250-080', '', '191', 'Belmonte', 'Nova Iguaçu', 'RJ', 'Casa 02 ', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-18 14:28:09'),
(81, '', 'Maisha Lima de Souza', '', '543.221.958-14', '545085871', '(11) 94760-3913', '', 'Logística ', 'Rua Emílio Ribas', '06753-100', '', '26', 'Jardim Pazini', 'Taboão da Serra', 'SP', 'Casa 04', '', '', 'Logística', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-18 14:35:25'),
(82, '', 'Giovana Sanches Duarte ', '', '444.108.018-21', '376310406', '(11) 94844-0449', '', 'Autonoma Esmalteria ', 'Estrada das Pitas', '06449-300', '', '952', 'Parque Viana', 'Barueri', 'SP', 'AP 84 TOR B', '', '', 'Autonoma Esmalteria ', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-18 14:44:26'),
(83, '', 'Elielma Freire Brito ', '', '483.530.338-52', '386148764', '(11) 94798-9770', '', '', 'Travessa São Raimundo', '09962-520', '', '524', 'Casa Grande', 'Diadema', 'SP', 'Casa ', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-18 14:51:15'),
(84, '', 'Fabiana Silva de Andrade ', '', '309.933.968-79', '351916568', '(11) 94347-2238', '', '', 'Rua Mário Lago', '02281-265', '', '130', 'Jardim Guapira', 'São Paulo', 'SP', 'Casa ', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-18 14:59:51'),
(85, '', 'Marcos Cavascan Junior ', '', '378.902.258-65', '423290514', '(11) 99759-1897', '', 'Autonomo Aplicativos 99,in drive, particular.', 'Rua Gertrudes', '02208-010', '', '453', 'Vila Medeiros', 'São Paulo', 'SP', 'Casa ', '', '', 'Autonomo Aplicativos 99,in drive, particular.', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-18 15:05:33'),
(86, '', 'Silmara da Silva ', '', '228.822.038-45', '480176346', '(11) 93411-0991', '', 'Aux Administrativo  ', 'Rua César Ladeira', '06152-010', '', '105', 'Veloso', 'Osasco', 'SP', 'Casa 02 ', '', '', 'Condominio flex Osasco 2', '', '', '', '', '', 'TRABALHO', 1, 2, 'manuella.santos', '2022-10-18 15:13:37'),
(87, '', 'Lucineide Bezerra de Almeida ', '', '339.870.378-06', '407615726', '(11) 97454-4613', '', '', 'Rua Sorocaba', '06172-020', '', '128', 'Jardim Roberto', 'Osasco', 'SP', 'Casa ', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-18 15:24:08'),
(88, '', 'Kelly Anne Dionisio de Oliveira', '', '213.046.658-36', '302878737', '(11) 97174-3377', '', 'Analista Financeira e Trabalha com eventos ', 'Rua Jorge de Figueiredo Correa ', '13087-490', '', '1632', 'Chácara Primavera', 'Campinas', 'SP', 'Casa ', '', '', 'BELLOTON COMERCIAL EIRELI - EPP', '', '', '', '', 'Casa ', '', 1, 2, 'manuella.santos', '2022-10-18 15:25:10'),
(89, '', ' Bianca de Oliveira Coelho ', '', '303.404.838-65', '309503863', '(11) 95391-8682', '', '', 'Rua Paula Rodrigues ', '06233-030', '', '269', 'Piratininga ', 'Osasco', 'SP', 'AP 114 B 36', '', '', '', '', '', '', '', 'AP 114 B 36', '', 1, 2, 'manuella.santos', '2022-10-18 15:25:59'),
(90, '', 'Edse Aparecida ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-18 15:26:28'),
(91, '', 'Bianka Ludimilla Silva Santos ', '', '103.719.574-43', '564395821', '(11) 98104-5941', '', 'Autonoma Cabelereira', 'Rua Emilia Barradas Simões', '08690-270', '', '491', 'Cidade Miguel Badra', 'Suzano', 'SP', 'Casa ', '', '', 'Autonoma Cabelereira', '', '', '', '', 'Casa ', '', 1, 2, 'manuella.santos', '2022-10-18 15:35:51'),
(92, '', 'Júnior Primo ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 2, 'manuella.santos', '2022-10-18 15:37:13'),
(93, '', 'Nayara dos Santos Nazário ', '', '374.468.858-58', '493684797', '(11) 98379-2782', '', 'Agente de Organização Escolar ', 'Travessa Joaquim Baston', '08395-000', '', '55', 'Conjunto Promorar Rio Claro', 'São Paulo', 'SP', 'Casa 01 ', '', '', 'Agente de Organização Escolar ', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-18 15:45:33'),
(94, '', 'Viviane Matias da Paixão', '', '292.110.118-17', '332848759', '(11) 94515-4453', '', 'Administração', 'Rua Achiles Belline', '06162-280', '', '207', 'Padroeira', 'Osasco', 'SP', 'Casa 04', '', '', 'Perim Comercio de Auto Pecas LTDA FL', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-18 15:51:26'),
(95, '', 'Jaqueline ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-18 15:53:47'),
(96, '', 'Raphael Alves de Souza ', '', '407.921.638-69', '38328315', '(11) 91174-8746', '', 'Músico', 'Rua Antônio Quintiliano', '02323-070', '', '99', 'Jardim Martins Silva', 'São Paulo', 'SP', 'BL 18 AP 42', '', '', 'Músico', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-18 16:05:06'),
(97, '', 'Angélica Vitoreto Fagundes ', '', '536.565.878-76', '55752913X', '(11) 95085-6391', '', 'AUX DE PRODUÇÃO LOGÍSTICA ', 'Rua João Guimarães Rosa', '06160-040', '', '590', 'Veloso', 'Osasco', 'SP', 'BL 20 AP 42 ', '', '', 'PIER 8 SERVIÇOS LTDA', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-18 16:14:43'),
(98, '', 'Jéssica Daiane Candido ', '', '', '', '(11) 97886-6103', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-19 10:24:26'),
(99, '', 'Paulo Henrique Machado Vieira ', '', '408.883.648-06', '370303611', '(11) 97845-3655', '', 'Pizzaiolo', 'Rua jose Henrique de Lima ', '06170-018', '', '36', 'Jardim Roberto', 'Osasco ', 'SP', 'Casa', '', '06150-000', 'Av Sarah Veloso ', '132', 'Osasco', 'SP', 'Veloso ', 'Casa', '', 1, 2, 'manuella.santos', '2022-10-19 10:29:04'),
(100, '', 'Vilma Barbosa da Silva ', '', '168.297.888-54', '272871825', '(11) 98710-7540', '', 'Diretora de Orçamento e Compras da Secretaria de Esportes', 'Rua Pastor Cícero Canuto de Lima', '06160-160', '', '174', 'Bandeiras', 'Osasco', 'SP', 'Casa ', '', '', 'Prefeitura do Municipio de Osasco ', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-19 10:48:11'),
(101, '', 'Jose Raimundo dos Santos Fagundes', '', '589.476.205-72', '57982765', '(11) 94712-5736', '', 'Zelador ', 'Rua Gabriele Dannunzio', '04619-005', '', '1380', 'Campo Belo', 'São Paulo', 'SP', 'Casa ', '', '', 'Zelador', '', '', '', '', 'Casa ', '', 1, 2, 'manuella.santos', '2022-10-19 11:12:36'),
(102, '', 'Larissa Cristina Correia ', '', '442.792.198-18', '45691705', '', '', 'Assistente Administrativo', 'Rua Juan Vicente', '06160-180', '', '45', 'Bandeiras', 'Osasco', 'SP', 'Casa 04', '', '06473-000', 'Avenida Andrômeda', '723', 'Barueri', 'SP', 'Green Valley Alphaville', 'Trabalho ', 'EDIF AIR OFFICES SALA 803 E 804 ', 1, 2, 'manuella.santos', '2022-10-21 14:46:01'),
(103, '', 'Luana Cristina de Almeida Freire ', '', '475.214.638-03', '579813629', '(11) 93749-6584', '', '', 'Rua Íris Pereira da Silva', '06170-019', '', '128', 'Jardim Roberto', 'Osasco', 'SP', 'Casa ', '', '', '', '', '', '', '', 'Casa ', '', 1, 2, 'manuella.santos', '2022-10-21 15:11:12'),
(104, '', 'Flávio Aparecido Altino ', '', '320.515.048-14', '256029465', '(11) 94068-5821', '', 'Zelador ', 'Rua Bela Cintra', '01415-002', '', '2183', 'Consolação', 'São Paulo', 'SP', 'AP 31', '', '', 'Zelador', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-21 15:24:31'),
(105, '', 'Gustavo Perez Pires ', '', '283.320.048-02', '27564800X', '(11) 91620-7749', '', '', 'Avenida Presidente Wilson', '03107-001', '', '1591', 'Vila Independencia ', 'São Paulo', 'SP', 'Casa ', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-21 15:32:50'),
(106, '', 'Rogério de Souza Ferreira ', '', '366.335.318-42', '34715316', '(11) 96175-5018', '', 'Vigilante ', 'Rua Arraial dos Gorinos', '08460-080', '', '08', 'Jardim Soares', 'São Paulo', 'SP', 'Casa 03', '', '', 'Vigilante ', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-21 15:41:22'),
(107, '', 'MAYARA KELLY ALVES ', '', '553.032.528-92', '634211213', '(11) 93460-2061', '', 'Cabeleireira ', 'Rua Vitória Régia', '04854-550', '', '6411 93460', 'Jardim Azano II', 'São Paulo', 'SP', 'CASA', '', '04854-040', 'Rua Professor Haroldo Nogueira', '28', 'São Paulo', 'SP', 'Chácara Cocaia', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-25 11:36:37'),
(108, 'GABRIELA FERREIRA DOS SANTOS', '', '', '106.226.296-46', '647436954', '(11) 96703-2080', '', 'PASTELARIA ', 'Avenida Marcial Lourenço Serodio', '07151-370', '45.834.873/0001-38', '283', 'Cidade Seródio', 'Guarulhos', 'SP', '', '', '07179-167', 'Rua Rafael da Silva Santos', '302', 'Guarulhos', 'SP', 'Jardim Santa Paula', '', '', 0, 1, 'fernanda.ribeiro', '2022-10-25 12:27:39'),
(109, '', 'Pedro (indic davi)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-25 12:54:59'),
(110, '', 'Nayara Oliveira Santos ', '', '392.958.638-01', '340014271', '(11) 98549-4172', '', 'EXPERT EM INTERACAO ', 'Rua Bartolomeu de Torales', '02310-020', '', '259', 'Vila Mazzei', 'São Paulo', 'SP', 'Casa ', '', '03155-000', 'Avenida Professor Luiz Ignácio Anhaia Mello', '1383', 'São Paulo', 'SP', 'Vila Prudente', 'Trabalho ', '', 1, 2, 'manuella.santos', '2022-10-25 13:04:12'),
(111, 'EVANDRO JOSÉ DOS SANTOS ', '', '', '350.054.198-45', '441624455', '(11) 97709-2802', '', 'ADEGA', 'RUA SERRA VERMELHA', '06373-195', '', '140', 'Jardim Nova Vitória I', 'São Paulo', 'SP', 'casa', '', '06373-195', 'RUA SERRA VERMELHA', '140', 'São Paulo', 'SP', 'Jardim Nova Vitória I', 'casa', '', 0, 1, 'fernanda.ribeiro', '2022-10-25 13:50:53'),
(112, 'FÁBIO MIGUEL CARNEIRO ', '', '', '280.099.068-67', '27747706', '(11) 94869-8972', '', 'MATERIAL DE CONSTRUÇÃO ', 'Rua Schoroeder', '07273-250', '15.566.689/0001-93', '21', 'Jardim Santa Maria', 'Guarulhos', 'SP', 'CASA', '', '07273-250', 'Rua Schoroeder', '21', 'Guarulhos', 'SP', 'Jardim Santa Maria', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-25 14:05:07'),
(113, '﻿WILLIANS CARDOSO CARNEIRO ', '', '', '420.300.888-38', '395726943', '(11) 95949-0180', '', 'HAMBURGUERIA', 'Rua Santa Quitéria', '07240-200', '', '449', 'Jardim Cumbica', 'Guarulhos', 'SP', 'CASA', '', '07240-200', 'Rua Santa Quitéria', '449', 'Guarulhos', 'SP', 'Jardim Cumbica', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-25 14:22:11'),
(114, 'ANTONIO JUNIOR GONÇALVES DOS SANTOS', '', '', '428.888.298-27', '507323506', '(11) 95778-8083', '', 'ULTRAGAZ', 'Estrada Keida Harada', '08620-050', '', '21', 'Ipelândia', 'Suzano', 'SP', 'CASA', '', '08620-050', 'Estrada Keida Harada', '21', 'Suzano', 'SP', 'Ipelândia', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-25 14:34:42'),
(115, 'FERNANDA PEREIRA FREITAS', '', '', '378.503.398-27', '410920964', '(11) 99314-6391', '', 'MERCEARIA', 'Estrada do Areião', '08616-560', '46.106.826/0001-30', '2264', 'Jardim Maite', 'Suzano', 'SP', 'CASA', '', '08616-560', 'Estrada do Areião', '2264', 'Suzano', 'SP', 'Jardim Maite', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-25 15:01:20'),
(116, '', 'ESDRAS ALVES DA SILVA ', '', '369.398.488-35', '41887389', '(11) 95149-4854', '', 'BARBEIRO', 'Rua Ribeirão Preto', '08588-440', '', '55', 'Jardim Caiubi', 'Itaquaquecetuba', 'SP', 'CASA 2', '', '08588-440', 'Rua Ribeirão Preto', '55', 'Itaquaquecetuba', 'SP', 'Jardim Caiubi', 'CASA 2', '', 0, 1, 'fernanda.ribeiro', '2022-10-25 15:58:12'),
(117, '', 'Juliana Ambrósio', '', '228.257.178-94', '352824141', '(11) 94078-9532', '', 'Autonoma Vende Lanches e Vende Roupas ', 'Rua Portugal', '08558-200', '', '379', 'Vila Varela ', 'Poá', 'SP', 'Casa 01 ', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-25 16:05:14'),
(118, '', 'Cristovão Domingo ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 2, 'manuella.santos', '2022-10-25 16:10:21'),
(119, '', 'EDILSON CANDIDO JUNIOR', '', '444.016.448-08', '45132303', '(11) 99372-5357', '', '', 'Avenida Nove de Julho', '08557-100', '44.493.118/0001-74', '1071', 'Vila das Acácias', 'Poá', 'SP', 'CASA', '', '08557-505', 'Avenida Vital Brasil', '1140', 'Poá', 'SP', 'Vila Monteiro', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-25 16:13:29'),
(120, 'THAIANY DANIELA ZONTA ', '', '', '352.318.778-83', '56921096', '(11) 98491-2549', '', 'MERCADO', 'Rua Crisólita Rodrigues Pereira', '08011-340', '38.211.511/0001-25', '29', 'São Miguel Paulista', 'São Paulo', 'SP', 'CASA', '', '08011-500', 'Rua Antônio Agostinho Martins', '164', 'São Paulo', 'SP', 'Vila São Silvestre (Zona Leste)', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-25 16:21:02'),
(121, 'ALESSANDRA AP CALIFF', '', '', '414.209.488-22', '481803208', '(11) 98932-1942', '', 'MERCEARIA', 'Rua Anatole France', '04283-050', '34.946.619/0001-05', '431', 'Vila Moinho Velho', 'São Paulo', 'SP', 'CASA', '', '04283-050', 'Rua Anatole France', '431', 'São Paulo', 'SP', 'Vila Moinho Velho', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-25 16:29:35'),
(122, 'ROBINSON CAVALCANTI CUNHA', '', '', '147.124.528-46', '251079946', '(11) 95849-9423', '', 'MERCEARIA', 'Rua Sílvio Barbini', '08250-650', '', '95', 'Conjunto Residencial José Bonifácio', 'São Paulo', 'SP', '43 B ', '', '08250-650', 'Rua Sílvio Barbini', '95', 'São Paulo', 'SP', 'Conjunto Residencial José Bonifácio', '43 B ', '', 0, 1, 'fernanda.ribeiro', '2022-10-25 16:37:23'),
(123, 'ERICKSON FERREIRA CORDEIRO DE SOUZA', '', '', '452.930.918-59', '493065982', '(11) 94943-1395', '', 'TECNICO DE CELULAR', 'Rua Santa Ifigênia', '01207-000', '30.721.664/0001-00', '280', 'Santa Efigênia', 'São Paulo', 'SP', 'BOX 19', '', '03804-060', 'Rua Guilherme de Oliveira Sá', '50A', 'São Paulo', 'SP', 'Parque Boturussu', 'BOX 19', '', 0, 1, 'fernanda.ribeiro', '2022-10-25 16:58:11'),
(124, '', 'GILVONETE NUNES DE MORAES ', '', '292.010.628-77', '343768008', '(11) 95905-6883', '', 'MANICURE ', 'Rua Armindo do Prado', '08717-820', '', '23', 'Mogi Moderno', 'Mogi das Cruzes', 'SP', 'CASA', '', '08717-820', 'Rua Armindo do Prado', '23', 'Mogi das Cruzes', 'SP', 'Mogi Moderno', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-25 17:04:22'),
(125, '', 'YASMIM BATISTA DE FREITA', '', '434.821.618-52', '454908568', '(11) 99269-7472', '', 'SACOLÃO ', 'RUA ALAGOAS', '06630-245', '47.017.046/0001-87', '756', 'SANTANA DE PARNAIBA ', 'São Paulo', 'SP', 'CASA', '', '06513-100', 'Rua Vereda Tropical', '454', 'Santana de Parnaíba', 'SP', 'Chácara Estela', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 11:55:47'),
(126, '', 'ODALICE MENDONÇA DA SILVA ', '', '581.777.282-53', '537973242', '(11) 98541-7618', '', 'PANQUECARIA', 'MACHADO BITENCOURT', '04044-000', '38.302.946/0001-85', '32', 'VILA CLEMENTINO', 'SAO PAULO', 'SP', 'CASA', '', '02860-040', 'Rua Gonçalo de Andrade', '265', 'São Paulo', 'SP', 'Vila Souza', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 12:01:32'),
(127, '', 'Kelly Cristina Tanner Figueiredo Xavier ', '', '340.555.358-05', '433360203', '(11) 96548-0399', '', 'Ajudante Geral ', 'Avenida Benedito Alves Turíbio', '06160-002', '', '743', 'Padroeira', 'Osasco', 'SP', 'Casa 01 ', '', '05311-000', 'Avenida Mofarrej', '1504', 'São Paulo', 'SP', 'Vila Leopoldina', 'Trabalho', '', 1, 2, 'manuella.santos', '2022-10-26 12:05:07'),
(128, '', 'LUCICLEIDE DA SILVA SANTOS', 'LUCICLEIDE DA SILVA SANTOS', '054.837.334-52', '600035153', '(11) 96713-3477', '', 'CABELEIREIRA ', 'Avenida Cachoeira', '06413-000', '', '262', 'Vila Pindorama', 'Barueri', 'SP', 'CASA', '', '06407-070', 'Rua Melquíades Gil', '27', 'Barueri', 'SP', 'Vila Universal', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 12:07:15'),
(129, '', 'Nailah Lima de Souza ', '', '506.355.778-36', '545085391', '(11) 99154-5234', '', '', 'Rua Emílio Ribas', '06753-100', '', '26', 'Jardim Pazzini', 'Taboão da Serra', 'SP', 'Casa 06', '', '', 'Sercom Ltda ', '', '', '', '', 'Casa 06', '', 1, 2, 'manuella.santos', '2022-10-26 12:07:56'),
(130, '', 'PATRICIA FIGUEIREDO CABRAL', 'PATRICIA FIGUEIREDO CABRAL', '279.944.418-07', '357353535', '(11) 96681-5127', '', 'CABELEIREIRA ', 'Rua Ascenso Fernandes', '08081-040', '', '710A', 'Parque Paulistano', 'São Paulo', 'SP', 'CASA', '', '03873-000', 'RUA JAPARAIQUARA', '258', 'São Paulo', 'SP', 'RIO BRANCO ', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 12:12:28'),
(131, '', 'MARY LUCY DA SILVA', '', '292.631.808-14', '333004395', '(11) 94014-1814', '', 'MERCEARIA', 'Rua Mário Aspa', '04851-804', '', '93', 'Vila Narciso', 'São Paulo', 'SP', 'CASA', '', '04849-307', 'Rua Primeiro de Junho', '38', 'São Paulo', 'SP', 'Chácara Gaivotas', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 12:20:53'),
(132, '', 'RENATO CARDOSO MARIANO', '', '225.006.138-60', '332121562', '(11) 91054-0303', '', 'SERRALHEIRO', 'Rua Alberto José da Costa', '08610-060', '', '406', 'Vila Amorim', 'Suzano', 'SP', 'CASA', '', '08610-060', 'Rua Alberto José da Costa', '406', 'Suzano', 'SP', 'Vila Amorim', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 12:25:15'),
(133, '', 'DAYANE CUSTODIO SILVA', 'DAYANE CUSTODIO SILVA', '343.133.728-73', '413934627', '(11) 97552-8558', '', 'CABELELEIRA', 'AV CABORE', '06370-430', '', '40B', 'JD MARIA LIDIA', 'São Paulo', 'SP', 'CASA', '', '08260-280', 'Rua Tineciro Icibaci', '2743 B', 'São Paulo', 'SP', 'Colônia (Zona Leste)', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 12:28:51'),
(134, '', 'LUCINEIDE MARIA DA SILVA', 'LUCINEIDE MARIA DA SILVA', '378.521.068-03', '2057191', '(11) 91619-0465', '', 'PET SHOP', 'Rua Noventa e Sete', '08225-405', '', '956', 'Jardim Aurora (Zona Leste)', 'São Paulo', 'SP', 'CASA', '', '08223-358', 'Rua Airton Senna', '172', 'São Paulo', 'SP', 'Cidade Antônio Estevão de Carvalho', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 13:28:37'),
(135, '', 'Ana Paulo Stringhiny Rodrigues ', '', '416.518.458-67', '360147732', '(11) 94061-3465', '', 'Assistente Administrativo de uma Clinica Odontológica ', 'Rua Rio Branco', '06326-030', '', '33', 'Conjunto Habitacional Presidente Castelo Branco', 'Carapicuíba', 'SP', 'AP 28', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-26 13:29:40'),
(136, '', 'EDMAR FERREIRA DE MACEDO', 'EDMAR FERREIRA DE MACEDO', '443.396.310-00', '397550686', '(11) 96229-8426', '', 'PIZZARIA', 'Rua Doutor Paulo Queiroz', '03951-090', '44.339.631/0001-05', '1193', 'Jardim Nove de Julho', 'São Paulo', 'SP', 'CASA', '', '03951-090', 'Rua Doutor Paulo Queiroz', '1193', 'São Paulo', 'SP', 'Jardim Nove de Julho', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 13:33:13'),
(137, '', 'Maria Auxiliadora de Oliveira Benites', '', '288.094.018-40', '234207504', '(11) 97603-5737', '', 'Professora', 'Rua São Januário', '02245-140', '', '175', 'Parada Inglesa', 'São Paulo', 'SP', 'Casa 01 ', '', '02250-000', 'Rua Rio Doce', '407 - 409', 'São Paulo', 'SP', 'Vila Gustavo', 'Trabalho', '', 1, 2, 'manuella.santos', '2022-10-26 13:37:27'),
(138, '', 'FERNANDO MAGALHAES CALIXTO DA SILVA', 'FERNANDO MAGALHAES CALIXTO DA SILVA', '429.090.358-40', '504143858', '(11) 91244-4832', '', 'LOJA DE ROUPA', 'Avenida Itaquaquecetuba', '08577-210', '36.911.639/0001-76', '86', 'Vila Monte Belo', 'Itaquaquecetuba', 'SP', 'CASA', '', '08577-440', 'Rua Batatais', '35', 'Itaquaquecetuba', 'SP', 'Vila Bartira', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 13:37:41'),
(139, '', 'ALEXANDRE DOS SANTOS LIMA', '', '166.552.438-31', '271225026', '(11) 91453-5546', '', 'TATOO', 'Rua Godofredo Osório Novaes', '08531-170', '', '88', 'Vila Central', 'Ferraz de Vasconcelos', 'SP', 'SALA 4', '', '08514-180', 'Rua Hortência Alves da Silva', '135', 'Ferraz de Vasconcelos', 'SP', 'Vila São Sebastião', 'SALA 4', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 13:42:12'),
(140, 'ELIOMAR DE SOUSA LEAO FILHO ', '', '', '355.767.028-75', '494763309', '(11) 99014-1676', '', 'PIZZARIA', 'BERNARDINO FANGANIELLO', '02512-000', '36.033.394/0001-21', '403', 'CASA VERDE', 'SAO PAULO', 'SP', 'CASA', '', '02618-110', 'Rua Antônio Dias da Silva', '215', 'São Paulo', 'SP', 'Vila Amália (Zona Norte)', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 13:46:56'),
(141, 'GILVANDES ALMEIDA BRITO ', 'GILVANDES ALMEIDA BRITO ', '', '166.508.898-22', '22242977X', '(11) 98724-3137', '', 'MINI PADARIA', 'Avenida Padre Arlindo Vieira', '04166-003', '27.978.277/0001-40', '3236', 'Jardim Vergueiro (Sacomã)', 'São Paulo', 'SP', 'CASA', '', '09890-002', 'Avenida Álvaro Guimarães', '631', 'São Bernardo do Campo', 'SP', 'Planalto', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 13:51:37'),
(142, '', 'FERNANDA DE CASSIA CRISPIN ZANDONI', 'FERNANDA DE CASSIA CRISPIN ZANDONI', '386.808.658-77', '42024179', '(11) 96038-3686', '', 'COSTUREIRA', 'Rua Eugênia Brandão', '08474-340', '', '19A', 'Jardim Pérola I', 'São Paulo', 'SP', 'CASA', '', '08474-340', 'Rua Eugênia Brandão', '19A', 'São Paulo', 'SP', 'Jardim Pérola I', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 13:54:27'),
(143, '', 'CAROLINE SANTOS ROCHA', 'CAROLINE SANTOS ROCHA', '484.666.320-__', '4507511682', '(11) 98322-6653', '', 'MERCEARIA', 'Rua Bartolomeu Bermejo', '02565-000', '', '311', 'Casa Verde Alta', 'São Paulo', 'SP', 'CASA 1', '', '02565-000', 'Rua Bartolomeu Bermejo', '311', 'São Paulo', 'SP', 'Casa Verde Alta', 'CASA 1', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 13:58:44'),
(144, 'MAISA FRANCISCA RIBEIRO', '', '', '168.886.688-43', '265407249', '(11) 97551-5052', '', 'MERCEARIA', 'Rua Guilherme da Cruz', '03726-070', '', '30', 'Engenheiro Goulart', 'São Paulo', 'SP', 'CASA B', '', '03726-070', 'Rua Guilherme da Cruz', '30', 'São Paulo', 'SP', 'Engenheiro Goulart', 'CASA B', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 14:03:21'),
(145, '', 'Renata Silva de Souza', '', '244.666.138-69', ' 546919858', '(11) 98886-7390', '', 'Autonoma Cuidadora de Criança', 'Rua Maria Hilda Prudente Teixeira', '02675-031', '', '40', 'Parque Taipas', 'São Paulo', 'SP', 'Casa 02 ', '', '', 'Autonoma Cuidadora de Criança', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-26 14:05:18'),
(146, '', 'LAMARQUES GUIMARAES DA ROCHA', '', '287.551.478-44', '392846457', '(11) 95287-6512', '', 'BAR', 'AV PROF GIOIA MARTINS', '05632-020', '', '362', 'Jardim Monte Kemel', 'São Paulo', 'SP', 'LOJA 3', '', '05632-100', 'RUA PROFESSOR CORIOLANO MARTINS', '70', 'São Paulo', 'SP', 'Jardim Monte Kemel', 'LOJA 3', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 14:09:00'),
(147, '', 'Joseane Santos da Silva ', '', '902.048.082-00', '524566525', '(11) 95218-9976', '', '', 'Rua Campo Grande', '06162-220', '', '65', 'Padroeira', 'Osasco', 'SP', 'Casa 5', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-26 14:26:24'),
(148, '', 'SONIA APARECIDA DE FREITA', '', '169.427.168-47', '25663578X', '(11) 96254-4018', '', 'PRODUTO DE LIMPEZA', 'Rua Osasco', '07713-190', '', '173', 'Serpa', 'Caieiras', 'SP', 'CASA', '', '07713-190', 'Rua Osasco', '173', 'Caieiras', 'SP', 'Serpa', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 14:28:24'),
(149, '', 'LUCINEIA PIRES DO PRADO', 'LUCINEIA PIRES DO PRADO', '225.588.418-66', '28148496X', '(11) 96100-4352', '', 'BAR', '', '', '45.058.111/0009-7_', '223', '', '', '', '', '', '07713-190', 'Rua Osasco', '223', 'Caieiras', 'SP', 'Serpa', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 14:33:42'),
(150, '', 'SHIRLEY SANCHES NOVAIS', '', '146.800.278-35', '226069552', '(11) 91573-8027', '', 'PRODUTO DE LIMPEZA', 'Rua dos Jasmins', '08391-210', '27.612.234/0001-46', '158', 'Parque das Flores', 'São Paulo', 'SP', 'CASA FUNDOS ', '', '08391-210', 'Rua dos Jasmins', '158', 'São Paulo', 'SP', 'Parque das Flores', 'CASA FUNDOS ', '', 0, 0, 'fernanda.ribeiro', '2022-10-26 14:39:09'),
(151, '', 'Thatiany Helena Farias', '', '332.605.448-36', '41536962', '(11) 99583-7869', '', 'Professora', 'Rua Soldado Teodoro Francisco Ribeiro', '02180-110', '', '60', 'Parque Novo Mundo', 'São Paulo', 'SP', 'AP 65 TOR 3', '', '02250-000', 'Rua Rio Doce', '407 - 409', 'São Paulo', 'SP', 'Vila Gustavo', 'AP 65 TOR 3', '', 1, 2, 'manuella.santos', '2022-10-26 14:40:50'),
(152, '', 'RUY CARLOS NOVAIS DE OLIVEIRA JUNIOR', '', '355.234.368-79', '447900328', '(11) 99340-5401', '', 'ADEGA ', 'Rua Henrique Giovanni Xavier', '08587-770', '46.014.877/0001-32', '486 B', 'Parque Residencial Scaffid II', 'Itaquaquecetuba', 'SP', 'CASA 1', '', '07417-215', 'Rua José Pereira de Aquino', '5', 'Arujá', 'SP', 'Parque Rodrigo Barreto', 'CASA 1', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 14:49:51'),
(153, '', 'RONALD MARQUES RODRIGUES', '', '279.596.728-65', '249933925', '(11) 96084-9462', '', 'MERCADINHO', 'Rua Dolores de Aquino', '08750-790', '43.028.366/0001-81', '222', 'Jundiapeba', 'Mogi das Cruzes', 'SP', 'CASA', '', '08750-120', 'Avenida Venezuela', '10', 'Mogi das Cruzes', 'SP', 'Jundiapeba', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 14:53:18'),
(154, '', 'Mariana Santos de Jesus ', '', '475.579.268-11', '380717281', '(11) 93940-3925', '', '', 'Rua Astorga', '06363-330', '', '6', 'Vila Cristina', 'Carapicuíba', 'SP', 'Casa ', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-26 15:07:08'),
(155, 'TIAGO SOUSA BEZERRA DA SILVA ', 'TIAGO SOUSA BEZERRA DA SILVA ', '', '386.779.018-33', '406916597', '(11) 96015-9611', '', 'GÁS', 'Estrada Moraes', '06814-200', '27.722.176/0001-03', '190', 'Jardim dos Moraes', 'Embu das Artes', 'SP', 'CASA', '', '06824-230', 'Rua Sarandi', '84', 'Embu das Artes', 'SP', 'Jardim da Luz', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 15:07:21');
INSERT INTO `clientes` (`id`, `nome`, `sobrenome`, `socio`, `cpf`, `rg`, `tel`, `tel2`, `atividade`, `endereco`, `cep`, `cnpj`, `numero`, `bairro`, `municipio`, `uf`, `complemento`, `referencia`, `cep_emp`, `lougadouro_emp`, `number_emp`, `municipio_emp`, `uf_emp`, `bairro_emp`, `complemento_emp`, `referencia_emp`, `status_cliente`, `id_cliente`, `user_created`, `data_hora_cliente`) VALUES
(156, '', 'DIAGOBERTO DOS SANTOS ', 'DIAGOBERTO DOS SANTOS ', '048.468.978-93', '178375408', '(11) 97806-3180', '', 'LANCHONETE ', 'Rua Angico', '03924-290', '', '27', 'Jardim Dona Sinhá', 'São Paulo', 'SP', 'CASA', '', '03924-290', 'Rua Angico', '27', 'São Paulo', 'SP', 'Jardim Dona Sinhá', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 15:13:26'),
(157, '', 'Caique de Matos Pereira ', '', '468.122.248-80', '397413130', '(11) 93208-9561', '', 'Operador de Som ', 'Rua do Astronauta', '06528-275', '', '526', 'Vila Amaral', 'Santana de Parnaíba', 'SP', 'Casa 04', '', '', 'Operador de Som', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-26 15:16:35'),
(158, '', 'SOLANGE GEREZ MARCONDES', '', '136.219.658-40', '195458680', '', '', 'RESTAURANTE ', 'NOSSA SENHORA DO SABARA', '04447-021', '14.700.336/0001-71', '4217', 'VILA EMIR', 'SAO PAULO', 'SP', 'CASA', '', '04446-060', 'Avenida Assaré', '171', 'São Paulo', 'SP', 'Jardim Sabará', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 15:19:34'),
(159, 'DANIEL DOS SANTOS ', 'DANIEL DOS SANTOS ', '', '230.903.148-86', '455601343', '(11) 95929-7043', '', 'MERCEARIA', 'Rua Valência de Alcântara', '04679-220', '', '42', 'Vila Santana', 'São Paulo', 'SP', 'CASA', '', '04679-220', 'Rua Valência de Alcântara', '42', 'São Paulo', 'SP', 'Vila Santana', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 15:23:28'),
(160, '', 'Michele Castro Rodrigues', '', '454.595.718-80', '', '(11) 91313-5220', '', 'Autonoma Nail Design', 'Rua Augusto José Avancini', '05568-050', '', '217', 'Jardim São Jorge (Raposo Tavares)', 'São Paulo', 'SP', 'Casa 5 ', '', '', 'Autonoma Nail Design', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-26 15:26:55'),
(161, '', 'ANDRÉ LUIZ FARIA ', '', '362.752.998-78', '3791043070', '(11) 99979-8499', '', 'ADEGA ', 'Rua Benedito Palmiro Rodrigues', '07417-285', '43.157.175/0001-10', '48', 'Parque Rodrigo Barreto', 'Arujá', 'SP', 'CASA 2', '', '07417-180', 'Rua José Cícero Soares', '215', 'Arujá', 'SP', 'Parque Rodrigo Barreto', 'CASA 2', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 15:31:12'),
(162, 'RICARDO DE SOUZA LOPES', 'RICARDO DE SOUZA LOPES', '', '214.116.528-86', '29721699', '(11) 91083-2653', '', 'BARBEARIA ', 'Rua Roque de Morais', '02721-030', '', '234', 'Limão', 'São Paulo', 'SP', 'CASA', '', '07863-005', 'Estrada Manoel de Jesus', '335', 'Franco da Rocha', 'SP', 'Vila Palmares', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 15:36:01'),
(163, '', 'FLAVIA MARIA NASCIMENTO DOS SANTOS ', 'FLAVIA MARIA NASCIMENTO DOS SANTOS ', '301.419.558-80', '326178144', '(11) 97891-8697', '', 'MERCEARIA', 'Rua Carlos Roberto', '08450-110', '', '21', 'Lajeado', 'São Paulo', 'SP', 'CASA', '', '08450-110', 'Rua Carlos Roberto', '21', 'São Paulo', 'SP', 'Lajeado', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 15:42:57'),
(164, '', 'Jorge Miguel Arcanjo', '', '216.496.158-76', '285393315', '(11) 97716-1225', '', 'Gerente ', 'Avenida Carlos Lacerda', '05789-001', '', '1410', 'Pirajussara ', 'São Paulo', 'SP', 'Casa 1', '', '01415-005', 'Rua Bela Cintra', '1579', 'São Paulo', 'SP', 'Consolação', 'Trabalho ', '', 1, 2, 'manuella.santos', '2022-10-26 15:43:08'),
(165, '', 'MARIA DAS GRAÇAS BARBOSA DOS SANTOS', 'MARIA DAS GRAÇAS BARBOSA DOS SANTOS', '218.811.378-05', '36327964', '(11) 94818-9584', '', 'RESTAURANTE ', 'Rua Capannori', '05879-390', '', '103', 'Chácara Santa Maria', 'São Paulo', 'SP', 'CASA', '', '05879-390', 'Rua Capannori', '103', 'São Paulo', 'SP', 'Chácara Santa Maria', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 15:47:39'),
(166, '', 'CLEBER LIMA SANTOS ', 'CLEBER LIMA SANTOS ', '294.842.118-79', '279605900', '(11) 99338-4695', '', 'SALÃO DE CABELEIREIRO ', 'Estrada do Aderno', '06390-070', '31.876.849/0001-57', '154', 'Vila América', 'Carapicuíba', 'SP', 'CASA', '', '06317-170', 'Rua Alerta', '30', 'Carapicuíba', 'SP', 'Vila Rosa', 'CASA 1', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 15:51:22'),
(167, '', 'Hortencia Torres', '', '395.416.108-70', '365340510', '(11) 98872-1219', '', 'Assistente Comercial ', 'Avenida Doutor José Maniero', '02997-200', '', '135', 'Estância Jaraguá', 'São Paulo', 'SP', 'AP 2 BL 11', '', '', 'THE PAY SOLUCOES DE PAGAMENTOS EIRELI', '', '', '', '', '', '', 0, 2, 'manuella.santos', '2022-10-26 15:51:23'),
(168, '', 'DANIELI ALVES DA SILVA CARDOSO', '', '327.045.958-01', '451939189', '(11) 95734-0650', '', 'PAPELARIA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 15:52:57'),
(169, '', 'LEANDRO APARECIDO GARCIA DE LIRA', '', '213.476.238-17', '33315669', '(11) 99928-2304', '', 'SUPLEMENTOS', '', '', '46.366.626/0001-56', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 15:55:40'),
(170, '', 'ANDERSON DE FREITAS DE AQUINO ', '', '', '480876538', '(11) 98989-1023', '', 'TABACARIA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 15:57:48'),
(171, '', 'Nicoli Fabri Alves Almeida', '', '468.707.148-19', '397344156', '(11) 94191-6310', '', '', 'Alameda Jerônimo Ferreira Menezes', '06753-120', '', '95', 'Jardim Caner', 'Taboão da Serra', 'SP', 'Casa 2 ', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-26 15:58:50'),
(172, '', 'FRANCISCO EDILSON FIALHO OLIVEIRA', '', '192.658.368-06', '20814292', '(11) 99574-4688', '', 'BAR', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 16:00:18'),
(173, '', 'DANILO FERREIRA JUNIOR ', '', '291.367.758-43', '243810180', '(11) 93152-7070', '', 'PIZZARIA', '', '', '22.381.336/0001-73', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 16:02:03'),
(174, '', 'ADRIANO DA SILVA FERNANDES ', '', '', '441278462', '', '', 'PIZZARIA', 'SATURNINO PEREIRA', '08411-000', '29.260.154/0001-02', '', 'VILA SANTA CRUZ (ZONA LESTE)', 'SAO PAULO', 'SP', 'LOJA 701/707', '', '', '', '', '', '', '', 'LOJA 701/707', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 16:03:32'),
(175, '', 'ALMIR DE OLIVEIRA SOUZA', 'ALMIR DE OLIVEIRA SOUZA', '292.119.478-39', '26517289', '(11) 99152-2901', '', 'FÁBRICA DE SALGADO', '', '', '23.741.533/0001-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 16:05:07'),
(176, '', 'CLEIA APARECIDA DA SILVA', '', '324.936.598-05', '4445768', '(11) 94609-1765', '', 'DOCERIA CAFETERIA', '', '', '45.418.190/0001-08', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 16:07:01'),
(177, '', 'Crislaine Lopes Araújo ', '', '350.113.888-16', '448824061', '(11) 97563-7314', '', 'Operador de Atendimento Carrefour ', 'Rua César Ladeira', '06152-010', '', '105 D', 'Veloso', 'Osasco', 'SP', 'Casa 06', '', '06460-030', 'Avenida Piracema', '699', 'Barueri', 'SP', 'Tamboré', 'Trabalho ', '', 1, 2, 'manuella.santos', '2022-10-26 16:07:34'),
(178, '', 'Thaila Francisca Arruda ', '', '347.554.088-65', '30886929', '(11) 95866-4375', '', 'Autonoma ', 'Rua Lavinio Salles Arcuri', '02564-000', '', '321', 'Casa Verde Alta', 'São Paulo', 'SP', 'Casa 01 ', '', '', 'Autonoma ', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-26 16:14:24'),
(179, '', 'EDIVAN DE OLIVEIRA RIBEIRO  ', '', '', '53681661X', '', '', 'LANCHONETE ', 'Avenida São João', '01211-101', '', '2066', 'Santa Cecília', 'São Paulo', 'SP', 'LJ 2067', '', '01211-101', 'Avenida São João', '2066', 'São Paulo', 'SP', 'Santa Cecília', 'LJ 2067', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 16:17:57'),
(180, '', 'Karen Cristina dos Santos Carratu', '', '334.503.558-80', '253485605', '(11) 91477-5150', '', '', 'Rua Padre Ângelo Gioielli', '05567-250', '', '76', 'Jardim São Jorge (Raposo Tavares)', 'São Paulo', 'SP', 'Casa ', '', '', '', '', '', '', '', '', '', 1, 2, 'manuella.santos', '2022-10-26 16:19:23'),
(181, '', 'RICARDO SANTATO PASCHOAL', '', '278.549.918-20', '237807889', '(11) 98973-0324', '', 'ROTISSERIA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 16:19:45'),
(182, 'CLAUDIA CRISTINA CHAVES MARTINS ', '', '', '283.762.408-03', '273164247', '(11) 99540-2364', '', 'LANCHONETE ', 'Avenida Santo Afonso', '04426-000', '17.114.170/0001-08', '279', 'Jardim Miriam', 'São Paulo', 'SP', 'CASA 4', '', '04426-000', 'Avenida Santo Afonso', '268', 'São Paulo', 'SP', 'Jardim Miriam', 'CASA 4', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 16:23:29'),
(183, '', 'MARCELO MIRANDA DA SILVA', '', '979.224.985-00', '932957072', '', '', '', 'DOS GUARANIS', '08556-010', '43.085.429/0001-31', '155', 'JARDIM MEDINA', 'POA', 'SP', 'CASA 1', '', '08556-030', 'Avenida Elvira', '286', 'Poá', 'SP', 'Jardim Medina', 'CASA 1', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 16:26:10'),
(184, '', 'Marcio Fortunato ', '', '335.412.328-11', '332797326', '(11) 96339-2177', '', 'Ajudande Motorista ', 'Rua Manuel Bueno da Fonseca', '08121-000', '', '502', 'Jardim São Luís (Zona Leste)', 'São Paulo', 'SP', 'Casa 01 ', '', '07112-100', 'Rua José Campanella', '454', 'Guarulhos', 'SP', 'Macedo', 'Trabalho ', '', 1, 2, 'manuella.santos', '2022-10-26 16:26:25'),
(185, '', 'Lais Tereza Melo de Abreu', '', '348.611.098-50', '565577554', '(11) 98401-4461', '', 'Auxiliar Adiministrativo', 'Rua Souza Campos', '09172-580', '', '26', 'Vila Junqueira', 'Santo André', 'SP', 'Casa ', '', '09090-401', 'Rua Catequese', '227', 'Santo André', 'SP', 'Vila Guiomar', 'Casa ', 'ANDAR 12 SALA 121', 1, 3, 'manuella.santos', '2022-10-26 16:33:29'),
(186, '', 'MARTA PEREIRA DA SILVA', '', '259.741.018-80', '29154907', '(11) 99455-2891', '', 'LOJA AÇAI', 'Rua Francisco Alarico Bérgamo', '08230-011', '30.125.078/0001-01', '1609', 'São Miguel Paulista', 'São Paulo', 'SP', 'CASA', '', '08230-700', 'Rua Flor da Verdade', '44', 'São Paulo', 'SP', 'Vila Verde', 'CASA', '', 0, 0, 'fernanda.ribeiro', '2022-10-26 16:34:46'),
(187, '', 'GABRIEL DO PATROCINIO PEDRO', 'GABRIEL DO PATROCINIO PEDRO', '379.159.028-65', '460545887', '(11) 95343-9941', '', 'LOJA DE ACESSORIO', 'Rua Coronel Souza Franco', '08710-020', '', '440', 'Centro', 'Mogi das Cruzes', 'SP', 'BOX 112', '', '02346-000', 'Avenida Professora Virgília Rodrigues Alves de Carvalho Pinto', '136', 'São Paulo', 'SP', 'Jardim Leonor Mendes de Barros', 'CASA 5', '', 0, 1, 'fernanda.ribeiro', '2022-10-26 16:38:22'),
(188, '', 'Marcelo Gonzaga Arnoni ', '', '185.107.708-16', '223401249', '(11) 94065-1896', '', 'Cozinheiro ', 'Rua Capitão João Noronha', '02418-050', '', '113', 'Parque Mandaqui', 'São Paulo', 'SP', 'Casa ', '', '04532-020', 'Rua Professor Tamandaré Toledo', '25', 'São Paulo', 'SP', 'Itaim Bibi', 'Casa ', '', 1, 3, 'manuella.santos', '2022-10-26 16:39:17'),
(189, '', 'Rodrigo Silas Ferreira ', '', '311.917.058-54', '33898973', '(11) 97171-2789', '', 'Encarregado de Portaria ', 'Rua São José', '07062-152', '', '240', 'Parque Santo Antônio', 'Guarulhos', 'SP', 'Casa 01 ', '', '07114-000', 'Avenida Doutor Renato de Andrade Maia', '1355', 'Guarulhos', 'SP', 'Parque Renato Maia', 'Casa 01 ', 'CONJ 1', 1, 3, 'manuella.santos', '2022-10-26 16:47:24'),
(190, '', 'Flávia Maria de Araujo ', '', '362.998.148-88', '248884074', '(11) 97448-1035', '', 'Zelador ', 'Rua Augusta', '01305-100', '', '719', 'Consolação', 'São Paulo', 'SP', 'AP 0', '', '', 'Zelador ', '', '', '', '', '', '', 1, 3, 'manuella.santos', '2022-10-26 16:54:05'),
(191, '', 'Felipe Geovane Rosa Lopes', '', '125.910.527-58', '33124272', '(11) 93450-6437', '', 'Autonomo', 'Rua São João Dássio', '02246-040', '', '161', 'Vila Dom Pedro II', 'São Paulo', 'SP', 'Casa 01 ', '', '', 'Autonomo ', '', '', '', '', '', '', 1, 3, 'manuella.santos', '2022-10-27 09:16:14'),
(192, '', 'Ingrid Coelho da Silva ', '', '461.555.688-80', '470795931', '(11) 91201-2657', '', 'Vendedora em uma Ótica', 'Rua Emílio Ribas', '09990-230', '', '181', 'Conceição', 'Diadema', 'SP', 'Casa', '', '09721-000', 'Avenida Rotary', '624', 'São Bernardo do Campo', 'SP', 'Centro', 'Casa', 'PISO L1 SBC PLAZA SHOPPING ', 1, 2, 'manuella.santos', '2022-10-27 10:56:17'),
(193, 'ANDERSON DA CONSOLAÇÃO SOARES', '', '', '339.010.918-82', '418029490', '(11) 96453-8519', '', '', '', '', '30.567.107/0001-87', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-10-27 12:02:42'),
(194, '', 'SELMA AMBROSIO DOS SANTOS ', '', '307.269.378-19', '172167279', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-10-27 12:05:50'),
(195, 'JOÃO ENRIQUE DA FONSECA ABRANTE ', '', '', '', '328140089', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-10-27 12:08:37'),
(196, '', 'Suellen Promocena Freire ', '', '131.209.766-36', '407572090', '(19) 99465-0319', '', 'Atendente ', 'Rua Edenilson Martins', '13053-224', '', '10', 'Jardim Marisa', 'Campinas', 'SP', 'Casa 02 ', '', '04723-000', 'Avenida João Dias', '123', 'São Paulo', 'SP', 'Santo Amaro', 'Trabalho ', '', 1, 2, 'andressa.fernanda', '2022-10-27 13:28:55'),
(197, '', 'Sergio Gomes Araujo Jacó', '', '352.282.248-07', '408452614', '(11) 96928-3788', '', 'Operador Forno Normalização C', 'Rua Jaracatia', '05754-071', '', '859', 'Jardim Umarizal', 'São Paulo', 'SP', 'BL 1 AP 74 ', '', '', 'CINPAL PEÇAS ORIGINAIS ', '', '', '', '', 'BL 1 AP 74 ', '', 1, 2, 'andressa.fernanda', '2022-10-27 13:31:27'),
(198, '', 'RENATA SCHIMIDT MARTINEZ MACHADO', 'RENATA SCHIMIDT MARTINEZ MACHADO', '293.488.128-82', '247291158', '(11) 99515-9908', '', 'AGENTE ADMINISTRATIVO II', 'Rua Professor Rocha Vaz', '02460-090', '', '110', 'Santa Teresinha', 'São Paulo', 'SP', 'CASA', '', '02460-090', 'Rua Professor Rocha Vaz', '110', 'São Paulo', 'SP', 'Santa Teresinha', 'CASA', '', 0, 2, 'dani.ribeiro', '2022-10-28 10:59:51'),
(199, '', 'Anderson da Conceição Gonçalves', '', '311.221.288-60', '27038313X', '(11) 94515-3064', '', 'Controlador (A) Acesso', 'Rua José Amaro de Oliveira', '06695-010', '', '114', 'Jardim Portela', 'Itapevi', 'SP', 'Casa', '', '04578-000', 'Avenida das Nações Unidas', '12399', 'São Paulo', 'SP', 'Brooklin Paulista', 'Trabalho ', '', 1, 2, 'andressa.fernanda', '2022-10-28 11:05:35'),
(200, '', 'WELLINGTON DAS GRAÇAS DE SOUZA', 'WELLINGTON DAS GRAÇAS DE SOUZA', '450.697.308-94', '524029581', '(11) 94996-9275', '', '', 'Rua Clementina', '08576-280', '', '119', 'VILA VIRGINIA', 'ITAQUAQUECETUBA', 'SP', 'CASA', '', '08576-280', 'Rua Clementina', '119', 'Itaquaquecetuba', 'SP', 'Vila Virgínia', 'CASA', '', 0, 2, 'dani.ribeiro', '2022-10-28 11:06:13'),
(201, '', 'Arildo Ferreira dos Santos ', '', '127.920.156-83', '63118088', '(11) 98672-2923', '', 'Porteiro ', 'Rua Paschoal Moreira', '07845-170', '', '176', 'Vila Ida', 'Franco da Rocha', 'SP', 'Casa 02 ', '', '01422-001', 'Alameda Franca', '917', 'São Paulo', 'SP', 'Jardim Paulista', 'Trabalho ', '', 1, 2, 'andressa.fernanda', '2022-10-28 11:17:31'),
(202, '', 'Viviane Inacio Ferreira ', '', '306.266.808-32', '238108466', '(11) 94765-6169', '', 'Auxiliar de Produção', 'Rua Dom Bento Pickel', '02544-000', '', '871', 'Casa Verde Alta', 'São Paulo', 'SP', 'Casa 01 ', '', '02544-000', 'Rua Dom Bento Pickel', '1175', 'São Paulo', 'SP', 'Casa Verde Alta', 'Trabalho', '', 1, 2, 'andressa.fernanda', '2022-10-28 11:26:38'),
(203, '', 'RESEANE CARDOSO DE AGUIAR', 'RESEANE CARDOSO DE AGUIAR', '373.330.768-22', '413205861', '(11) 97188-5039', '', 'COMERCIANTE (MERCADO)', 'Rua Vênus', '08694-060', '', '197', 'Jardim Revista', 'Suzano', 'SP', 'CASA', '', '08694-060', 'Rua Vênus', '197', 'Suzano', 'SP', 'Jardim Revista', 'CASA', '', 0, 2, 'dani.ribeiro', '2022-10-28 11:32:46'),
(204, '', 'MOACYR PINHEIRO BARBOSA', 'MOACYR PINHEIRO BARBOSA', '061.446.618-08', '18616929', '(11) 94829-7556', '', '', 'Rua Itajubá', '08573-010', '', '199', 'Vila Virgínia', 'Itaquaquecetuba', 'SP', 'CASA', '', '08573-010', 'Rua Itajubá', '199', 'Itaquaquecetuba', 'SP', 'Vila Virgínia', 'CASA', '', 0, 2, 'dani.ribeiro', '2022-10-28 11:38:08'),
(205, '', 'Alexandre Valentinari Junior ', '', '431.241.178-67', '489205082', '(15) 99846-4978', '', 'Bolsista ', 'Rua 24 de Marco ', '18150-000', '', '254', 'undefined', 'Ibiúna', 'SP', 'Casa 03', '', '18150-000', 'Av Capital Manoel de Oliveira Carvalho ', '51', 'Ibiúna', 'SP', 'Centro', 'Trabalho ', '', 1, 2, 'andressa.fernanda', '2022-10-28 11:40:17'),
(206, 'Sidineia Aparecida Ribeiro', 'Sidineia Aparecida Ribeiro', '', '233.781.958-27', '37.376.610', '(15) 99631-6822', '(15) 99624-5148', 'serviços gerais', 'Rua Leonor Rodrigues de Góes', '', '', '15', 'Rosarial', 'Ibiúna', 'SP', '', 'Passando o frigorífico, subir a direita, descer a direita, segunda a esquerda', '18150-000', 'Estrada municipal Campo Verde', '5', 'Ibiúna', 'SP', 'Campo Verde', '', '', 1, 2, 'fernanda.oliveira', '2022-10-28 11:40:37'),
(207, '', 'VICTOR LIMA ARAUJO', 'VICTOR LIMA ARAUJO', '449.219.958-69', '55987590', '(11) 99009-5208', '', '', 'Rua Oswaldo Teixeira', '08558-210', '', '120', 'Vila Varela', 'Poá', 'SP', 'CASA', '', '08558-210', 'Rua Oswaldo Teixeira', '120', 'Poá', 'SP', 'Vila Varela', 'CASA', '', 0, 2, 'dani.ribeiro', '2022-10-28 11:43:22'),
(208, '', 'Sidia Mara Lourenço ', '', '139.794.208-84', '22081322X', '(11) 98734-0478', '', 'Pensionista ', 'Rua Barão do Rio Branco', '06050-280', '', '2', 'Jaguaribe', 'Osasco', 'SP', 'Casa ', '', '', 'Pensionista', '', '', '', '', '', '', 1, 2, 'andressa.fernanda', '2022-10-28 11:48:00'),
(209, 'ADILSON  SANTOS BISPO', 'ADILSON  SANTOS BISPO', '', '264.032.568-07', '276729328', '(11) 96204-7585', '', 'LEITURISTA', 'Rua Diácono Cícero Pereira da Silva', '08535-130', '', '85', 'Conjunto Residencial Presidente Castello Branco', 'Ferraz de Vasconcelos', 'SP', 'CASA 01', '', '08535-130', 'Rua Diácono Cícero Pereira da Silva', '85', 'Ferraz de Vasconcelos', 'SP', 'Conjunto Residencial Presidente Castello Branco', 'CASA 01', '', 0, 2, 'dani.ribeiro', '2022-10-28 11:49:38'),
(210, '', 'ANA PAULA AZEVÊDO VIEIRA', 'ANA PAULA AZEVÊDO VIEIRA', '455.103.148-85', '540243267', '(11) 98206-5526', '', '', 'Rua Recife', '08573-340', '', '114', 'Jardim Anita', 'Itaquaquecetuba', 'SP', 'CASA', '', '08573-340', 'Rua Recife', '114', 'Itaquaquecetuba', 'SP', 'Jardim Anita', 'CASA', '', 0, 2, 'dani.ribeiro', '2022-10-28 11:54:13'),
(211, '', 'Luciano Antonio de Godoy Junior ', '', '178.481.498-97', '275560272', '(11) 91446-7533', '', 'Serralheiro', 'Rua Francisco Leonel dos Santos', '06162-210', '', '33', 'Padroeira', 'Osasco', 'SP', 'Casa 01 ', '', '06230-100', 'Rua Amador Bueno', '39', 'Osasco', 'SP', 'Piratininga', 'Trabalho ', '', 1, 2, 'andressa.fernanda', '2022-10-28 11:55:36'),
(212, '', 'Rosangela Sampaio Coutinho ', '', '246.625.328-33', '265498090', '(11) 98146-2345', '', 'Auxiliar de Atendimento ao Cliente ', 'Rua Junkishiro Arakawa', '06322-250', '', '56', 'Jardim Carapicuíba', 'Carapicuíba', 'SP', 'Casa 02 ', '', '', 'Supermercados Irmaos lopes S/A', '', '', '', '', '', '', 0, 0, 'andressa.fernanda', '2022-10-28 12:02:02'),
(213, '', 'ARIELEN ALINE CANDIDO', 'ARIELEN ALINE CANDIDO', '459.994.358-46', '559411820', '(11) 94126-9365', '', '', 'Rua Matathias Nogueira Novaes', '08743-480', '', '58', 'Jardim Esperança', 'Mogi das Cruzes', 'SP', 'CASA', '', '08743-480', 'Rua Matathias Nogueira Novaes', '58', 'Mogi das Cruzes', 'SP', 'Jardim Esperança', 'CASA', '', 0, 2, 'dani.ribeiro', '2022-10-28 12:06:24'),
(214, '', 'Victor Santos Souza', '', '455.137.548-94', '455120535', '(11) 94121-7169', '', 'Analista Suporte JR', 'Alameda Sabiá', '06428-110', '', '1185', 'Residencial Morada dos Pássaros-Aldeia da Serra', 'Barueri', 'SP', 'Casa ', '', '', 'STEFANINI CONSULTORIA E ASSESSORIA EM INFO ', '', '', '', '', '', '', 1, 2, 'andressa.fernanda', '2022-10-28 12:12:57'),
(215, '', 'KIMBERLY GABRIELLE DA SILVA', 'KIMBERLY GABRIELLE DA SILVA', '437.135.708-33', '', '(11) 94883-3622', '', 'AUX. E-COMMERCE', 'Rua Américo Trufeli', '08527-052', '', '35', 'Parque Dourado', 'Ferraz de Vasconcelos', 'SP', 'CASA', '', '08527-052', 'Rua Américo Trufeli', '35', 'Ferraz de Vasconcelos', 'SP', 'Parque Dourado', 'CASA', '', 0, 2, 'dani.ribeiro', '2022-10-28 12:13:47'),
(216, '', 'RYAN DIAS QUEIROZ', 'RYAN DIAS QUEIROZ', '390.358.378-27', '504724745', '(11) 96927-1901', '', 'PREPARADOR DE PRODUTOS I', 'Rua Gomes de Carvalho', '04547-006', '', '1996', 'Vila Olímpia', 'São Paulo', 'SP', 'CASA', '', '04547-006', 'Rua Gomes de Carvalho', '1996', 'São Paulo', 'SP', 'Vila Olímpia', 'CASA', '', 0, 2, 'dani.ribeiro', '2022-10-28 12:20:34'),
(217, '', 'Leonardo Barros dos Santos', '', '385.202.258-45', '47901330', '(11) 96018-1206', '', 'Autonomo Garcom no Restaurante Vila Los Muertos de Fome ', 'Rua Monteiro Lobato', '06361-380', '', '18', 'Jardim Ana Estela', 'Carapicuíba', 'SP', 'Casa 03', '', '', 'Autonomo Garcom no Restaurante Vila Los Muertos de Fome ', '', '', '', '', '', '', 1, 2, 'andressa.fernanda', '2022-10-28 12:26:16'),
(218, '', 'JOYCE THAIANE COSTA PACHECO', 'JOYCE THAIANE COSTA PACHECO', '491.626.438-00', '544230516', '(11) 95456-3517', '', '', 'Rua Giancarlo Palanti', '03661-050', '', '118', 'Vila Ré', 'São Paulo', 'SP', 'CASA 02', '', '03661-050', 'Rua Giancarlo Palanti', '118', 'São Paulo', 'SP', 'Vila Ré', 'CASA 02', '', 0, 2, 'dani.ribeiro', '2022-10-28 12:34:54'),
(219, '', 'Maik Felipe de Oliveira Silva ', '', '463.315.098-79', '387420459', '(11) 97336-1864', '', 'Coordenador de Compras', 'Rua São Bernardo do Campo', '06622-200', '', '135', 'Parque Santa Tereza', 'Jandira', 'SP', 'Casa 02 ', '', '', 'TROCAFONE LOGISTICA LTDA', '', '', '', '', 'Casa 02 ', '', 1, 2, 'andressa.fernanda', '2022-10-28 12:44:04'),
(220, '', 'ANDRESSA CRISTINA ARAUJO DE FARIAS', 'ANDRESSA CRISTINA ARAUJO DE FARIAS', '417.863.648-08', '', '(11) 94872-4865', '', 'AGENTE DE ATENDIMENTO L1', 'Rua Getúlio Moreira de Souza', '08663-300', '', '100', 'Parque Residencial Casa Branca', 'Suzano', 'SP', 'BL 6 - AP 104', '', '08663-300', 'Rua Getúlio Moreira de Souza', '100', 'Suzano', 'SP', 'Parque Residencial Casa Branca', 'BL 6 - AP 104', '', 0, 2, 'dani.ribeiro', '2022-10-28 12:46:20'),
(221, '', 'JADIANE CARDOSO DOS SANTOS', 'JADIANE CARDOSO DOS SANTOS', '', '', '(11) 95839-8861', '', 'BALCONISTA', 'Rua Baltazar de Lemos Navarro', '08122-050', '', '536', 'Jardim das Oliveiras', 'São Paulo', 'SP', 'CASA 01', '', '08122-050', 'Rua Baltazar de Lemos Navarro', '536', 'São Paulo', 'SP', 'Jardim das Oliveiras', 'CASA 01', '', 0, 2, 'dani.ribeiro', '2022-10-28 12:51:08'),
(222, '', 'Douglas Borges Reis ', '', '382.376.718-64', '46473769', '(11) 97063-7689', '', 'Motorista De Furgao ou Veiculo Similar', 'Rua Antônia Maria de Brito', '06172-060', '', '195', 'Jardim Roberto', 'Osasco', 'SP', 'Casa ', '', '01310-916', 'Avenida Paulista, 1374', '1374', 'São Paulo', 'SP', 'Bela Vista', 'Trabalho ', 'ANDAR 12  SALA 12A111', 1, 2, 'andressa.fernanda', '2022-10-28 12:51:39'),
(223, '', 'Manuel Jose Allen Archila ', '', '704.863.682-38', 'F330058W', '(11) 98626-5979', '', 'Vendedor', 'Avenida Antônio Bardella', '06618-000', '', '17', 'Jardim São Luiz', 'Jandira', 'SP', 'AP 44 BL N ', '', '', 'TTEC BRASIL SERVICOS LTDA ', '', '', '', '', '', '', 1, 2, 'andressa.fernanda', '2022-10-28 12:58:31'),
(224, '', 'NEIDEMAR MORAES DA SILVA', 'NEIDEMAR MORAES DA SILVA', '296.325.648-55', '29950769', '(11) 98877-2274', '', 'AJUDANTE DE CONFECÇÃO', 'Rua Clementina Varella', '08558-130', '', '74', 'Vila Varela', 'Poá', 'SP', 'CASA 01', '', '08559-050', 'Rua Ignácia Alves da Silva', '421', 'Poá', 'SP', 'Vila Jau', '', '', 0, 2, 'dani.ribeiro', '2022-10-31 11:58:23'),
(225, '', 'ALESSANDRA MOUSSA CHAMMOU', 'ALESSANDRA MOUSSA CHAMMOU', '268.039.738-08', '261068246', '(11) 96367-2138', '', 'PSICOLOGA', 'Avenida Nellusco Lourenço Boratto', '08820-290', '', '150', 'Cézar de Souza', 'Mogi das Cruzes', 'SP', 'T3 AP 71', '', '08120-420', 'Rua Valente de Novais', '189', 'São Paulo', 'SP', 'Itaim Paulista', '', '', 0, 2, 'dani.ribeiro', '2022-10-31 14:06:23'),
(226, '', 'LUCAS PEREIRA VIOLA', 'LUCAS PEREIRA VIOLA', '482.018.218-82', '539191929', '(11) 7401-7550', '', 'AJUDANTE GERAL', 'Rua Portugal', '08558-200', '', '164', 'Vila Varela', 'Poá', 'SP', 'CASA 01', '', '08558-230', 'Rua Alfredo Maurício Varella', '250', 'Poá', 'SP', 'Vila Varela', '', '', 0, 2, 'dani.ribeiro', '2022-11-01 09:30:11'),
(227, '', 'CAIK JÚNIOR SAMPAIO SILVA', 'CAIK JÚNIOR SAMPAIO SILVA', '470.221.358-00', '4974685360', '(11) 95151-2228', '', 'CONFERENTE DE EXPEDIÇÃO', 'Rua dos Arquitetos', '08580-070', '', '211', 'Jardim Itaquá', 'Itaquaquecetuba', 'SP', '', '', '08580-280', 'Estrada do Corta Rabicho', '684', 'Itaquaquecetuba', 'SP', 'Jardim Luana', 'SALA 07', '', 0, 2, 'dani.ribeiro', '2022-11-01 09:38:26'),
(228, '', 'WELLINGTON DE FREITAS DOS PASSOS', 'WELLINGTON DE FREITAS DOS PASSOS', '304.767.838-36', '35282410', '(11) 97159-2178', '', '', 'Rua Padre Eustáquio', '08560-500', '', '1115', 'Vila Arquimedes', 'Poá', 'SP', '', '', '08560-500', 'Rua Padre Eustáquio', '1115', 'Poá', 'SP', 'Vila Arquimedes', '', '', 0, 2, 'dani.ribeiro', '2022-11-01 09:51:40'),
(229, '', 'Diego de Jesus Souza ', '', '391.104.328-76', '471834932', '(11) 96302-4801', '', 'Auxiliar de serviços Gerais ', 'Estrada São José', '06814-160', '', '293', 'Jardim São Marcos', 'Embu das Artes', 'SP', 'Casa 02 ', '', '01419-002', 'Alameda Santos', '2359', 'São Paulo', 'SP', 'Cerqueira César', 'Trabalho ', '', 1, 2, 'andressa.fernanda', '2022-11-01 10:06:36'),
(230, '', 'MARINA DE ARAUJO CAMPOS NAZARIO', 'MARINA DE ARAUJO CAMPOS NAZARIO', '496.172.428-93', '500648967', '(11) 97197-7769', '', '', 'Rua Doutor Ornelas', '03029-030', '', '108', 'Canindé', 'São Paulo', 'SP', '', '', '03029-030', 'Rua Doutor Ornelas', '108', 'São Paulo', 'SP', 'Canindé', '', '', 0, 2, 'dani.ribeiro', '2022-11-01 10:10:34'),
(231, '', 'Suelen Caroline Fernandes Bifulgo ', '', '418.864.938-04', '48747689X', '(11) 97167-1528', '', 'INSPETOR(A) DE PRODUÇÃO', 'Avenida Vereador Dante Jordão Stoppa', '08820-390', '', '404', 'Cézar de Souza', 'Mogi das Cruzes', 'SP', 'BL 36 AP 13', '', '08880-000', 'Rodovia Professor Alfredo Rolim de Moura', '7300', 'Mogi das Cruzes', 'SP', 'Cocuera', 'Trabalho ', '', 1, 2, 'andressa.fernanda', '2022-11-01 10:17:08'),
(232, '', 'FERNANDA SOUZA NOGUEIRA', 'FERNANDA SOUZA NOGUEIRA', '474.811.268-95', '56038676X', '(11) 98653-7991', '', 'VENDEDORA', 'Avenida Herman Teles Ribeiro', '08529-100', '', '899', 'Vila Romanópolis', 'Ferraz de Vasconcelos', 'SP', '', '', '03018-000', 'Rua João Boemer', '1157', 'São Paulo', 'SP', 'Brás', '', '', 0, 2, 'dani.ribeiro', '2022-11-01 10:17:41'),
(233, '', 'Leonardo Patrick Ramos do Nascimento ', '', '509.370.828-30', '55158466X', '(11) 91618-4642', '', 'Autonomo Loja de Estética Automotiva ', 'Rua Pedro Campofiorito', '05583-010', '', '81', 'Jardim Boa Vista (Zona Oeste)', 'São Paulo', 'SP', 'Casa 03', '', '', 'Autonomo Loja de Estética Automotiva ', '', '', '', '', 'Trabalho ', '', 1, 2, 'andressa.fernanda', '2022-11-01 10:24:58'),
(234, '', 'Tainá Fernanda Machado ', '', '450.781.728-58', '460383115', '(15) 99788-8856', '', 'Vendedora ', 'Rua Professor Fortunato A Camargo ', '18150-000', '', '49', 'Jardim Nova Ibiúna ', 'Ibiúna', 'SP', 'Casa ', '', '18150-000', 'Rua XV de Novembro ', '74', 'Ibiúna', 'SP', 'Centro', 'Casa ', '', 1, 2, 'andressa.fernanda', '2022-11-01 10:29:51'),
(235, '', 'Talita Lais Ferreira de Andrade ', '', '348.339.808-27', '404688731', '(11) 97653-0781', '', 'Autonoma Cabelereira e Loja Online de Presentes ', 'Rua Benedita Pinto Silicani', '06663-195', '', '35', 'Jardim Paulista', 'Itapevi', 'SP', 'Casa ', '', '', 'Autonoma Cabelereira e Loja Online de Presentes ', '', '', '', '', '', '', 1, 2, 'andressa.fernanda', '2022-11-01 10:37:37'),
(236, '', 'Denise Regina Alves ', '', '407.928.608-29', '484587870', '(11) 95358-0252', '', 'Trabalha em Restaurante ', 'Rua Guaeça', '04950-030', '', '903', 'Cidade Ipava', 'São Paulo', 'SP', 'Casa ', '', '', 'Trabalha em Restaurante ', '', '', '', '', 'Trabalho ', '', 1, 2, 'andressa.fernanda', '2022-11-01 10:46:22'),
(237, '', 'Larissa Lopes Lelis ', '', '447.609.488-05', '489694585', '(19) 9814-4233', '', 'Cuidadora de Idosos ', 'Rua Amador Bueno da Veiga', '13050-746', '', '100', 'Jardim Alvorada', 'Campinas', 'SP', 'Casa ', '', '', 'Cuidadora de Idosos ', '', '', '', '', '', '', 1, 2, 'andressa.fernanda', '2022-11-01 10:51:41'),
(238, '', 'Felipe de Campos Lima ', '', '452.512.048-76', '41518213X', '(11) 98697-4944', '', 'AUX PERECIVEIS ', 'Rua Atílio Lofredo', '06154-200', '', '4', 'Padroeira', 'Osasco', 'SP', 'Casa 01 ', '', '06020-010', 'Avenida dos Autonomistas', '1768', 'Osasco', 'SP', 'Vila Yara', 'Trabalho ', 'PRÉDIO A', 1, 2, 'andressa.fernanda', '2022-11-01 10:59:34'),
(239, '', 'Eliane Pereira da Silva Martins ', '', '341.599.958-02', '382998558', '(11) 91108-8108', '', 'Balconista ', 'Rua Claro de Camargo Ribeiro', '06680-410', '', '29', 'Amador Bueno', 'Itapevi', 'SP', 'Casa', '', '06606-000', 'Rua Willian Wadell', '30', 'Jandira', 'SP', 'Centro', 'Trabalho ', '', 1, 2, 'andressa.fernanda', '2022-11-01 11:06:54'),
(240, 'ANDERSON SANT ANNA DE LIMA', 'ANDERSON SANT ANNA DE LIMA', '', '409.942.028-06', '481954028', '(11) 93312-5640', '', 'OPERADOR DE PRODUÇÃO PLENO', 'Travessa Assunção', '07140-120', '', '114', 'Jardim Nova Taboão', 'Guarulhos', 'SP', '', '', '03924-000', 'Rua Alexandre Fernandes', '219', 'São Paulo', 'SP', 'Jardim Dona Sinhá', '', '', 0, 2, 'dani.ribeiro', '2022-11-03 11:59:44'),
(241, '', 'ARIANA AUGUSTA LEITE', 'ARIANA AUGUSTA LEITE', '336.178.698-31', '466813909', '(11) 95794-4687', '', 'VENDEDORA', 'Rua Francisco de Góes Araújo', '08452-490', '', '79', 'Jardim Lourdes', 'São Paulo', 'SP', '', '', '01122-000', 'Rua Ribeiro de Lima', '282', 'São Paulo', 'SP', 'Bom Retiro', '1404 A 1406', '', 0, 2, 'dani.ribeiro', '2022-11-03 14:26:23'),
(242, '', 'CAIO VINICIUS DOS SANTOS', 'CAIO VINICIUS DOS SANTOS', '438.542.838-73', '415539043', '(11) 91148-5420', '', '', 'Rua Presidente Vargas', '05207-000', '', '45', 'Vila Caiúba', 'São Paulo', 'SP', '', '', '05207-000', 'Rua Presidente Vargas', '45', 'São Paulo', 'SP', 'Vila Caiúba', '', '', 0, 2, 'dani.ribeiro', '2022-11-03 14:48:18'),
(243, '', 'PAULO ROGERIO MOTA GOMES', 'PAULO ROGERIO MOTA GOMES', '319.550.828-12', '33523357', '(11) 94510-8252', '', '', 'Rua Benedito Estancial', '08557-740', '', '355', 'Vila Lúcia', 'Poá', 'SP', '', '', '08557-740', 'Rua Benedito Estancial', '355', 'Poá', 'SP', 'Vila Lúcia', '', '', 0, 2, 'dani.ribeiro', '2022-11-03 15:00:31'),
(244, '', 'Franciele Barros Paulino ', '', '463.071.828-14', '474898015', '(11) 95458-4218', '', '', 'Rua José Salvador Pozzobom', '06050-070', '', '230', 'Jaguaribe', 'Osasco', 'SP', 'Casa 02 ', '', '', '', '', '', '', '', '', '', 0, 0, 'andressa.fernanda', '2022-11-03 15:05:06'),
(245, 'LEANDRO WANDERSON DE MORAES', 'LEANDRO WANDERSON DE MORAES', '', '315.703.888-57', '409090694', '(11) 97883-0244', '', 'ESCOLTA E VIGILANCIA PENITENCIÁRIA', 'Avenida Brasil', '08561-000', '', '656', 'Centro', 'Poá', 'SP', '', '', '08561-000', 'Avenida Brasil', '656', 'Poá', 'SP', 'Centro', '', '', 0, 2, 'dani.ribeiro', '2022-11-03 15:10:55'),
(246, '', 'Matheus Rodrigues de Andrade ', '', '453.615.618-60', '505851350', '(15) 99775-4582', '', '', 'Rua Zico Soares ', '18150-000', '', '606', 'Centro ', 'Ibiúna', 'SP', 'Casa 02 ', '', '', '', '', '', '', '', '', '', 1, 2, 'andressa.fernanda', '2022-11-03 15:12:36'),
(247, '', 'MARILEIDE APARECIDA RAPOSO SOUSA', 'MARILEIDE APARECIDA RAPOSO SOUSA', '341.143.458-92', '405067781', '(11) 98950-0449', '', 'AUX FARMACIA', 'Rua Antônio Bernardino Correa', '08501-340', '', '334', 'Jardim Juliana', 'Ferraz de Vasconcelos', 'SP', '', '', '09860-214', 'Avenida Robert Kennedy', '2900', 'São Bernardo do Campo', 'SP', 'Assunção', '', '', 0, 2, 'dani.ribeiro', '2022-11-03 15:20:56'),
(248, 'JULIANE FERREIRA DOS SANTOS', 'JULIANE FERREIRA DOS SANTOS', '', '366.937.218-00', '490433388', '(11) 99406-8493', '', 'AUX. ADMINISTRATIVO', 'Rua Godofredo Osório Novaes', '08533-030', '', '794', 'Tanquinho', 'Ferraz de Vasconcelos', 'SP', '', '', '09860-214', 'Avenida Robert Kennedy', '2900', 'São Bernardo do Campo', 'SP', 'Assunção', '', '', 0, 2, 'dani.ribeiro', '2022-11-03 15:34:51'),
(249, '', 'Matheus Nunes de Godoy', '', '447.166.178-74', '458634050', '(11) 98149-4745', '', 'Operador de Loja ', 'Rua Francisco Leonel dos Santos', '06162-210', '', '33', 'Padroeira', 'Osasco', 'SP', 'Casa 01 ', '', '', 'Operador de Loja ', '', '', '', '', '', '', 0, 0, 'andressa.fernanda', '2022-11-03 15:40:20'),
(250, '', 'Alessandro dos Santos Souto', '', '388.523.138-77', '379096249', '(11) 96401-9952', '', 'Assistente de Expedicao ', 'Rua Antônia Maria de Brito', '06172-060', '', '311', 'Jardim Roberto', 'Osasco', 'SP', 'Casa 01 ', '', '', 'MARY KAY DO BRASIL LTDA', '', '', '', '', '', '', 1, 2, 'andressa.fernanda', '2022-11-03 16:16:29'),
(251, '', 'Kaline Rodrigues da Silva ', '', '408.290.968-09', '479001546', '(11) 94193-2595', '', 'Merendeira(CPE)', 'Rua dos Matias Pires Oliveira ', '06608-070', '', '4', 'Jardim Javaes', 'Jandira', 'SP', 'Casa 01 ', '', '', 'EMMCE MARIA MEDUNECKAS PROF', '', '', '', '', 'Trabalho ', '', 1, 2, 'andressa.fernanda', '2022-11-03 16:30:36'),
(252, '', 'Douglas de Almeida ', '', '344.188.098-64', '340034300', '(11) 94927-0250', '', 'Motorista de Caminhão', 'Rua Vinte e Cinco de Janeiro', '06420-460', '', '116', 'Jardim Belval', 'Barueri', 'SP', 'Casa 7 ', '', '', 'Motorista de Caminhão', '', '', '', '', 'Casa 7 ', '', 1, 2, 'andressa.fernanda', '2022-11-03 16:39:19'),
(253, '', 'JOSIANE DA SILVA CORDEIRO', 'JOSIANE DA SILVA CORDEIRO', '416.430.498-79', '48963011X', '(11) 99295-8799', '', 'DEMONSTRADOR DE MERCADORIAS', 'Rua Américo Trufeli', '08527-052', '', '18', 'Parque Dourado', 'Ferraz de Vasconcelos', 'SP', '', '', '06421-400', 'Rodovia Presidente Castelo Branco', '11100', 'Barueri', 'SP', 'Jardim Maria Cristina', '', '', 0, 2, 'dani.ribeiro', '2022-11-04 09:14:49'),
(254, '', 'PAULO ROBERTO DOS SANTOS', 'PAULO ROBERTO DOS SANTOS', '', '525922556', '(11) 94444-5499', '', 'AJUDANTE GERAL', 'Rua Jesusa Sanches Pricevicius', '08690-195', '', '69', 'Cidade Miguel Badra', 'Suzano', 'SP', '', '', '08595-500', 'Estrada do Campo Limpo', '36', 'Itaquaquecetuba', 'SP', 'Jardim do Vale', '', '', 0, 2, 'dani.ribeiro', '2022-11-04 09:31:30'),
(255, '', 'ERICA MARQUES FLORENCIO', 'ERICA MARQUES FLORENCIO', '331.827.718-50', '341101679', '(11) 93085-9433', '', 'BALCONISTA', 'Rua Vitória', '08571-850', '', '150', 'Jardim Roseli', 'Itaquaquecetuba', 'SP', '', '', '08501-000', 'Avenida Brasil', '1901', 'Ferraz de Vasconcelos', 'SP', 'Sitio Paredão', '', '', 0, 2, 'dani.ribeiro', '2022-11-04 10:39:25'),
(256, '', 'David Belem de Almeida ', '', '436.546.418-30', '458118333', '(11) 99842-4925', '', 'Ajudante Geral ', 'Rua Santo Expedito', '06233-260', '', '120', 'I.A.P.I.', 'Osasco', 'SP', 'Casa 03', '', '', 'TELELOK CENTRAL DE LOCACOES E COM. LTDA ', '', '', '', '', 'Trabalho ', '', 1, 2, 'andressa.fernanda', '2022-11-04 10:41:12'),
(257, '', 'IGOR DOS SANTOS AMARO', 'IGOR DOS SANTOS AMARO', '426.971.198-17', '488657052', '(11) 99470-6799', '', 'MOTORISTA', 'Rua Portugal', '08558-200', '', '164', 'Vila Varela', 'Poá', 'SP', 'CASA 01', '', '02471-040', 'Rua Dolores Duran', '29', 'São Paulo', 'SP', 'Vila Basileia', '', '', 0, 2, 'dani.ribeiro', '2022-11-04 10:46:56'),
(258, '', 'Atila Dapher Carvalho Rodrigues ', '', '328.194.898-77', '23784711', '(11) 99383-1245', '', 'Motorista ', 'Rua Antônio Cornélio', '06056-170', '', '236', 'Bussocaba', 'Osasco', 'SP', 'Casa ', '', '', 'Motorista', '', '', '', '', 'Trabalho ', '', 1, 2, 'andressa.fernanda', '2022-11-04 10:53:14'),
(259, '', 'Lucas Aparecido Fernandes Galvao ', '', '372.922.968-07', '47715914X', '(11) 93946-2213', '', 'Autonomo Cabelereiro ', 'Avenida João Paulo II', '06172-200', '', '505', 'São Pedro', 'Osasco', 'SP', 'COD 1 BL 4 AP ', '', '', 'Autonomo Cabelereiro ', '', '', '', '', 'Trabalho ', '', 1, 2, 'andressa.fernanda', '2022-11-04 11:00:18'),
(260, '', 'Daniel Reis da Silva ', '', '296.192.358-19', '34441448', '(11) 91178-9787', '', 'Gerente de Operaçoes ', 'Rua Jacarezinho', '06328-050', '', '237', 'Conjunto Habitacional Presidente Castelo Branco', 'Carapicuíba', 'SP', 'AP 12 ', '', '', 'Gerente de Operaçoes ', '', '', '', '', 'Trabalho ', '', 1, 2, 'andressa.fernanda', '2022-11-04 11:05:55'),
(261, '', 'VIVIANE SICHO GOANA TAVARES PRACIANO', 'VIVIANE SICHO GOANA TAVARES PRACIANO', '290.828.318-21', '348321272', '(11) 99490-3061', '', 'ASSISTENTE FINANCEIRO II', 'Rua Coutinho e Melo', '08411-090', '', '782', 'Vila Aurea', 'São Paulo', 'SP', 'CASA 02', '', '08140-000', 'Rua Tibúrcio de Sousa', '2478', 'São Paulo', 'SP', 'Itaim Paulista', '', '', 0, 2, 'dani.ribeiro', '2022-11-04 11:07:24'),
(262, '', 'PATRICK HERNANDES', 'PATRICK HERNANDES', '', '', '(11) 97411-3367', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 2, 'dani.ribeiro', '2022-11-04 11:12:53'),
(263, '', 'Queren Vitória Campos Santos ', '', '490.597.668-57', '385009112', '(11) 91279-5220', '', 'Assistente de Operacoes ', 'Rua Geraldo Soares Xavier', '06330-130', '', '225', 'Parque Jandaia', 'Carapicuíba', 'SP', 'Casa ', '', '', 'Assistente de Operacoes ', '', '', '', '', 'Trabalho ', '', 0, 0, 'andressa.fernanda', '2022-11-04 11:14:08'),
(264, '', 'NATALI DA SILVA BELMIRO', 'NATALI DA SILVA BELMIRO', '', '', '(11) 93313-4459', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 2, 'dani.ribeiro', '2022-11-04 11:15:09'),
(265, '', 'DIEGO RODRIGUES DE SOUZA ', 'DIEGO RODRIGUES DE SOUZA ', '', '', '(11) 98925-5960', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 2, 'dani.ribeiro', '2022-11-04 11:17:32'),
(266, '', 'ROSE MÃE DA KARIM LARISSA', 'ROSE MÃE DA KARIM LARISSA', '', '', '(11) 98559-6391', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 2, 'dani.ribeiro', '2022-11-04 11:19:26'),
(267, '', 'Gabriel Aparecido dos Santos', '', '467.479.038-70', '52493171', '(11) 99006-4958', '', 'Autonomo Restaurante ', 'Rua Luiz Grassmann', '05801-050', '', '391', 'Jardim Mirante', 'São Paulo', 'SP', '', '', '', 'Autonomo Restaurante', '', '', '', '', 'Trabalho ', '', 0, 0, 'andressa.fernanda', '2022-11-04 11:20:11'),
(268, '', 'ANA CAROLINE PAULINO DOS SANTOS', 'ANA CAROLINE PAULINO DOS SANTOS', '', '', '(11) 91250-1162', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 2, 'dani.ribeiro', '2022-11-04 11:23:42'),
(269, '', 'Jose Wellington dos Santos ', '', '370.094.638-40', '470573120', '(11) 94900-0416', '', 'Autonomo Adega ', 'Rua Aquário', '06515-085', '', '227', 'Parque Santana', 'Santana de Parnaíba', 'SP', 'Casa ', '', '', 'Autonomo Adega ', '', '', '', '', 'Trabalho ', '', 1, 2, 'andressa.fernanda', '2022-11-04 11:28:50'),
(270, '', 'MARLY MARLEY MARCELINO', 'MARLY MARLEY MARCELINO', '303.673.308-65', '338994816', '(11) 99694-1016', '', 'AUX. DE ESCRITÓRIO EM GERAL', 'Rua Nove de Julho', '08505-000', '', '9', 'Jardim Nove de Julho', 'Ferraz de Vasconcelos', 'SP', '', '', '09860-214', 'Avenida Robert Kennedy', '214', 'São Bernardo do Campo', 'SP', 'Assunção', '', '', 0, 2, 'dani.ribeiro', '2022-11-04 11:29:55'),
(271, '', 'Rodrigo Ferreira Bonani ', '', '364.501.188-90', '49154717', '(11) 95209-2917', '', '', 'Rua Sapopemba', '02859-140', '', '16', 'Jardim Vitória Régia (Zona Norte)', 'São Paulo', 'SP', 'Casa 02 ', '', '', '', '', '', '', '', '', '', 1, 2, 'andressa.fernanda', '2022-11-04 11:38:33'),
(272, '', 'ALESSANDRO SANTOS SANTANA', 'ALESSANDRO SANTOS SANTANA', '434.699.298-66', '528587614', '(11) 96064-2070', '', 'SUPERVISOR DE CUIDADORES', 'Rua Amélia Guerra', '08610-000', '', '832', 'Vila Amorim', 'Suzano', 'SP', '', '', '03257-180', 'Rua Pascoal Ranieri Mazzilli', '233', 'São Paulo', 'SP', 'Vila Mendes', 'APT 48 BLOCO', '', 0, 2, 'dani.ribeiro', '2022-11-04 11:43:38'),
(273, '', 'José Lopes da Silva', '', '019.850.764-03', '525971750', '(11) 95726-4544', '', 'Porteiro', 'Rua Luz Soriano', '05874-100', '', '223', 'Parque Novo Santo Amaro', 'São Paulo', 'SP', 'Casa 03', '', '01420-000', 'Alameda Jaú', '204', 'São Paulo', 'SP', 'Jardim Paulista', 'Casa 03', '', 1, 2, 'andressa.fernanda', '2022-11-04 11:44:25'),
(274, '', 'Carolina Souza Rissetti', '', '382.257.958-06', '412760757', '(11) 97262-1756', '', 'Auxiliar de Merendeira ', 'Avenida Marginal Esquerda', '06447-100', '', '3', 'Jardim Itaparica', 'Barueri', 'SP', 'AP 12 ', '', '', 'EMMCE MARIA MEDUNECKAS PROF', '', '', '', '', '', '', 1, 2, 'andressa.fernanda', '2022-11-04 11:59:45'),
(275, '', 'Edgar de Campos Lima ', '', '467.204.128-09', '421631193', '(11) 96129-4493', '', 'Atendente de Lanchonete ', 'Avenida Santiago Rodilha', '06154-000', '', '444', 'Veloso', 'Osasco', 'SP', 'AP 4 ', '', '', 'Atendente de Lanchonete ', '', '', '', '', 'AP 4 ', '', 1, 2, 'andressa.fernanda', '2022-11-04 13:33:34'),
(276, '', 'THAINÁ REGINA BELMIRO', 'THAINÁ REGINA BELMIRO', '472.795.448-60', '397253096', '(11) 93248-7425', '', 'AJUDANTE GERAL', 'Rua Valdecir Ferreira dos Reis', '08664-735', '', '71B', 'Jardim das Flores', 'Suzano', 'SP', '', '', '08675-010', 'Praça dos Expedicionários Antônio Garcia', '12', 'Suzano', 'SP', 'Vila Costa', '', '', 0, 2, 'dani.ribeiro', '2022-11-04 13:44:11'),
(277, '', 'GILLEARD AZEVEDO', 'GILLEARD AZEVEDO', '114.850.537-73', '671573858', '(11) 99571-2765', '', 'ZELADOR DE EDIFICIO', 'Rua João Amazonas', '08598-454', '', '23', 'Conjunto Habitacional Jardim Odete II', 'Itaquaquecetuba', 'SP', '', '', '08110-320', 'Rua Barena', '663', 'São Paulo', 'SP', 'Vila Silva Teles', '', '', 0, 2, 'dani.ribeiro', '2022-11-04 13:51:44'),
(278, '', 'Angélica Duarte Rossi ', '', '273.557.678-79', '305359472', '(11) 96498-2486', '', 'Professora', 'Rua Tamandaré', '09580-040', '', '157', 'Nova Gerty', 'São Caetano do Sul', 'SP', 'Casa 02 ', '', '', '', '', '', '', '', '', '', 1, 2, 'andressa.fernanda', '2022-11-04 13:54:30'),
(279, '', 'Ivanilton de Fraga Alves ', '', '407.335.328-45', '370594617', '(11) 98119-9972', '', 'Assistente de Limpeza ', 'Rua Carlindo Reis', '08504-235', '', '180', 'Jardim Yone', 'Ferraz de Vasconcelos', 'SP', 'Casa ', '', '', 'PR DE MORAES SERVICOS DE APOIO ADMINISTRATIVO ', '', '', '', '', '', '', 1, 2, 'andressa.fernanda', '2022-11-04 14:03:25'),
(280, '', 'Fernando do Nascimento Rossi ', '', '283.310.638-64', '29841428', '(11) 96245-8218', '', 'Motorista ', 'Avenida Patente', '04243-000', '', '193', 'Jardim Patente', 'São Paulo', 'SP', 'BL B 24 AP 13 ', '', '04250-000', 'Rua Budapeste', '314 - 326', 'São Paulo', 'SP', 'Vila Marte', 'BL B 24 AP 13 ', '', 1, 2, 'andressa.fernanda', '2022-11-04 14:13:26'),
(281, '', 'RENATO THOMAZ DO CARMO JUNIOR', 'RENATO THOMAZ DO CARMO JUNIOR', '322.434.798-85', '33400116', '(11) 96392-7232', '', 'OPERADOR DE EMPILHADEIRA', 'Rua Alfredo Maurício Varella', '08558-230', '', '283', 'Vila Varela', 'Poá', 'SP', '', '', '08558-360', 'Rua Itajuípe', '20', 'Poá', 'SP', 'Vila Varela', '', '', 0, 2, 'dani.ribeiro', '2022-11-04 14:14:30'),
(282, '', 'Midian Karen Oliveira Neri', '', '470.463.198-20', '524399517', '(11) 94643-8806', '', 'Atendente de Loja ', 'Rua João Finotti', '06172-130', '', '79', 'Jardim Roberto', 'Osasco', 'SP', 'Casa ', '', '08280-005', 'Avenida Líder', '2000', 'São Paulo', 'SP', 'Cidade Líder', 'Casa ', 'LOJA 02', 1, 2, 'andressa.fernanda', '2022-11-04 14:24:00'),
(283, '', 'VIVIANE FRANCISCA DE MACEDO', 'VIVIANE FRANCISCA DE MACEDO', '421.473.498-01', '479948100', '(11) 95046-3808', '', 'LIDER DE PERECIVEIS', 'Rua Francisco Martinêz Casanova', '08743-320', '', '485', 'Jardim Santa Teresa', 'Mogi das Cruzes', 'SP', 'APTO 52 1', '', '07270-130', 'Rua Riachão do Jacuípe', '237', 'Guarulhos', 'SP', 'Jardim Centenário', 'O COMPROVANTE DE RES. TEM SENHA: 421', '', 0, 2, 'dani.ribeiro', '2022-11-04 14:30:43'),
(284, '', 'FELIPE GARCIA DE SOUSA', 'FELIPE GARCIA DE SOUSA', '364.546.368-28', '447376470', '(11) 91629-6356', '', 'AJUDANTE GERAL', 'Rua Aracaré', '08558-220', '', '520', 'Vila Varela', 'Poá', 'SP', 'CASA 03', '', '05406-040', 'Praça Benedito Calixto', '140', 'São Paulo', 'SP', 'Pinheiros', '', '', 0, 2, 'dani.ribeiro', '2022-11-04 14:51:26'),
(285, '', 'JESSICA BARBOSA DE OLIVEIRA', 'JESSICA BARBOSA DE OLIVEIRA', '364.476.538-36', '', '(11) 94782-4058', '', '', 'Rua Glauciano Lopes', '08744-330', '', '88', 'Vila Cintra', 'Mogi das Cruzes', 'SP', 'CASA 02', '', '08599-020', 'Rua São Roque', '1215', 'Itaquaquecetuba', 'SP', 'Vila Japão', '', '', 0, 2, 'dani.ribeiro', '2022-11-04 15:00:06'),
(286, '', 'JESSICA DIAS DE OLIVEIRA', 'JESSICA DIAS DE OLIVEIRA', '358.968.368-64', '422994601', '(11) 98098-7663', '', 'RECEPCIONISTA HOSPITALAR', 'Rua Vitória', '08571-850', '', '40', 'Jardim Roseli', 'Itaquaquecetuba', 'SP', '', '', '08730-500', 'Rua Doutor Osmar Marinho Couto', '71', 'Mogi das Cruzes', 'SP', 'Centro', '', '', 0, 2, 'dani.ribeiro', '2022-11-04 15:14:26'),
(287, '', 'GESSICA ALINE CANDIDO', 'GESSICA ALINE CANDIDO', '400.491.418-30', '44710696X', '(11) 99509-2578', '', 'AUX. DE CREDENCIADO', 'Rua Brigadeiro Newton Braga', '08743-190', '', '310', 'Jardim Aeroporto III', 'Mogi das Cruzes', 'SP', 'BL H AP 41', '', '05763-390', 'Rua Gaspar Coqueiro', '255', 'São Paulo', 'SP', 'Jardim Piracuama', '', '', 0, 2, 'dani.ribeiro', '2022-11-04 15:34:19'),
(288, '', 'ROMARIO DE LUNA GOMES', 'ROMARIO DE LUNA GOMES', '421.734.418-09', '36540518', '(11) 95938-3848', '', '', 'Rua Serra do Tumucumaque', '09930-710', '', '296', 'Campanário', 'Diadema', 'SP', 'CASA 04', '', '09930-710', 'Rua Serra do Tumucumaque', '296', 'Diadema', 'SP', 'Campanário', '', '', 0, 2, 'dani.ribeiro', '2022-11-04 15:42:43'),
(289, '', 'Ivani Maria Aguiar Coelho ', '', '049.863.618-64', '17067927', '(11) 95791-9427', '', 'Autonoma Salão de Cabelereira', 'Rua Canal da Mancha', '06412-130', '', '72', 'Jardim Regina Alice', 'Barueri', 'SP', 'Casa 03', '', '', 'Autonoma Salão de Cabelereira', '', '', '', '', '', '', 1, 2, 'andressa.fernanda', '2022-11-07 12:31:40'),
(290, '', 'Francisco Laercio Pereira de Oliveira', '', '334.331.498-60', '469114071', '(11) 98213-3645', '', 'Alimentador de linha de produção ', 'Passagem Pátria Minha', '09952-405', '', '22', 'Vila Nogueira', 'Diadema', 'SP', 'Casa ', '', '', 'Alimentador de linha de produção ', '', '', '', '', '', '', 1, 2, 'andressa.fernanda', '2022-11-07 15:11:39'),
(291, '', 'Amanda Santos de Almeida ', '', '411.210.278-06', '567301023', '(11) 97704-8969', '', 'Trabalha em Casino ', 'Viela Benedito Urbano da Silva Filho', '06162-260', '', '26', 'Padroeira', 'Osasco', 'SP', 'Casa 02 ', '', '', 'Trabalha em Casino ', '', '', '', '', '', '', 1, 2, 'andressa.fernanda', '2022-11-07 15:18:09'),
(292, '', 'Adriana Pereira dos Santos ', '', '226.482.568-57', '343796089', '(19) 98769-8779', '', 'Empregada Doméstica ', 'Rua Mário José de Oliveira', '13053-315', '', '207', 'Jardim São Domingos', 'Campinas', 'SP', 'Casa ', '', '', 'Empregada Doméstica ', '', '', '', '', 'Trabalho ', '', 1, 2, 'andressa.fernanda', '2022-11-07 15:28:24'),
(293, '', 'Leandro Neves Felix', '', '443.293.788-25', '50128523', '(11) 95316-4637', '', 'Autonomo tem uma tabacaria', 'Rua dos Goianos', '06663-470', '', '682', 'Parque Suburbano', 'Itapevi', 'SP', 'Casa 02 ', '', '04553-007', 'Rua Sai de Sete Cores', '315', 'São Paulo', 'SP', 'Vila Olímpia', 'Trabalho ', '', 1, 2, 'andressa.fernanda', '2022-11-07 15:40:10'),
(294, '', 'SERGIO LUIZ MARTINS', 'SERGIO LUIZ MARTINS', '009.072.178-00', '14670461', '(11) 98735-8403', '', '', 'ESTRADA SANTA INES', '07700-000', '', '0', 'RURAL', 'CAIEIRAS', 'SP', '', '', '', '', '', '', '', '', '', '', 0, 2, 'dani.ribeiro', '2022-11-07 15:47:47'),
(295, '', 'Fernando Antonio de Oliveira ', '', '340.376.638-13', '428835776', '(15) 99615-7536', '', 'Gerente Operacional ', 'Rua Andorras ', '18150-000', '', '87', 'Jardim Nova Ibiúna ', 'Ibiúna', 'SP', 'Casa ', '', '07182-040', 'Rua Sargento da Aeronáutica José Pereira Alves', '121', 'Guarulhos', 'SP', 'Cidade Jardim Cumbica', 'Trabalho ', '', 1, 2, 'andressa.fernanda', '2022-11-07 15:52:38'),
(296, '', 'Cidicleia Pereira Viana ', '', '359.512.458-85', '465425057', '(11) 91146-9115', '', 'Enfermeira ', 'Rua Hebe', '06436-080', '', '138', 'Parque dos Camargos', 'Barueri', 'SP', 'Casa 01 ', '', '', 'Centro de Estudos e Pesquisas de Joao AM ', '', '', '', '', 'Trabalho', '', 0, 0, 'andressa.fernanda', '2022-11-07 15:58:58'),
(297, '', 'Paulo Roberto Santana da Silva ', '', '360.089.718-76', '42714894', '(11) 95116-5790', '', 'Autonomo Pintor ', 'Rua Pernambucana', '06140-040', '', '360', 'Conceição', 'Osasco', 'SP', 'AP 74 BL A ', '', '', 'Autonomo Pintor ', '', '', '', '', 'AP 74 BL A ', '', 1, 2, 'andressa.fernanda', '2022-11-07 16:10:00'),
(298, '', 'Raima Silva Braga e Braga ', '', '447.707.358-55', '38329025', '(11) 95093-8150', '', 'Barbeiro ', 'Rua José Pedro do Amaral', '05632-030', '', '32', 'Jardim Monte Kemel', 'São Paulo', 'SP', 'Casa 6', '', '', 'Barbeiro ', '', '', '', '', '', '', 1, 2, 'andressa.fernanda', '2022-11-07 16:31:07'),
(299, '', 'Amanda Maria Barbosa ', '', '299.411.288-47', '348848432', '(11) 97196-7111', '', '', 'Rua Mourato Coelho', '05417-011', '', '621', 'Pinheiros', 'São Paulo', 'SP', 'Casa 01 ', '', '', '', '', '', '', '', '', '', 1, 2, 'andressa.fernanda', '2022-11-07 16:36:53'),
(300, '', 'Gustavo Aparecido da Silva ', '', '448.843.798-29', '503063538', '(15) 99712-8901', '', 'Frentista ', 'Rua Sete de Setembro ', '08150-000', '', '43', 'Centro ', 'Ibiúna', 'SP', 'Casa ', '', '', 'COM VAREJ DE COMB FOLENA CENTRO LTDA ', '', '', '', '', 'Casa ', '', 1, 2, 'andressa.fernanda', '2022-11-07 16:37:41');
INSERT INTO `clientes` (`id`, `nome`, `sobrenome`, `socio`, `cpf`, `rg`, `tel`, `tel2`, `atividade`, `endereco`, `cep`, `cnpj`, `numero`, `bairro`, `municipio`, `uf`, `complemento`, `referencia`, `cep_emp`, `lougadouro_emp`, `number_emp`, `municipio_emp`, `uf_emp`, `bairro_emp`, `complemento_emp`, `referencia_emp`, `status_cliente`, `id_cliente`, `user_created`, `data_hora_cliente`) VALUES
(301, '', 'Adenilton Silva Soares ', '', '349.324.398-73', '384810111', '(11) 98593-5475', '', 'Motoboy ', 'Rua Jesuíno Antônio', '06045-080', '', '775', 'Novo Osasco', 'Osasco', 'SP', 'AP ', '', '', 'Motoboy ', '', '', '', '', 'AP ', '', 1, 2, 'andressa.fernanda', '2022-11-07 16:47:50'),
(302, '', 'GLACILIANA NUNES DE JESUS', 'GLACILIANA NUNES DE JESUS', '247.286.788-30', '24623716', '(11) 93474-7607', '', '', 'Rua Capitão Joaquim de Mello Freire', '08730-440', '', '1292', 'Vila Vitória', 'Mogi das Cruzes', 'SP', 'BL 11 NR B AP 33B', '', '08730-440', 'Rua Capitão Joaquim de Mello Freire', '1292', 'Mogi das Cruzes', 'SP', 'Vila Vitória', '', '', 0, 2, 'dani.ribeiro', '2022-11-07 16:55:59'),
(303, '', 'Victor Eduardo Araujo da Cunha ', '', '458.023.058-27', '455620234', '(11) 96320-7837', '', 'Salão de Cabelereiro', 'Avenida dos Brasileiros', '06663-450', '', '700', 'Parque Suburbano', 'Itapevi', 'SP', 'Casa ', '', '', 'Salão de Cabelereiro', '', '', '', '', 'Trabalho ', '', 0, 0, 'andressa.fernanda', '2022-11-07 17:03:05'),
(304, 'RENATA SOARES DA COSTA', 'RENATA SOARES DA COSTA', '', '144.162.526-76', '657699561', '(11) 98119-8570', '', '', 'Rua Pompeu Sobrinho', '05141-020', '', '95', 'Chácara Inglesa', 'São Paulo', 'SP', 'CASA 02', '', '06278-010', 'Avenida Doutor Mauro Lindemberg Monteiro', '185', 'Osasco', 'SP', 'Santa Fé', 'CASA 02', '', 0, 2, 'dani.ribeiro', '2022-11-08 10:40:27'),
(305, '', 'DENER HENRIQUE AGOSTINHO', 'DENER HENRIQUE AGOSTINHO', '373.044.938-95', '472166554', '(11) 98542-2280', '', 'ATENDENTE', 'Rua Nelson Mathias', '08693-530', '', '460', 'Cidade Boa Vista', 'Suzano', 'SP', 'CASA 01', '', '08610-100', 'Avenida Brasília', '382', 'Suzano', 'SP', 'Vila Amorim', '', '', 0, 2, 'dani.ribeiro', '2022-11-08 10:48:34'),
(306, '', 'JHONE LIMA DE OLIVEIRA', 'JHONE LIMA DE OLIVEIRA', '374.585.458-60', '447893579', '(11) 98844-6402', '', 'AUX. DE SERRALHERIA', 'Rua Ada', '08556-130', '', '72', 'Vila Oceania', 'Poá', 'SP', '', '', '08561-500', 'Avenida Deputado Joviano Alvim', '530', 'Poá', 'SP', 'Jardim Ruth', '', '', 0, 2, 'dani.ribeiro', '2022-11-08 11:06:20'),
(307, '', 'Rebeca Aparecida Raphael ', '', '413.162.218-14', '531458374', '(11) 94624-0213', '', 'Autonoma Salão de Cabelereira', 'Rua Luiz Henrique de Oliveira', '06186-130', '', '849', 'Quitaúna', 'Osasco', 'SP', 'Casa 01 ', '', '', 'Autonoma Salão de Cabelereira', '', '', '', '', 'Casa 01 ', '', 1, 2, 'andressa.fernanda', '2022-11-08 11:26:10'),
(308, '', 'LUIZ AMBROSIO', 'LUIZ AMBROSIO', '643.282.108-82', '80408424', '(11) 94060-4512', '', 'REPOSITOR', 'Rua Portugal', '08558-200', '', '379', 'Vila Varela', 'Poá', 'SP', '', '', '08558-200', 'Rua Portugal', '379', 'Poá', 'SP', 'Vila Varela', '', '', 0, 2, 'dani.ribeiro', '2022-11-08 11:29:09'),
(309, '', 'IRIS CHRISTINA BRITO BENEDICTO', 'IRIS CHRISTINA BRITO BENEDICTO', '265.951.538-74', '281656009', '(11) 93215-7936', '', 'ANALISTA ADM FINANCEIRO', 'Avenida Vila Ema', '03156-000', '', '130', 'Vila Prudente', 'São Paulo', 'SP', '3', '', '07832-430', 'Rodovia Tancredo de Almeida Neves', '43,1 KM', 'Franco da Rocha', 'SP', 'Chácaras Maristela', '', '', 0, 2, 'dani.ribeiro', '2022-11-08 11:38:34'),
(310, '', 'Valquiria Aranha ', '', '302.966.818-57', '337881911', '(15) 99738-6087', '', '', 'Rua Coronel S Rolim de Freitas ', '08150-000', '', '382', 'Centro ', 'Ibiúna', 'SP', 'AP 2 ', '', '', '', '', '', '', '', '', '', 1, 2, 'andressa.fernanda', '2022-11-08 11:44:46'),
(311, '', 'KAUAN ROCHA JORGE', 'KAUAN ROCHA JORGE', '', '552524086', '(11) 97204-7499', '', 'AJUDANTE GERAL', 'Rua Alfredo Maurício Varella', '08558-230', '', '690', 'Vila Varela', 'Poá', 'SP', 'CASA 27', '', '08558-110', 'Rua Lisboa', '140', 'Poá', 'SP', 'Vila Varela', '', '', 0, 2, 'dani.ribeiro', '2022-11-08 11:48:59'),
(312, '', 'Mariane dos Santos Pereira ', '', '456.297.898-80', '506342840', '(19) 99195-5865', '', 'Autonoma ', 'Rua Adélia Ferreira de Sousa Coelho', '13053-278', '', '40', 'Jardim Puccamp', 'Campinas', 'SP', 'Casa ', '', '', 'Autonoma ', '', '', '', '', '', '', 1, 2, 'andressa.fernanda', '2022-11-08 11:55:27'),
(313, '', 'Lethicia Barbosa Furquim ', '', '426.135.518-36', '41476157', '(11) 95943-8103', '', 'Balconista ', 'Rua Tujumirim', '08081-180', '', '45', 'Jardim Helena', 'São Paulo', 'SP', 'Casa ', '', '08080-650', 'Rua Doutor José de Porciúncula', '1224', 'São Paulo', 'SP', 'Parque Paulistano', 'Trabalho ', '', 0, 0, 'andressa.fernanda', '2022-11-08 12:21:55'),
(314, '', 'RAFAELA DA SILVA SOUZA', 'RAFAELA DA SILVA SOUZA', '384.830.448-11', '473103515', '(11) 93215-9115', '', '', 'Rua Mombuca', '08592-140', '', '295', 'Parque Recanto Mônica', 'Itaquaquecetuba', 'SP', 'CASA 02', '', '', '', '', '', '', '', '', '', 0, 2, 'dani.ribeiro', '2022-11-08 13:42:59'),
(315, '', 'ANDRÉIA CLEMENTINO DE SOUSA', 'ANDRÉIA CLEMENTINO DE SOUSA', '383.835.508-39', '421920841', '(11) 98554-7544', '', 'AUX. LIMPEZA', 'Rua Barão de Tramandaí', '03207-000', '', '593', 'Vila Alpina', 'São Paulo', 'SP', 'CASA 02', '', '08060-020', 'Praça José Cardoso de Moura', '8', 'São Paulo', 'SP', 'Vila Jacuí', '', '', 0, 2, 'dani.ribeiro', '2022-11-08 13:51:09'),
(316, '', 'DEBORA RODRIGUES DOS SANTOS', 'DEBORA RODRIGUES DOS SANTOS', '', '', '(11) 95759-1859', '', 'AUX. DE PRODUÇÃO', 'Rua Calil Haddad', '08558-000', '', '395', 'Vila Varela', 'Poá', 'SP', 'CASA 02', '', '08559-030', 'Rua Martini', '410', 'Poá', 'SP', 'Vila Jau', 'KM 35', '', 0, 2, 'dani.ribeiro', '2022-11-08 14:00:20'),
(317, '', 'Luana Aparecida Rafhael ', '', '413.162.208-42', '458650109', '(11) 95703-7508', '', 'Autonoma Salão de Cabelereira', 'Rua Luiz Henrique de Oliveira', '06186-130', '', '849', 'Quitaúna', 'Osasco', 'SP', 'Casa 6 ', '', '', 'Autonoma Salão de Cabelereira', '', '', '', '', '', '', 1, 2, 'andressa.fernanda', '2022-11-08 14:01:09'),
(318, '', 'Ednaldo da Silva', '', '198.103.768-39', '244169123', '(15) 99814-6070', '', 'Motorista de APP ', 'Travessa Aparecida ', '18150-000', '', '207', 'Paiol Pequeno', 'Ibiúna', 'SP', 'Casa 02 ', '', '', 'Motorista de APP ', '', '', '', '', '', '', 1, 2, 'andressa.fernanda', '2022-11-08 14:08:21'),
(319, '', 'MARIA EDILENE DA SILVA', 'MARIA EDILENE DA SILVA', '163.816.008-29', '253954745', '(11) 93085-9012', '', '', 'Rua Vitória', '08571-850', '', '196', 'Jardim Roseli', 'Itaquaquecetuba', 'SP', '', '', '', '', '', '', '', '', '', '', 0, 2, 'dani.ribeiro', '2022-11-08 14:17:50'),
(320, 'WELLINGTON LIMA DOS SANTOS', 'WELLINGTON LIMA DOS SANTOS', '', '329.334.308-27', '366838970', '(11) 97875-9046', '', '', 'Rua Ary Barroso', '08559-210', '', '11', 'Vila Jau', 'Poá', 'SP', 'CASA 04', '', '', '', '', '', '', '', 'CASA 04', '', 0, 2, 'dani.ribeiro', '2022-11-08 14:38:58'),
(321, '', 'FELIPE VITOR SILVA DE OLIVEIRA', 'FELIPE VITOR SILVA DE OLIVEIRA', '476.898.758-31', '541594291', '(11) 98310-4138', '', '', 'Rua Quipapã', '08588-608', '', '24', 'Jardim Alpes de Itaquá', 'Itaquaquecetuba', 'SP', '', '', '08570-050', 'Praça Padre João Álvares', '185', 'Itaquaquecetuba', 'SP', 'Centro', 'SALA 11', '', 0, 2, 'dani.ribeiro', '2022-11-08 14:46:38'),
(322, '', 'Suelen Jesus Lima ', '', '230.172.468-92', '383766679', '(11) 95722-4302', '', 'Operadora de Caixa', 'Rua Agostinho de Paiva', '05894-230', '', '790', 'Jardim Macedônia', 'São Paulo', 'SP', 'Casa ', '', '05503-001', 'Avenida Vital Brasil', '549', 'São Paulo', 'SP', 'Butantã', 'Casa ', '', 1, 3, 'manuella.santos', '2022-11-08 15:04:15'),
(323, '', 'Davison Borges Alves', '', '353.781.708-85', '298960229', '(11) 95971-5828', '', 'Promotor de Vendas ', 'Rua Marechal Pimentel', '04248-100', '', '628', 'Sacomã', 'São Paulo', 'SP', 'Casa 02 ', '', '', 'FC INDUSTRIA E COMERCIO DE ALIMENTOS PARA ANIMAIS LTDA ', '', '', '', '', 'Casa 02 ', '', 1, 3, 'manuella.santos', '2022-11-08 15:09:06'),
(324, '', 'Abner Guiedes Bastos', '', '441.043.538-84', '360523365', '(11) 92007-2209', '', 'Controlador de Acesso ', 'Rua Padre Giuseppe Angelo Bertoli', '06600-110', '', '84', 'Centro', 'Jandira', 'SP', 'Casa 02 ', '', '06604-110', 'Rua Osvaldo Correia Godoy', '67', 'Jandira', 'SP', 'Jardim Novo Horizonte', 'Casa 02 ', '', 1, 2, 'andressa.fernanda', '2022-11-08 16:36:31'),
(325, 'TIAGO SOUSA BEZERRA DA SILVA', 'BEZERRA AGUA E GAS', 'TIAGO SOUSA BEZERRA DA SILVA', '386.779.018-33', '406916597', '(11) 96015-9611', '', 'COM[ERCIO VAREJISTA DE GÁS LIQUEFEITO DE PETRÓLIO (GLP)', 'Estrada Moraes', '06814-200', '27.722.176/0001-03', '190', 'Jardim dos Moraes', 'Embu das Artes', 'SP', '', '', '', '', '', '', '', '', '', '', 0, 0, 'fernanda.ribeiro', '2022-11-09 10:06:13'),
(326, 'LUCIANA GALDINO DOS SANTOS FREIRE', '', 'LUCIANA GALDINO DOS SANTOS FREIRE', '328.585.448-08', '0523510975', '(15) 99807-1156', '', 'CABELEIREIRA', 'ESTRADA MUNICIPAL ', '18150-000', '28.772.208/0001-48', 'SN', 'LAGEADINHO ', 'Ibiúna', 'SP', 'APT 7', '', '', '', '', '', '', '', 'APT 7', '', 0, 1, 'fernanda.ribeiro', '2022-11-09 10:07:36'),
(327, 'BENEDITO LUIZ VIEIRA FIDELIS JUNIOR ', '', '', '424.363.588-93', '488574055', '(15) 99686-1634', '', 'TAXISTA ', 'RUA SOROCABUÇU ', '18150-000', '', '15', 'CENTRO ', 'Ibiúna', 'SP', 'CASA', '', '', '', '', '', '', '', 'CASA', '', 0, 1, 'fernanda.ribeiro', '2022-11-09 10:35:08'),
(328, '', 'Bruno Rafael da Costa Mendes ', '', '462.832.288-01', '559733318', '(15) 99695-7647', '', 'Autonomo Salão de Cabelereiro ', 'Av Fortunatinho ', '18150-000', '', '343 LJ 2', 'Centro ', 'Ibiúna', 'SP', 'Casa ', '', '', 'Autonomo Salão de Cabelereiro ', '', '', '', '', '', '', 1, 2, 'andressa.fernanda', '2022-11-09 10:45:12'),
(329, 'ALEX DA SILVA DINARDI', 'STUDIO ALEX DINARDI ', '', '190.777.438-63', '282794013', '(11) 99643-3739', '', 'CABELEIREIROS, MANICURE E PEDICURE', 'Rua João Correa Castro', '02859-020', '26.161.649/0001-88', '43', 'Jardim Brasília (Zona Norte)', 'São Paulo', 'SP', '', '', '02859-020', 'Rua João Correa Castro', '59', 'São Paulo', 'SP', 'Jardim Brasília (Zona Norte)', '', '', 0, 1, 'fernanda.ribeiro', '2022-11-09 10:48:06'),
(330, 'JONATHAN HENRIQUE SALLES ', '', '', '441.655.048-07', '529879669', '(15) 99814-6555', '', 'BARBEIRO', 'RUA CEL SALVADOR ROLIM DE FREITAS ', '18150-000', '', '82', 'CENTRO ', 'Ibiúna', 'SP', 'CASA 2', '', '', '', '', '', '', '', 'CASA 2', '', 0, 1, 'fernanda.ribeiro', '2022-11-09 10:52:59'),
(331, 'MONTEIRO DISTRIBUIDORA DE ALIMENTOS FOOD SERVICE EIRELI', '', 'HARRISON MARTIMIANO', '', '', '(11) 95792-3823', '', ' COMERCIO ATACADISTA DE PRODUTOS DE HIGIENE, LIMPEZA E CONSERVAÇÃO DOMICILIAR ', 'SAMARITA', '02518-080', '37.579.551/0001-61', '37', 'JARDIM DAS LARANJEIRAS', 'SAO PAULO', 'SP', '', '', '05879-000', 'Rua Feitiço da Vila', '765', 'São Paulo', 'SP', 'Chácara Santa Maria', '', '', 0, 1, 'fernanda.ribeiro', '2022-11-09 10:59:48'),
(332, '', 'LUCIETE VITAL DA SILVA', 'LUCIETE VITAL DA SILVA', '381.282.978-99', '472663720', '(15) 99618-7886', '', 'SALGADOS', 'undefined', '18150-000', '', '1', 'undefined', 'Ibiúna', 'SP', '', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-11-09 11:09:39'),
(333, 'RICARDO SANTATO PASCHOAL ', '', '', '278.549.918-20', '237807889', '(11) 98973-0324', '', 'PADEIRO', 'Avenida Dom Pedro II', '08500-400', '35.734.189/0001-20', '345', 'Vila Romanópolis', 'Ferraz de Vasconcelos', 'SP', 'COMERCIO ', '', '08500-400', 'Avenida Dom Pedro II', '476', 'Ferraz de Vasconcelos', 'SP', 'Vila Romanópolis', 'COMERCIO ', '', 0, 1, 'fernanda.ribeiro', '2022-11-09 11:10:45'),
(334, 'ANA PAULA DE JESUS OLIVEIRA', 'RESTAURANTE CANTINHO SABOROSO', '', '033.470.315-80', '657716595', '(11) 98340-3228', '(11) 3802-3980', 'LANCHONETES, CASAS DE CHÁ, DE SUCOS E SIMILARES', 'Avenida Engenheiro Armando de Arruda Pereira', '04309-010', '46.645.973/0001-89', '463', 'Jabaquara', 'São Paulo', 'SP', '', '', '04309-010', 'Avenida Engenheiro Armando de Arruda Pereira', '463', 'São Paulo', 'SP', 'Jabaquara', '', '', 0, 1, 'fernanda.ribeiro', '2022-11-09 11:17:51'),
(335, 'SHIRLEY SANCHES NOVAIS', 'AZEPMIL', '', '146.800.278-35', '226069552', '(11) 91573-8027', '(11) 3965-6948', 'COMÉRCIO VAREJISTA DE PRODUTOS SANEANTES DOMISSANITÁRIOS', 'Rua dos Jasmins', '08391-210', '27.612.234/0001-46', '158', 'Parque das Flores', 'São Paulo', 'SP', '', '', '08391-210', 'Rua dos Jasmins', '158', 'São Paulo', 'SP', 'Parque das Flores', '', '', 0, 1, 'fernanda.ribeiro', '2022-11-09 11:27:35'),
(336, 'ODALICE MENDONÇA DA SILVA', 'ODALICE MENDONÇA DA SILVA', '', '581.777.282-53', '537973242', '(11) 98541-7618', '', '', 'RUA GONÇALO DE ANDRADE', '02675-031', '', '265', 'VILA RICA', 'SÃO PAULO', 'SP', '', '', '', '', '', '', '', '', '', '', 0, 0, 'fernanda.ribeiro', '2022-11-09 11:33:13'),
(337, '', 'ANDERSON D FREITAS DE AQUINO', 'ANDERSON D FREITAS DE AQUINO', '', '480876538', '(11) 98989-1023', '', '', 'Avenida Armando Colangelo', '07401-075', '', '226', 'Arujá Center Ville', 'Arujá', 'SP', '', '', '', '', '', '', '', '', '', '', 0, 0, 'fernanda.ribeiro', '2022-11-09 11:53:30'),
(338, 'FABIO CONCEIÇÃO DE SOUSA ', '', '', '375.917.398-59', '438821440', '(11) 91103-7232', '', 'PRODUTO DE LIMPEZA ', 'Rua Maria José da Conceição', '05730-170', '46.305.435/0001-45', '2', 'VILA ANDRADE ', 'SÃO PAULO ', 'SP', 'CASA 7', '', '', '', '', '', '', '', 'CASA 7', '', 0, 1, 'fernanda.ribeiro', '2022-11-09 12:01:49'),
(339, '', 'AUDIRENE MACEDO DE OLIVEIRA', 'AUDIRENE MACEDO DE OLIVEIRA', '624.514.722-00', '302100', '(15) 99836-6397', '', '', 'RUA DAS JABOTICABEIRAS', '18150-000', '', '26', 'LAGEADINHO', 'Ibiúna', 'SP', '', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-11-09 12:03:52'),
(340, 'ANA PAULA DE JESUS OLIVEIRA ', '', '', '033.470.315-80', '657716595', '(11) 98340-3228', '', 'RESTAURANTE', 'Avenida Engenheiro Armando de Arruda Pereira', '04309-010', '46.645.973/0001-89', '', 'Jabaquara', 'São Paulo', 'SP', '', '', '', '', '', '', '', '', '', '', 0, 0, 'fernanda.ribeiro', '2022-11-09 13:30:54'),
(341, '', 'MARTA PEREIRA DA SILVA ROSA', 'MARTA PEREIRA DA SILVA ROSA', '259.741.018-80', '29154907', '(11) 99455-2891', '', 'COMÉRCIO AÇAÍ', 'Rua Flor da Verdade', '08230-700', '', '44', 'Vila Verde', 'São Paulo', 'SP', 'CASA 03', '', '', '', '', '', '', '', '', '', 1, 0, 'fernanda.ribeiro', '2022-11-09 13:41:15'),
(342, 'MOISES IVAN REYNOSO CHAVEZ', 'HARRISON MARTIMIANO', 'MONTEIRO DISTRIBUIDORA DE ALIMENTOS FOOD SERVICE EIRELI', '220.206.968-27', 'Y271739-J', '(11) 95792-3823', '(11) 4762-7252', 'COMÉRCIO ATACADISTA DE PRODUTOS ALIMENTÍCIOS EM GERAL', 'SAMARITA', '02518-080', '37.579.551/0001-61', '765', 'JARDIM DAS LARANJEIRAS', 'SAO PAULO', 'SP', '', '', '05879-000', 'Rua Feitiço da Vila', '765', 'São Paulo', 'SP', 'Chácara Santa Maria', '', '', 0, 0, 'fernanda.ribeiro', '2022-11-09 13:57:05'),
(343, 'CLEIA APARECIDA DA SILVA', 'COFFE BURGUER RETRO', '', '324.936.598-05', '44457685', '(11) 94609-1765', '', 'HAMBURGUERIA', 'Rua Alexandre Cheid', '03570-100', '', '166', 'Parque Savoy City', 'São Paulo', 'SP', 'CASA', '', '', '', '', '', '', '', 'CASA', '', 0, 0, 'fernanda.ribeiro', '2022-11-09 14:06:51'),
(344, '', 'ANGELICA FERNANDES DE MORAES', 'ANGELICA FERNANDES DE MORAES', '397.204.568-92', '677636957', '(11) 96377-0955', '', '', 'Rua Waldomiro Marquesini', '08568-380', '', '108', 'Jardim Nova Poá', 'Poá', 'SP', '', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-11-09 14:09:03'),
(345, '', '', 'JOSE APARECIDO DE FARIAS ', '126.821.458-25', '234295132', '', '', 'MERCADINHO ', 'Rua Ivar Beckman', '05788-420', '', '299', 'Jardim Campo Limpo', 'São Paulo', 'SP', 'CASA 2', '', '', '', '', '', '', '', 'CASA 2', '', 0, 1, 'fernanda.ribeiro', '2022-11-09 14:19:00'),
(346, '', '', 'CELIA VIEIRA DE CARVALHO ', '295.321.308-29', '41978732X', '(11) 95165-7241', '', 'LANCHONETE ', 'Rua Rosa', '09572-600', '', '219', 'Nova Gerty', 'São Caetano do Sul', 'SP', 'CASA', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-11-09 15:01:00'),
(347, '', '', 'GISELE GOIS FERREIRA ', '', '492525614', '', '', 'BAR ', 'Rua José Ítalo de Camargo', '06363-140', '', '146', 'Jardim Ana Estela', 'Carapicuíba', 'SP', 'CASA 1', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-11-09 15:15:48'),
(348, '', 'Renata Pereira da Silva ', '', '321.872.968-81', '437546470', '(11) 94883-4631', '', 'Ajudante de Costura ', 'Avenida Cláudio Franchi', '05633-000', '', '604', 'Jardim Monte Kemel', 'São Paulo', 'SP', 'Casa ', 'Portão Preto ', '05625-040', 'Rua Abraham Bertie Levi', '140', 'São Paulo', 'SP', 'Vila Sônia', 'Casa ', '1 Andar ', 1, 2, 'manuella.santos', '2022-11-09 15:57:16'),
(349, '', '', 'MICHELE CARDOSO PINTO', '403.455.578-59', '477856755', '(11) 95907-4168', '', 'LOJISTA', 'Rua Lúcia Pinto de Oliveira', '06654-110', '36.718.787/0001-79', '130', 'Vila São Francisco', 'Itapevi', 'SP', 'LOJA ', '', '06721-507', 'Rua Mário Andreatini', '121', 'Cotia', 'SP', 'Graça', 'AP 234', '', 0, 1, 'fernanda.ribeiro', '2022-11-09 16:11:48'),
(350, 'KAIANE ROSSI DELMINDA 41400837863', 'CLOSET DAKA', '', '414.008.378-63', '482286143', '', '', 'LOJISTA ', 'BOM PASTOR', '09570-500', '44.416.938/0001-62', '', 'OSVALDO CRUZ', 'SAO CAETANO DO SUL', 'SP', 'TERREO', '', '09580-020', 'Rua Manoel Augusto Ferreirinha', '838', 'São Caetano do Sul', 'SP', 'Nova Gerty', '', '', 0, 1, 'fernanda.ribeiro', '2022-11-09 16:32:13'),
(351, 'BIANCA SANTOS LIMA RODRIGUES 38591690842', 'INFLUENCE ACESSORIOS ELETRONICOS E VARI', 'BIANCA SANTOS LIMA RODRIGUES', '385.916.908-42', '47340298', '', '', 'LOJISTA ', 'DO JACARANDA', '06361-400', '37.799.086/0001-74', '3767', 'ALTO DE SANTA LUCIA', 'CARAPICUIBA', 'SP', 'LOJA 2', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-11-09 16:36:01'),
(352, 'PAULO EDUARDO SHIKOSKI 03054515109', 'PSTEC CALHAS', 'PAULO EDUARDO SHIKOSKI', '030.454.151-09', '41909971', '', '', '', 'RUA JOAQUIM RIBEIRO DA SILVA', '18285-000', '29.653.222/0001-95', '739', 'CENTRO', 'CESARIO LANGE', 'SP', 'CASA RESIDENCIAL', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-11-09 16:38:31'),
(353, '', '', 'SIMONE CRUZ SENA SILVA ', '230.245.288-73', '404762979', '(11) 96352-6657', '', 'LANCHONETE ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-11-09 16:41:31'),
(354, '', '', 'MEIRE DA COSTA SILVA ', '028.191.074-00', '507367133', '(11) 95163-7331', '', 'LOJA DE JOGOS ', 'Rua das Três Marias', '05874-180', '', '59', 'Parque Novo Santo Amaro', 'São Paulo', 'SP', 'CASA', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-11-09 16:49:31'),
(355, '', 'Daniel Felipe da Silva de Oliveira ', '', '482.918.688-75', '540494276', '(11) 98723-7176', '', 'Aux Rede Telefonica', 'Rua Lusitano Soares', '05882-050', '', '126', 'Jardim São Bento Novo', 'São Paulo', 'SP', 'Casa', '', '', 'ICOMON TECNOLOGIA LTDA', '', '', '', '', 'Casa', '', 1, 2, 'phelipe', '2022-10-04 12:12:26'),
(356, 'ABSOLUTO FILM ', '', 'ANTONIO BRAZ DA SILVA ', '351.261.358-64', '43783331', '(11) 98651-9782', '', 'MECANICO ', 'Rua Maximiano Brandão', '08430-590', '', '13', 'Jardim Etelvina', 'São Paulo', 'SP', 'OFICINA ', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-11-10 10:18:19'),
(357, '', 'ANALIA TEREZINHA DE MOURA GARCIA NUNES', 'ANALIA TEREZINHA DE MOURA GARCIA NUNES', '283.720.618-07', '354815271', '(11) 98619-5486', '', '', 'Rua dos Temas', '04938-000', '', '70', 'Jardim Kagohara', 'São Paulo', 'SP', 'CASA 01', '', '', '', '', '', '', '', '', '', 0, 2, 'dani.ribeiro', '2022-11-10 10:40:02'),
(358, '', 'JOSIANE PEDROSO DA SILVA', 'JOSIANE PEDROSO DA SILVA', '314.166.158-81', '34823675X', '(11) 97542-0302', '', 'AUX. PRODUÇÃO', 'Rua Coronel Souza Franco', '08710-020', '', '652', 'Centro', 'Mogi das Cruzes', 'SP', '', '', '08655-560', 'Rua Gino Marques da Cunha', '652', 'Suzano', 'SP', 'Parque Umuarama', '', '', 0, 2, 'dani.ribeiro', '2022-11-10 11:08:26'),
(359, '', 'JOSIANE PEDROSO DA SILVA', 'JOSIANE PEDROSO DA SILVA', '314.166.158-81', '34823675X', '(11) 97542-0302', '', 'AUX. PRODUÇÃO', 'Rua Coronel Souza Franco', '08710-020', '', '652', 'Centro', 'Mogi das Cruzes', 'SP', '', '', '08655-560', 'Rua Gino Marques da Cunha', '652', 'Suzano', 'SP', 'Parque Umuarama', '', '', 0, 2, 'dani.ribeiro', '2022-11-10 11:08:29'),
(360, 'Antonio Alexandre Alves Domingues', '', '', '290.690.268-30', '360061370', '(15) 99734-1219', '', 'Agente de limpeza', 'Estr Municipal da Vargem do Salto', '18150-000', '', '0', 'Cupim', 'Ibiúna', 'SP', '', 'Próximo ao Laércio Suguimoto', '18150-000', 'Rodovia Bunjiro Nakao', '0', 'Ibiúna', 'SP', 'Votorantim', '', '', 1, 2, 'fernanda.oliveira', '2022-11-10 15:00:55'),
(361, '', '', 'Fabio Ramalho Fernandes', '403.023.403-02', '46430393-x', '(15) 99697-5766', '', 'agricultor autonomo', 'Estr Municipal Lageadinho', '18150-000', '', '0', 'Lageadinho', 'Ibiúna', 'SP', '', '', '18150-000', 'Estrada Municipal Lageadinho', '0', 'Ibiúna', 'SP', 'Lageadinho', '', '', 1, 2, 'fernanda.oliveira', '2022-11-10 15:18:59'),
(362, '', '', 'Graziele da Silva Moreira', '426.619.068-94', '4266190689', '(15) 99729-8616', '', 'repositora supermercado', 'Rua Assunção', '18150-000', '', '7', 'Centro', 'Ibiúna', 'SP', '', 'Na rua da escola Adventista', '18150-000', 'Supermercado São Roque ', '', 'Ibiúna', 'SP', 'Centro', '', '', 1, 2, 'fernanda.oliveira', '2022-11-10 15:32:23'),
(363, '', '', 'Ana Paula Aparecida Cassemiro', '389.411.188-75', '45012888-x', '(15) 99626-1536', '', 'Uber/projetista autonoma', 'Rua Benedito José Soares', '18150-000', '', '52', 'JD São Luiz', 'Ibiúna', 'SP', '', 'sobrado verde de esquina', '', '', '', '', '', '', '', '', 1, 2, 'fernanda.oliveira', '2022-11-10 15:39:39'),
(364, '', '', 'José Marcelo de Oliveira', '072.694.824-11', '57902636-x', '(11) 99234-1926', '', 'movimentador de mercado', 'Rua Francisco Caramante', '18120-000', '', '14', 'Nuc Sta Amelia', 'Mairinque', 'SP', 'CA 2', '', '18120-000', '', '', '', '', '', 'CNPJ 57.050.049/0001-76', '', 1, 2, 'fernanda.oliveira', '2022-11-10 15:50:41'),
(365, '', '', 'Samuel Fernando Garcia de Oliveira', '488.414.978-58', '572561702', '(11) 91432-4054', '', 'motorista', 'Estrada Municipal', '18150-000', '', '0', 'Tavares', 'Ibiúna', 'SP', '', '', '18150-000', 'Rua Cirineu Soares de Campos', '0', 'Ibiúna', 'SP', 'Centro', 'Andreza Ramos Leite Michizoe', '', 1, 2, 'fernanda.oliveira', '2022-11-10 15:56:53'),
(366, '', '', 'Débora Talita Aparecida Rodrigues', '377.287.978-08', '449873638', '(15) 99730-6978', '', 'serviços gerais', 'Rua José Matias Targa', '18150-000', '', '37', 'CDHU Gemima', 'Ibiúna', 'SP', '', '', '18150-000', 'Kazuo tomates', '', 'Ibiúna', 'SP', '', 'proximo a quadra tikamori', '', 1, 2, 'fernanda.oliveira', '2022-11-10 16:03:07'),
(367, '', '', 'Thiago Olanik ', '454.496.238-28', '467948768', '(15) 99623-0516', '', 'Micro Empresário', 'Rua Colombia ', '18150-000', '', '502', 'Jardim Nova Ibiúna ', 'Ibiúna', 'SP', 'Casa ', '', '', '', '', '', '', '', '', '', 1, 2, 'andressa.fernanda', '2022-11-11 11:10:11'),
(368, '', '', 'Camila Leite Pereira', '367.227.528-01', '447056396', '(11) 94039-6865', '', 'Salão de Cabelereira ', 'Avenida Luiz Reviglio', '06656-240', '', '160', 'Jardim Bela Vista', 'Itapevi', 'SP', '', '', '', 'Salão de Cabelereira ', '', '', '', '', '', '', 1, 2, 'andressa.fernanda', '2022-11-16 12:22:33'),
(369, '', '', 'JOÃO HENRIQUE DA FONSECA ABRANTES ', '353.038.368-60', '328140089', '', '', 'BARBEIRO ', 'Rua Altamiro Mathias Goes', '07179-294', '', '314', 'Jardim Santa Paula', 'Guarulhos', 'SP', 'CASA 2 ', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-11-22 10:21:57'),
(370, '', '', 'ANDRÉ LUIZ FARIA ', '362.752.998-78', '43248324', '(11) 99979-8499', '', 'ADEGA', 'Rua José Cícero Soares', '07417-180', '', '215', 'PIRITUBA ', 'ARUJA', 'SP', 'CASA 2', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-11-22 10:28:01'),
(371, '', '', 'MARTA PEREIRA DA SILVA ROSA ', '259.741.018-80', '29154907', '(11) 99455-2891', '', 'AÇAÍ ', 'Rua Francisco Alarico Bérgamo', '08230-011', '', '1609', 'São Miguel Paulista', 'São Paulo', 'SP', 'COMERCIO ', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-11-22 10:35:35'),
(372, '', '', 'MOISES IVAN REYNOSO CHAVEZ ', '220.206.968-27', '', '(11) 95792-3823', '', 'MERCADINHO ', 'Rua Feitiço da Vila', '05879-000', '', '765', 'Chácara Santa Maria', 'São Paulo', 'SP', 'CASA', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-11-22 10:58:45'),
(373, '', '', 'JOELMA PEREIRA QUEIROZ DE PAIVA ', '', '', '', '', 'TRAILER ', 'RUA ESTRELA DO OESTE', '', '', '', 'JD SÃO GERALDO ', 'GUARULHOS ', 'SP', 'DE FRENTE COM O NUMERO 340', '', '', '', '', '', '', '', '', '', 0, 1, 'fernanda.ribeiro', '2022-12-07 10:57:56'),
(374, '', '', 'Bianka Ludimilla Silva Santos ', '103.719.574-43', '564395821', '(11) 98104-5941', '', '', 'Rua Emilia Barradas Simões', '08690-270', '', '491', 'Cidade Miguel Badra', 'Suzano', 'SP', '', '', '', '', '', '', '', '', '', '', 0, 2, 'manuella.santos', '2023-01-24 16:23:27'),
(375, '', '', 'Daniel Felipe da Silva ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 2, 'manuella.santos', '2023-01-26 11:29:56'),
(376, '', '', 'Daniel Felipe da Silva ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 2, 'manuella.santos', '2023-01-26 11:29:57'),
(377, '', '', 'Daniel Felipe da Silva ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 2, 'manuella.santos', '2023-01-26 11:29:58'),
(378, '', '', 'Ednaldo da Silva Bezerra', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 2, 'manuella.santos', '2023-01-26 11:31:41'),
(379, '', '', 'Daniel Felipe da Silva de Oliveira', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 2, 'manuella.santos', '2023-01-26 11:38:34');

-- --------------------------------------------------------

--
-- Estrutura para tabela `comprovantes`
--

CREATE TABLE `comprovantes` (
  `id` int(11) NOT NULL,
  `id_solicitacao` int(11) NOT NULL,
  `comprovante` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `usuario` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `dt_pgto` date NOT NULL,
  `data_comprovante` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `comprovantes`
--

INSERT INTO `comprovantes` (`id`, `id_solicitacao`, `comprovante`, `usuario`, `dt_pgto`, `data_comprovante`) VALUES
(1, 10, '10_2022-11-09_15:31:23_6.jpeg', 'manuella.santos', '2022-11-01', '2022-11-09 15:31:23');

-- --------------------------------------------------------

--
-- Estrutura para tabela `fotos_clientes`
--

CREATE TABLE `fotos_clientes` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `ftcliente` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ftrg` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ftcpf` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ftcompres` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ftcompcomer` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `fttermo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ftcertificado` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ftlocal` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ftlocal2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ftlocal3` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ftlocal4` varchar(255) NOT NULL,
  `usuario` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `data_fotos_clientes` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `fotos_clientes`
--

INSERT INTO `fotos_clientes` (`id`, `id_cliente`, `ftcliente`, `ftrg`, `ftcpf`, `ftcompres`, `ftcompcomer`, `fttermo`, `ftcertificado`, `ftlocal`, `ftlocal2`, `ftlocal3`, `ftlocal4`, `usuario`, `data_fotos_clientes`) VALUES
(1, 1, '1_self_2022-10-04_11:41:56_SELF.jfif', '1_rg_2022-10-04_11:41:56_RG.jfif', '', '1_compres_2022-10-04_11:41:56_COMPROV. ENDER.jfif', '', '', '', '', '', '', '', 'thais.franco', '2022-10-04 11:26:24'),
(2, 2, '2_self_2022-10-04_11:46:07_CLEONICE DOS SANTOS.jpeg', '2_rg_2022-10-04_11:46:07_CLEONICE DOS SANTOS 2.jpeg', '2_cpf_2022-10-04_11:46:07_CLEONICE DOS SANTOS 2.jpeg', '2_compres_2022-10-04_11:46:07_CLEONICE DOS SANTOS 4.jpeg', '2_compcomer_2022-10-04_11:46:07_CLEONICE DOS SANTOS 3.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-04 11:46:07'),
(3, 3, '3_self_2022-10-04_12:12:26_DANIEL FELIPE DA SILVA DE OLIVEIRA .jpeg', '3_rg_2022-10-04_12:12:26_DANIEL FELIPE 4.jpeg', '3_cpf_2022-10-04_12:12:26_DANIEL FELIPE 5.jpeg', '3_compres_2022-10-04_12:12:26_DANIEL FELIPE 3.jpeg', '3_compcomer_2022-10-04_12:12:26_DANIEL FELIPE 2.pdf', '', '', '', '', '', '', 'manuella.santos', '2022-10-04 12:12:26'),
(4, 4, '', '', '', '', '', '', '', '', '', '', '', 'thais.franco', '2022-10-04 12:15:14'),
(5, 5, '5_self_2022-10-04_12:41:16_EDNA MARIA.jpeg', '5_rg_2022-10-04_12:41:16_EDNA MARIA 3.jpeg', '5_cpf_2022-10-04_12:41:16_EDNA MARIA 2 .jpeg', '5_compres_2022-10-04_12:41:16_EDNA MARIA 4.jpeg', '5_compcomer_2022-10-04_12:41:16_EDNA MARIA 5.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-04 12:17:38'),
(6, 6, '', '', '', '', '', '', '', '', '', '', '', 'thais.franco', '2022-10-04 12:25:50'),
(7, 7, '7_self_2022-10-04_12:52:11_GABRIEL ARAGAO.jpeg', '7_rg_2022-10-04_12:55:31_GABRIEL ARAGAO 3.jpeg', '7_cpf_2022-10-04_12:54:50_GABRIEL ARAGAO 4.jpeg', '7_compres_2022-10-04_12:52:11_GABRIEL ARAGAO 5.jpeg', '7_compcomer_2022-10-04_12:52:11_GABRIEL ARAGAO 2.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-04 12:52:11'),
(8, 8, '8_self_2022-10-04_13:08:20_LUCAS ABREU.jpeg', '8_rg_2022-10-04_13:08:20_LUCAS ABREU 2.jpeg', '8_cpf_2022-10-04_13:08:20_LUCAS ABREU 2.jpeg', '8_compres_2022-10-04_13:08:20_LUCAS ABREU 4.jpeg', '8_compcomer_2022-10-04_13:08:20_LUCAS ABREU 3.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-04 13:08:20'),
(9, 9, '9_self_2022-10-04_13:17:45_LUCINEIDE.jpeg', '9_rg_2022-10-04_13:17:45_LUCINEIDE 2.jpeg', '9_cpf_2022-10-04_13:17:45_LUCINEIDE 3.jpeg', '9_compres_2022-10-04_13:17:45_LUCINEIDE 4.jpeg', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-04 13:17:45'),
(10, 10, '10_self_2022-10-06_09:36:11_p.jpeg', '10_rg_2022-10-04_13:31:03_PAULO 3.jpeg', '10_cpf_2022-10-04_13:31:03_PAULO 2.jpeg', '10_compres_2022-10-04_13:31:03_PAULO 5.jpeg', '10_compcomer_2022-10-04_13:31:03_PAULO 4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-04 13:31:03'),
(11, 11, '11_self_2022-10-04_13:40:04_PRISCILA .jpeg', '11_rg_2022-10-04_13:40:04_PRISCILA 2.jpeg', '11_cpf_2022-10-04_13:40:04_PRISCILA 2.jpeg', '11_compres_2022-10-04_13:40:04_PRISCILA 3.jpeg', '11_compcomer_2022-10-04_13:40:04_PRISCILA 4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-04 13:40:04'),
(12, 12, '12_self_2022-10-04_13:48:11_VALERIA .jpeg', '12_rg_2022-10-04_13:48:11_VALERIA 3.jpeg', '12_cpf_2022-10-04_13:48:11_VALERIA 2.jpeg', '12_compres_2022-10-04_13:48:11_VALERIA 5.jpeg', '12_compcomer_2022-10-04_13:48:11_VALERIA 4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-04 13:48:11'),
(13, 13, '13_self_2022-10-04_14:22:52_MICHELE .jpeg', '13_rg_2022-10-04_14:22:52_MICHELE 3.jpeg', '13_cpf_2022-10-04_14:22:52_MICHELE 2.jpeg', '13_compres_2022-10-04_14:22:52_MICHELE 5.jpeg', '13_compcomer_2022-10-04_14:22:52_MICHELE 4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-04 14:00:02'),
(14, 14, '14_self_2022-10-04_15:26:00_Maria .jpeg', '14_rg_2022-10-04_15:26:00_Maria 2 .jpeg', '14_cpf_2022-10-04_15:26:00_maria 3.jpeg', '14_compres_2022-10-04_15:26:00_maria 5.jpeg', '14_compcomer_2022-10-04_15:26:00_maria 4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-04 14:00:18'),
(15, 15, '15_self_2022-10-04_14:48:13_123.jpeg', '15_rg_2022-10-04_14:48:13_1234.jpeg', '15_cpf_2022-10-04_14:48:13_1234.jpeg', '15_compres_2022-10-04_14:48:13_123456.jpeg', '15_compcomer_2022-10-04_14:48:13_12345.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-04 14:48:13'),
(16, 16, '16_self_2022-10-04_15:17:51_RG FRENTE.jfif', '16_rg_2022-10-04_15:17:51_RG VERSO.jfif', '16_cpf_2022-10-04_15:17:51_´CPF.jfif', '16_compres_2022-10-04_15:17:51_COMPROV. ENDEREÇO.jfif', '16_compcomer_2022-10-04_15:17:51_COMPROV. ENDEREÇO.jfif', '', '', '', '', '', '', 'thais.franco', '2022-10-04 15:11:22'),
(17, 17, '17_self_2022-10-04_16:03:58_marli.jpeg', '17_rg_2022-10-04_16:03:58_marli 2.jpeg', '17_cpf_2022-10-04_16:03:58_marli 2.jpeg', '17_compres_2022-10-04_16:03:58_marli 3.jpeg', '17_compcomer_2022-10-04_16:03:58_marli 4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-04 16:03:58'),
(18, 18, '18_self_2022-10-04_16:13:40_talles.jpeg', '18_rg_2022-10-04_16:13:40_talles 2.jpeg', '18_cpf_2022-10-04_16:13:40_talles 2.jpeg', '18_compres_2022-10-04_16:13:40_talles 3.jpeg', '18_compcomer_2022-10-04_16:13:40_talles 4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-04 16:13:40'),
(19, 19, '19_self_2022-10-04_16:20:48_mi.jpeg', '19_rg_2022-10-04_16:20:48_mi 3.jpeg', '19_cpf_2022-10-04_16:20:48_mi 2.jpeg', '19_compres_2022-10-04_16:20:48_mi 4.jpeg', '19_compcomer_2022-10-04_16:20:48_mi 5.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-04 16:20:48'),
(20, 20, '20_self_2022-10-05_11:27:49_tami.jpeg', '20_rg_2022-10-05_11:27:49_tami 3.jpeg', '20_cpf_2022-10-05_11:27:49_tami 2.jpeg', '20_compres_2022-10-05_11:27:49_tami 4.jpeg', '20_compcomer_2022-10-05_11:27:49_tami 5.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-04 16:29:54'),
(21, 21, '21_self_2022-10-05_12:41:14_paulo .jpeg', '21_rg_2022-10-05_12:41:14_paulo 2.jpeg', '21_cpf_2022-10-05_12:41:14_paulo 2.jpeg', '21_compres_2022-10-05_12:41:14_paulo 3.jpeg', '21_compcomer_2022-10-05_12:41:14_paulo 4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-05 12:41:14'),
(22, 22, '22_self_2022-10-05_13:16:22_eli.jpeg', '22_rg_2022-10-05_13:16:22_eli 3.jpeg', '22_cpf_2022-10-05_13:16:22_eli 2.jpeg', '22_compres_2022-10-05_13:16:22_eli 4.jpeg', '22_compcomer_2022-10-05_13:16:22_eli 5.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-05 13:16:22'),
(23, 23, '23_self_2022-10-05_13:26:27_ka .jpeg', '23_rg_2022-10-05_13:26:27_ka 2.jpeg', '23_cpf_2022-10-05_13:26:27_ka 3.jpeg', '23_compres_2022-10-05_13:26:27_ka 4.jpeg', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-05 13:26:27'),
(24, 24, '24_self_2022-10-05_13:48:29_jo.jpeg', '', '', '24_compres_2022-10-05_13:48:29_jo 2.jpeg', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-05 13:48:29'),
(25, 25, '25_self_2022-10-05_15:41:41_1.jpeg', '25_rg_2022-10-05_15:41:41_2.jpeg', '25_cpf_2022-10-05_15:41:41_2.jpeg', '25_compres_2022-10-05_15:41:41_3.jpeg', '25_compcomer_2022-10-05_15:41:41_4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-05 15:41:41'),
(26, 26, '26_self_2022-10-05_16:09:11_1.jpeg', '26_rg_2022-10-05_16:09:11_2.jpeg', '26_cpf_2022-10-05_16:09:11_2.jpeg', '26_compres_2022-10-05_16:09:11_3.jpeg', '26_compcomer_2022-10-05_16:09:11_4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-05 16:09:11'),
(27, 27, '27_self_2022-10-05_16:28:48_1.jpeg', '27_rg_2022-10-05_16:28:48_3.jpeg', '27_cpf_2022-10-05_16:28:48_2.jpeg', '27_compres_2022-10-05_16:28:48_5.pdf', '27_compcomer_2022-10-05_16:28:48_4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-05 16:28:48'),
(28, 28, '', '', '', '', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-05 16:38:12'),
(29, 29, '29_self_2022-10-05_16:54:48_1.jpeg', '29_rg_2022-10-05_16:54:48_2.jpeg', '29_cpf_2022-10-05_16:54:48_3.jpeg', '29_compres_2022-10-05_16:54:48_5.jpeg', '29_compcomer_2022-10-05_16:54:48_4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-05 16:54:48'),
(30, 30, '30_self_2022-10-05_17:12:43_1.jpeg', '30_rg_2022-10-05_17:12:43_2.jpeg', '30_cpf_2022-10-05_17:12:43_2.jpeg', '30_compres_2022-10-05_17:12:43_3.jpeg', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-05 16:55:07'),
(31, 31, '31_self_2022-10-05_17:03:01_1.jpeg', '31_rg_2022-10-05_17:03:01_2.jpeg', '31_cpf_2022-10-05_17:03:01_2.jpeg', '31_compres_2022-10-05_17:03:01_3.jpeg', '31_compcomer_2022-10-05_17:03:01_4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-05 17:03:01'),
(32, 32, '', '32_rg_2022-10-07_10:45:56_1.jpeg', '32_cpf_2022-10-07_10:45:56_1.jpeg', '', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-05 17:04:06'),
(33, 33, '33_self_2022-10-06_15:17:01_1.jpeg', '33_rg_2022-10-06_15:17:01_2.jpeg', '33_cpf_2022-10-06_15:17:01_2.jpeg', '33_compres_2022-10-06_15:17:01_3.jpeg', '33_compcomer_2022-10-06_15:17:01_4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-06 15:17:01'),
(34, 34, '34_self_2022-10-07_10:02:52_20220415_193553.jpg', '', '', '', '', '', '', '', '', '', '', 'phelipe', '2022-10-07 10:02:52'),
(35, 35, '35_self_2022-10-07_10:55:50_1.jpeg', '35_rg_2022-10-07_10:55:50_2.jpeg', '35_cpf_2022-10-07_10:55:50_2.jpeg', '35_compres_2022-10-07_10:55:50_3.jpeg', '35_compcomer_2022-10-07_10:55:50_4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-07 10:55:50'),
(36, 36, '36_self_2022-10-07_11:06:10_1.jpeg', '36_rg_2022-10-07_11:06:10_2.jpeg', '36_cpf_2022-10-07_11:06:10_2.jpeg', '36_compres_2022-10-07_11:06:10_3.jpeg', '36_compcomer_2022-10-07_11:06:10_4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-07 10:59:16'),
(37, 37, '37_self_2022-10-07_11:17:28_4.jpeg', '37_rg_2022-10-07_11:17:28_3.jpeg', '37_cpf_2022-10-07_11:17:28_2.jpeg', '37_compres_2022-10-07_11:17:28_1.jpeg', '37_compcomer_2022-10-07_11:17:28_6.pdf', '', '', '', '', '', '', 'manuella.santos', '2022-10-07 11:17:28'),
(38, 38, '38_self_2022-10-07_11:27:34_1.jpeg', '38_rg_2022-10-07_11:27:34_2.jpeg', '38_cpf_2022-10-07_11:27:34_2.jpeg', '38_compres_2022-10-07_11:27:34_3.jpeg', '38_compcomer_2022-10-07_11:27:34_4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-07 11:27:34'),
(39, 39, '39_self_2022-10-07_11:37:39_1.jpeg', '39_rg_2022-10-07_11:37:39_3.jpeg', '39_cpf_2022-10-07_11:37:39_2.jpeg', '39_compres_2022-10-07_11:37:39_4.jpeg', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-07 11:37:39'),
(40, 40, '', '', '', '', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-07 11:40:47'),
(41, 41, '41_self_2022-10-07_11:51:30_1.jpeg', '41_rg_2022-10-07_11:51:30_2.jpeg', '41_cpf_2022-10-07_11:51:30_2.jpeg', '41_compres_2022-10-07_11:51:30_4.pdf', '41_compcomer_2022-10-07_11:51:30_3.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-07 11:51:30'),
(42, 42, '', '42_rg_2022-10-07_11:56:31_CNH.jfif', '', '42_compres_2022-10-07_11:56:31_COMP. ENDEREÇO.jfif', '42_compcomer_2022-10-07_11:56:31_CNPJ.jfif', '', '', '', '', '', '', 'thais.franco', '2022-10-07 11:56:31'),
(43, 43, '43_self_2022-10-07_12:00:33_1.jpeg', '43_rg_2022-10-07_12:00:33_2.jpeg', '43_cpf_2022-10-07_12:00:33_3.jpeg', '43_compres_2022-10-07_12:00:33_4.jpeg', '43_compcomer_2022-10-07_12:00:33_5.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-07 12:00:33'),
(44, 44, '', '44_rg_2022-10-07_12:16:24_RG FRENTE E VERSO.jfif', '', '', '44_compcomer_2022-10-07_12:16:24_Mei.jfif', '', '', '', '', '', '', 'thais.franco', '2022-10-07 12:16:24'),
(45, 45, '45_self_2022-10-07_13:00:33_1.jpeg', '45_rg_2022-10-07_13:00:33_2.jpeg', '45_cpf_2022-10-07_13:00:33_2.jpeg', '45_compres_2022-10-07_13:00:33_3.jpeg', '45_compcomer_2022-10-07_13:00:33_4.PDF', '', '', '', '', '', '', 'manuella.santos', '2022-10-07 13:00:33'),
(46, 46, '46_self_2022-10-07_13:24:34_1.jpeg', '46_rg_2022-10-07_13:24:34_2.jpeg', '46_cpf_2022-10-07_13:24:34_3.jpeg', '46_compres_2022-10-07_13:24:34_4.jpeg', '46_compcomer_2022-10-07_13:24:34_4.PDF', '', '', '', '', '', '', 'manuella.santos', '2022-10-07 13:24:34'),
(47, 47, '', '', '', '', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-07 13:25:24'),
(48, 48, '48_self_2022-10-07_13:37:47_1.jpeg', '48_rg_2022-10-07_13:37:47_2.jpeg', '48_cpf_2022-10-07_13:37:47_3.jpeg', '48_compres_2022-10-07_13:37:47_4.jpeg', '48_compcomer_2022-10-07_13:37:47_5.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-07 13:37:47'),
(49, 49, '49_self_2022-10-10_12:28:08_SELFIE.jfif', '49_rg_2022-10-10_12:28:08_RG FRENTE.jfif', '49_cpf_2022-10-10_12:28:08_RG VERSO.jfif', '49_compres_2022-10-10_12:28:08_COMPROVANTE DE ENDREÇO.jfif', '', '', '', '', '', '', '', 'dani.ribeiro', '2022-10-10 12:02:35'),
(50, 50, '50_self_2022-10-10_12:17:50_1.jpeg', '50_rg_2022-10-10_12:17:50_3.jpeg', '50_cpf_2022-10-10_12:17:50_2.jpeg', '50_compres_2022-10-10_12:17:50_4.jpeg', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-10 12:17:50'),
(51, 51, '51_self_2022-10-10_13:38:09_1.jpeg', '51_rg_2022-10-10_13:38:09_3.jpeg', '51_cpf_2022-10-10_13:38:09_2.jpeg', '51_compres_2022-10-10_13:38:09_5.jpeg', '51_compcomer_2022-10-10_13:38:09_4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-10 13:38:09'),
(52, 52, '52_self_2022-10-10_14:02:58_1.jpeg', '52_rg_2022-10-10_14:02:58_2.jpeg', '52_cpf_2022-10-10_14:02:58_2.jpeg', '52_compres_2022-10-10_14:02:58_3.jpeg', '52_compcomer_2022-10-10_14:02:58_4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-10 14:02:58'),
(53, 53, '53_self_2022-10-10_14:21:10_1.jpeg', '53_rg_2022-10-10_14:21:10_2.jpeg', '53_cpf_2022-10-10_14:21:10_3.jpeg', '53_compres_2022-10-10_14:21:10_4.jpeg', '53_compcomer_2022-10-10_14:21:10_5.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-10 14:21:10'),
(54, 54, '', '54_rg_2022-10-10_14:35:53_2.jpeg', '54_cpf_2022-10-10_14:35:53_2.jpeg', '54_compres_2022-10-10_14:35:53_1.jpeg', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-10 14:35:53'),
(55, 55, '', '', '', '', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-10 14:37:11'),
(56, 56, '56_self_2022-10-10_14:43:49_1.jpeg', '56_rg_2022-10-10_14:43:49_3.jpeg', '56_cpf_2022-10-10_14:43:49_2.jpeg', '56_compres_2022-10-10_14:43:49_4.jpeg', '56_compcomer_2022-10-10_14:43:49_5.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-10 14:43:49'),
(57, 57, '57_self_2022-10-10_14:56:33_1.jpeg', '57_rg_2022-10-10_14:56:33_2.jpeg', '57_cpf_2022-10-10_14:56:33_3.jpeg', '57_compres_2022-10-10_14:56:33_4.jpeg', '57_compcomer_2022-10-10_14:56:33_6.pdf', '', '', '', '', '', '', 'manuella.santos', '2022-10-10 14:56:33'),
(58, 58, '58_self_2022-10-10_15:11:07_1.jpeg', '58_rg_2022-10-10_15:11:07_2.jpeg', '58_cpf_2022-10-10_15:11:07_3.jpeg', '58_compres_2022-10-10_15:11:07_4.jpeg', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-10 15:11:07'),
(59, 59, '59_self_2022-10-10_15:34:56_3.jpeg', '59_rg_2022-10-10_15:34:56_1.jpeg', '59_cpf_2022-10-10_15:34:56_2.jpeg', '', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-10 15:34:56'),
(60, 60, '60_self_2022-10-10_15:47:52_1.jpeg', '60_rg_2022-10-10_15:47:52_3.jpeg', '60_cpf_2022-10-10_15:47:52_2.jpeg', '60_compres_2022-10-10_15:47:52_4.jpeg', '60_compcomer_2022-10-10_15:47:52_5.pdf', '', '', '', '', '', '', 'manuella.santos', '2022-10-10 15:47:52'),
(61, 61, '', '61_rg_2022-10-10_15:58:52_2.jpeg', '61_cpf_2022-10-10_15:58:52_1.jpeg', '', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-10 15:58:52'),
(62, 62, '62_self_2022-10-11_11:15:33_1.jpeg', '62_rg_2022-10-11_11:15:33_2.jpeg', '62_cpf_2022-10-11_11:15:33_3.jpeg', '62_compres_2022-10-11_11:15:33_4.jpeg', '62_compcomer_2022-10-11_11:15:33_5.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-10 16:54:59'),
(63, 63, '63_self_2022-10-11_11:26:22_1.jpeg', '63_rg_2022-10-11_11:26:22_3.jpeg', '63_cpf_2022-10-11_11:26:22_2.jpeg', '63_compres_2022-10-11_11:26:22_5.jpeg', '63_compcomer_2022-10-11_11:26:22_4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-11 11:26:22'),
(64, 64, '64_self_2022-10-11_11:36:04_1.jpeg', '64_rg_2022-10-11_11:36:04_2.jpeg', '64_cpf_2022-10-11_11:36:04_2.jpeg', '64_compres_2022-10-11_11:36:04_4.jpeg', '64_compcomer_2022-10-11_11:36:04_3.PDF', '', '', '', '', '', '', 'manuella.santos', '2022-10-11 11:36:04'),
(65, 65, '', '65_rg_2022-10-11_11:48:10_1.jpeg', '65_cpf_2022-10-11_11:48:10_1.jpeg', '65_compres_2022-10-11_11:48:10_2.jpeg', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-11 11:48:10'),
(66, 66, '', '', '', '', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-11 11:49:15'),
(67, 67, '67_self_2022-10-11_12:12:08_1.jpeg', '67_rg_2022-10-11_12:12:08_2.jpeg', '67_cpf_2022-10-11_12:12:08_2.jpeg', '67_compres_2022-10-11_12:12:08_3.jpeg', '67_compcomer_2022-10-11_12:12:08_4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-11 12:12:08'),
(68, 68, '', '68_rg_2022-10-11_12:27:35_2.jpeg', '68_cpf_2022-10-11_12:27:35_1.jpeg', '68_compres_2022-10-11_12:27:35_3.jpeg', '68_compcomer_2022-10-11_12:27:35_4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-11 12:27:35'),
(69, 69, '69_self_2022-10-11_12:41:32_1.jpeg', '69_rg_2022-10-11_12:41:32_3.jpg', '69_cpf_2022-10-11_12:41:32_2.jpg', '69_compres_2022-10-11_12:41:32_4.jpeg', '69_compcomer_2022-10-11_12:41:32_6.pdf', '', '', '', '', '', '', 'manuella.santos', '2022-10-11 12:34:03'),
(70, 70, '70_self_2022-10-18_13:00:40_1.jpeg', '70_rg_2022-10-18_13:00:40_2.jpeg', '70_cpf_2022-10-18_13:00:40_3.jpeg', '70_compres_2022-10-18_13:00:40_5.jpeg', '70_compcomer_2022-10-18_13:00:40_4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 12:49:14'),
(71, 71, '', '', '', '', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 13:01:54'),
(72, 72, '72_self_2022-10-18_13:11:51_1.jpeg', '72_rg_2022-10-18_13:11:51_2.jpeg', '72_cpf_2022-10-18_13:11:51_3.jpeg', '', '72_compcomer_2022-10-18_13:11:51_7.pdf', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 13:11:51'),
(73, 73, '', '73_rg_2022-10-18_13:16:43_1.jpeg', '73_cpf_2022-10-18_13:16:43_1.jpeg', '', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 13:16:43'),
(74, 74, '74_self_2022-10-18_13:27:37_1.jpeg', '74_rg_2022-10-18_13:27:37_2.jpeg', '74_cpf_2022-10-18_13:27:37_2.jpeg', '74_compres_2022-10-18_13:27:37_3.jpeg', '74_compcomer_2022-10-18_13:27:37_4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 13:27:37'),
(75, 75, '75_self_2022-10-18_13:39:21_1.jpeg', '75_rg_2022-10-18_13:39:21_2.jpeg', '75_cpf_2022-10-18_13:39:21_3.jpeg', '75_compres_2022-10-18_13:39:21_4.jpeg', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 13:39:21'),
(76, 76, '76_self_2022-10-18_13:49:05_1.jpeg', '76_rg_2022-10-18_13:49:05_2.jpeg', '76_cpf_2022-10-18_13:49:05_3.jpeg', '76_compres_2022-10-18_13:49:05_4.jpeg', '76_compcomer_2022-10-18_13:49:05_5.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 13:49:05'),
(77, 77, '77_self_2022-10-18_13:59:52_1.jpeg', '77_rg_2022-10-18_13:59:52_2.jpeg', '77_cpf_2022-10-18_13:59:52_3.jpeg', '77_compres_2022-10-18_13:59:52_5.jpeg', '77_compcomer_2022-10-18_13:59:52_4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 13:59:52'),
(78, 78, '78_self_2022-10-18_14:11:06_1.jpeg', '78_rg_2022-10-18_14:11:06_2.jpeg', '78_cpf_2022-10-18_14:11:06_3.jpeg', '78_compres_2022-10-18_14:11:06_4.jpeg', '78_compcomer_2022-10-18_14:11:06_5.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 14:11:06'),
(79, 79, '79_self_2022-10-18_14:17:57_3.jpeg', '79_rg_2022-10-18_14:17:57_2.jpeg', '79_cpf_2022-10-18_14:17:57_2.jpeg', '79_compres_2022-10-18_14:17:57_4.jpeg', '79_compcomer_2022-10-18_14:17:57_1.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 14:17:57'),
(80, 80, '80_self_2022-10-18_14:28:09_2.jpeg', '80_rg_2022-10-18_14:28:09_4.jpeg', '80_cpf_2022-10-18_14:28:09_3.jpeg', '80_compres_2022-10-18_14:28:09_1.jpeg', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 14:28:09'),
(81, 81, '81_self_2022-10-18_14:35:25_1.jpeg', '81_rg_2022-10-18_14:35:25_4.jpeg', '81_cpf_2022-10-18_14:35:25_5.jpeg', '81_compres_2022-10-18_14:35:25_2.jpeg', '81_compcomer_2022-10-18_14:35:25_3.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 14:35:25'),
(82, 82, '82_self_2022-10-18_14:44:26_5.jpeg', '82_rg_2022-10-18_14:44:26_2.jpeg', '82_cpf_2022-10-18_14:44:26_1.jpeg', '82_compres_2022-10-18_14:44:26_4.jpeg', '82_compcomer_2022-10-18_14:44:26_3.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 14:44:26'),
(83, 83, '83_self_2022-10-18_14:51:15_4.jpeg', '83_rg_2022-10-18_14:51:15_3.jpeg', '83_cpf_2022-10-18_14:51:15_2.jpeg', '83_compres_2022-10-18_14:51:15_1.jpeg', '83_compcomer_2022-10-18_14:51:15_5.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 14:51:15'),
(84, 84, '84_self_2022-10-18_14:59:51_5.jpeg', '84_rg_2022-10-18_14:59:51_1.jpeg', '84_cpf_2022-10-18_14:59:51_2.jpeg', '84_compres_2022-10-18_14:59:51_3.jpeg', '84_compcomer_2022-10-18_14:59:51_4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 14:59:51'),
(85, 85, '85_self_2022-10-18_15:05:33_4.jpeg', '85_rg_2022-10-18_15:05:33_2.jpeg', '85_cpf_2022-10-18_15:05:33_3.jpeg', '85_compres_2022-10-18_15:05:33_1.jpeg', '85_compcomer_2022-10-18_15:05:33_5.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 15:05:33'),
(86, 86, '86_self_2022-10-18_15:13:37_3.jpeg', '86_rg_2022-10-18_15:13:37_2.jpeg', '86_cpf_2022-10-18_15:13:37_2.jpeg', '86_compres_2022-10-18_15:13:37_1.jpeg', '86_compcomer_2022-10-18_15:13:37_4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 15:13:37'),
(87, 87, '87_self_2022-10-18_15:24:08_2.jpeg', '87_rg_2022-10-18_15:24:08_1.jpeg', '87_cpf_2022-10-18_15:24:08_1.jpeg', '87_compres_2022-10-18_15:24:08_3.jpeg', '87_compcomer_2022-10-18_15:24:08_4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 15:24:08'),
(88, 88, '88_self_2022-10-27_11:31:02_2.jpeg', '88_rg_2022-10-27_11:31:02_3.jpeg', '', '88_compres_2022-10-27_11:31:02_1.jpeg', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 15:25:10'),
(89, 89, '89_self_2022-10-27_10:44:40_5.jpeg', '89_rg_2022-10-27_10:44:40_3.jpeg', '89_cpf_2022-10-27_10:44:40_2.jpeg', '89_compres_2022-10-27_10:44:40_4.jpeg', '89_compcomer_2022-10-27_10:44:40_1.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 15:25:59'),
(90, 90, '', '', '', '', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 15:26:28'),
(91, 91, '91_self_2022-10-18_15:35:51_3.jpeg', '91_rg_2022-10-18_15:35:51_2.jpeg', '91_cpf_2022-10-18_15:35:51_2.jpeg', '91_compres_2022-10-18_15:35:51_1.jpeg', '91_compcomer_2022-10-18_15:35:51_1.pdf', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 15:35:51'),
(92, 92, '', '', '', '', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 15:37:13'),
(93, 93, '93_self_2022-10-18_15:45:33_3.jpeg', '93_rg_2022-10-18_15:45:33_4.jpeg', '93_cpf_2022-10-18_15:45:33_4.jpeg', '93_compres_2022-10-18_15:45:33_2.jpeg', '93_compcomer_2022-10-18_15:45:33_1.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 15:45:33'),
(94, 94, '94_self_2022-10-18_15:51:26_6.jpeg', '94_rg_2022-10-18_15:51:26_2.jpeg', '94_cpf_2022-10-18_15:51:26_1.jpeg', '94_compres_2022-10-18_15:51:26_3.pdf', '94_compcomer_2022-10-18_15:51:26_5.pdf', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 15:51:26'),
(95, 95, '', '', '', '', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 15:53:47'),
(96, 96, '96_self_2022-10-18_16:05:06_2.jpeg', '96_rg_2022-10-18_16:05:06_3.jpeg', '96_cpf_2022-10-18_16:05:06_3.jpeg', '96_compres_2022-10-18_16:05:06_1.jpeg', '96_compcomer_2022-10-18_16:05:06_4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 16:05:06'),
(97, 97, '97_self_2022-10-18_16:14:43_1.jpeg', '97_rg_2022-10-18_16:14:43_4.jpeg', '97_cpf_2022-10-18_16:14:43_3.jpeg', '97_compres_2022-10-18_16:14:43_2.jpeg', '97_compcomer_2022-10-18_16:14:43_5.pdf', '', '', '', '', '', '', 'manuella.santos', '2022-10-18 16:14:43'),
(98, 98, '', '', '', '', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-19 10:24:26'),
(99, 99, '99_self_2022-10-19_10:37:48_2.jpeg', '99_rg_2022-10-19_10:37:48_1.jpeg', '99_cpf_2022-10-19_10:37:48_1.jpeg', '99_compres_2022-10-19_10:37:48_3.jpeg', '99_compcomer_2022-10-19_10:37:48_4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-19 10:29:04'),
(100, 100, '100_self_2022-10-19_10:48:11_1.jpeg', '100_rg_2022-10-19_10:48:11_5.jpeg', '100_cpf_2022-10-19_10:48:11_4.jpeg', '', '100_compcomer_2022-10-19_10:48:11_2.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-19 10:48:11'),
(101, 0, '0_self_2022-10-19_10:57:56_4.jpeg', '0_rg_2022-10-19_10:57:56_1.jpeg', '0_cpf_2022-10-19_10:57:56_1.jpeg', '0_compres_2022-10-19_10:57:56_3.jpeg', '0_compcomer_2022-10-19_10:57:56_2.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-19 10:57:56'),
(102, 0, '0_self_2022-10-19_11:12:19_4.jpeg', '0_rg_2022-10-19_11:12:19_1.jpeg', '0_cpf_2022-10-19_11:12:19_1.jpeg', '0_compres_2022-10-19_11:12:19_3.jpeg', '0_compcomer_2022-10-19_11:12:19_2.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-19 11:12:19'),
(103, 101, '101_self_2022-10-21_14:34:39_4.jpeg', '101_rg_2022-10-21_14:34:39_1.jpeg', '101_cpf_2022-10-21_14:34:39_1.jpeg', '101_compres_2022-10-21_14:34:39_3.jpeg', '101_compcomer_2022-10-21_14:34:39_2.jpeg', '101_termo_2022-11-09_16:19:45_1.jpeg', '', '', '', '', '', 'manuella.santos', '2022-10-19 11:12:36'),
(104, 102, '102_self_2022-10-21_14:46:01_3.jpeg', '102_rg_2022-10-21_14:46:01_1.jpeg', '102_cpf_2022-10-21_14:46:01_1.jpeg', '102_compres_2022-10-21_14:46:01_4.jpeg', '102_compcomer_2022-10-21_14:46:01_2.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-21 14:46:01'),
(105, 103, '103_self_2022-10-21_15:11:12_2.jpeg', '103_rg_2022-10-21_15:11:53_4.jpeg', '103_cpf_2022-10-21_15:11:12_3.jpeg', '103_compres_2022-10-21_15:11:12_5.jpeg', '103_compcomer_2022-10-21_15:11:12_1.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-21 15:11:12'),
(106, 104, '104_self_2022-10-21_15:24:31_2.jpeg', '104_rg_2022-10-21_15:24:31_3.jpeg', '104_cpf_2022-10-21_15:24:31_4.jpeg', '104_compres_2022-10-21_15:24:31_1.jpeg', '104_compcomer_2022-10-21_15:24:31_5.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-21 15:24:31'),
(107, 105, '105_self_2022-10-21_15:32:50_1.jpeg', '105_rg_2022-10-21_15:32:50_4.jpeg', '105_cpf_2022-10-21_15:32:50_4.jpeg', '105_compres_2022-10-21_15:32:50_3.jpeg', '105_compcomer_2022-10-21_15:32:50_2.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-21 15:32:50'),
(108, 106, '106_self_2022-10-21_15:41:22_2.jpeg', '106_rg_2022-10-21_15:41:22_3.jpeg', '106_cpf_2022-10-21_15:41:22_3.jpeg', '106_compres_2022-10-21_15:41:22_1.jpeg', '106_compcomer_2022-10-21_15:41:22_4.pdf', '', '', '', '', '', '', 'manuella.santos', '2022-10-21 15:41:22'),
(109, 107, '107_self_2022-10-25_14:49:55_SELF.jfif', '107_rg_2022-10-25_14:49:55_RG.jfif', '', '107_compres_2022-10-25_14:49:55_COMPROV. ENDER.jfif', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-25 11:36:37'),
(110, 108, '', '', '', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-25 12:27:39'),
(111, 109, '', '', '', '', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-25 12:54:59'),
(112, 110, '110_self_2022-10-25_13:04:12_1.jpeg', '110_rg_2022-10-25_13:04:12_2.jpeg', '110_cpf_2022-10-25_13:04:12_3.jpeg', '110_compres_2022-10-25_13:04:12_5.jpeg', '110_compcomer_2022-10-25_13:04:12_4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-25 13:04:12'),
(113, 111, '', '111_rg_2022-10-25_14:52:28_RG FRENTE.jfif', '111_cpf_2022-10-25_14:52:28_RG VERSO.jfif', '111_compres_2022-10-25_14:52:28_COMPROV. ENDEREÇO.jfif', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-25 13:50:53'),
(114, 112, '', '112_rg_2022-10-25_14:05:57_CNH.jfif', '112_cpf_2022-10-25_14:05:57_CNPJ.jfif', '112_compres_2022-10-25_14:05:57_COMP. ENDEREÇO.jfif', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-25 14:05:07'),
(115, 113, '', '113_rg_2022-10-25_14:25:03_RG FRENTE E VERSO.jfif', '', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-25 14:22:11'),
(116, 114, '', '114_rg_2022-10-25_14:35:17_RG FRENTE.jfif', '114_cpf_2022-10-25_14:35:17_RG VERSO.jfif', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-25 14:34:42'),
(117, 115, '', '', '', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-25 15:01:20'),
(118, 116, '116_self_2022-10-28_09:38:52_WhatsApp Image 2022-10-27 at 15.10.36.jpeg', '116_rg_2022-10-28_09:38:52_WhatsApp Image 2022-10-27 at 14.50.40.jpeg', '', '116_compres_2022-10-28_09:38:52_WhatsApp Image 2022-10-27 at 14.50.40 (1).jpeg', '116_compcomer_2022-10-28_09:38:52_WhatsApp Image 2022-10-27 at 14.50.39.jpeg', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-25 15:58:12'),
(119, 117, '117_self_2022-10-25_16:05:14_3.jpeg', '117_rg_2022-10-25_16:05:14_2.jpeg', '117_cpf_2022-10-25_16:05:14_5.jpeg', '117_compres_2022-10-25_16:05:14_4.jpeg', '117_compcomer_2022-10-25_16:05:14_1.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-25 16:05:14'),
(120, 118, '', '', '', '', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-25 16:10:21'),
(121, 119, '', '119_rg_2022-10-28_09:27:49_WhatsApp Image 2022-10-28 at 09.27.08.jpeg', '', '119_compres_2022-10-28_09:24:46_WhatsApp Image 2022-10-27 at 14.15.56 (3).jpeg', '119_compcomer_2022-10-28_09:24:46_WhatsApp Image 2022-10-27 at 14.15.56 (2).jpeg', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-25 16:13:29'),
(122, 120, '', '120_rg_2022-10-25_16:21:24_CNH.jfif', '', '120_compres_2022-10-28_09:44:56_WhatsApp Image 2022-10-27 at 14.17.49.jpeg', '120_compcomer_2022-10-28_09:44:56_WhatsApp Image 2022-10-27 at 14.18.06.jpeg', '', '', '', '120_local2_2022-10-28_09:44:56_WhatsApp Image 2022-10-27 at 14.17.50 (1).jpeg', '120_local3_2022-10-28_09:44:56_WhatsApp Image 2022-10-27 at 14.17.50.jpeg', '', 'fernanda.ribeiro', '2022-10-25 16:21:02'),
(123, 121, '', '121_rg_2022-10-25_16:30:07_RG FRENTE E VERSO.jfif', '121_cpf_2022-10-25_16:30:07_CPF.jfif', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-25 16:29:35'),
(124, 122, '', '122_rg_2022-10-25_16:37:52_RG FRENTE.jfif', '122_cpf_2022-10-25_16:37:52_RG VERSO.jfif', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-25 16:37:23'),
(125, 123, '', '123_rg_2022-10-25_16:59:12_RG FRENTE E VERSO.jfif', '', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-25 16:58:11'),
(126, 124, '', '124_rg_2022-10-26_11:50:03_RG FRENTE.jfif', '124_cpf_2022-10-25_17:19:08_RG VERSO.jfif', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-25 17:04:22'),
(127, 125, '', '125_rg_2022-10-26_11:55:47_RG FRENTE E VERSO.jfif', '', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 11:55:47'),
(128, 126, '126_self_2022-11-04_10:17:10_WhatsApp Image 2022-11-04 at 10.11.10.jpeg', '126_rg_2022-10-26_12:02:21_RG FRENTE.jfif', '126_cpf_2022-10-26_12:02:21_RG VERSO.jfif', '126_compres_2022-11-04_10:08:02_WhatsApp Image 2022-11-04 at 09.59.21.jpeg', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 12:01:32'),
(129, 127, '127_self_2022-10-26_12:05:07_5.jpeg', '127_rg_2022-10-26_12:05:07_3.jpeg', '127_cpf_2022-10-26_12:05:07_4.jpeg', '127_compres_2022-10-26_12:05:07_2.jpeg', '127_compcomer_2022-10-26_12:05:07_1.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-26 12:05:07'),
(130, 128, '', '128_rg_2022-10-26_12:07:15_RG FRENTE.jfif', '128_cpf_2022-10-26_12:07:15_RG VERSO.jfif', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 12:07:15'),
(131, 129, '129_self_2022-10-26_12:16:28_2.jpeg', '129_rg_2022-10-26_12:16:28_4.jpeg', '129_cpf_2022-10-26_12:16:28_3.jpeg', '129_compres_2022-10-26_12:16:28_5.jpeg', '129_compcomer_2022-10-26_12:16:28_1.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-26 12:07:56'),
(132, 130, '', '130_rg_2022-10-26_12:12:28_RG FRENTE.jfif', '130_cpf_2022-10-26_12:12:28_RG VERSO.jfif', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 12:12:28'),
(133, 131, '131_self_2022-10-28_10:02:29_WhatsApp Image 2022-10-28 at 09.57.42.jpeg', '131_rg_2022-10-28_10:02:29_WhatsApp Image 2022-10-28 at 09.58.16.jpeg', '131_cpf_2022-10-28_10:02:29_WhatsApp Image 2022-10-28 at 09.58.00.jpeg', '131_compres_2022-10-28_10:02:29_WhatsApp Image 2022-10-28 at 09.57.00.jpeg', '', '', '', '', '131_local2_2022-10-28_10:02:29_WhatsApp Image 2022-10-28 at 09.59.13.jpeg', '131_local3_2022-10-28_10:02:29_WhatsApp Image 2022-10-28 at 09.59.02.jpeg', '131_local4_2022-10-28_10:02:29_WhatsApp Image 2022-10-28 at 09.58.55.jpeg', 'fernanda.ribeiro', '2022-10-26 12:20:53'),
(134, 132, '132_self_2022-10-28_10:06:31_WhatsApp Image 2022-10-27 at 15.30.49.jpeg', '132_rg_2022-10-28_10:06:31_WhatsApp Image 2022-10-27 at 15.30.56.jpeg', '132_cpf_2022-10-28_10:06:31_WhatsApp Image 2022-10-27 at 15.30.57 (1).jpeg', '132_compres_2022-10-28_10:06:31_WhatsApp Image 2022-10-27 at 15.30.58.jpeg', '132_compcomer_2022-10-28_10:06:31_WhatsApp Image 2022-10-27 at 15.30.59.jpeg', '', '', '', '132_local2_2022-10-28_10:06:31_WhatsApp Image 2022-10-27 at 15.31.00 (1).jpeg', '', '', 'fernanda.ribeiro', '2022-10-26 12:25:15'),
(135, 133, '', '133_rg_2022-10-26_12:28:51_RG FRENTE.jfif', '133_cpf_2022-10-26_12:28:51_RG VERSO.jfif', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 12:28:51'),
(136, 134, '', '134_rg_2022-10-26_13:28:37_RG FRENTE E VERSO.jfif', '', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 13:28:37'),
(137, 135, '135_self_2022-10-26_13:29:40_2.jpeg', '135_rg_2022-10-26_13:29:40_4.jpeg', '135_cpf_2022-10-26_13:29:40_4.jpeg', '135_compres_2022-10-26_13:29:40_1.pdf', '135_compcomer_2022-10-26_13:29:40_3.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-26 13:29:40'),
(138, 136, '', '136_rg_2022-10-26_13:33:13_RG VERSO.jfif', '', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 13:33:13'),
(139, 137, '137_self_2022-10-26_13:37:27_4.jpeg', '137_rg_2022-10-26_13:37:27_2.jpeg', '137_cpf_2022-10-26_13:37:27_3.jpeg', '137_compres_2022-10-26_13:37:27_1.jpeg', '137_compcomer_2022-10-26_13:37:27_5.pdf', '', '', '', '', '', '', 'manuella.santos', '2022-10-26 13:37:27'),
(140, 138, '', '', '', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 13:37:41'),
(141, 139, '', '139_rg_2022-10-26_13:48:26_RG FRENTE.jfif', '139_cpf_2022-10-26_13:48:26_ALEXANDRE VERSO.jfif', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 13:42:12'),
(142, 140, '140_self_2022-10-28_11:09:17_WhatsApp Image 2022-10-27 at 16.02.22.jpeg', '140_rg_2022-10-26_13:49:07_RG FRENTE E VERSO.jfif', '', '140_compres_2022-10-28_11:09:17_WhatsApp Image 2022-10-27 at 16.01.56 (1).jpeg', '140_compcomer_2022-10-28_11:09:17_WhatsApp Image 2022-10-27 at 16.01.56.jpeg', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 13:46:56'),
(143, 141, '141_self_2022-10-28_10:11:29_WhatsApp Image 2022-10-27 at 22.59.10.jpeg', '141_rg_2022-10-28_10:11:29_WhatsApp Image 2022-10-27 at 22.59.11.jpeg', '141_cpf_2022-10-28_10:11:29_WhatsApp Image 2022-10-27 at 22.59.11 (1).jpeg', '141_compres_2022-10-28_10:11:29_WhatsApp Image 2022-10-27 at 22.59.12.jpeg', '', '', '', '', '141_local2_2022-10-28_10:11:29_WhatsApp Image 2022-10-27 at 22.59.12 (1).jpeg', '', '', 'fernanda.ribeiro', '2022-10-26 13:51:37'),
(144, 142, '', '142_rg_2022-10-26_13:54:27_RG FRENTE.jfif', '', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 13:54:27'),
(145, 143, '', '143_rg_2022-10-26_13:58:44_RG FRENTE.jfif', '143_cpf_2022-10-26_13:58:44_RG VERSO.jfif', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 13:58:44'),
(146, 144, '', '144_rg_2022-10-26_14:03:21_RG FRENTE.jfif', '144_cpf_2022-10-26_14:03:21_RG VERSO.jfif', '144_compres_2022-11-03_11:36:58_WhatsApp Image 2022-11-03 at 11.27.37.jpeg', '', '', '', '', '144_local2_2022-11-03_11:36:58_WhatsApp Image 2022-11-03 at 11.26.51.jpeg', '', '', 'fernanda.ribeiro', '2022-10-26 14:03:21'),
(147, 145, '145_self_2022-10-26_14:05:18_1.jpeg', '145_rg_2022-10-26_14:05:18_4.jpeg', '145_cpf_2022-10-26_14:05:18_5.jpeg', '145_compres_2022-10-26_14:05:18_2.jpeg', '145_compcomer_2022-10-26_14:05:18_3.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-26 14:05:18'),
(148, 146, '', '146_rg_2022-10-28_10:14:45_WhatsApp Image 2022-10-27 at 15.12.22.jpeg', '146_cpf_2022-10-28_10:14:45_WhatsApp Image 2022-10-27 at 15.12.32.jpeg', '146_compres_2022-10-28_10:14:45_WhatsApp Image 2022-10-27 at 19.38.07.jpeg', '146_compcomer_2022-10-28_10:14:45_WhatsApp Image 2022-10-27 at 15.13.10.jpeg', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 14:09:00'),
(149, 147, '', '147_rg_2022-10-26_14:26:24_3.jpeg', '147_cpf_2022-10-26_14:26:24_2.jpeg', '147_compres_2022-10-26_14:26:24_1.jpeg', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-26 14:26:24'),
(150, 148, '148_self_2022-10-28_10:16:23_WhatsApp Image 2022-10-27 at 16.10.01.jpeg', '148_rg_2022-10-28_10:16:23_WhatsApp Image 2022-10-27 at 16.03.07.jpeg', '148_cpf_2022-10-26_14:28:24_RG VERSO.jfif', '', '', '', '', '', '148_local2_2022-10-28_10:16:23_WhatsApp Image 2022-10-27 at 16.03.09.jpeg', '', '', 'fernanda.ribeiro', '2022-10-26 14:28:24'),
(151, 149, '', '149_rg_2022-10-26_14:33:42_RG FRENTE.jfif', '149_cpf_2022-10-26_14:33:42_RG VERSO.jfif', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 14:33:42'),
(152, 150, '150_self_2022-10-28_10:18:53_WhatsApp Image 2022-10-27 at 15.21.11.jpeg', '150_rg_2022-10-28_10:18:53_WhatsApp Image 2022-10-27 at 15.21.12 (1).jpeg', '150_cpf_2022-10-28_10:18:53_WhatsApp Image 2022-10-27 at 15.21.10.jpeg', '150_compres_2022-10-28_10:18:53_WhatsApp Image 2022-10-27 at 15.21.11 (1).jpeg', '', '150_termo_2022-10-28_10:18:53_WhatsApp Image 2022-10-27 at 15.21.11 (2).jpeg', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 14:39:09'),
(153, 151, '151_self_2022-10-26_14:40:50_4.jpeg', '151_rg_2022-10-26_14:40:50_2.jpeg', '151_cpf_2022-10-26_14:40:50_3.jpeg', '151_compres_2022-10-26_14:40:50_1.pdf', '151_compcomer_2022-10-26_14:40:50_5.pdf', '151_termo_2022-11-09_16:21:20_1.jpeg', '', '', '', '', '', 'manuella.santos', '2022-10-26 14:40:50'),
(154, 152, '152_self_2022-10-28_10:21:27_WhatsApp Image 2022-10-27 at 15.32.54.jpeg', '152_rg_2022-10-28_10:21:27_WhatsApp Image 2022-10-27 at 15.30.46.jpeg', '152_cpf_2022-10-28_10:21:27_WhatsApp Image 2022-10-27 at 15.30.46 (1).jpeg', '152_compres_2022-10-28_10:21:27_WhatsApp Image 2022-10-27 at 15.30.47 (1).jpeg', '152_compcomer_2022-10-28_10:21:27_WhatsApp Image 2022-10-27 at 15.30.47.jpeg', '152_termo_2022-10-28_10:21:27_WhatsApp Image 2022-10-27 at 15.35.36.jpeg', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 14:49:51'),
(155, 153, '', '153_rg_2022-10-26_14:53:18_RG FRENTE.jfif', '153_cpf_2022-10-26_14:53:18_RG VERSO.jfif', '', '', '153_termo_2022-11-03_14:33:36_WhatsApp Image 2022-11-03 at 14.31.41.jpeg', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 14:53:18'),
(156, 154, '', '154_rg_2022-10-26_15:07:08_2.jpeg', '154_cpf_2022-10-26_15:07:08_2.jpeg', '154_compres_2022-10-26_15:07:08_1.jpeg', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-26 15:07:08'),
(157, 155, '155_self_2022-10-26_15:07:21_SELFIE.jfif', '155_rg_2022-10-26_15:07:21_RG FRENTE E VERSO.jfif', '', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 15:07:21'),
(158, 156, '', '156_rg_2022-10-26_15:13:26_RG FRENTE.jfif', '156_cpf_2022-10-26_15:13:26_RG VERSO.jfif', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 15:13:26'),
(159, 157, '157_self_2022-10-26_15:16:35_4.jpeg', '157_rg_2022-10-26_15:16:35_3.jpeg', '157_cpf_2022-10-26_15:16:35_2.jpeg', '157_compres_2022-10-26_15:16:35_5.pdf', '157_compcomer_2022-10-26_15:16:35_1.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-26 15:16:35'),
(160, 158, '158_self_2022-11-03_16:42:49_WhatsApp Image 2022-11-03 at 16.41.14.jpeg', '158_rg_2022-10-26_15:20:09_RG FRENTE.jfif', '158_cpf_2022-10-26_15:20:09_RG VERSO.jfif', '', '158_compcomer_2022-11-03_16:29:57_WhatsApp Image 2022-11-03 at 16.26.45.jpeg', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 15:19:34'),
(161, 159, '159_self_2022-10-26_15:23:28_SELFIE.jfif', '159_rg_2022-10-26_15:23:28_RG FRENTE.jfif', '159_cpf_2022-10-26_15:23:28_RG VERSO.jfif', '159_compres_2022-10-28_12:13:24_WhatsApp Image 2022-10-28 at 10.36.20.jpeg', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 15:23:28'),
(162, 160, '160_self_2022-10-26_15:26:55_4.jpeg', '160_rg_2022-10-26_15:26:55_3.jpeg', '', '160_compres_2022-10-26_15:26:55_2.jpeg', '160_compcomer_2022-10-26_15:26:55_1.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-26 15:26:55'),
(163, 161, '161_self_2022-10-26_15:31:12_SELFIE.jfif', '161_rg_2022-10-26_15:31:12_CNH.jfif', '', '161_compres_2022-11-03_14:43:44_WhatsApp Image 2022-10-29 at 10.57.22.jpeg', '161_compcomer_2022-11-03_14:43:44_WhatsApp Image 2022-10-29 at 10.57.22 (1).jpeg', '', '', '', '161_local2_2022-11-03_14:43:44_WhatsApp Image 2022-10-29 at 10.57.22 (3).jpeg', '', '', 'fernanda.ribeiro', '2022-10-26 15:31:12'),
(164, 162, '', '162_rg_2022-10-28_10:24:52_WhatsApp Image 2022-10-27 at 16.04.46.jpeg', '', '', '162_compcomer_2022-10-28_10:24:52_WhatsApp Image 2022-10-27 at 16.04.45.jpeg', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 15:36:01'),
(165, 163, '', '163_rg_2022-10-26_15:42:57_RG FRENTE.jfif', '163_cpf_2022-10-26_15:42:57_CPF.jfif', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 15:42:57'),
(166, 164, '164_self_2022-10-26_15:43:08_1.jpeg', '164_rg_2022-10-26_15:43:08_3.jpeg', '164_cpf_2022-10-26_15:43:08_3.jpeg', '164_compres_2022-10-26_15:43:08_4.jpeg', '164_compcomer_2022-10-26_15:43:08_2.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-26 15:43:08'),
(167, 165, '165_self_2022-10-26_15:47:39_SELFIE.jfif', '165_rg_2022-10-26_15:47:39_CNH.jfif', '', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 15:47:39'),
(168, 166, '166_self_2022-10-26_15:51:22_SELFIE.jfif', '166_rg_2022-10-26_15:51:22_RG FRENTE E VERSO.jfif', '', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 15:51:22'),
(169, 167, '167_self_2022-10-26_15:51:23_4.jpeg', '167_rg_2022-10-26_15:51:23_2.jpeg', '167_cpf_2022-10-26_15:51:23_3.jpeg', '167_compres_2022-10-26_15:51:23_1.jpeg', '167_compcomer_2022-10-26_15:51:23_5.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-26 15:51:23'),
(170, 168, '168_self_2022-10-26_16:10:46_SELFIE.jfif', '168_rg_2022-10-26_16:10:46_RG FRENTE.jfif', '168_cpf_2022-10-26_16:10:46_RG VERSO.jfif', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 15:52:57'),
(171, 169, '169_self_2022-10-26_16:11:29_SELFIE.jfif', '169_rg_2022-10-26_16:11:29_CNH.jfif', '', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 15:55:40'),
(172, 170, '170_self_2022-10-26_16:12:04_SELFIE.jfif', '170_rg_2022-10-26_16:12:04_RG FRENTE E VERSO.jfif', '', '', '170_compcomer_2022-11-03_15:25:16_WhatsApp Image 2022-11-03 at 15.22.49 (1).jpeg', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 15:57:48'),
(173, 171, '171_self_2022-10-26_15:58:50_1.jpeg', '171_rg_2022-10-26_15:58:50_2.jpeg', '171_cpf_2022-10-26_15:58:50_3.jpeg', '171_compres_2022-10-26_15:58:50_4.jpeg', '171_compcomer_2022-10-26_15:58:50_5.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-26 15:58:50'),
(174, 172, '', '172_rg_2022-10-26_16:00:18_CNH VERSO.jfif', '172_cpf_2022-10-26_16:00:18_CNH FRENTE.jfif', '172_compres_2022-10-28_11:59:00_WhatsApp Image 2022-10-28 at 11.31.27 (2).jpeg', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 16:00:18'),
(175, 173, '', '173_rg_2022-10-26_16:12:36_RG FRENTE.jfif', '173_cpf_2022-10-26_16:12:36_RG VERSO.jfif', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 16:02:03'),
(176, 174, '', '174_rg_2022-10-26_16:15:45_RG FRENTE.jfif', '174_cpf_2022-10-26_16:15:45_RG VERSO.jfif', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 16:03:32'),
(177, 175, '175_self_2022-10-26_16:05:07_SELFIE.jfif', '175_rg_2022-10-26_16:05:07_CNH.jfif', '', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 16:05:07'),
(178, 176, '176_self_2022-10-28_12:02:41_WhatsApp Image 2022-10-28 at 10.32.46.jpeg', '176_rg_2022-10-26_16:09:20_CNH VERSO.jfif', '176_cpf_2022-10-26_16:09:20_CNH.jfif', '176_compres_2022-10-28_12:02:41_WhatsApp Image 2022-10-28 at 10.32.46 (1).jpeg', '176_compcomer_2022-10-28_12:02:41_WhatsApp Image 2022-10-28 at 10.32.46 (2).jpeg', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 16:07:01'),
(179, 177, '177_self_2022-10-26_16:07:34_5.jpeg', '177_rg_2022-10-26_16:07:34_3.jpeg', '177_cpf_2022-10-26_16:07:34_4.jpeg', '177_compres_2022-10-26_16:07:34_2.jpeg', '177_compcomer_2022-10-26_16:07:34_1.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-26 16:07:34'),
(180, 178, '178_self_2022-10-26_16:14:24_2.jpeg', '178_rg_2022-10-26_16:14:24_4.jpeg', '178_cpf_2022-10-26_16:14:24_3.jpeg', '178_compres_2022-10-26_16:14:24_5.jpeg', '178_compcomer_2022-10-26_16:14:24_1.pdf', '', '', '', '', '', '', 'manuella.santos', '2022-10-26 16:14:24'),
(181, 179, '179_self_2022-10-26_16:17:57_SELFIE.jfif', '179_rg_2022-10-26_16:17:57_RG FRENTE.jfif', '179_cpf_2022-10-26_16:17:57_RG VERSO.jfif', '', '', '', '', '', '179_local2_2022-10-28_10:36:59_WhatsApp Image 2022-10-27 at 16.12.47.jpeg', '', '', 'fernanda.ribeiro', '2022-10-26 16:17:57'),
(182, 180, '180_self_2022-10-26_16:19:23_2.jpeg', '180_rg_2022-10-26_16:19:23_4.jpeg', '180_cpf_2022-10-26_16:19:23_5.jpeg', '180_compres_2022-10-26_16:19:23_1.jpeg', '180_compcomer_2022-10-26_16:19:23_3.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-26 16:19:23'),
(183, 181, '181_self_2022-10-28_10:38:32_WhatsApp Image 2022-10-27 at 23.36.21.jpeg', '181_rg_2022-10-28_10:38:32_WhatsApp Image 2022-10-27 at 23.36.23.jpeg', '', '181_compres_2022-10-28_10:38:32_WhatsApp Image 2022-10-27 at 23.36.24.jpeg', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 16:19:45'),
(184, 182, '', '', '', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 16:23:29'),
(185, 183, '', '', '', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 16:26:10'),
(186, 184, '184_self_2022-10-26_16:26:25_5.jpeg', '184_rg_2022-10-26_16:26:25_3.jpeg', '184_cpf_2022-10-26_16:26:25_1.jpeg', '184_compres_2022-10-26_16:26:25_2.jpeg', '184_compcomer_2022-10-26_16:26:25_4.jpeg', '', '', '', '', '', '', 'manuella.santos', '2022-10-26 16:26:25'),
(187, 185, '185_self_2022-10-26_16:33:29_3.jpeg', '185_rg_2022-10-26_16:33:29_2.jpeg', '185_cpf_2022-10-26_16:33:29_4.jpeg', '185_compres_2022-10-26_16:33:29_1.jpeg', '185_compcomer_2022-10-26_16:33:29_5.pdf', '185_termo_2022-11-09_16:18:14_1.jpeg', '', '', '', '', '', 'manuella.santos', '2022-10-26 16:33:29'),
(188, 186, '186_self_2022-10-28_10:41:42_WhatsApp Image 2022-10-27 at 16.17.22 (2).jpeg', '186_rg_2022-10-28_10:41:42_WhatsApp Image 2022-10-27 at 16.17.22 (3).jpeg', '', '', '', '', '', '', '186_local2_2022-10-28_10:41:42_WhatsApp Image 2022-10-27 at 16.17.23 (1).jpeg', '', '', 'fernanda.ribeiro', '2022-10-26 16:34:46'),
(189, 187, '', '', '', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-26 16:38:22'),
(190, 188, '188_self_2022-10-26_16:39:17_2.jpeg', '188_rg_2022-10-26_16:39:17_4.jpeg', '188_cpf_2022-10-26_16:39:17_1.jpeg', '188_compres_2022-10-26_16:39:17_5.jpeg', '188_compcomer_2022-10-26_16:39:17_3.jpeg', '188_termo_2022-11-09_16:22:39_1.jpeg', '', '', '', '', '', 'manuella.santos', '2022-10-26 16:39:17'),
(191, 189, '189_self_2022-10-26_16:47:24_2.jpeg', '189_rg_2022-10-26_16:47:24_1.jpeg', '189_cpf_2022-10-26_16:47:24_1.jpeg', '189_compres_2022-10-26_16:47:24_3.pdf', '189_compcomer_2022-10-26_16:47:24_4.pdf', '189_termo_2022-11-09_16:24:33_1.jpeg', '', '', '', '', '', 'manuella.santos', '2022-10-26 16:47:24'),
(192, 190, '190_self_2022-10-26_16:54:05_1.jpeg', '190_rg_2022-10-26_16:54:05_3.jpeg', '190_cpf_2022-10-26_16:54:05_4.jpeg', '190_compres_2022-10-26_16:54:05_2.jpeg', '190_compcomer_2022-10-26_16:54:05_6.pdf', '', '', '', '', '', '', 'manuella.santos', '2022-10-26 16:54:05'),
(193, 191, '191_self_2022-10-27_09:16:14_3.jpeg', '191_rg_2022-10-27_09:16:14_1.jpeg', '191_cpf_2022-10-27_09:16:14_1.jpeg', '191_compres_2022-10-27_09:16:14_2.jpeg', '', '', '', '', '', '', '', 'manuella.santos', '2022-10-27 09:16:14'),
(194, 192, '192_self_2022-10-27_10:56:17_3.jpeg', '192_rg_2022-10-27_10:56:17_4.jpeg', '192_cpf_2022-10-27_10:56:17_2.jpeg', '192_compres_2022-10-27_10:56:17_1.pdf', '192_compcomer_2022-10-27_10:56:17_5.pdf', '192_termo_2022-11-09_16:05:09_1.jpeg', '', '', '', '', '', 'manuella.santos', '2022-10-27 10:56:17'),
(195, 193, '', '', '', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-27 12:02:42'),
(196, 194, '', '', '', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-27 12:05:50'),
(197, 195, '195_self_2022-10-27_12:24:24_WhatsApp Image 2022-10-27 at 12.14.03.jpeg', '195_rg_2022-10-27_12:24:24_WhatsApp Image 2022-10-27 at 12.14.01.jpeg', '195_cpf_2022-10-27_12:24:24_WhatsApp Image 2022-10-27 at 12.14.02.jpeg', '195_compres_2022-10-27_12:24:24_WhatsApp Image 2022-10-27 at 12.14.02 (1).jpeg', '195_compcomer_2022-10-27_12:24:24_WhatsApp Image 2022-10-27 at 12.14.02 (2).jpeg', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-10-27 12:08:37'),
(198, 196, '196_self_2022-10-27_13:28:55_5.jpeg', '196_rg_2022-10-27_13:28:55_3.jpeg', '196_cpf_2022-10-27_13:28:55_4.jpeg', '196_compres_2022-10-27_13:28:55_1.jpeg', '196_compcomer_2022-10-27_13:28:55_2.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-10-27 13:28:55'),
(199, 197, '197_self_2022-10-27_13:46:05_3.jpeg', '197_rg_2022-10-27_13:46:05_1.jpeg', '197_cpf_2022-10-27_13:46:05_1.jpeg', '197_compres_2022-10-27_13:46:05_2.jpeg', '197_compcomer_2022-10-27_13:46:05_4.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-10-27 13:31:27'),
(200, 198, '198_self_2022-10-28_10:59:51_WhatsApp Image 2022-10-28 at 10.57.02 (1).jpeg', '198_rg_2022-10-28_10:59:51_WhatsApp Image 2022-10-28 at 10.57.01.jpeg', '198_cpf_2022-10-28_10:59:51_WhatsApp Image 2022-10-28 at 10.57.01.jpeg', '198_compres_2022-10-28_10:59:51_fatura-Abril_22-0060738600.pdf', '198_compcomer_2022-10-28_10:59:51_WhatsApp Image 2022-10-28 at 10.57.02.jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-10-28 10:59:51');
INSERT INTO `fotos_clientes` (`id`, `id_cliente`, `ftcliente`, `ftrg`, `ftcpf`, `ftcompres`, `ftcompcomer`, `fttermo`, `ftcertificado`, `ftlocal`, `ftlocal2`, `ftlocal3`, `ftlocal4`, `usuario`, `data_fotos_clientes`) VALUES
(201, 199, '199_self_2022-10-28_11:05:35_1.jpeg', '199_rg_2022-10-28_11:05:35_3.jpeg', '199_cpf_2022-10-28_11:05:35_2.jpeg', '199_compres_2022-10-28_11:05:35_4.jpeg', '199_compcomer_2022-10-28_11:05:35_5.pdf', '', '', '', '', '', '', 'andressa.fernanda', '2022-10-28 11:05:35'),
(202, 200, '200_self_2022-10-28_11:06:13_WhatsApp Image 2022-10-28 at 11.01.03.jpeg', '200_rg_2022-10-28_11:06:13_WhatsApp Image 2022-10-28 at 11.01.09.jpeg', '200_cpf_2022-10-28_11:06:13_WhatsApp Image 2022-10-28 at 11.01.09.jpeg', '200_compres_2022-10-28_11:06:13_WhatsApp Image 2022-10-28 at 11.01.09 (1).jpeg', '', '', '', '', '', '', '', 'dani.ribeiro', '2022-10-28 11:06:13'),
(203, 201, '201_self_2022-10-28_11:17:31_1.jpeg', '201_rg_2022-10-28_11:17:31_2.jpeg', '201_cpf_2022-10-28_11:17:31_2.jpeg', '201_compres_2022-10-28_11:17:31_4.pdf', '201_compcomer_2022-10-28_11:17:31_3.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-10-28 11:17:31'),
(204, 202, '202_self_2022-10-28_11:26:38_4.jpeg', '202_rg_2022-10-28_11:26:38_3.jpeg', '202_cpf_2022-10-28_11:26:38_2.jpeg', '202_compres_2022-10-28_11:26:38_5.jpeg', '202_compcomer_2022-10-28_11:26:38_1.pdf', '', '', '', '', '', '', 'andressa.fernanda', '2022-10-28 11:26:38'),
(205, 203, '203_self_2022-10-28_11:32:46_WhatsApp Image 2022-10-28 at 11.07.51.jpeg', '203_rg_2022-10-28_11:32:46_WhatsApp Image 2022-10-28 at 11.08.06.jpeg', '203_cpf_2022-10-28_11:32:46_WhatsApp Image 2022-10-28 at 11.08.07.jpeg', '203_compres_2022-10-28_11:32:46_WhatsApp Image 2022-10-28 at 11.08.00.jpeg', '203_compcomer_2022-10-28_11:32:46_WhatsApp Image 2022-10-28 at 11.08.07 (1).jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-10-28 11:32:46'),
(206, 204, '204_self_2022-10-28_11:38:08_WhatsApp Image 2022-10-28 at 11.33.36.jpeg', '204_rg_2022-10-28_11:38:08_WhatsApp Image 2022-10-28 at 11.33.43.jpeg', '204_cpf_2022-10-28_11:38:08_WhatsApp Image 2022-10-28 at 11.33.43.jpeg', '204_compres_2022-10-28_11:38:08_BAND_BT_0038702100_089390_1.pdf', '', '', '', '', '', '', '', 'dani.ribeiro', '2022-10-28 11:38:08'),
(207, 205, '205_self_2022-10-28_11:40:17_2.jpeg', '205_rg_2022-10-28_11:40:17_1.jpeg', '205_cpf_2022-10-28_11:40:17_1.jpeg', '205_compres_2022-10-28_11:40:17_4.jpeg', '205_compcomer_2022-10-28_11:40:17_3.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-10-28 11:40:17'),
(208, 206, '206_self_2022-11-10_14:40:23_selfie sidineia.jpeg', '206_rg_2022-11-10_14:40:23_rg sidineia.jpeg', '206_cpf_2022-11-10_14:40:23_cpf sidineia.jpeg', '206_compres_2022-11-10_14:40:23_comprovante de residência sidineia.jpeg', '206_compcomer_2022-11-10_14:40:23_holerite sidineia.jpeg', '206_termo_2022-11-10_14:40:23_termo assinado.jpeg', '206_certificado_2022-11-10_14:40:23_rg sidineia1.jpeg', '', '206_local2_2022-11-10_14:40:23_foto casa 3.jpeg', '206_local3_2022-11-10_14:40:23_foto casa.jpeg', '206_local4_2022-11-10_14:40:23_foto casa 1.jpeg', 'fernanda.oliveira', '2022-10-28 11:40:37'),
(209, 207, '', '207_rg_2022-10-28_11:43:22_WhatsApp Image 2022-10-28 at 11.38.32.jpeg', '207_cpf_2022-10-28_11:43:22_WhatsApp Image 2022-10-28 at 11.38.32.jpeg', '207_compres_2022-10-28_11:43:22_BAND_BT_0083722491_663830_1.pdf', '', '', '', '', '', '', '', 'dani.ribeiro', '2022-10-28 11:43:22'),
(210, 208, '208_self_2022-10-28_11:48:00_4.jpeg', '208_rg_2022-10-28_11:48:00_3.jpeg', '208_cpf_2022-10-28_11:48:00_2.jpeg', '208_compres_2022-10-28_11:48:00_5.jpeg', '208_compcomer_2022-10-28_11:48:00_1.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-10-28 11:48:00'),
(211, 209, '209_self_2022-10-28_11:49:38_WhatsApp Image 2022-10-28 at 11.44.16 (1).jpeg', '209_rg_2022-10-28_11:49:38_WhatsApp Image 2022-10-28 at 11.44.16.jpeg', '209_cpf_2022-10-28_11:49:38_WhatsApp Image 2022-10-28 at 11.44.16.jpeg', '209_compres_2022-10-28_11:49:38_WhatsApp Image 2022-10-28 at 11.44.15.jpeg', '209_compcomer_2022-10-28_11:49:38_WhatsApp Image 2022-10-28 at 11.44.19.jpeg', '', '', '209_local_2022-10-28_11:49:38_WhatsApp Image 2022-10-28 at 11.44.20.jpeg', '', '', '', 'dani.ribeiro', '2022-10-28 11:49:38'),
(212, 210, '210_self_2022-10-28_11:54:13_WhatsApp Image 2022-10-28 at 11.50.51 (1).jpeg', '210_rg_2022-10-28_11:54:13_WhatsApp Image 2022-10-28 at 11.50.50.jpeg', '210_cpf_2022-10-28_11:54:13_WhatsApp Image 2022-10-28 at 11.50.51.jpeg', '210_compres_2022-10-28_11:54:13_WhatsApp Image 2022-10-28 at 11.50.50 (1).jpeg', '', '', '', '', '', '', '', 'dani.ribeiro', '2022-10-28 11:54:13'),
(213, 211, '211_self_2022-10-28_11:55:36_1.jpeg', '211_rg_2022-10-28_11:55:36_4.jpeg', '211_cpf_2022-10-28_11:55:36_3.jpeg', '211_compres_2022-10-28_11:55:36_2.jpeg', '211_compcomer_2022-10-28_11:55:36_5.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-10-28 11:55:36'),
(214, 212, '212_self_2022-10-28_12:02:02_5.jpeg', '212_rg_2022-10-28_12:02:02_3.jpeg', '212_cpf_2022-10-28_12:02:02_4.jpeg', '212_compres_2022-10-28_12:02:02_1.pdf', '212_compcomer_2022-10-28_12:02:02_2.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-10-28 12:02:02'),
(215, 213, '', '213_rg_2022-10-28_12:06:24_WhatsApp Image 2022-10-28 at 12.01.09.jpeg', '213_cpf_2022-10-28_12:06:24_WhatsApp Image 2022-10-28 at 12.01.09.jpeg', '213_compres_2022-10-28_12:06:24_Documento_1651176492486.pdf', '', '', '', '', '', '', '', 'dani.ribeiro', '2022-10-28 12:06:24'),
(216, 214, '214_self_2022-10-28_12:12:57_1.jpeg', '214_rg_2022-10-28_12:12:57_2.jpeg', '214_cpf_2022-10-28_12:12:57_3.jpeg', '214_compres_2022-10-28_12:12:57_5.pdf', '214_compcomer_2022-10-28_12:12:57_6.pdf', '', '', '', '', '', '', 'andressa.fernanda', '2022-10-28 12:12:57'),
(217, 215, '215_self_2022-10-28_12:13:47_WhatsApp Image 2022-10-28 at 12.07.42.jpeg', '215_rg_2022-10-28_12:13:47_WhatsApp Image 2022-10-28 at 12.07.39.jpeg', '215_cpf_2022-10-28_12:13:47_WhatsApp Image 2022-10-28 at 12.07.41.jpeg', '215_compres_2022-10-28_12:13:47_WhatsApp Image 2022-10-28 at 12.07.38.jpeg', '', '', '', '', '', '', '', 'dani.ribeiro', '2022-10-28 12:13:47'),
(218, 216, '216_self_2022-10-28_12:20:34_WhatsApp Image 2022-10-28 at 12.14.38.jpeg', '216_rg_2022-10-28_12:20:34_WhatsApp Image 2022-10-28 at 12.14.38 (1).jpeg', '', '216_compres_2022-10-28_12:20:34_WhatsApp Image 2022-10-28 at 12.14.39.jpeg', '216_compcomer_2022-10-28_12:20:34_RYAN_DIAS_QUEIROZ_202202 (1).pdf', '', '', '', '', '', '', 'dani.ribeiro', '2022-10-28 12:20:34'),
(219, 217, '217_self_2022-10-28_12:26:16_5.jpeg', '217_rg_2022-10-28_12:26:16_2.jpeg', '217_cpf_2022-10-28_12:26:16_3.jpeg', '217_compres_2022-10-28_12:26:16_1.jpeg', '217_compcomer_2022-10-28_12:26:16_4.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-10-28 12:26:16'),
(220, 218, '218_self_2022-10-28_12:34:54_WhatsApp Image 2022-10-28 at 12.32.10.jpeg', '218_rg_2022-10-28_12:34:54_WhatsApp Image 2022-10-28 at 12.32.09.jpeg', '218_cpf_2022-10-28_12:34:54_WhatsApp Image 2022-10-28 at 12.32.08.jpeg', '218_compres_2022-10-28_12:34:54_513812553501 (1).pdf', '', '', '', '', '', '', '', 'dani.ribeiro', '2022-10-28 12:34:54'),
(221, 219, '219_self_2022-10-28_12:44:04_3.jpeg', '', '219_cpf_2022-10-28_12:44:04_4.jpeg', '219_compres_2022-10-28_12:45:11_1.jpeg', '219_compcomer_2022-10-28_12:44:04_2.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-10-28 12:44:04'),
(222, 220, '220_self_2022-10-28_12:46:20_WhatsApp Image 2022-10-28 at 12.39.30.jpeg', '220_rg_2022-10-28_12:46:20_WhatsApp Image 2022-10-28 at 12.39.30.jpeg', '220_cpf_2022-10-28_12:46:20_WhatsApp Image 2022-10-28 at 12.39.30.jpeg', '220_compres_2022-10-28_12:46:20_228006821915.pdf', '220_compcomer_2022-10-28_12:46:20_ReciboDePagamento_3_29032022133122_176_3c417b3d.pdf', '', '', '', '', '', '', 'dani.ribeiro', '2022-10-28 12:46:20'),
(223, 221, '221_self_2022-10-28_12:51:08_WhatsApp Image 2022-10-28 at 12.47.50.jpeg', '221_rg_2022-10-28_12:51:08_WhatsApp Image 2022-10-28 at 12.47.48.jpeg', '221_cpf_2022-10-28_12:51:08_WhatsApp Image 2022-10-28 at 12.47.49.jpeg', '221_compres_2022-10-28_12:51:08_WhatsApp Image 2022-10-28 at 12.47.47.jpeg', '221_compcomer_2022-10-28_12:51:08_WhatsApp Image 2022-10-28 at 12.47.51.jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-10-28 12:51:08'),
(224, 222, '222_self_2022-10-28_12:51:39_1.jpeg', '222_rg_2022-10-28_12:51:39_4.jpeg', '222_cpf_2022-10-28_12:51:39_4.jpeg', '222_compres_2022-10-28_12:51:39_2.jpeg', '222_compcomer_2022-10-28_12:51:39_3.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-10-28 12:51:39'),
(225, 223, '223_self_2022-10-28_12:58:31_3.jpeg', '223_rg_2022-10-28_12:58:31_2.jpeg', '223_cpf_2022-10-28_12:58:31_2.jpeg', '223_compres_2022-10-28_12:58:31_1.jpeg', '223_compcomer_2022-10-28_12:58:31_4.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-10-28 12:58:31'),
(226, 224, '', '224_rg_2022-10-31_11:58:23_WhatsApp Image 2022-10-31 at 11.57.36.jpeg', '224_cpf_2022-10-31_11:58:23_WhatsApp Image 2022-10-31 at 11.57.36.jpeg', '224_compres_2022-10-31_11:58:23_WhatsApp Image 2022-10-31 at 11.57.40.jpeg', '224_compcomer_2022-10-31_11:58:23_WhatsApp Image 2022-10-31 at 11.57.37.jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-10-31 11:58:23'),
(227, 225, '225_self_2022-10-31_14:06:23_WhatsApp Image 2022-10-31 at 14.05.39.jpeg', '225_rg_2022-10-31_14:06:23_WhatsApp Image 2022-10-31 at 14.05.40.jpeg', '225_cpf_2022-10-31_14:06:23_WhatsApp Image 2022-10-31 at 14.05.40 (1).jpeg', '225_compres_2022-10-31_14:06:23_WhatsApp Image 2022-10-31 at 14.05.39 (1).jpeg', '225_compcomer_2022-10-31_14:06:23_WhatsApp Image 2022-10-31 at 14.05.38.jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-10-31 14:06:23'),
(228, 226, '226_self_2022-11-01_09:30:11_WhatsApp Image 2022-11-01 at 09.29.29 (1).jpeg', '226_rg_2022-11-01_09:30:11_WhatsApp Image 2022-11-01 at 09.29.28.jpeg', '226_cpf_2022-11-01_09:30:11_WhatsApp Image 2022-11-01 at 09.29.28 (1).jpeg', '226_compres_2022-11-01_09:30:11_WhatsApp Image 2022-11-01 at 09.29.27.jpeg', '226_compcomer_2022-11-01_09:30:11_WhatsApp Image 2022-11-01 at 09.29.29.jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-01 09:30:11'),
(229, 227, '227_self_2022-11-01_09:38:26_WhatsApp Image 2022-11-01 at 09.31.10.jpeg', '227_rg_2022-11-01_09:38:26_WhatsApp Image 2022-11-01 at 09.31.04.jpeg', '227_cpf_2022-11-01_09:38:26_WhatsApp Image 2022-11-01 at 09.31.09.jpeg', '227_compres_2022-11-01_09:38:26_WhatsApp Image 2022-11-01 at 09.31.11.jpeg', '227_compcomer_2022-11-01_09:38:26_WhatsApp Image 2022-11-01 at 09.31.10 (1).jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-01 09:38:26'),
(230, 228, '228_self_2022-11-01_09:51:40_WhatsApp Image 2022-11-01 at 09.38.54 (1).jpeg', '228_rg_2022-11-01_09:51:40_WhatsApp Image 2022-11-01 at 09.38.53.jpeg', '228_cpf_2022-11-01_09:51:40_WhatsApp Image 2022-11-01 at 09.38.53.jpeg', '228_compres_2022-11-01_09:51:40_WhatsApp Image 2022-11-01 at 09.38.54.jpeg', '', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-01 09:51:40'),
(231, 229, '229_self_2022-11-01_10:06:36_2.jpeg', '229_rg_2022-11-01_10:06:36_3.jpeg', '229_cpf_2022-11-01_10:06:36_3.jpeg', '229_compres_2022-11-01_10:06:36_1.jpeg', '229_compcomer_2022-11-01_10:06:36_4.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-01 10:06:36'),
(232, 230, '', '230_rg_2022-11-01_10:10:34_WhatsApp Image 2022-11-01 at 10.10.08 (1).jpeg', '230_cpf_2022-11-01_10:10:34_WhatsApp Image 2022-11-01 at 10.10.08 (1).jpeg', '230_compres_2022-11-01_10:10:34_WhatsApp Image 2022-11-01 at 10.10.08.jpeg', '', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-01 10:10:34'),
(233, 231, '231_self_2022-11-01_10:17:08_3.jpeg', '231_rg_2022-11-01_10:17:08_4.jpeg', '231_cpf_2022-11-01_10:17:08_5.jpeg', '231_compres_2022-11-01_10:17:08_2].jpeg', '231_compcomer_2022-11-01_10:17:08_1.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-01 10:17:08'),
(234, 232, '232_self_2022-11-01_10:17:41_WhatsApp Image 2022-11-01 at 10.11.21 (1).jpeg', '232_rg_2022-11-01_10:17:41_Documentos Escaneados.pdf', '232_cpf_2022-11-01_10:17:41_Documentos Escaneados.pdf', '232_compres_2022-11-01_10:17:41_WhatsApp Image 2022-11-01 at 10.11.21.jpeg', '232_compcomer_2022-11-01_10:17:41_WhatsApp Image 2022-11-01 at 10.11.22.jpeg', '', '232_termo_2022-11-01_10:17:41_ED0C6325-A340-4BB2-ABE0-BB553A8E36CB.pdf', '', '', '', '', 'dani.ribeiro', '2022-11-01 10:17:41'),
(235, 233, '233_self_2022-11-01_10:24:58_3.jpeg', '233_rg_2022-11-01_10:24:58_1.jpeg', '233_cpf_2022-11-01_10:24:58_1.jpeg', '233_compres_2022-11-01_10:24:58_4.jpeg', '233_compcomer_2022-11-01_10:24:58_2.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-01 10:24:58'),
(236, 234, '234_self_2022-11-03_14:55:57_5.jpeg', '234_rg_2022-11-03_14:55:57_4.jpeg', '234_cpf_2022-11-03_14:55:57_3.jpeg', '234_compres_2022-11-03_14:55:57_1.jpeg', '234_compcomer_2022-11-03_14:55:57_2.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-01 10:29:51'),
(237, 235, '235_self_2022-11-01_10:37:37_1.jpeg', '235_rg_2022-11-01_10:37:37_2.jpeg', '235_cpf_2022-11-01_10:37:37_3.jpeg', '235_compres_2022-11-01_10:37:37_4.jpeg', '235_compcomer_2022-11-01_10:37:37_5.pdf', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-01 10:37:37'),
(238, 236, '236_self_2022-11-01_10:46:22_4.jpeg', '236_rg_2022-11-01_10:46:22_1.jpeg', '236_cpf_2022-11-01_10:46:22_1.jpeg', '236_compres_2022-11-01_10:46:22_3.jpeg', '236_compcomer_2022-11-01_10:46:22_2.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-01 10:46:22'),
(239, 237, '237_self_2022-11-01_10:51:41_1.jpeg', '237_rg_2022-11-01_10:51:41_5.jpeg', '237_cpf_2022-11-01_10:51:41_4.jpeg', '237_compres_2022-11-01_10:51:41_2.jpeg', '237_compcomer_2022-11-01_10:51:41_3.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-01 10:51:41'),
(240, 238, '238_self_2022-11-01_10:59:34_3.jpeg', '238_rg_2022-11-01_10:59:34_5.jpeg', '238_cpf_2022-11-01_10:59:34_4.jpeg', '238_compres_2022-11-01_10:59:34_2.jpeg', '238_compcomer_2022-11-01_10:59:34_1.pdf', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-01 10:59:34'),
(241, 239, '239_self_2022-11-01_11:06:54_3.jpeg', '239_rg_2022-11-01_11:06:54_1.jpeg', '239_cpf_2022-11-01_11:06:54_2.jpeg', '239_compres_2022-11-01_11:06:54_2.pdf', '239_compcomer_2022-11-01_11:06:54_4.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-01 11:06:54'),
(242, 240, '240_self_2022-11-03_11:59:44_WhatsApp Image 2022-11-03 at 11.55.57 (1).jpeg', '240_rg_2022-11-03_11:59:44_WhatsApp Image 2022-11-03 at 11.55.56 (1).jpeg', '240_cpf_2022-11-03_11:59:44_WhatsApp Image 2022-11-03 at 11.55.56.jpeg', '240_compres_2022-11-03_11:59:44_WhatsApp Image 2022-11-03 at 11.55.58 (2).jpeg', '240_compcomer_2022-11-03_11:59:44_WhatsApp Image 2022-11-03 at 11.55.57.jpeg', '', '240_termo_2022-11-03_11:59:44_WhatsApp Image 2022-11-03 at 11.55.58.jpeg', '', '', '', '', 'dani.ribeiro', '2022-11-03 11:59:44'),
(243, 241, '', '241_rg_2022-11-03_14:26:23_WhatsApp Image 2022-11-03 at 12.02.49.jpeg', '241_cpf_2022-11-03_14:26:23_WhatsApp Image 2022-11-03 at 12.02.49.jpeg', '241_compres_2022-11-03_14:26:23_WhatsApp Image 2022-11-03 at 12.02.01.jpeg', '241_compcomer_2022-11-03_14:26:23_WhatsApp Image 2022-11-03 at 12.02.37.jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-03 14:26:23'),
(244, 242, '242_self_2022-11-03_14:48:18_WhatsApp Image 2022-11-03 at 14.34.07 (1).jpeg', '242_rg_2022-11-03_14:48:18_WhatsApp Image 2022-11-03 at 14.34.06.jpeg', '242_cpf_2022-11-03_14:48:18_WhatsApp Image 2022-11-03 at 14.34.06.jpeg', '', '', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-03 14:48:18'),
(245, 243, '243_self_2022-11-03_15:00:31_WhatsApp Image 2022-11-03 at 14.49.38.jpeg', '243_rg_2022-11-03_15:00:31_WhatsApp Image 2022-11-03 at 14.49.37 (1).jpeg', '243_cpf_2022-11-03_15:00:31_WhatsApp Image 2022-11-03 at 14.49.37 (1).jpeg', '243_compres_2022-11-03_15:00:31_WhatsApp Image 2022-11-03 at 14.49.37.jpeg', '', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-03 15:00:31'),
(246, 244, '244_self_2022-11-03_15:05:06_4.jpeg', '244_rg_2022-11-03_15:05:06_2.jpeg', '244_cpf_2022-11-03_15:05:06_3.jpeg', '244_compres_2022-11-03_15:05:06_1.jpeg', '', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-03 15:05:06'),
(247, 245, '245_self_2022-11-03_15:10:55_WhatsApp Image 2022-11-03 at 15.03.05.jpeg', '245_rg_2022-11-03_15:10:55_WhatsApp Image 2022-11-03 at 15.03.06.jpeg', '245_cpf_2022-11-03_15:10:55_WhatsApp Image 2022-11-03 at 15.03.06 (1).jpeg', '245_compres_2022-11-03_15:10:55_WhatsApp Image 2022-11-03 at 15.03.04.jpeg', '245_compcomer_2022-11-03_15:10:55_WhatsApp Image 2022-11-03 at 15.03.04 (1).jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-03 15:10:55'),
(248, 246, '246_self_2022-11-03_15:12:36_1.jpeg', '246_rg_2022-11-03_15:12:36_2.jpeg', '246_cpf_2022-11-03_15:12:36_3.jpeg', '246_compres_2022-11-03_15:12:36_4.jpeg', '', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-03 15:12:36'),
(249, 247, '', '247_rg_2022-11-03_15:20:56_WhatsApp Image 2022-11-03 at 15.13.02.jpeg', '247_cpf_2022-11-03_15:20:56_WhatsApp Image 2022-11-03 at 15.13.02.jpeg', '247_compres_2022-11-03_15:20:56_WhatsApp Image 2022-11-03 at 15.13.01.jpeg', '247_compcomer_2022-11-03_15:20:56_WhatsApp Image 2022-11-03 at 15.13.02 (1).jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-03 15:20:56'),
(250, 248, '248_self_2022-11-03_15:36:17_WhatsApp Image 2022-11-03 at 15.22.29.jpeg', '248_rg_2022-11-03_15:36:17_WhatsApp Image 2022-11-03 at 15.22.31 (2).jpeg', '248_cpf_2022-11-03_15:36:17_WhatsApp Image 2022-11-03 at 15.22.31 (1).jpeg', '248_compres_2022-11-03_15:36:17_WhatsApp Image 2022-11-03 at 15.22.31.jpeg', '248_compcomer_2022-11-03_15:36:17_juliane3.pdf', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-03 15:34:51'),
(251, 249, '249_self_2022-11-03_15:40:20_2.jpeg', '249_rg_2022-11-03_15:40:20_4.jpeg', '249_cpf_2022-11-03_15:40:20_5.jpeg', '249_compres_2022-11-03_15:40:20_1.jpeg', '249_compcomer_2022-11-03_15:40:20_3.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-03 15:40:20'),
(252, 250, '250_self_2022-11-03_16:16:29_3.jpeg', '250_rg_2022-11-03_16:16:29_2.jpeg', '250_cpf_2022-11-03_16:16:29_1.jpeg', '250_compres_2022-11-03_16:16:29_6.jpeg', '250_compcomer_2022-11-03_16:16:29_5.jpeg', '', '250_termo_2022-11-03_16:16:29_4.jpeg', '', '', '', '', 'andressa.fernanda', '2022-11-03 16:16:29'),
(253, 251, '251_self_2022-11-03_16:30:36_4.jpeg', '251_rg_2022-11-03_16:30:36_2.jpeg', '251_cpf_2022-11-03_16:30:36_3.jpeg', '251_compres_2022-11-03_16:30:36_1.pdf', '251_compcomer_2022-11-03_16:30:36_5.pdf', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-03 16:30:36'),
(254, 252, '252_self_2022-11-03_16:39:19_3.jpeg', '252_rg_2022-11-03_16:39:19_1.jpeg', '252_cpf_2022-11-03_16:39:19_1.jpeg', '252_compres_2022-11-08_16:45:56_7.jpeg', '252_compcomer_2022-11-03_16:39:19_4.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-03 16:39:19'),
(255, 253, '253_self_2022-11-04_09:14:49_WhatsApp Image 2022-11-03 at 15.37.30.jpeg', '253_rg_2022-11-04_09:14:49_WhatsApp Image 2022-11-03 at 15.37.29 (1).jpeg', '253_cpf_2022-11-04_09:14:49_WhatsApp Image 2022-11-03 at 15.37.29.jpeg', '253_compres_2022-11-04_09:14:49_WhatsApp Image 2022-11-03 at 15.37.30 (1).jpeg', '253_compcomer_2022-11-04_09:14:49_WhatsApp Image 2022-11-04 at 09.10.41.jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-04 09:14:49'),
(256, 254, '254_self_2022-11-04_09:31:30_WhatsApp Image 2022-11-04 at 09.19.46.jpeg', '254_rg_2022-11-04_09:31:30_WhatsApp Image 2022-11-04 at 09.19.46 (1).jpeg', '254_cpf_2022-11-04_09:31:30_WhatsApp Image 2022-11-04 at 09.19.46 (1).jpeg', '254_compres_2022-11-04_09:31:30_WhatsApp Image 2022-11-04 at 09.19.47.jpeg', '254_compcomer_2022-11-04_09:31:30_WhatsApp Image 2022-11-04 at 09.19.48.jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-04 09:31:30'),
(257, 255, '255_self_2022-11-04_10:39:25_WhatsApp Image 2022-11-04 at 10.05.07 (2).jpeg', '255_rg_2022-11-04_10:39:25_WhatsApp Image 2022-11-04 at 10.05.06 (1).jpeg', '255_cpf_2022-11-04_10:39:25_WhatsApp Image 2022-11-04 at 10.05.06.jpeg', '255_compres_2022-11-04_10:39:25_WhatsApp Image 2022-11-04 at 10.05.07 (1).jpeg', '255_compcomer_2022-11-04_10:39:25_WhatsApp Image 2022-11-04 at 10.05.07.jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-04 10:39:25'),
(258, 256, '256_self_2022-11-04_10:41:12_1.jpeg', '256_rg_2022-11-04_10:41:12_3.jpeg', '256_cpf_2022-11-04_10:41:12_4.jpeg', '256_compres_2022-11-04_10:41:12_2.jpeg', '256_compcomer_2022-11-04_10:41:12_5.pdf', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-04 10:41:12'),
(259, 257, '257_self_2022-11-04_10:46:56_WhatsApp Image 2022-11-04 at 10.40.14 (1).jpeg', '257_rg_2022-11-04_10:46:56_WhatsApp Image 2022-11-04 at 10.40.14.jpeg', '257_cpf_2022-11-04_10:46:56_WhatsApp Image 2022-11-04 at 10.40.13.jpeg', '257_compres_2022-11-04_10:46:56_WhatsApp Image 2022-11-04 at 10.40.15 (1).jpeg', '257_compcomer_2022-11-04_10:46:56_WhatsApp Image 2022-11-04 at 10.40.16.jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-04 10:46:56'),
(260, 258, '258_self_2022-11-04_10:53:14_2.jpeg', '258_rg_2022-11-04_10:53:14_3.jpeg', '258_cpf_2022-11-04_10:53:14_3.jpeg', '258_compres_2022-11-04_10:53:14_1.jpeg', '258_compcomer_2022-11-04_10:53:14_4.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-04 10:53:14'),
(261, 259, '259_self_2022-11-04_11:00:18_4.jpeg', '259_rg_2022-11-04_11:00:18_2.jpeg', '259_cpf_2022-11-04_11:00:18_3.jpeg', '259_compres_2022-11-04_11:00:18_1.jpeg', '259_compcomer_2022-11-04_11:00:18_4.pdf', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-04 11:00:18'),
(262, 260, '260_self_2022-11-04_11:05:55_3.jpeg', '260_rg_2022-11-04_11:05:55_1.jpeg', '260_cpf_2022-11-04_11:05:55_1.jpeg', '260_compres_2022-11-04_11:05:55_4.jpeg', '260_compcomer_2022-11-04_11:05:55_2.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-04 11:05:55'),
(263, 261, '261_self_2022-11-04_11:07:24_WhatsApp Image 2022-11-04 at 10.59.28 (1).jpeg', '261_rg_2022-11-04_11:07:24_WhatsApp Image 2022-11-04 at 10.59.28.jpeg', '261_cpf_2022-11-04_11:07:24_WhatsApp Image 2022-11-04 at 10.59.27.jpeg', '261_compres_2022-11-04_11:07:24_WhatsApp Image 2022-11-04 at 10.59.26.jpeg', '261_compcomer_2022-11-04_11:07:24_WhatsApp Image 2022-11-04 at 10.59.29.jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-04 11:07:24'),
(264, 262, '', '', '', '', '', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-04 11:12:53'),
(265, 263, '263_self_2022-11-04_11:14:08_4.jpeg', '263_rg_2022-11-04_11:14:08_2.jpeg', '263_cpf_2022-11-04_11:14:08_3.jpeg', '263_compres_2022-11-04_11:14:08_1.jpeg', '263_compcomer_2022-11-04_11:14:08_5.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-04 11:14:08'),
(266, 264, '', '', '', '', '', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-04 11:15:09'),
(267, 265, '', '', '', '', '', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-04 11:17:32'),
(268, 266, '', '', '', '', '', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-04 11:19:26'),
(269, 267, '267_self_2022-11-04_11:20:11_2.jpeg', '267_rg_2022-11-04_11:20:11_3.jpeg', '267_cpf_2022-11-04_11:20:11_3.jpeg', '267_compres_2022-11-04_11:20:11_1.jpeg', '267_compcomer_2022-11-04_11:20:11_4.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-04 11:20:11'),
(270, 268, '', '', '', '', '', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-04 11:23:42'),
(271, 269, '269_self_2022-11-04_11:28:50_2.jpeg', '269_rg_2022-11-04_11:28:50_5.jpeg', '269_cpf_2022-11-04_11:28:50_4.jpeg', '269_compres_2022-11-04_11:28:50_1.jpeg', '269_compcomer_2022-11-04_11:28:50_3.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-04 11:28:50'),
(272, 270, '270_self_2022-11-04_11:29:55_WhatsApp Image 2022-11-04 at 11.24.27.jpeg', '270_rg_2022-11-04_11:29:55_WhatsApp Image 2022-11-04 at 11.24.29.jpeg', '270_cpf_2022-11-04_11:29:55_WhatsApp Image 2022-11-04 at 11.24.29 (1).jpeg', '270_compres_2022-11-04_11:29:55_WhatsApp Image 2022-11-04 at 11.24.31.jpeg', '270_compcomer_2022-11-04_11:29:55_WhatsApp Image 2022-11-04 at 11.24.28.jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-04 11:29:55'),
(273, 271, '271_self_2022-11-04_11:38:33_2.jpeg', '271_rg_2022-11-04_11:38:33_1.jpeg', '271_cpf_2022-11-04_11:38:33_1.jpeg', '271_compres_2022-11-04_11:38:33_4.jpeg', '271_compcomer_2022-11-04_11:38:33_3.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-04 11:38:33'),
(274, 272, '272_self_2022-11-04_11:43:38_WhatsApp Image 2022-11-04 at 11.30.30.jpeg', '272_rg_2022-11-04_11:43:38_WhatsApp Image 2022-11-04 at 11.30.32 (1).jpeg', '272_cpf_2022-11-04_11:43:38_WhatsApp Image 2022-11-04 at 11.30.32.jpeg', '272_compres_2022-11-04_11:43:38_segunda-via-fatura-256006196575-5_210629_205102.pdf', '272_compcomer_2022-11-04_11:43:38_WhatsApp Image 2022-11-04 at 11.30.31 (1).jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-04 11:43:38'),
(275, 273, '273_self_2022-11-04_11:44:25_1.jpeg', '273_rg_2022-11-04_11:44:25_5.jpeg', '273_cpf_2022-11-04_11:44:25_4.jpeg', '273_compres_2022-11-04_11:44:25_3.jpeg', '273_compcomer_2022-11-04_11:44:25_2.jpeg', '273_termo_2022-11-08_17:08:13_3.jpeg', '', '', '', '', '', 'andressa.fernanda', '2022-11-04 11:44:25'),
(276, 274, '274_self_2022-11-04_11:59:45_2.jpeg', '274_rg_2022-11-04_11:59:45_4.jpeg', '274_cpf_2022-11-04_11:59:45_4.jpeg', '274_compres_2022-11-04_11:59:45_3.jpeg', '274_compcomer_2022-11-04_11:59:45_1.pdf', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-04 11:59:45'),
(277, 275, '275_self_2022-11-04_13:33:34_3.jpeg', '275_rg_2022-11-04_13:33:34_4.jpeg', '275_cpf_2022-11-04_13:33:34_5.jpeg', '275_compres_2022-11-04_13:33:34_1.jpeg', '275_compcomer_2022-11-04_13:33:34_2.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-04 13:33:34'),
(278, 276, '276_self_2022-11-04_13:44:11_WhatsApp Image 2022-11-04 at 13.43.33.jpeg', '276_rg_2022-11-04_13:44:11_WhatsApp Image 2022-11-04 at 13.43.31.jpeg', '276_cpf_2022-11-04_13:44:11_WhatsApp Image 2022-11-04 at 13.43.31.jpeg', '276_compres_2022-11-04_13:44:11_WhatsApp Image 2022-11-04 at 13.43.32.jpeg', '276_compcomer_2022-11-04_13:44:11_WhatsApp Image 2022-11-04 at 13.43.31 (1).jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-04 13:44:11'),
(279, 277, '277_self_2022-11-04_13:51:44_WhatsApp Image 2022-11-04 at 13.45.40 (1).jpeg', '277_rg_2022-11-04_13:51:44_WhatsApp Image 2022-11-04 at 13.45.39.jpeg', '277_cpf_2022-11-04_13:51:44_WhatsApp Image 2022-11-04 at 13.45.40.jpeg', '277_compres_2022-11-04_13:51:44_WhatsApp Image 2022-11-04 at 13.45.37.jpeg', '277_compcomer_2022-11-04_13:51:44_WhatsApp Image 2022-11-04 at 13.45.41.jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-04 13:51:44'),
(280, 278, '278_self_2022-11-04_13:54:30_4.jpeg', '278_rg_2022-11-04_13:54:30_1.jpeg', '278_cpf_2022-11-04_13:54:30_1.jpeg', '278_compres_2022-11-04_13:54:30_2.PDF', '278_compcomer_2022-11-04_13:54:30_3.pdf', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-04 13:54:30'),
(281, 279, '279_self_2022-11-04_14:03:25_5.jpeg', '279_rg_2022-11-04_14:03:25_3.jpeg', '279_cpf_2022-11-04_14:03:25_2.jpeg', '279_compres_2022-11-04_14:03:25_1.jpeg', '279_compcomer_2022-11-04_14:03:25_4.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-04 14:03:25'),
(282, 280, '280_self_2022-11-04_14:13:26_3.jpeg', '280_rg_2022-11-04_14:13:26_2.jpeg', '280_cpf_2022-11-04_14:13:26_2.jpeg', '280_compres_2022-11-04_14:13:26_4.pdf', '280_compcomer_2022-11-04_14:13:26_1.jpeg', '280_termo_2022-11-08_17:06:30_2.jpeg', '', '', '', '', '', 'andressa.fernanda', '2022-11-04 14:13:26'),
(283, 281, '281_self_2022-11-04_14:14:30_WhatsApp Image 2022-11-04 at 13.55.18.jpeg', '281_rg_2022-11-04_14:14:30_WhatsApp Image 2022-11-04 at 13.55.21.jpeg', '281_cpf_2022-11-04_14:14:30_WhatsApp Image 2022-11-04 at 13.55.21.jpeg', '281_compres_2022-11-04_14:14:30_WhatsApp Image 2022-11-04 at 13.55.20.jpeg', '281_compcomer_2022-11-04_14:14:30_WhatsApp Image 2022-11-04 at 13.55.17.jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-04 14:14:30'),
(284, 282, '282_self_2022-11-04_14:24:00_1.jpeg', '282_rg_2022-11-04_14:24:00_4.jpeg', '282_cpf_2022-11-04_14:24:00_3.jpeg', '282_compres_2022-11-04_14:24:00_2.jpeg', '282_compcomer_2022-11-04_14:24:00_5.pdf', '282_termo_2022-11-08_17:05:19_1.jpeg', '', '', '', '', '', 'andressa.fernanda', '2022-11-04 14:24:00'),
(285, 283, '283_self_2022-11-04_14:30:43_WhatsApp Image 2022-11-04 at 14.19.37.jpeg', '283_rg_2022-11-04_14:30:43_WhatsApp Image 2022-11-04 at 14.19.38.jpeg', '283_cpf_2022-11-04_14:30:43_WhatsApp Image 2022-11-04 at 14.19.39.jpeg', '283_compres_2022-11-04_14:30:43_527103632578 (1).pdf', '283_compcomer_2022-11-04_14:30:43_WhatsApp Image 2022-11-04 at 14.19.35.jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-04 14:30:43'),
(286, 284, '284_self_2022-11-04_14:51:26_WhatsApp Image 2022-11-04 at 14.38.55 (1).jpeg', '284_rg_2022-11-04_14:51:26_WhatsApp Image 2022-11-04 at 14.38.53 (1).jpeg', '284_cpf_2022-11-04_14:51:26_WhatsApp Image 2022-11-04 at 14.38.53.jpeg', '284_compres_2022-11-04_14:51:26_WhatsApp Image 2022-11-04 at 14.38.54.jpeg', '284_compcomer_2022-11-04_14:51:26_WhatsApp Image 2022-11-04 at 14.38.54 (1).jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-04 14:51:26'),
(287, 285, '285_self_2022-11-04_15:00:06_WhatsApp Image 2022-11-04 at 14.54.02.jpeg', '', '', '285_compres_2022-11-04_15:00:06_EDP São Paulo Distribuição de Energia S.A.pdf', '285_compcomer_2022-11-04_15:00:06_P1084M001148H33821I7989242.PDF', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-04 15:00:06'),
(288, 286, '286_self_2022-11-04_15:14:26_WhatsApp Image 2022-11-04 at 15.07.27.jpeg', '286_rg_2022-11-04_15:14:26_WhatsApp Image 2022-11-04 at 15.07.01.jpeg', '286_cpf_2022-11-04_15:14:26_WhatsApp Image 2022-11-04 at 15.06.59.jpeg', '286_compres_2022-11-04_15:14:26_WhatsApp Image 2022-11-04 at 15.07.26.jpeg', '286_compcomer_2022-11-04_15:14:26_novembro.pdf', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-04 15:14:26'),
(289, 287, '287_self_2022-11-04_15:34:19_WhatsApp Image 2022-11-04 at 15.16.43.jpeg', '287_rg_2022-11-04_15:34:19_WhatsApp Image 2022-11-04 at 15.16.15.jpeg', '287_cpf_2022-11-04_15:34:19_WhatsApp Image 2022-11-04 at 15.16.16.jpeg', '287_compres_2022-11-04_15:34:19_128010341709.pdf', '287_compcomer_2022-11-04_15:34:19_2735766.pdf', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-04 15:34:19'),
(290, 288, '288_self_2022-11-04_15:42:43_WhatsApp Image 2022-11-04 at 15.16.43.jpeg', '288_rg_2022-11-04_15:42:43_WhatsApp Image 2022-11-04 at 15.16.15.jpeg', '288_cpf_2022-11-04_15:42:43_WhatsApp Image 2022-11-04 at 15.16.16.jpeg', '288_compres_2022-11-04_15:42:43_128010341709.pdf', '', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-04 15:42:43'),
(291, 289, '289_self_2022-11-07_12:31:40_2.jpeg', '289_rg_2022-11-07_12:31:40_1.jpeg', '289_cpf_2022-11-07_12:31:40_1.jpeg', '289_compres_2022-11-07_12:31:40_3.jpeg', '', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-07 12:31:40'),
(292, 290, '290_self_2022-11-07_15:11:39_4.jpeg', '290_rg_2022-11-07_15:11:39_2.jpeg', '290_cpf_2022-11-07_15:11:39_1.jpeg', '290_compres_2022-11-07_15:11:39_5.pdf', '290_compcomer_2022-11-07_15:11:39_3.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-07 15:11:39'),
(293, 291, '291_self_2022-11-07_15:18:09_3.jpeg', '291_rg_2022-11-07_15:18:09_5.jpeg', '291_cpf_2022-11-07_15:18:09_4.jpeg', '291_compres_2022-11-07_15:18:09_2.jpeg', '291_compcomer_2022-11-07_15:18:09_1.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-07 15:18:09'),
(294, 292, '292_self_2022-11-07_15:28:24_5.jpeg', '292_rg_2022-11-07_15:28:24_2.jpeg', '292_cpf_2022-11-07_15:28:24_1.jpeg', '292_compres_2022-11-07_15:28:24_3.jpeg', '292_compcomer_2022-11-07_15:28:24_4.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-07 15:28:24'),
(295, 293, '293_self_2022-11-07_15:40:10_4.jpeg', '293_rg_2022-11-07_15:40:10_3.jpeg', '293_cpf_2022-11-07_15:40:10_2.jpeg', '293_compres_2022-11-07_15:40:10_1.jpeg', '293_compcomer_2022-11-07_15:40:10_5.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-07 15:40:10'),
(296, 294, '294_self_2022-11-07_15:47:47_WhatsApp Image 2022-11-07 at 15.44.50.jpeg', '294_rg_2022-11-07_15:47:47_WhatsApp Image 2022-11-07 at 15.44.51.jpeg', '294_cpf_2022-11-07_15:47:47_WhatsApp Image 2022-11-07 at 15.44.51.jpeg', '294_compres_2022-11-07_15:47:47_20216651943334.pdf', '294_compcomer_2022-11-07_15:47:47_WhatsApp Image 2022-11-07 at 15.44.52.jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-07 15:47:47'),
(297, 295, '295_self_2022-11-07_15:52:38_1.jpeg', '295_rg_2022-11-07_15:52:38_2.jpeg', '295_cpf_2022-11-07_15:52:38_2.jpeg', '295_compres_2022-11-07_15:52:38_4.jpeg', '295_compcomer_2022-11-07_15:52:38_3.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-07 15:52:38'),
(298, 296, '296_self_2022-11-07_15:58:58_WhatsApp Image 2022-11-07 at 15.56.52.jpeg', '296_rg_2022-11-07_15:58:58_4.jpeg', '296_cpf_2022-11-07_15:58:58_5.jpeg', '296_compres_2022-11-07_15:58:58_1.jpeg', '296_compcomer_2022-11-07_15:58:58_3.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-07 15:58:58'),
(299, 297, '297_self_2022-11-07_16:10:00_1.jpeg', '297_rg_2022-11-07_16:10:00_3.jpeg', '297_cpf_2022-11-07_16:10:00_3.jpeg', '297_compres_2022-11-07_16:10:00_2.jpeg', '297_compcomer_2022-11-07_16:10:00_4.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-07 16:10:00'),
(300, 298, '298_self_2022-11-07_16:31:07_3.jpeg', '298_rg_2022-11-07_16:31:07_4.jpeg', '298_cpf_2022-11-07_16:31:07_4.jpeg', '298_compres_2022-11-07_16:31:07_2.jpeg', '298_compcomer_2022-11-07_16:31:07_1.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-07 16:31:07'),
(301, 299, '299_self_2022-11-07_16:36:53_1.jpeg', '299_rg_2022-11-07_16:36:53_3.jpeg', '299_cpf_2022-11-07_16:36:53_2.jpeg', '299_compres_2022-11-07_16:36:53_4.jpeg', '299_compcomer_2022-11-07_16:36:53_5.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-07 16:36:53'),
(302, 300, '300_self_2022-11-07_16:43:49_2.jpeg', '300_rg_2022-11-07_16:43:49_4.jpeg', '300_cpf_2022-11-07_16:43:49_5.jpeg', '300_compres_2022-11-07_16:43:49_1.jpeg', '300_compcomer_2022-11-07_16:43:49_3.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-07 16:37:41'),
(303, 301, '301_self_2022-11-07_16:54:27_4.jpeg', '301_rg_2022-11-07_16:54:27_2.jpeg', '301_cpf_2022-11-07_16:54:27_3.jpeg', '301_compres_2022-11-07_16:54:27_1.jpeg', '', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-07 16:47:50'),
(304, 302, '302_self_2022-11-07_16:55:59_WhatsApp Image 2022-11-07 at 15.50.49.jpeg', '', '302_cpf_2022-11-07_16:55:59_WhatsApp Image 2022-11-07 at 15.50.45.jpeg', '302_compres_2022-11-07_16:55:59_WhatsApp Image 2022-11-07 at 15.50.47.jpeg', '302_compcomer_2022-11-07_16:55:59_WhatsApp Image 2022-11-07 at 15.50.46.jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-07 16:55:59'),
(305, 303, '303_self_2022-11-07_17:03:05_4.jpeg', '303_rg_2022-11-07_17:03:05_1.jpeg', '303_cpf_2022-11-07_17:03:05_2.jpeg', '303_compres_2022-11-07_17:03:05_3.jpeg', '303_compcomer_2022-11-07_17:03:05_5.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-07 17:03:05'),
(306, 304, '304_self_2022-11-08_10:40:27_WhatsApp Image 2022-11-08 at 10.39.49.jpeg', '304_rg_2022-11-08_10:40:27_WhatsApp Image 2022-11-08 at 10.39.50 (1).jpeg', '304_cpf_2022-11-08_10:40:27_WhatsApp Image 2022-11-08 at 10.39.51.jpeg', '304_compres_2022-11-08_10:40:27_WhatsApp Image 2022-11-08 at 10.39.50.jpeg', '304_compcomer_2022-11-08_10:40:27_01015781202206012022061016151158511RecPag.pdf', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-08 10:40:27'),
(307, 305, '305_self_2022-11-08_10:48:34_WhatsApp Image 2022-11-08 at 10.40.56.jpeg', '305_rg_2022-11-08_10:48:34_WhatsApp Image 2022-11-08 at 10.41.00.jpeg', '305_cpf_2022-11-08_10:48:34_WhatsApp Image 2022-11-08 at 10.40.59 (2).jpeg', '305_compres_2022-11-08_10:48:34_WhatsApp Image 2022-11-08 at 10.40.59.jpeg', '305_compcomer_2022-11-08_10:48:34_WhatsApp Image 2022-11-08 at 10.40.59 (1).jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-08 10:48:34'),
(308, 306, '306_self_2022-11-08_11:06:20_WhatsApp Image 2022-11-08 at 10.58.50 (2).jpeg', '306_rg_2022-11-08_11:06:20_WhatsApp Image 2022-11-08 at 10.58.50 (1).jpeg', '306_cpf_2022-11-08_11:06:20_WhatsApp Image 2022-11-08 at 10.58.50.jpeg', '306_compres_2022-11-08_11:06:20_WhatsApp Image 2022-11-08 at 10.58.51.jpeg', '306_compcomer_2022-11-08_11:06:20_WhatsApp Image 2022-11-08 at 10.58.49.jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-08 11:06:20'),
(309, 307, '307_self_2022-11-08_11:32:56_3.jpeg', '307_rg_2022-11-08_11:32:56_2.jpeg', '307_cpf_2022-11-08_11:32:56_1.jpeg', '307_compres_2022-11-08_11:32:56_4.jpeg', '307_compcomer_2022-11-08_11:32:56_5.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-08 11:26:10'),
(310, 308, '308_self_2022-11-08_11:29:09_WhatsApp Image 2022-11-08 at 11.28.12.jpeg', '308_rg_2022-11-08_11:29:09_WhatsApp Image 2022-11-08 at 11.28.11.jpeg', '308_cpf_2022-11-08_11:29:09_WhatsApp Image 2022-11-08 at 11.28.11.jpeg', '308_compres_2022-11-08_11:29:09_WhatsApp Image 2022-11-08 at 11.28.14.jpeg', '308_compcomer_2022-11-08_11:29:09_WhatsApp Image 2022-11-08 at 11.28.13 (1).jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-08 11:29:09'),
(311, 309, '309_self_2022-11-08_11:38:34_WhatsApp Image 2022-11-08 at 11.30.14.jpeg', '309_rg_2022-11-08_11:38:34_WhatsApp Image 2022-11-08 at 11.30.14 (2).jpeg', '309_cpf_2022-11-08_11:38:34_WhatsApp Image 2022-11-08 at 11.30.14 (2).jpeg', '309_compres_2022-11-08_11:38:34_WhatsApp Image 2022-11-08 at 11.30.14 (1).jpeg', '309_compcomer_2022-11-08_11:38:34_Hollerites e Adiantamento 3 últimos.pdf', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-08 11:38:34'),
(312, 310, '310_self_2022-11-08_11:44:46_3.jpeg', '310_rg_2022-11-08_11:44:46_2.jpeg', '310_cpf_2022-11-08_11:44:46_4.jpeg', '310_compres_2022-11-08_11:44:46_1.jpeg', '', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-08 11:44:46'),
(313, 311, '311_self_2022-11-08_11:48:59_WhatsApp Image 2022-11-08 at 11.39.58 (2).jpeg', '311_rg_2022-11-08_11:48:59_WhatsApp Image 2022-11-08 at 11.39.58.jpeg', '311_cpf_2022-11-08_11:48:59_WhatsApp Image 2022-11-08 at 11.39.59.jpeg', '311_compres_2022-11-08_11:48:59_WhatsApp Image 2022-11-08 at 11.39.57.jpeg', '311_compcomer_2022-11-08_11:48:59_WhatsApp Image 2022-11-08 at 11.39.58 (1).jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-08 11:48:59'),
(314, 312, '312_self_2022-11-08_11:55:27_2.jpeg', '312_rg_2022-11-08_11:55:27_3.jpeg', '312_cpf_2022-11-08_11:55:27_4.jpeg', '312_compres_2022-11-08_11:55:27_1.jpeg', '312_compcomer_2022-11-08_11:55:27_5.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-08 11:55:27'),
(315, 313, '313_self_2022-11-08_12:21:55_3.jpeg', '313_rg_2022-11-08_12:21:55_1.jpeg', '313_cpf_2022-11-08_12:21:55_1.jpeg', '313_compres_2022-11-08_12:21:55_2.jpeg', '313_compcomer_2022-11-08_12:21:55_4.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-08 12:21:55'),
(316, 314, '314_self_2022-11-08_13:42:59_WhatsApp Image 2022-11-08 at 13.37.37 (1).jpeg', '314_rg_2022-11-08_13:42:59_WhatsApp Image 2022-11-08 at 13.37.34.jpeg', '314_cpf_2022-11-08_13:42:59_WhatsApp Image 2022-11-08 at 13.37.33.jpeg', '314_compres_2022-11-08_13:42:59_WhatsApp Image 2022-11-08 at 13.37.34 (1).jpeg', '314_compcomer_2022-11-08_13:42:59_WhatsApp Image 2022-11-08 at 13.37.37.jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-08 13:42:59'),
(317, 315, '315_self_2022-11-08_13:51:09_WhatsApp Image 2022-11-08 at 13.48.07 (1).jpeg', '315_rg_2022-11-08_13:51:09_POLEGAR DIREITO.pdf', '315_cpf_2022-11-08_13:51:09_SVNIdWVO.pdf', '315_compres_2022-11-08_13:51:09_Conta Mensal de.pdf', '315_compcomer_2022-11-08_13:51:09_WhatsApp Image 2022-11-08 at 13.48.07.jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-08 13:51:09'),
(318, 316, '316_self_2022-11-08_14:00:20_WhatsApp Image 2022-11-08 at 13.52.01.jpeg', '', '', '316_compres_2022-11-08_14:00:20_WhatsApp Image 2022-11-08 at 13.51.59.jpeg', '316_compcomer_2022-11-08_14:00:20_WhatsApp Image 2022-11-08 at 13.52.02 (1).jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-08 14:00:20'),
(319, 317, '317_self_2022-11-08_14:01:09_1.jpeg', '317_rg_2022-11-08_14:01:09_3.jpeg', '317_cpf_2022-11-08_14:01:09_3.jpeg', '317_compres_2022-11-08_14:01:09_2.jpeg', '317_compcomer_2022-11-08_14:01:09_4.pdf', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-08 14:01:09'),
(320, 318, '318_self_2022-11-08_14:08:21_3.jpeg', '318_rg_2022-11-08_14:08:21_2.jpeg', '318_cpf_2022-11-08_14:08:21_2.jpeg', '318_compres_2022-11-08_14:08:21_1.jpeg', '', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-08 14:08:21'),
(321, 319, '319_self_2022-11-08_14:17:50_WhatsApp Image 2022-11-08 at 14.14.34.jpeg', '319_rg_2022-11-08_14:17:50_WhatsApp Image 2022-11-08 at 14.14.38.jpeg', '319_cpf_2022-11-08_14:17:50_WhatsApp Image 2022-11-08 at 14.14.40.jpeg', '319_compres_2022-11-08_14:17:50_WhatsApp Image 2022-11-08 at 14.14.36.jpeg', '', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-08 14:17:50'),
(322, 320, '320_self_2022-11-08_14:38:58_WhatsApp Image 2022-11-08 at 14.26.57.jpeg', '320_rg_2022-11-08_14:38:58_WhatsApp Image 2022-11-08 at 14.21.09.jpeg', '320_cpf_2022-11-08_14:38:58_WhatsApp Image 2022-11-08 at 14.21.09.jpeg', '320_compres_2022-11-08_14:38:58_WhatsApp Image 2022-11-08 at 14.21.41.jpeg', '320_compcomer_2022-11-08_14:38:58_WhatsApp Image 2022-11-08 at 14.24.06.jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-08 14:38:58'),
(323, 321, '', '321_rg_2022-11-08_14:46:38_WhatsApp Image 2022-11-08 at 14.43.16.jpeg', '321_cpf_2022-11-08_14:46:38_WhatsApp Image 2022-11-08 at 14.43.16 (1).jpeg', '321_compres_2022-11-08_14:46:38_WhatsApp Image 2022-11-08 at 14.43.16 (2).jpeg', '321_compcomer_2022-11-08_14:46:38_WhatsApp Image 2022-11-08 at 14.43.16 (3).jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-08 14:46:38'),
(324, 322, '322_self_2022-11-08_15:04:15_4.jpeg', '322_rg_2022-11-08_15:04:15_1.jpeg', '322_cpf_2022-11-08_15:04:15_2.jpeg', '322_compres_2022-11-08_15:04:15_5.jpeg', '322_compcomer_2022-11-08_15:04:15_3.jpeg', '322_termo_2022-11-09_16:16:39_1.jpeg', '', '', '', '', '', 'manuella.santos', '2022-11-08 15:04:15'),
(325, 323, '323_self_2022-11-08_15:09:06_1.jpeg', '323_rg_2022-11-08_15:09:06_4.jpeg', '323_cpf_2022-11-08_15:09:06_4.jpeg', '323_compres_2022-11-08_15:09:06_3.jpeg', '323_compcomer_2022-11-08_15:09:06_2.jpeg', '323_termo_2022-11-09_16:13:52_2.jpeg', '', '', '', '', '', 'manuella.santos', '2022-11-08 15:09:06'),
(326, 324, '324_self_2022-11-08_16:36:31_1.jpeg', '324_rg_2022-11-08_16:36:31_6.jpeg', '324_cpf_2022-11-08_16:36:31_5.jpeg', '324_compres_2022-11-08_16:59:00_8.jpeg', '324_compcomer_2022-11-08_16:36:31_3.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-08 16:36:31'),
(327, 325, '325_self_2022-11-09_10:06:13_WhatsApp Image 2022-11-09 at 09.57.00.jpeg', '325_rg_2022-11-09_10:06:13_WhatsApp Image 2022-11-09 at 09.57.03 (2).jpeg', '325_cpf_2022-11-09_10:06:13_WhatsApp Image 2022-11-09 at 09.57.03 (2).jpeg', '', '325_compcomer_2022-11-09_10:06:13_WhatsApp Image 2022-11-09 at 09.57.03 (1).jpeg', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-11-09 10:06:13'),
(328, 326, '326_self_2022-11-09_10:07:36_LUCIANA GALDINO DOS SANTOS FREIRE 3.jpeg', '326_rg_2022-11-09_10:07:36_LUCIANA GALDINO DOS SANTOS FREIRE 2.jpeg', '', '326_compres_2022-11-09_10:09:17_LUCIANA GALDINO DOS SANTOS FREIRE 5.jpeg', '', '326_termo_2022-11-09_10:07:36_LUCIANA GALDINO DOS SANTOS FREIRE 4.jpeg', '', '', '', '', '', 'fernanda.ribeiro', '2022-11-09 10:07:36'),
(329, 327, '327_self_2022-11-09_10:35:08_BENEDITO LUIZ VIEIRA FIDELIS JUNIOR 3.jpeg', '327_rg_2022-11-09_10:35:08_BENEDITO LUIZ VIEIRA FIDELIS JUNIOR .jpeg', '', '', '', '327_termo_2022-11-09_10:35:08_BENEDITO LUIZ VIEIRA FIDELIS JUNIOR 2.jpeg', '', '', '', '', '', 'fernanda.ribeiro', '2022-11-09 10:35:08'),
(330, 328, '328_self_2022-11-09_10:45:12_4.jpeg', '328_rg_2022-11-09_10:45:12_=3.jpeg', '328_cpf_2022-11-09_10:45:12_2.jpeg', '328_compres_2022-11-09_10:45:12_1.jpeg', '328_compcomer_2022-11-09_10:45:12_5.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-09 10:45:12'),
(331, 329, '329_self_2022-11-09_10:48:06_WhatsApp Image 2022-11-09 at 10.35.13.jpeg', '329_rg_2022-11-09_10:48:06_WhatsApp Image 2022-11-09 at 10.35.06.jpeg', '329_cpf_2022-11-09_10:48:06_WhatsApp Image 2022-11-09 at 10.35.04.jpeg', '329_compres_2022-11-09_10:48:06_fatura-Outubro_22-0202369389.pdf', '329_compcomer_2022-11-09_10:48:06_MEI STUDIO ALEX DINARDI (1).pdf', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-11-09 10:48:06'),
(332, 330, '330_self_2022-11-09_10:52:59_JONATHAN HENRIQUE SALLES 1.jpeg', '330_rg_2022-11-09_10:52:59_JONATHAN HENRIQUE SALLES 4.jpeg', '', '330_compres_2022-11-09_10:52:59_JONATHAN HENRIQUE SALLES 2.jpeg', '', '', '', '330_local_2022-11-09_10:52:59_JONATHAN HENRIQUE SALLES 3.jpeg', '', '', '', 'fernanda.ribeiro', '2022-11-09 10:52:59'),
(333, 331, '', '331_rg_2022-11-09_10:59:48_WhatsApp Image 2022-11-09 at 10.49.46 (4).jpeg', '331_cpf_2022-11-09_10:59:48_WhatsApp Image 2022-11-09 at 10.49.46 (3).jpeg', '331_compres_2022-11-09_10:59:48_WhatsApp Image 2022-11-09 at 10.49.46.jpeg', '331_compcomer_2022-11-09_10:59:48_WhatsApp Image 2022-11-09 at 10.49.46 (1).jpeg', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-11-09 10:59:48'),
(334, 332, '332_self_2022-11-09_11:09:39_WhatsApp Image 2022-11-09 at 11.00.44 (8).jpeg', '332_rg_2022-11-09_11:09:39_WhatsApp Image 2022-11-09 at 11.00.44 (6).jpeg', '332_cpf_2022-11-09_11:09:39_WhatsApp Image 2022-11-09 at 11.00.44 (6).jpeg', '332_compres_2022-11-09_11:09:39_WhatsApp Image 2022-11-09 at 11.00.44 (5).jpeg', '332_compcomer_2022-11-09_11:09:39_WhatsApp Image 2022-11-09 at 11.00.44 (9).jpeg', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-11-09 11:09:39'),
(335, 333, '333_self_2022-11-09_11:10:45_RICARDO SANTATO PASCHOAL 1.jpeg', '333_rg_2022-11-09_11:10:45_RICARDO SANTATO PASCHOAL 2.jpeg', '333_cpf_2022-11-09_11:10:45_RICARDO SANTATO PASCHOAL 3.jpeg', '333_compres_2022-11-09_11:10:45_RICARDO SANTATO PASCHOAL 6.jpeg', '', '333_termo_2022-11-09_11:10:45_RICARDO SANTATO PASCHOAL 4.jpeg', '', '333_local_2022-11-09_11:10:45_RICARDO SANTATO PASCHOAL 5.jpeg', '', '', '', 'fernanda.ribeiro', '2022-11-09 11:10:45'),
(336, 334, '334_self_2022-11-09_11:17:51_WhatsApp Image 2022-11-09 at 11.10.51 (1).jpeg', '334_rg_2022-11-09_11:17:51_WhatsApp Image 2022-11-09 at 11.10.51 (3).jpeg', '334_cpf_2022-11-09_11:17:51_WhatsApp Image 2022-11-09 at 11.10.51 (4).jpeg', '334_compres_2022-11-09_11:17:51_WhatsApp Image 2022-11-09 at 11.10.51 (5).jpeg', '334_compcomer_2022-11-09_11:17:51_WhatsApp Image 2022-11-09 at 11.10.51 (2).jpeg', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-11-09 11:17:51'),
(337, 335, '335_self_2022-11-09_11:27:35_WhatsApp Image 2022-11-09 at 11.18.58 (1).jpeg', '335_rg_2022-11-09_11:27:35_WhatsApp Image 2022-11-09 at 11.18.58 (3).jpeg', '335_cpf_2022-11-09_11:27:35_WhatsApp Image 2022-11-09 at 11.18.57.jpeg', '335_compres_2022-11-09_11:27:35_WhatsApp Image 2022-11-09 at 11.18.58.jpeg', '335_compcomer_2022-11-09_11:27:35_WhatsApp Image 2022-11-09 at 11.18.58 (2).jpeg', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-11-09 11:27:35'),
(338, 336, '336_self_2022-11-09_11:44:49_WhatsApp Image 2022-11-09 at 11.29.37.jpeg', '336_rg_2022-11-09_11:44:49_WhatsApp Image 2022-11-09 at 11.29.36 (1).jpeg', '336_cpf_2022-11-09_11:44:49_WhatsApp Image 2022-11-09 at 11.29.37 (1).jpeg', '336_compres_2022-11-09_11:44:49_WhatsApp Image 2022-11-09 at 11.29.36.jpeg', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-11-09 11:33:13'),
(339, 337, '337_self_2022-11-09_11:53:30_WhatsApp Image 2022-11-09 at 11.46.23 (1).jpeg', '337_rg_2022-11-09_11:53:30_WhatsApp Image 2022-11-09 at 11.46.22.jpeg', '337_cpf_2022-11-09_11:53:30_WhatsApp Image 2022-11-09 at 11.46.22.jpeg', '337_compres_2022-11-09_11:53:30_WhatsApp Image 2022-11-09 at 11.46.23.jpeg', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-11-09 11:53:30'),
(340, 338, '338_self_2022-11-09_12:01:49_FABIO CONCEIÇÃO DE SOUSA 1.jpeg', '338_rg_2022-11-09_12:01:49_FABIO CONCEIÇÃO DE SOUSA 2.jpeg', '338_cpf_2022-11-09_12:01:49_FABIO CONCEIÇÃO DE SOUSA 3.jpeg', '338_compres_2022-11-09_12:01:49_FABIO CONCEIÇÃO DE SOUSA 4.jpeg', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-11-09 12:01:49'),
(341, 339, '339_self_2022-11-09_12:03:52_WhatsApp Image 2022-11-09 at 11.55.12 (2).jpeg', '339_rg_2022-11-09_12:03:52_WhatsApp Image 2022-11-09 at 11.55.12 (5).jpeg', '339_cpf_2022-11-09_12:03:52_WhatsApp Image 2022-11-09 at 11.55.12 (4).jpeg', '339_compres_2022-11-09_12:03:52_WhatsApp Image 2022-11-09 at 11.55.12 (3).jpeg', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-11-09 12:03:52'),
(342, 340, '340_self_2022-11-09_13:30:54_ANA PAULA DE JESUS OLIVEIRA 5.jpeg', '340_rg_2022-11-09_13:30:54_ANA PAULA DE JESUS OLIVEIRA 3.jpeg', '340_cpf_2022-11-09_13:30:54_ANA PAULA DE JESUS OLIVEIRA 2.jpeg', '340_compres_2022-11-09_13:30:54_ANA PAULA DE JESUS OLIVEIRA 1.jpeg', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-11-09 13:30:54'),
(343, 341, '341_self_2022-11-09_13:41:15_WhatsApp Image 2022-11-09 at 13.18.50.jpeg', '341_rg_2022-11-09_13:41:15_WhatsApp Image 2022-11-09 at 13.18.50 (1).jpeg', '341_cpf_2022-11-09_13:41:15_WhatsApp Image 2022-11-09 at 13.18.50 (1).jpeg', '341_compres_2022-11-09_13:41:15_WhatsApp Image 2022-11-09 at 13.18.50 (3).jpeg', '341_compcomer_2022-11-09_13:41:15_WhatsApp Image 2022-11-09 at 13.18.50 (2).jpeg', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-11-09 13:41:15'),
(344, 342, '', '342_rg_2022-11-09_13:57:05_WhatsApp Image 2022-11-09 at 10.49.46 (4).jpeg', '342_cpf_2022-11-09_13:57:05_WhatsApp Image 2022-11-09 at 10.49.46 (3).jpeg', '342_compres_2022-11-09_13:57:05_WhatsApp Image 2022-11-09 at 10.49.46.jpeg', '342_compcomer_2022-11-09_13:57:05_WhatsApp Image 2022-11-09 at 10.49.46 (1).jpeg', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-11-09 13:57:05');
INSERT INTO `fotos_clientes` (`id`, `id_cliente`, `ftcliente`, `ftrg`, `ftcpf`, `ftcompres`, `ftcompcomer`, `fttermo`, `ftcertificado`, `ftlocal`, `ftlocal2`, `ftlocal3`, `ftlocal4`, `usuario`, `data_fotos_clientes`) VALUES
(345, 343, '343_self_2022-11-09_14:06:51_CLEIA APARECIDA DA SILVA 4.jpeg', '343_rg_2022-11-09_14:06:51_CLEIA APARECIDA DA SILVA 2.jpeg', '343_cpf_2022-11-09_14:06:51_CLEIA APARECIDA DA SILVA 1.jpeg', '343_compres_2022-11-09_14:06:51_CLEIA APARECIDA DA SILVA 3.jpeg', '', '', '', '343_local_2022-11-09_14:06:51_CLEIA APARECIDA DA SILVA 5.jpeg', '', '', '', 'fernanda.ribeiro', '2022-11-09 14:06:51'),
(346, 344, '344_self_2022-11-09_14:09:03_WhatsApp Image 2022-11-09 at 14.01.38 (3).jpeg', '344_rg_2022-11-09_14:09:03_WhatsApp Image 2022-11-09 at 14.01.38.jpeg', '344_cpf_2022-11-09_14:09:03_WhatsApp Image 2022-11-09 at 14.01.38 (1).jpeg', '344_compres_2022-11-09_14:09:03_WhatsApp Image 2022-11-09 at 14.01.38 (2).jpeg', '344_compcomer_2022-11-09_14:09:03_WhatsApp Image 2022-11-09 at 14.01.38 (4).jpeg', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-11-09 14:09:03'),
(347, 345, '345_self_2022-11-09_14:19:00_JOSE APARECIDO DE FARIAS 1.jpeg', '345_rg_2022-11-09_14:19:00_JOSE APARECIDO DE FARIAS 4.jpeg', '345_cpf_2022-11-09_14:19:00_JOSE APARECIDO DE FARIAS 3.jpeg', '345_compres_2022-11-09_14:19:00_JOSE APARECIDO DE FARIAS 2.jpeg', '', '', '', '345_local_2022-11-09_14:19:00_JOSE APARECIDO DE FARIAS 5.jpeg', '', '', '', 'fernanda.ribeiro', '2022-11-09 14:19:00'),
(348, 346, '346_self_2022-11-09_15:01:00_CELIA VIEIRA DE CARVALHO 2.jpeg', '346_rg_2022-11-09_15:01:00_CELIA VIEIRA DE CARVALHO 1.jpeg', '', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-11-09 15:01:00'),
(349, 347, '', '347_rg_2022-11-09_15:15:48_WhatsApp Image 2022-11-09 at 15.03.36.jpeg', '', '347_compres_2022-11-09_15:15:48_WhatsApp Image 2022-11-09 at 15.03.35.jpeg', '', '', '', '347_local_2022-11-09_15:15:48_WhatsApp Image 2022-11-09 at 15.03.37.jpeg', '', '', '', 'fernanda.ribeiro', '2022-11-09 15:15:48'),
(350, 348, '348_self_2022-11-09_15:57:16_3.jpeg', '348_rg_2022-11-09_15:57:16_5.jpeg', '348_cpf_2022-11-09_15:57:16_4.jpeg', '348_compres_2022-11-09_15:57:16_1.jpeg', '348_compcomer_2022-11-09_15:57:16_2.jpeg', '348_termo_2022-11-09_16:03:01_1.jpeg', '', '', '', '', '', 'manuella.santos', '2022-11-09 15:57:16'),
(351, 349, '349_self_2022-11-09_16:11:48_MICHELE CARDOSO PINTO 1.jpeg', '349_rg_2022-11-09_16:11:48_MICHELE CARDOSO PINTO 3.jpeg', '349_cpf_2022-11-09_16:11:48_MICHELE CARDOSO PINTO 2.jpeg', '', '', '349_termo_2022-11-09_16:11:48_MICHELE CARDOSO PINTO 4.jpeg', '', '349_local_2022-11-09_16:11:48_MICHELE CARDOSO PINTO 5.jpeg', '', '', '', 'fernanda.ribeiro', '2022-11-09 16:11:48'),
(352, 350, '350_self_2022-11-09_16:32:13_WhatsApp Image 2022-11-09 at 16.14.30 (1).jpeg', '350_rg_2022-11-09_16:32:13_WhatsApp Image 2022-11-09 at 16.14.30.jpeg', '', '', '', '350_termo_2022-11-09_16:32:13_WhatsApp Image 2022-11-09 at 16.15.02.jpeg', '', '', '', '', '', 'fernanda.ribeiro', '2022-11-09 16:32:13'),
(353, 351, '351_self_2022-11-09_16:36:01_WhatsApp Image 2022-11-09 at 16.33.18.jpeg', '351_rg_2022-11-09_16:36:01_WhatsApp Image 2022-11-09 at 16.33.18 (1).jpeg', '', '351_compres_2022-11-09_16:36:01_WhatsApp Image 2022-11-09 at 16.33.18 (2).jpeg', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-11-09 16:36:01'),
(354, 352, '352_self_2022-11-09_16:38:31_WhatsApp Image 2022-11-09 at 16.36.52.jpeg', '352_rg_2022-11-09_16:38:31_WhatsApp Image 2022-11-09 at 16.36.52 (2).jpeg', '', '352_compres_2022-11-09_16:38:31_WhatsApp Image 2022-11-09 at 16.36.52 (3).jpeg', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-11-09 16:38:31'),
(355, 353, '', '353_rg_2022-11-09_16:41:31_WhatsApp Image 2022-11-09 at 16.39.13 (1).jpeg', '353_cpf_2022-11-09_16:41:31_WhatsApp Image 2022-11-09 at 16.39.13.jpeg', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-11-09 16:41:31'),
(356, 354, '354_self_2022-11-09_16:49:31_WhatsApp Image 2022-11-09 at 16.42.04.jpeg', '354_rg_2022-11-09_16:49:31_WhatsApp Image 2022-11-09 at 16.42.03 (2).jpeg', '354_cpf_2022-11-09_16:49:31_WhatsApp Image 2022-11-09 at 16.42.03 (1).jpeg', '354_compres_2022-11-09_16:49:31_WhatsApp Image 2022-11-09 at 16.42.03.jpeg', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-11-09 16:49:31'),
(357, 356, '', '356_rg_2022-11-10_10:18:19_WhatsApp Image 2022-11-10 at 09.52.35.jpeg', '', '', '', '356_termo_2022-11-10_10:18:19_WhatsApp Image 2022-11-10 at 09.31.11.jpeg', '', '356_local_2022-11-10_10:18:19_WhatsApp Image 2022-11-10 at 09.31.26.jpeg', '', '', '', 'fernanda.ribeiro', '2022-11-10 10:18:19'),
(358, 357, '', '357_rg_2022-11-10_10:40:02_WhatsApp Image 2022-11-10 at 10.33.16 (1).jpeg', '357_cpf_2022-11-10_10:40:02_WhatsApp Image 2022-11-10 at 10.33.16.jpeg', '357_compres_2022-11-10_10:40:02_WhatsApp Image 2022-11-10 at 10.33.16 (2).jpeg', '357_compcomer_2022-11-10_10:40:02_WhatsApp Image 2022-11-10 at 10.33.17.jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-10 10:40:02'),
(359, 358, '358_self_2022-11-10_11:08:26_WhatsApp Image 2022-11-10 at 10.40.33.jpeg', '358_rg_2022-11-10_11:08:26_WhatsApp Image 2022-11-10 at 10.40.32.jpeg', '358_cpf_2022-11-10_11:08:26_WhatsApp Image 2022-11-10 at 10.40.33 (1).jpeg', '358_compres_2022-11-10_11:08:26_WhatsApp Image 2022-11-10 at 10.40.34 (1).jpeg', '358_compcomer_2022-11-10_11:08:26_WhatsApp Image 2022-11-10 at 10.40.34.jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-10 11:08:26'),
(360, 359, '359_self_2022-11-10_11:08:29_WhatsApp Image 2022-11-10 at 10.40.33.jpeg', '359_rg_2022-11-10_11:08:29_WhatsApp Image 2022-11-10 at 10.40.32.jpeg', '359_cpf_2022-11-10_11:08:29_WhatsApp Image 2022-11-10 at 10.40.33 (1).jpeg', '359_compres_2022-11-10_11:08:29_WhatsApp Image 2022-11-10 at 10.40.34 (1).jpeg', '359_compcomer_2022-11-10_11:08:29_WhatsApp Image 2022-11-10 at 10.40.34.jpeg', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-10 11:08:29'),
(361, 360, '360_self_2022-11-10_15:00:55_selfie.jpeg', '360_rg_2022-11-10_15:00:55_rg frente.jpeg', '360_cpf_2022-11-10_15:00:55_cpf.jpeg', '360_compres_2022-11-10_15:00:55_comprovante.jpeg', '360_compcomer_2022-11-10_15:00:55_holerite.jpeg', '360_termo_2022-11-10_15:00:55_termo.jpeg', '360_termo_2022-11-10_15:00:55_rg atras.jpeg', '', '', '', '', 'fernanda.oliveira', '2022-11-10 15:00:55'),
(362, 361, '361_self_2022-11-10_15:18:59_selfie.jpeg', '361_rg_2022-11-10_15:18:59_rg frente.jpeg', '361_cpf_2022-11-10_15:18:59_rg atras.jpeg', '361_compres_2022-11-10_15:18:59_comprovante de residencia.jpeg', '', '361_termo_2022-11-10_15:18:59_termo.jpeg', '', '', '', '', '', 'fernanda.oliveira', '2022-11-10 15:18:59'),
(363, 0, '0_self_2022-11-10_15:21:57_WhatsApp Image 2022-11-10 at 15.16.29 (1).jpeg', '0_rg_2022-11-10_15:21:57_WhatsApp Image 2022-11-10 at 15.16.27.jpeg', '0_cpf_2022-11-10_15:21:57_WhatsApp Image 2022-11-10 at 15.16.27.jpeg', '0_compres_2022-11-10_15:21:57_WhatsApp Image 2022-11-10 at 15.16.29.jpeg', '0_compcomer_2022-11-10_15:21:57_Emissao do Holerith - JESSICA AP..pdf', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-10 15:21:57'),
(364, 362, '362_self_2022-11-10_15:32:23_selfie.jpeg', '362_rg_2022-11-10_15:32:23_rg frente.jpeg', '362_cpf_2022-11-10_15:32:23_rg atras.jpeg', '362_compres_2022-11-10_15:32:23_comprovante de residencia.jpeg', '362_compcomer_2022-11-10_15:32:23_Demonstrativo de Pagamento (6).pdf', '362_termo_2022-11-10_15:32:23_assinando termo.jpeg', '', '362_local_2022-11-10_15:32:23_foto casa.jpeg', '', '', '', 'fernanda.oliveira', '2022-11-10 15:32:23'),
(365, 363, '363_self_2022-11-10_15:39:39_WhatsApp Image 2022-11-07 at 09.14.58.jpeg', '363_rg_2022-11-10_15:39:39_WhatsApp Image 2022-11-07 at 09.19.19.jpeg', '363_cpf_2022-11-10_15:39:39_WhatsApp Image 2022-11-07 at 09.19.19.jpeg', '363_compres_2022-11-10_15:39:39_WhatsApp Image 2022-11-07 at 09.13.02.jpeg', '363_compcomer_2022-11-10_15:39:39_NU_146054612_01NOV2022_06NOV2022.pdf', '363_termo_2022-11-10_15:39:39_termo assinado.jpeg', '', '363_local_2022-11-10_15:39:39_frente casa.jpeg', '', '', '', 'fernanda.oliveira', '2022-11-10 15:39:39'),
(366, 364, '364_self_2022-11-10_15:50:41_selfie.jpeg', '364_rg_2022-11-10_15:50:41_rg frente.jpeg', '364_cpf_2022-11-10_15:50:41_rg atras.jpeg', '364_compres_2022-11-10_15:50:41_comprovante residência.jpeg', '364_compcomer_2022-11-10_15:50:41_HOLERITE JOSÉ MARCELO SETEMBRO 2.pdf', '364_termo_2022-11-10_15:50:41_assinando termo.jpeg', '', '364_local_2022-11-10_15:50:41_casa.jpeg', '', '', '', 'fernanda.oliveira', '2022-11-10 15:50:41'),
(367, 365, '365_self_2022-11-10_15:56:53_selfie.jpeg', '365_rg_2022-11-10_15:56:53_habilitação.jpeg', '365_cpf_2022-11-10_15:56:53_habilitação.jpeg', '365_compres_2022-11-10_15:56:53_comp resid.jpeg', '365_compcomer_2022-11-10_15:56:53_ctps digital.pdf', '', '', '', '', '', '', 'fernanda.oliveira', '2022-11-10 15:56:53'),
(368, 0, '0_self_2022-11-10_15:59:22_WhatsApp Image 2022-11-10 at 15.16.29 (1).jpeg', '0_rg_2022-11-10_15:59:22_WhatsApp Image 2022-11-10 at 15.16.27.jpeg', '0_cpf_2022-11-10_15:59:22_WhatsApp Image 2022-11-10 at 15.16.27.jpeg', '0_compres_2022-11-10_15:59:22_WhatsApp Image 2022-11-10 at 15.16.29.jpeg', '0_compcomer_2022-11-10_15:59:22_Emissao do Holerith - JESSICA AP..pdf', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-10 15:59:22'),
(369, 366, '366_self_2022-11-10_16:03:07_selfie.jpeg', '366_rg_2022-11-10_16:03:07_rg frente.jpeg', '366_cpf_2022-11-10_16:03:07_rg atras.jpeg', '366_compres_2022-11-10_16:03:07_comp resid.jpeg', '366_compcomer_2022-11-10_16:03:07_extrato bancário.jpeg', '366_termo_2022-11-10_16:03:07_termo assinado.jpeg', '', '', '', '', '', 'fernanda.oliveira', '2022-11-10 16:03:07'),
(370, 0, '0_self_2022-11-10_16:36:49_WhatsApp Image 2022-11-10 at 15.16.29 (1).jpeg', '0_rg_2022-11-10_16:36:49_WhatsApp Image 2022-11-10 at 15.16.27.jpeg', '0_cpf_2022-11-10_16:36:49_WhatsApp Image 2022-11-10 at 15.16.27.jpeg', '0_compres_2022-11-10_16:36:49_WhatsApp Image 2022-11-10 at 15.16.29.jpeg', '0_compcomer_2022-11-10_16:36:49_Emissao do Holerith - JESSICA AP..pdf', '', '', '', '', '', '', 'dani.ribeiro', '2022-11-10 16:36:49'),
(371, 367, '367_self_2022-11-11_11:10:11_4.jpeg', '367_rg_2022-11-11_11:10:11_3.jpeg', '367_cpf_2022-11-11_11:10:11_2.jpeg', '367_compres_2022-11-11_11:10:11_1.jpeg', '367_compcomer_2022-11-11_11:10:11_5.jpeg', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-11 11:10:11'),
(372, 368, '368_self_2022-11-16_12:22:33_3.jpeg', '368_rg_2022-11-16_12:22:33_1.jpeg', '368_cpf_2022-11-16_12:22:33_2.jpeg', '368_compres_2022-11-16_12:22:33_5.pdf', '', '', '', '', '', '', '', 'andressa.fernanda', '2022-11-16 12:22:33'),
(373, 369, '369_self_2022-11-22_10:21:57_WhatsApp Image 2022-11-22 at 10.19.19.jpeg', '369_rg_2022-11-22_10:21:57_WhatsApp Image 2022-11-22 at 10.19.17.jpeg', '369_cpf_2022-11-22_10:21:57_WhatsApp Image 2022-11-22 at 10.19.18.jpeg', '', '369_compcomer_2022-11-22_10:21:57_WhatsApp Image 2022-11-22 at 10.19.18 (1).jpeg', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-11-22 10:21:57'),
(374, 370, '', '370_rg_2022-11-22_10:28:01_WhatsApp Image 2022-11-22 at 10.24.11.jpeg', '', '', '370_compcomer_2022-11-22_10:28:01_WhatsApp Image 2022-11-22 at 10.24.11 (1).jpeg', '', '', '370_local_2022-11-22_10:28:01_WhatsApp Image 2022-11-22 at 10.24.11 (2).jpeg', '', '', '', 'fernanda.ribeiro', '2022-11-22 10:28:01'),
(375, 371, '371_self_2022-11-22_10:35:35_WhatsApp Image 2022-11-22 at 10.30.27.jpeg', '371_rg_2022-11-22_10:35:35_WhatsApp Image 2022-11-22 at 10.30.28.jpeg', '', '371_compres_2022-11-22_10:35:35_WhatsApp Image 2022-11-22 at 10.30.26.jpeg', '', '', '', '371_local_2022-11-22_10:35:35_WhatsApp Image 2022-11-22 at 10.30.28 (1).jpeg', '', '', '', 'fernanda.ribeiro', '2022-11-22 10:35:35'),
(376, 372, '', '', '372_cpf_2022-11-22_10:58:45_WhatsApp Image 2022-11-22 at 10.54.16.jpeg', '', '372_compcomer_2022-11-22_10:58:45_WhatsApp Image 2022-11-22 at 10.54.16 (2).jpeg', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-11-22 10:58:45'),
(377, 373, '', '', '', '', '', '', '', '', '', '', '', 'fernanda.ribeiro', '2022-12-07 10:57:56'),
(378, 374, '', '', '', '', '', '', '', '', '', '', '', 'manuella.santos', '2023-01-24 16:23:27'),
(379, 375, '375_self_2023-01-26_11:29:56_WhatsApp Image 2022-12-19 at 14.45.37.jpeg', '375_rg_2023-01-26_11:29:56_WhatsApp Image 2022-10-07 at 10.05.48.jpeg', '', '', '', '', '', '', '', '', '', 'manuella.santos', '2023-01-26 11:29:56'),
(380, 376, '376_self_2023-01-26_11:29:57_WhatsApp Image 2022-12-19 at 14.45.37.jpeg', '376_rg_2023-01-26_11:29:57_WhatsApp Image 2022-10-07 at 10.05.48.jpeg', '', '', '', '', '', '', '', '', '', 'manuella.santos', '2023-01-26 11:29:57'),
(381, 377, '377_self_2023-01-26_11:29:58_WhatsApp Image 2022-12-19 at 14.45.37.jpeg', '377_rg_2023-01-26_11:29:58_WhatsApp Image 2022-10-07 at 10.05.48.jpeg', '', '', '', '', '', '', '', '', '', 'manuella.santos', '2023-01-26 11:29:58'),
(382, 378, '', '', '', '', '', '', '', '', '', '', '', 'manuella.santos', '2023-01-26 11:31:41'),
(383, 379, '', '', '', '', '', '', '', '', '', '', '', 'manuella.santos', '2023-01-26 11:38:34');

-- --------------------------------------------------------

--
-- Estrutura para tabela `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `menu_folder` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `menu` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `menu_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `menus`
--

INSERT INTO `menus` (`id`, `menu_folder`, `menu`, `menu_name`, `status`) VALUES
(1, 'solicitacao', 'Solicitação', 'Menu', 1),
(2, 'diaria', 'Diária', 'Menu VS', 1),
(3, 'mes', 'Mês', 'Menu Guerra', 1),
(4, 'cdclientes', 'Cadastrar Cliente', 'Menu', 1),
(5, 'clientes', 'Ver Cliente', 'Menu', 1),
(6, 'criar_login', 'Criar Login', 'Menu Login', 1),
(7, 'acessos', 'Acessos', 'Menu Login', 1),
(8, 'detalhes', 'Detalhes', 'Menu VS', 0),
(9, 'ver_comprovante', 'Ver comprovante', 'Menu VS', 0),
(10, 'salvar_login', 'Salvar Login', 'Menu Login', 0),
(11, 'starter', 'Inicio', 'Inicio', 0),
(12, 'salvar_acesso', 'Salvar Acesso', 'Menu Login', 0),
(13, 'salvar_cliente', 'Salvar Cliente', 'Menu', 0),
(14, 'salvar_solicitacao', 'Salvar SolicitaÇão', 'Menu', 0),
(15, 'salvar_detalhes', 'Salvar Detalhes', 'Menu Login', 0),
(16, 'profile', 'Ver Detalhes Cliente', 'Menu Login', 0),
(17, 'detalhes_guerra', 'Ver Detalhes Cliente Guerra', 'Menu Guerra', 0),
(18, 'chat', 'Chat', 'Menu Chat', 1),
(20, 'cdclienteeditar', 'Editar Clientes', 'Menu', 0),
(21, 'salvar_edicao', 'Salvar Edição', 'Menu', 0),
(22, 'liberar_login', 'Liberar login ao sistema', 'Menu Login', 1),
(23, 'mudar_senha', 'Mudar Senha', 'Menu Login', 1),
(24, 'alterar_senha', 'Alterar Senha', 'Menu Login', 0),
(25, 'clientes_adm', 'Clientes VS | Guerra', 'Menu Adm', 1),
(26, 'profile_adm', 'Ver Clientes VS | Guerra', 'Menu Adm', 0),
(27, 'cdclienteeditar_adm', 'Editar Clientes VS | Guerra', 'Menu Adm', 0),
(28, 'solicitacoes', 'Solicitações Geral', 'Menu Adm', 1),
(29, 'tipo_cliente', 'Cadastrar Tipos de Clientes', 'Menu', 1),
(30, 'parcelar', 'Parcelamento', 'Menu', 0),
(31, 'finalizar_cliente', 'Finalizar Cliente', 'Menu', 0),
(32, 'salvar_parcelamento', 'Salvar Parcelamento', 'Menu', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Despejando dados para a tabela `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 428541195, 1496624921, 'oi amiga '),
(2, 428541195, 1496624921, 'kkkk'),
(3, 1496624921, 428541195, 'oiiii'),
(4, 428541195, 1496624921, 'kk'),
(5, 197592445, 885267123, 'MARTA PEREIRA DA SILVA CLEIA APARECIDA DA SILVA TIAGO SOUSA BEZERRA DA SILVA ANA PAULA DE JESUS OLIVEIRA SHIRLEY SANCHES NOVAIS ODALICE MENDONÇA DA SILVA ANDERSON D FREITAS DE AQUINO'),
(6, 197592445, 885267123, '36.718.787/0001-79');

-- --------------------------------------------------------

--
-- Estrutura para tabela `nome_cliente`
--

CREATE TABLE `nome_cliente` (
  `id` int(11) NOT NULL,
  `nome_servico` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `data_hora_cliente` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `nome_cliente`
--

INSERT INTO `nome_cliente` (`id`, `nome_servico`, `user`, `data_hora_cliente`) VALUES
(1, 'VS', 'phelipe', '2022-10-05 12:07:33'),
(2, 'Guerra', 'phelipe', '2022-10-05 12:07:33'),
(3, 'Guerra 2', 'phelipe', '2022-10-05 12:07:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `solicitacao`
--

CREATE TABLE `solicitacao` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_servico` int(11) NOT NULL,
  `valor` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `valor_parcela` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status_solicitacao` int(11) NOT NULL,
  `juros` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `valor_bruto` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `dt_solicitacao` date NOT NULL,
  `dt_pgto` date NOT NULL,
  `usuario` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `data_hora_solicitacao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `solicitacao`
--

INSERT INTO `solicitacao` (`id`, `id_cliente`, `id_servico`, `valor`, `valor_parcela`, `status_solicitacao`, `juros`, `valor_bruto`, `dt_solicitacao`, `dt_pgto`, `usuario`, `data_hora_solicitacao`) VALUES
(10, 2, 2, '1000.00', '', 1, '200.00', '1200.00', '2021-10-01', '2022-11-01', 'manuella.santos', '2022-11-09 15:23:55'),
(11, 5, 2, '800.00', '', 1, '160.00', '960.00', '2022-11-09', '2022-12-09', 'manuella.santos', '2022-11-09 15:37:14'),
(12, 192, 2, '800.00', '', 1, '160.00', '960.00', '2022-11-09', '2022-12-09', 'manuella.santos', '2022-11-09 15:38:34'),
(13, 190, 3, '1000.00', '', 1, '200.00', '1200.00', '2022-11-09', '2022-12-09', 'manuella.santos', '2022-11-09 15:39:00'),
(14, 23, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-11-09', '2022-12-09', 'manuella.santos', '2022-11-09 15:39:19'),
(15, 348, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-11-09', '2022-11-09', 'manuella.santos', '2022-11-10 08:40:54'),
(16, 3, 2, '1000.00', '', 1, '200.00', '1200.00', '2021-09-01', '2021-10-01', 'manuella.santos', '2022-11-10 09:16:55'),
(17, 3, 2, '1000.00', '', 1, '200.00', '1200.00', '2021-09-01', '2021-10-01', 'manuella.santos', '2022-11-10 09:40:00'),
(18, 3, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-06-22', '2022-07-22', 'manuella.santos', '2022-11-10 09:44:08'),
(19, 8, 2, '712.00', '', 1, '142.40', '854.40', '2021-11-01', '2021-12-01', 'manuella.santos', '2022-11-10 09:58:07'),
(20, 9, 2, '500.00', '', 1, '100.00', '600.00', '2021-06-01', '2021-07-01', 'manuella.santos', '2022-11-10 11:00:27'),
(21, 10, 2, '700.00', '', 1, '140.00', '840.00', '2021-10-01', '2021-11-01', 'manuella.santos', '2022-11-10 11:02:06'),
(22, 11, 2, '1000.00', '', 1, '200.00', '1200.00', '2021-11-01', '2021-12-01', 'manuella.santos', '2022-11-10 11:05:45'),
(23, 12, 2, '1000.00', '', 1, '200.00', '1200.00', '2021-09-01', '2021-10-01', 'manuella.santos', '2022-11-10 11:07:47'),
(24, 14, 2, '2000.00', '', 1, '400.00', '2400.00', '2022-08-01', '2022-09-01', 'manuella.santos', '2022-11-10 11:09:06'),
(25, 17, 2, '500.00', '', 1, '100.00', '600.00', '2021-08-02', '2021-09-02', 'manuella.santos', '2022-11-10 11:12:03'),
(26, 18, 2, '2400.00', '', 1, '480.00', '2880.00', '2021-11-02', '2021-12-02', 'manuella.santos', '2022-11-10 11:15:54'),
(27, 19, 2, '700.00', '', 1, '140.00', '840.00', '2022-09-02', '2022-10-02', 'manuella.santos', '2022-11-10 11:19:29'),
(28, 20, 2, '137.00', '', 1, '27.40', '164.40', '2021-07-02', '2021-08-02', 'manuella.santos', '2022-11-10 11:20:39'),
(29, 21, 2, '2000.00', '', 1, '400.00', '2400.00', '2022-01-02', '2022-02-02', 'manuella.santos', '2022-11-10 11:42:38'),
(30, 5, 2, '1000.00', '', 1, '200.00', '1200.00', '2021-08-03', '2021-09-03', 'manuella.santos', '2022-11-10 11:46:15'),
(31, 22, 2, '500.00', '', 1, '100.00', '600.00', '2022-06-03', '2022-07-03', 'manuella.santos', '2022-11-10 11:47:18'),
(32, 24, 2, '1000.00', '', 1, '200.00', '1200.00', '2021-06-04', '2021-07-04', 'manuella.santos', '2022-11-10 11:53:11'),
(33, 25, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-02-04', '2022-03-04', 'manuella.santos', '2022-11-10 11:54:53'),
(34, 26, 2, '856.00', '', 1, '171.20', '1027.20', '2022-05-04', '2022-06-04', 'manuella.santos', '2022-11-10 11:56:49'),
(35, 27, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-05-04', '2022-06-04', 'manuella.santos', '2022-11-10 12:01:44'),
(36, 30, 2, '2000.00', '', 1, '400.00', '2400.00', '2022-03-05', '2022-04-05', 'manuella.santos', '2022-11-10 12:06:54'),
(37, 31, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-04-06', '2022-05-06', 'manuella.santos', '2022-11-10 12:08:21'),
(38, 33, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-04-06', '2022-11-06', 'manuella.santos', '2022-11-10 12:10:36'),
(39, 35, 2, '1010.00', '', 1, '202.00', '1212.00', '2021-08-06', '2021-09-06', 'manuella.santos', '2022-11-10 12:15:23'),
(40, 36, 2, '1500.00', '', 1, '300.00', '1800.00', '2022-09-06', '2022-10-06', 'manuella.santos', '2022-11-10 12:16:22'),
(41, 39, 2, '1000.00', '', 1, '200.00', '1200.00', '2021-12-07', '2022-01-07', 'manuella.santos', '2022-11-10 12:18:36'),
(42, 41, 2, '500.00', '', 1, '100.00', '600.00', '2021-12-07', '2022-01-07', 'manuella.santos', '2022-11-10 12:19:54'),
(43, 43, 2, '2360.00', '', 1, '472.00', '2832.00', '2022-06-07', '2022-07-07', 'manuella.santos', '2022-11-10 12:23:49'),
(44, 55, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-10-07', '2022-11-07', 'manuella.santos', '2022-11-10 12:24:23'),
(45, 89, 2, '500.00', '', 1, '100.00', '600.00', '2022-11-07', '2022-12-07', 'manuella.santos', '2022-11-10 12:25:00'),
(46, 56, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-10-07', '2022-11-07', 'manuella.santos', '2022-11-10 12:26:08'),
(47, 45, 2, '1500.00', '', 1, '300.00', '1800.00', '2022-05-07', '2022-06-07', 'manuella.santos', '2022-11-10 12:27:18'),
(48, 47, 2, '2000.00', '', 1, '400.00', '2400.00', '2022-01-08', '2022-02-08', 'manuella.santos', '2022-11-10 12:29:35'),
(49, 48, 2, '700.00', '', 1, '140.00', '840.00', '2022-09-08', '2022-10-08', 'manuella.santos', '2022-11-10 12:30:23'),
(50, 50, 2, '1500.00', '', 1, '300.00', '1800.00', '2021-06-08', '2021-07-08', 'manuella.santos', '2022-11-10 12:31:52'),
(51, 51, 2, '600.00', '', 1, '120.00', '720.00', '2021-11-08', '2021-12-08', 'manuella.santos', '2022-11-10 12:34:45'),
(52, 57, 2, '1204.00', '', 1, '240.80', '1444.80', '2022-08-09', '2022-09-09', 'manuella.santos', '2022-11-10 12:36:08'),
(53, 58, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-01-10', '2022-02-10', 'manuella.santos', '2022-11-10 12:37:19'),
(54, 60, 2, '1000.00', '', 1, '200.00', '1200.00', '2021-10-10', '2021-11-10', 'manuella.santos', '2022-11-10 12:39:23'),
(55, 61, 2, '2000.00', '', 1, '400.00', '2400.00', '2021-09-10', '2021-10-10', 'manuella.santos', '2022-11-10 12:41:16'),
(56, 93, 2, '1000.00', '', 1, '200.00', '1200.00', '2021-10-10', '2021-11-10', 'manuella.santos', '2022-11-10 14:26:02'),
(57, 63, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-04-10', '2022-05-10', 'manuella.santos', '2022-11-10 14:28:24'),
(58, 64, 2, '1500.00', '', 1, '300.00', '1800.00', '2022-02-10', '2022-03-10', 'manuella.santos', '2022-11-10 14:29:22'),
(59, 66, 2, '400.00', '', 1, '80.00', '480.00', '2022-07-10', '2022-08-10', 'manuella.santos', '2022-11-10 14:31:50'),
(60, 67, 2, '500.00', '', 1, '100.00', '600.00', '2022-01-11', '2022-02-11', 'manuella.santos', '2022-11-10 14:37:20'),
(61, 67, 2, '500.00', '', 1, '100.00', '600.00', '2022-09-16', '2022-10-16', 'manuella.santos', '2022-11-10 14:39:00'),
(62, 68, 2, '2300.00', '', 1, '460.00', '2760.00', '2021-08-11', '2021-09-11', 'manuella.santos', '2022-11-10 14:53:33'),
(63, 69, 2, '500.00', '', 1, '100.00', '600.00', '2022-08-11', '2022-09-11', 'manuella.santos', '2022-11-10 14:54:17'),
(64, 70, 2, '500.00', '', 1, '100.00', '600.00', '2022-08-11', '2022-09-11', 'manuella.santos', '2022-11-10 14:54:54'),
(65, 71, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-10-11', '2022-11-11', 'manuella.santos', '2022-11-10 14:55:22'),
(66, 72, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-10-11', '2022-11-11', 'manuella.santos', '2022-11-10 14:55:53'),
(67, 73, 2, '5000.00', '', 1, '1000.00', '6000.00', '2021-07-12', '2021-08-12', 'manuella.santos', '2022-11-10 14:57:52'),
(68, 74, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-07-13', '2022-08-13', 'manuella.santos', '2022-11-10 14:58:35'),
(69, 37, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-10-13', '2022-11-13', 'manuella.santos', '2022-11-10 15:00:02'),
(70, 75, 2, '1500.00', '', 1, '300.00', '1800.00', '2021-09-14', '2021-10-14', 'manuella.santos', '2022-11-10 15:02:35'),
(71, 76, 2, '2000.00', '', 1, '400.00', '2400.00', '2022-04-14', '2022-05-14', 'manuella.santos', '2022-11-10 15:03:16'),
(72, 77, 2, '1170.00', '', 1, '234.00', '1404.00', '2022-06-14', '2022-07-14', 'manuella.santos', '2022-11-10 15:04:11'),
(73, 78, 2, '1000.00', '', 1, '200.00', '1200.00', '2021-09-15', '2021-10-15', 'manuella.santos', '2022-11-10 15:05:41'),
(74, 24, 2, '1000.00', '', 1, '200.00', '1200.00', '2021-11-15', '2021-12-15', 'manuella.santos', '2022-11-10 15:08:19'),
(75, 79, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-06-15', '2022-07-15', 'manuella.santos', '2022-11-10 15:09:30'),
(76, 46, 2, '500.00', '', 1, '100.00', '600.00', '2021-08-15', '2021-09-15', 'manuella.santos', '2022-11-10 15:11:01'),
(77, 15, 2, '2050.00', '', 1, '410.00', '2460.00', '2022-08-15', '2022-09-15', 'manuella.santos', '2022-11-10 15:11:51'),
(78, 80, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-01-15', '2022-02-15', 'manuella.santos', '2022-11-10 15:12:14'),
(79, 81, 2, '500.00', '', 1, '100.00', '600.00', '2022-02-16', '2022-03-16', 'manuella.santos', '2022-11-10 15:13:03'),
(80, 82, 2, '490.00', '', 1, '98.00', '588.00', '2022-03-16', '2022-04-16', 'manuella.santos', '2022-11-10 15:13:33'),
(81, 83, 2, '1000.00', '', 1, '200.00', '1200.00', '2021-09-17', '2021-10-17', 'manuella.santos', '2022-11-10 15:14:26'),
(82, 84, 2, '1000.00', '', 1, '200.00', '1200.00', '2021-12-17', '2022-01-17', 'manuella.santos', '2022-11-10 15:16:08'),
(83, 85, 2, '1000.00', '', 1, '200.00', '1200.00', '2021-11-17', '2021-12-17', 'manuella.santos', '2022-11-10 15:17:02'),
(84, 86, 2, '390.00', '', 1, '78.00', '468.00', '2022-02-17', '2022-03-17', 'manuella.santos', '2022-11-10 15:17:32'),
(85, 87, 2, '400.00', '', 1, '80.00', '480.00', '2022-01-18', '2022-02-18', 'manuella.santos', '2022-11-10 15:18:54'),
(86, 88, 2, '1500.00', '', 1, '300.00', '1800.00', '2022-08-19', '2022-09-19', 'manuella.santos', '2022-11-10 15:19:40'),
(87, 3, 2, '1000.00', '', 1, '200.00', '1200.00', '2021-09-20', '2022-11-20', 'manuella.santos', '2022-11-10 15:22:32'),
(88, 90, 2, '500.00', '', 1, '100.00', '600.00', '2022-06-20', '2022-07-20', 'manuella.santos', '2022-11-10 15:24:23'),
(89, 91, 2, '500.00', '', 1, '100.00', '600.00', '2022-07-20', '2022-08-20', 'manuella.santos', '2022-11-10 15:24:43'),
(90, 13, 2, '500.00', '', 1, '100.00', '600.00', '2022-04-20', '2022-05-20', 'manuella.santos', '2022-11-10 15:25:27'),
(91, 94, 2, '1000.00', '', 1, '200.00', '1200.00', '2021-07-20', '2021-08-20', 'manuella.santos', '2022-11-10 15:27:29'),
(92, 95, 2, '1900.00', '', 1, '380.00', '2280.00', '2022-06-21', '2022-07-21', 'manuella.santos', '2022-11-10 15:27:51'),
(93, 82, 2, '2000.00', '', 1, '400.00', '2400.00', '2022-09-22', '2022-10-22', 'manuella.santos', '2022-11-10 15:28:26'),
(94, 52, 2, '3500.00', '', 1, '700.00', '4200.00', '2021-08-22', '2022-11-22', 'manuella.santos', '2022-11-10 15:30:45'),
(95, 96, 2, '2000.00', '', 1, '400.00', '2400.00', '2021-09-22', '2021-10-22', 'manuella.santos', '2022-11-10 15:32:08'),
(96, 97, 2, '1450.00', '', 1, '290.00', '1740.00', '2022-03-23', '2022-04-23', 'manuella.santos', '2022-11-10 15:32:58'),
(97, 98, 2, '500.00', '', 1, '100.00', '600.00', '2022-09-23', '2022-10-23', 'manuella.santos', '2022-11-10 15:33:39'),
(98, 99, 2, '690.00', '', 1, '138.00', '828.00', '2022-09-23', '2022-10-23', 'manuella.santos', '2022-11-10 15:34:39'),
(99, 100, 2, '350.00', '', 1, '70.00', '420.00', '2022-09-23', '2022-10-23', 'manuella.santos', '2022-11-10 15:35:27'),
(100, 101, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-09-23', '2022-10-23', 'manuella.santos', '2022-11-10 15:36:12'),
(101, 103, 2, '3000.00', '', 1, '600.00', '3600.00', '2021-09-23', '2021-10-23', 'manuella.santos', '2022-11-10 15:37:50'),
(102, 104, 2, '550.00', '', 1, '110.00', '660.00', '2022-03-24', '2022-04-24', 'manuella.santos', '2022-11-10 15:38:30'),
(103, 105, 2, '1000.00', '', 1, '200.00', '1200.00', '2021-09-24', '2021-10-24', 'manuella.santos', '2022-11-10 15:39:41'),
(104, 102, 2, '1500.00', '', 1, '300.00', '1800.00', '2022-08-24', '2022-09-24', 'manuella.santos', '2022-11-10 15:40:13'),
(105, 106, 2, '3298.00', '', 1, '659.60', '3957.60', '2022-03-24', '2022-04-24', 'manuella.santos', '2022-11-10 15:40:43'),
(106, 109, 2, '500.00', '', 1, '100.00', '600.00', '2022-09-25', '2022-10-25', 'manuella.santos', '2022-11-10 15:42:06'),
(107, 110, 2, '2000.00', '', 1, '400.00', '2400.00', '2021-09-25', '2021-10-25', 'manuella.santos', '2022-11-10 15:43:14'),
(108, 117, 2, '1000.00', '', 1, '60.00', '1060.00', '2021-09-25', '2021-10-25', 'manuella.santos', '2022-11-10 15:45:58'),
(109, 127, 2, '500.00', '', 1, '100.00', '600.00', '2021-07-26', '2021-08-26', 'manuella.santos', '2022-11-10 15:48:32'),
(110, 129, 2, '500.00', '', 1, '100.00', '600.00', '2021-08-26', '2021-09-26', 'manuella.santos', '2022-11-10 15:49:32'),
(111, 135, 2, '1950.00', '', 1, '390.00', '2340.00', '2022-01-27', '2022-02-27', 'manuella.santos', '2022-11-10 15:50:11'),
(112, 137, 2, '1000.00', '', 1, '200.00', '1200.00', '2021-09-27', '2021-10-27', 'manuella.santos', '2022-11-10 15:52:05'),
(113, 145, 2, '600.00', '', 1, '120.00', '720.00', '2021-11-27', '2021-12-27', 'manuella.santos', '2022-11-10 15:53:15'),
(114, 147, 2, '1000.00', '', 1, '200.00', '1200.00', '2021-06-28', '2021-07-28', 'manuella.santos', '2022-11-10 15:54:24'),
(115, 151, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-09-28', '2022-10-28', 'manuella.santos', '2022-11-10 15:55:09'),
(116, 154, 2, '1000.00', '', 1, '200.00', '1200.00', '2021-06-28', '2021-07-28', 'manuella.santos', '2022-11-10 15:55:45'),
(117, 157, 2, '500.00', '', 1, '100.00', '600.00', '2021-07-29', '2021-08-29', 'manuella.santos', '2022-11-10 15:56:24'),
(118, 160, 2, '500.00', '', 1, '100.00', '600.00', '2021-07-29', '2021-08-29', 'manuella.santos', '2022-11-10 15:57:10'),
(119, 164, 2, '1500.00', '', 1, '300.00', '1800.00', '2022-03-29', '2022-04-29', 'manuella.santos', '2022-11-10 15:57:46'),
(120, 171, 2, '2000.00', '', 1, '400.00', '2400.00', '2021-06-30', '2021-07-30', 'manuella.santos', '2022-11-10 15:59:59'),
(121, 54, 2, '10000.00', '', 1, '2000.00', '12000.00', '2021-06-30', '2021-07-30', 'manuella.santos', '2022-11-10 16:02:22'),
(122, 177, 2, '990.00', '', 1, '198.00', '1188.00', '2022-01-30', '2022-02-28', 'manuella.santos', '2022-11-10 16:03:28'),
(123, 178, 2, '1000.00', '', 1, '200.00', '1200.00', '2021-11-30', '2021-12-30', 'manuella.santos', '2022-11-10 16:04:42'),
(124, 180, 2, '1200.00', '', 1, '240.00', '1440.00', '2021-07-30', '2021-08-30', 'manuella.santos', '2022-11-10 16:06:21'),
(125, 360, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-10-31', '2022-11-30', 'fernanda.oliveira', '2022-11-10 16:06:40'),
(126, 206, 2, '500.00', '', 1, '100.00', '600.00', '2022-10-31', '2022-11-30', 'fernanda.oliveira', '2022-11-10 16:08:40'),
(127, 184, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-04-30', '2022-05-30', 'manuella.santos', '2022-11-10 16:09:25'),
(128, 185, 3, '500.00', '', 1, '100.00', '600.00', '2022-10-04', '2022-11-04', 'manuella.santos', '2022-11-10 16:12:46'),
(129, 188, 3, '400.00', '', 1, '80.00', '480.00', '2022-09-05', '2022-10-05', 'manuella.santos', '2022-11-10 16:13:24'),
(130, 322, 3, '500.00', '', 1, '100.00', '600.00', '2022-10-07', '2022-11-07', 'manuella.santos', '2022-11-10 16:14:05'),
(131, 189, 3, '500.00', '', 1, '100.00', '600.00', '2022-09-08', '2022-10-08', 'manuella.santos', '2022-11-10 16:14:45'),
(132, 323, 3, '500.00', '', 1, '100.00', '600.00', '2022-11-08', '2022-12-08', 'manuella.santos', '2022-11-10 16:15:14'),
(133, 191, 3, '300.00', '', 1, '60.00', '360.00', '2022-09-28', '2022-10-28', 'manuella.santos', '2022-11-10 16:16:00'),
(134, 190, 3, '1000.00', '', 1, '200.00', '1200.00', '2022-11-09', '2022-12-09', 'manuella.santos', '2022-11-10 16:19:42'),
(135, 361, 2, '2000.00', '', 1, '400.00', '2400.00', '2022-10-31', '2022-11-30', 'fernanda.oliveira', '2022-11-10 16:22:55'),
(136, 362, 2, '500.00', '', 1, '100.00', '600.00', '2022-11-01', '2022-12-01', 'fernanda.oliveira', '2022-11-10 16:27:24'),
(137, 363, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-11-08', '2022-12-08', 'fernanda.oliveira', '2022-11-10 16:28:02'),
(140, 364, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-11-08', '2022-12-08', 'fernanda.oliveira', '2022-11-10 16:28:34'),
(141, 365, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-11-10', '2022-12-10', 'fernanda.oliveira', '2022-11-10 16:28:57'),
(142, 366, 2, '500.00', '', 1, '100.00', '600.00', '2022-11-10', '2022-12-10', 'fernanda.oliveira', '2022-11-10 16:29:13'),
(143, 196, 2, '680.00', '', 1, '136.00', '816.00', '2022-02-02', '2022-03-02', 'andressa.fernanda', '2022-11-11 10:46:11'),
(144, 197, 2, '1150.00', '', 1, '230.00', '1380.00', '2022-06-03', '2022-07-03', 'andressa.fernanda', '2022-11-11 10:46:45'),
(145, 199, 2, '1350.00', '', 1, '270.00', '1620.00', '2022-05-04', '2022-06-04', 'andressa.fernanda', '2022-11-11 10:49:00'),
(146, 202, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-10-05', '2022-11-05', 'andressa.fernanda', '2022-11-11 10:50:18'),
(147, 205, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-10-05', '2022-11-05', 'andressa.fernanda', '2022-11-11 10:51:03'),
(148, 214, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-04-07', '2022-05-07', 'andressa.fernanda', '2022-11-11 10:51:38'),
(149, 217, 2, '1950.00', '', 1, '390.00', '2340.00', '2022-02-07', '2022-03-07', 'andressa.fernanda', '2022-11-11 10:52:04'),
(150, 201, 2, '1500.00', '', 1, '300.00', '1800.00', '2022-11-07', '2022-12-07', 'andressa.fernanda', '2022-11-11 10:53:04'),
(151, 367, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-11-07', '2022-12-07', 'andressa.fernanda', '2022-11-16 11:31:31'),
(152, 222, 2, '2000.00', '', 1, '400.00', '2400.00', '2022-06-08', '2022-07-08', 'andressa.fernanda', '2022-11-16 11:32:26'),
(153, 223, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-09-09', '2022-10-09', 'andressa.fernanda', '2022-11-16 11:32:56'),
(154, 231, 2, '300.00', '', 1, '60.00', '360.00', '2022-06-10', '2022-07-10', 'andressa.fernanda', '2022-11-16 11:34:10'),
(155, 229, 2, '1300.00', '', 1, '260.00', '1560.00', '2022-06-10', '2022-07-10', 'andressa.fernanda', '2022-11-16 11:34:43'),
(156, 233, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-04-11', '2022-05-11', 'andressa.fernanda', '2022-11-16 11:35:13'),
(157, 235, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-04-11', '2022-05-11', 'andressa.fernanda', '2022-11-16 11:35:38'),
(158, 236, 2, '250.00', '', 1, '50.00', '300.00', '2022-08-11', '2022-09-11', 'andressa.fernanda', '2022-11-16 11:36:10'),
(159, 237, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-04-12', '2022-05-12', 'andressa.fernanda', '2022-11-16 11:36:52'),
(160, 238, 2, '500.00', '', 1, '100.00', '600.00', '2022-06-13', '2022-07-13', 'andressa.fernanda', '2022-11-16 11:37:27'),
(161, 239, 2, '400.00', '', 1, '80.00', '480.00', '2022-06-13', '2022-07-13', 'andressa.fernanda', '2022-11-16 11:37:59'),
(162, 208, 2, '1200.00', '', 1, '240.00', '1440.00', '2022-10-13', '2022-11-13', 'andressa.fernanda', '2022-11-16 11:38:43'),
(163, 246, 2, '500.00', '', 1, '100.00', '600.00', '2022-10-13', '2022-11-13', 'andressa.fernanda', '2022-11-16 11:39:16'),
(164, 250, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-03-15', '2022-04-15', 'andressa.fernanda', '2022-11-16 11:40:57'),
(165, 251, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-07-15', '2022-08-15', 'andressa.fernanda', '2022-11-16 11:46:26'),
(166, 258, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-02-16', '2022-03-16', 'andressa.fernanda', '2022-11-16 11:46:55'),
(167, 259, 2, '3000.00', '', 1, '600.00', '3600.00', '2022-02-16', '2022-03-16', 'andressa.fernanda', '2022-11-16 11:47:26'),
(168, 260, 2, '500.00', '', 1, '100.00', '600.00', '2022-05-16', '2022-06-16', 'andressa.fernanda', '2022-11-16 11:48:08'),
(169, 269, 2, '400.00', '', 1, '80.00', '480.00', '2022-02-17', '2022-03-17', 'andressa.fernanda', '2022-11-16 11:48:51'),
(170, 271, 2, '650.00', '', 1, '130.00', '780.00', '2022-02-18', '2022-03-18', 'andressa.fernanda', '2022-11-16 11:50:03'),
(171, 256, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-10-18', '2022-11-18', 'andressa.fernanda', '2022-11-16 11:50:42'),
(172, 273, 2, '1500.00', '', 1, '300.00', '1800.00', '2022-10-18', '2022-11-18', 'andressa.fernanda', '2022-11-16 11:51:08'),
(173, 328, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-10-18', '2022-11-18', 'andressa.fernanda', '2022-11-16 11:52:09'),
(174, 274, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-05-19', '2022-06-19', 'andressa.fernanda', '2022-11-16 11:52:34'),
(175, 275, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-02-20', '2022-03-20', 'andressa.fernanda', '2022-11-16 11:53:04'),
(176, 279, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-07-21', '2022-08-21', 'andressa.fernanda', '2022-11-16 11:56:00'),
(177, 211, 2, '500.00', '', 1, '100.00', '600.00', '2022-10-21', '2022-11-21', 'andressa.fernanda', '2022-11-16 11:56:33'),
(178, 280, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-10-21', '2022-11-21', 'andressa.fernanda', '2022-11-16 11:57:10'),
(179, 282, 2, '500.00', '', 1, '100.00', '600.00', '2022-10-21', '2022-11-21', 'andressa.fernanda', '2022-11-16 11:57:37'),
(180, 278, 2, '1500.00', '', 1, '300.00', '1800.00', '2022-07-22', '2022-08-22', 'andressa.fernanda', '2022-11-16 11:58:29'),
(181, 289, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-07-22', '2022-08-22', 'andressa.fernanda', '2022-11-16 11:58:55'),
(182, 368, 2, '1500.00', '', 1, '300.00', '1800.00', '2022-04-20', '2022-05-20', 'andressa.fernanda', '2022-11-16 12:23:16'),
(183, 291, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-01-24', '2022-02-24', 'andressa.fernanda', '2022-11-16 12:24:43'),
(184, 292, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-01-24', '2022-02-24', 'andressa.fernanda', '2022-11-16 12:25:24'),
(185, 293, 2, '2000.00', '', 1, '400.00', '2400.00', '2022-05-24', '2022-06-24', 'andressa.fernanda', '2022-11-16 12:25:57'),
(186, 290, 2, '1100.00', '', 1, '220.00', '1320.00', '2022-08-24', '2022-09-24', 'andressa.fernanda', '2022-11-16 12:26:26'),
(187, 295, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-10-24', '2022-11-24', 'andressa.fernanda', '2022-11-16 12:26:59'),
(188, 297, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-01-25', '2022-02-25', 'andressa.fernanda', '2022-11-16 12:30:07'),
(189, 298, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-01-25', '2022-02-25', 'andressa.fernanda', '2022-11-16 12:30:47'),
(190, 299, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-05-25', '2022-06-25', 'andressa.fernanda', '2022-11-16 12:31:15'),
(191, 300, 2, '500.00', '', 1, '100.00', '600.00', '2022-10-25', '2022-11-25', 'andressa.fernanda', '2022-11-16 12:31:37'),
(192, 252, 2, '600.00', '', 1, '120.00', '720.00', '2022-10-25', '2022-11-25', 'andressa.fernanda', '2022-11-16 12:32:03'),
(193, 307, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-07-26', '2022-08-26', 'andressa.fernanda', '2022-11-16 12:32:22'),
(194, 310, 2, '2000.00', '', 1, '400.00', '2400.00', '2022-10-27', '2022-11-27', 'andressa.fernanda', '2022-11-16 12:32:44'),
(195, 312, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-10-27', '2022-11-27', 'andressa.fernanda', '2022-11-16 12:33:52'),
(196, 318, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-10-27', '2022-11-27', 'andressa.fernanda', '2022-11-16 12:34:24'),
(197, 317, 2, '1150.00', '', 1, '230.00', '1380.00', '2022-03-30', '2022-04-30', 'andressa.fernanda', '2022-11-16 12:34:50'),
(198, 324, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-03-30', '2022-04-30', 'andressa.fernanda', '2022-11-16 12:35:09'),
(199, 219, 2, '2000.00', '', 1, '400.00', '2400.00', '2022-08-30', '2022-09-30', 'andressa.fernanda', '2022-11-16 12:35:33'),
(200, 234, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-11-09', '2022-12-09', 'andressa.fernanda', '2022-11-18 11:50:47'),
(201, 301, 2, '1000.00', '', 1, '200.00', '1200.00', '2022-04-26', '2022-05-26', 'andressa.fernanda', '2022-11-18 12:12:08'),
(968, 28, 2, '10000.00', '', 1, '1000.00', '11000.00', '2022-06-05', '2022-07-05', 'manuella.santos', '2022-11-29 12:03:43'),
(969, 32, 2, '10000.00', '', 1, '60.00', '1060.00', '2022-09-06', '2022-10-06', 'manuella.santos', '2022-11-29 14:26:27'),
(970, 341, 0, '1000.00', '', 1, '', '', '2023-01-20', '2023-02-20', 'fernanda.ribeiro', '2023-01-24 16:00:13');

-- --------------------------------------------------------

--
-- Estrutura para tabela `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `descricao` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `class` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `status`
--

INSERT INTO `status` (`id`, `descricao`, `class`, `status`) VALUES
(1, 'Em Andamento', 'badge badge-info', 1),
(2, 'Atrasado', 'badge badge-danger', 1),
(3, 'Parcelado', 'badge badge-warning', 1),
(4, 'Quitado', 'badge badge-success', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbchat`
--

CREATE TABLE `tbchat` (
  `id` int(11) NOT NULL,
  `left_user` int(11) NOT NULL,
  `right_user` int(11) NOT NULL,
  `nome` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `mensagem` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `data_hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `usuario` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `senha` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status_login` int(11) NOT NULL DEFAULT 0,
  `session` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `user`
--

INSERT INTO `user` (`id`, `unique_id`, `usuario`, `senha`, `status`, `status_login`, `session`) VALUES
(1, 197592445, 'phelipe', '3804a9d7d718887fd9422cdc320a3b76', 'Ativo agora', 1, 'a9d857cf2bfcb82f516fc094309420b5'),
(2, 166334762, 'andressa.fernanda', '5a5eac109bb05b53093bf9d1b94566d6', 'Off-line agora', 1, ''),
(3, 1297954132, 'nubia.santana', 'df38f32ef6f0ef2103b397ffd4ea1475', 'Ativo agora', 1, ''),
(4, 1393388798, 'dani.ribeiro', '5a5eac109bb05b53093bf9d1b94566d6', 'Ativo agora', 1, ''),
(5, 350179140, 'tn.oliveira', '5a5eac109bb05b53093bf9d1b94566d6', 'Ativo agora', 1, ''),
(6, 1496624921, 'manuella.santos', '5a5eac109bb05b53093bf9d1b94566d6', 'Ativo agora', 1, '9aba388ceac9aca7f5cd1c217b5bcf15'),
(7, 428541195, 'thais.franco', '5a5eac109bb05b53093bf9d1b94566d6', 'Off-line agora', 0, ''),
(10, 885267123, 'fernanda.ribeiro', '5a5eac109bb05b53093bf9d1b94566d6', 'Ativo agora', 1, '7ad9e2292204d84299fdb0ff79ef650d'),
(11, 521370049, 'fernanda.oliveira', '5a5eac109bb05b53093bf9d1b94566d6', 'Ativo agora', 0, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `user_accesses`
--

CREATE TABLE `user_accesses` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `menu_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `menu_folder` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `menu` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `user_accesses`
--

INSERT INTO `user_accesses` (`id`, `id_usuario`, `id_menu`, `menu_name`, `menu_folder`, `menu`, `status`) VALUES
(15, 1, 15, 'Menu VS', 'salvar_detalhes', 'Salvar Detalhes', 0),
(16, 1, 16, 'Menu VS', 'profile', 'Ver Detalhes Cliente', 0),
(33, 1, 18, 'Menu Chat', 'chat', 'Chat', 1),
(49, 2, 15, 'Menu Login', 'salvar_detalhes', 'Salvar Detalhes', 0),
(50, 2, 16, 'Menu Login', 'profile', 'Ver Detalhes Cliente', 0),
(51, 2, 18, 'Menu Chat', 'chat', 'Chat', 1),
(52, 2, 3, 'Menu Guerra', 'mes', 'Mês', 1),
(53, 2, 17, 'Menu Guerra', 'detalhes_guerra', 'Ver Detalhes Cliente Guerra', 0),
(54, 2, 12, 'Menu Login', 'salvar_acesso', 'Salvar Acesso', 0),
(55, 2, 10, 'Menu Login', 'salvar_login', 'Salvar Login', 0),
(56, 2, 7, 'Menu Login', 'acessos', 'Acessos', 1),
(57, 2, 6, 'Menu Login', 'criar_login', 'Criar Login', 1),
(58, 2, 9, 'Menu VS', 'ver_comprovante', 'Ver comprovante', 0),
(59, 2, 8, 'Menu VS', 'detalhes', 'Detalhes', 0),
(62, 2, 13, 'Menu', 'salvar_cliente', 'Salvar Cliente', 0),
(63, 2, 5, 'Menu', 'clientes', 'Ver Cliente', 1),
(64, 2, 4, 'Menu', 'cdclientes', 'Cadastrar Cliente', 1),
(65, 1, 4, 'Menu', 'cdclientes', 'Cadastrar Cliente', 1),
(66, 1, 5, 'Menu', 'clientes', 'Ver Cliente', 1),
(67, 1, 13, 'Menu', 'salvar_cliente', 'Salvar Cliente', 0),
(70, 1, 8, 'Menu VS', 'detalhes', 'Detalhes', 0),
(71, 1, 9, 'Menu VS', 'ver_comprovante', 'Ver comprovante', 0),
(72, 1, 3, 'Menu Guerra', 'mes', 'Mês', 1),
(73, 1, 17, 'Menu Guerra', 'detalhes_guerra', 'Ver Detalhes Cliente Guerra', 0),
(74, 1, 6, 'Menu Login', 'criar_login', 'Criar Login', 1),
(75, 1, 7, 'Menu Login', 'acessos', 'Acessos', 1),
(76, 1, 10, 'Menu Login', 'salvar_login', 'Salvar Login', 0),
(77, 1, 12, 'Menu Login', 'salvar_acesso', 'Salvar Acesso', 0),
(80, 3, 4, 'Menu', 'cdclientes', 'Cadastrar Cliente', 1),
(81, 3, 5, 'Menu', 'clientes', 'Ver Cliente', 1),
(82, 3, 13, 'Menu', 'salvar_cliente', 'Salvar Cliente', 0),
(84, 3, 18, 'Menu Chat', 'chat', 'Chat', 1),
(85, 3, 3, 'Menu Guerra', 'mes', 'Mês', 1),
(86, 1, 11, 'Inicio', 'starter', 'Inicio', 0),
(87, 1, 20, 'Menu', 'cdclienteeditar', 'Editar Clientes', 0),
(88, 1, 19, 'Menu', 'salvar_edicao', 'Salvar Edição', 0),
(89, 1, 22, 'Menu Login', 'liberar_login', 'Liberar login ao sistema', 1),
(90, 2, 22, 'Menu Login', 'liberar_login', 'Liberar login ao sistema', 1),
(91, 4, 11, 'Inicio', 'starter', 'Inicio', 0),
(92, 5, 11, 'Inicio', 'starter', 'Inicio', 0),
(93, 6, 11, 'Inicio', 'starter', 'Inicio', 0),
(94, 7, 11, 'Inicio', 'starter', 'Inicio', 0),
(95, 3, 11, 'Inicio', 'starter', 'Inicio', 0),
(96, 3, 19, 'Menu', 'salvar_edicao', 'Salvar Edição', 0),
(97, 3, 20, 'Menu', 'cdclienteeditar', 'Editar Clientes', 0),
(99, 3, 8, 'Menu VS', 'detalhes', 'Detalhes', 0),
(100, 3, 9, 'Menu VS', 'ver_comprovante', 'Ver comprovante', 0),
(101, 3, 17, 'Menu Guerra', 'detalhes_guerra', 'Ver Detalhes Cliente Guerra', 0),
(102, 3, 6, 'Menu Login', 'criar_login', 'Criar Login', 1),
(103, 3, 7, 'Menu Login', 'acessos', 'Acessos', 1),
(104, 3, 10, 'Menu Login', 'salvar_login', 'Salvar Login', 0),
(105, 3, 12, 'Menu Login', 'salvar_acesso', 'Salvar Acesso', 0),
(106, 3, 15, 'Menu Login', 'salvar_detalhes', 'Salvar Detalhes', 0),
(107, 3, 16, 'Menu Login', 'profile', 'Ver Detalhes Cliente', 0),
(108, 3, 22, 'Menu Login', 'liberar_login', 'Liberar login ao sistema', 1),
(109, 1, 24, 'Menu Login', 'alterar_senha', 'Alterar Senha', 0),
(111, 2, 11, 'Inicio', 'starter', 'Inicio', 0),
(112, 1, 25, 'Menu Adm', 'clientes_adm', 'Clientes VS | Guerra', 1),
(113, 1, 26, 'Menu Adm', 'profile_adm', 'Ver Clientes VS | Guerra', 0),
(114, 1, 27, 'Menu Adm', 'cdclienteeditar_adm', 'Editar Clientes VS | Guerra', 0),
(115, 2, 19, 'Menu', 'salvar_edicao', 'Salvar Edição', 0),
(116, 2, 20, 'Menu', 'cdclienteeditar', 'Editar Clientes', 0),
(117, 2, 25, 'Menu Adm', 'clientes_adm', 'Clientes VS | Guerra', 1),
(118, 2, 26, 'Menu Adm', 'profile_adm', 'Ver Clientes VS | Guerra', 0),
(119, 2, 27, 'Menu Adm', 'cdclienteeditar_adm', 'Editar Clientes VS | Guerra', 0),
(121, 2, 24, 'Menu Login', 'alterar_senha', 'Alterar Senha', 0),
(122, 3, 25, 'Menu Adm', 'clientes_adm', 'Clientes VS | Guerra', 1),
(123, 3, 26, 'Menu Adm', 'profile_adm', 'Ver Clientes VS | Guerra', 0),
(124, 3, 27, 'Menu Adm', 'cdclienteeditar_adm', 'Editar Clientes VS | Guerra', 0),
(126, 3, 24, 'Menu Login', 'alterar_senha', 'Alterar Senha', 0),
(127, 6, 4, 'Menu', 'cdclientes', 'Cadastrar Cliente', 1),
(128, 6, 13, 'Menu', 'salvar_cliente', 'Salvar Cliente', 0),
(130, 6, 19, 'Menu', 'salvar_edicao', 'Salvar Edição', 0),
(131, 6, 5, 'Menu', 'clientes', 'Ver Cliente', 1),
(132, 6, 20, 'Menu', 'cdclienteeditar', 'Editar Clientes', 0),
(133, 6, 3, 'Menu Guerra', 'mes', 'Mês', 1),
(134, 6, 17, 'Menu Guerra', 'detalhes_guerra', 'Ver Detalhes Cliente Guerra', 0),
(135, 6, 18, 'Menu Chat', 'chat', 'Chat', 1),
(136, 7, 18, 'Menu Chat', 'chat', 'Chat', 1),
(137, 7, 4, 'Menu', 'cdclientes', 'Cadastrar Cliente', 1),
(138, 7, 5, 'Menu', 'clientes', 'Ver Cliente', 1),
(139, 7, 13, 'Menu', 'salvar_cliente', 'Salvar Cliente', 0),
(141, 7, 19, 'Menu', 'salvar_edicao', 'Salvar Edição', 0),
(142, 7, 20, 'Menu', 'cdclienteeditar', 'Editar Clientes', 0),
(144, 7, 8, 'Menu VS', 'detalhes', 'Detalhes', 0),
(145, 7, 9, 'Menu VS', 'ver_comprovante', 'Ver comprovante', 0),
(146, 4, 18, 'Menu Chat', 'chat', 'Chat', 1),
(148, 4, 4, 'Menu', 'cdclientes', 'Cadastrar Cliente', 1),
(149, 4, 5, 'Menu', 'clientes', 'Ver Cliente', 1),
(150, 4, 13, 'Menu', 'salvar_cliente', 'Salvar Cliente', 0),
(151, 4, 19, 'Menu', 'salvar_edicao', 'Salvar Edição', 0),
(152, 4, 20, 'Menu', 'cdclienteeditar', 'Editar Clientes', 0),
(153, 4, 3, 'Menu Guerra', 'mes', 'Mês', 1),
(154, 4, 17, 'Menu Guerra', 'detalhes_guerra', 'Ver Detalhes Cliente Guerra', 0),
(155, 4, 24, 'Menu Login', 'alterar_senha', 'Alterar Senha', 0),
(156, 7, 24, 'Menu Login', 'alterar_senha', 'Alterar Senha', 0),
(157, 6, 24, 'Menu Login', 'alterar_senha', 'Alterar Senha', 0),
(158, 5, 18, 'Menu Chat', 'chat', 'Chat', 1),
(159, 5, 4, 'Menu', 'cdclientes', 'Cadastrar Cliente', 1),
(160, 5, 5, 'Menu', 'clientes', 'Ver Cliente', 1),
(161, 5, 13, 'Menu', 'salvar_cliente', 'Salvar Cliente', 0),
(162, 5, 19, 'Menu', 'salvar_edicao', 'Salvar Edição', 0),
(163, 5, 20, 'Menu', 'cdclienteeditar', 'Editar Clientes', 0),
(164, 5, 3, 'Menu Guerra', 'mes', 'Mês', 1),
(165, 5, 17, 'Menu Guerra', 'detalhes_guerra', 'Ver Detalhes Cliente Guerra', 0),
(166, 5, 24, 'Menu Login', 'alterar_senha', 'Alterar Senha', 0),
(171, 1, 1, 'Menu', 'solicitacao', 'Solicitação', 1),
(172, 1, 14, 'Menu', 'salvar_solicitacao', 'Salvar SolicitaÇão', 0),
(174, 2, 1, 'Menu', 'solicitacao', 'Solicitação', 1),
(175, 2, 14, 'Menu', 'salvar_solicitacao', 'Salvar SolicitaÇão', 0),
(177, 3, 1, 'Menu', 'solicitacao', 'Solicitação', 1),
(178, 3, 14, 'Menu', 'salvar_solicitacao', 'Salvar SolicitaÇão', 0),
(180, 1, 28, 'Menu Adm', 'solicitacoes', 'Solicitações Geral', 1),
(181, 2, 28, 'Menu Adm', 'solicitacoes', 'Solicitações Geral', 1),
(182, 3, 28, 'Menu Adm', 'solicitacoes', 'Solicitações Geral', 1),
(183, 8, 11, 'Inicio', 'starter', 'Inicio', 0),
(184, 9, 11, 'Inicio', 'starter', 'Inicio', 0),
(186, 1, 30, 'Menu', 'parcelar', 'Parcelamento', 0),
(189, 4, 1, 'Menu', 'solicitacao', 'Solicitação', 1),
(190, 5, 1, 'Menu', 'solicitacao', 'Solicitação', 1),
(191, 6, 1, 'Menu', 'solicitacao', 'Solicitação', 1),
(192, 7, 1, 'Menu', 'solicitacao', 'Solicitação', 1),
(193, 7, 14, 'Menu', 'salvar_solicitacao', 'Salvar SolicitaÇão', 0),
(194, 6, 14, 'Menu', 'salvar_solicitacao', 'Salvar SolicitaÇão', 0),
(195, 4, 14, 'Menu', 'salvar_solicitacao', 'Salvar SolicitaÇão', 0),
(196, 5, 14, 'Menu', 'salvar_solicitacao', 'Salvar SolicitaÇão', 0),
(197, 6, 30, 'Menu', 'parcelar', 'Parcelamento', 0),
(201, 3, 30, 'Menu', 'parcelar', 'Parcelamento', 0),
(202, 3, 31, 'Menu', 'finalizar_cliente', 'Finalizar Cliente', 0),
(204, 10, 11, 'Inicio', 'starter', 'Inicio', 0),
(205, 10, 4, 'Menu', 'cdclientes', 'Cadastrar Cliente', 1),
(206, 10, 5, 'Menu', 'clientes', 'Ver Cliente', 1),
(207, 10, 1, 'Menu', 'solicitacao', 'Solicitação', 1),
(208, 10, 13, 'Menu', 'salvar_cliente', 'Salvar Cliente', 0),
(209, 10, 14, 'Menu', 'salvar_solicitacao', 'Salvar SolicitaÇão', 0),
(210, 10, 20, 'Menu', 'cdclienteeditar', 'Editar Clientes', 0),
(211, 10, 21, 'Menu', 'salvar_edicao', 'Salvar Edição', 0),
(212, 10, 31, 'Menu', 'finalizar_cliente', 'Finalizar Cliente', 0),
(213, 10, 29, 'Menu', 'tipo_cliente', 'Cadastrar Tipos de Clientes', 1),
(216, 10, 9, 'Menu VS', 'ver_comprovante', 'Ver comprovante', 0),
(217, 10, 8, 'Menu VS', 'detalhes', 'Detalhes', 0),
(218, 10, 18, 'Menu Chat', 'chat', 'Chat', 1),
(219, 11, 11, 'Inicio', 'starter', 'Inicio', 0),
(220, 11, 4, 'Menu', 'cdclientes', 'Cadastrar Cliente', 1),
(221, 11, 1, 'Menu', 'solicitacao', 'Solicitação', 1),
(222, 11, 5, 'Menu', 'clientes', 'Ver Cliente', 1),
(223, 11, 13, 'Menu', 'salvar_cliente', 'Salvar Cliente', 0),
(224, 11, 14, 'Menu', 'salvar_solicitacao', 'Salvar SolicitaÇão', 0),
(225, 11, 20, 'Menu', 'cdclienteeditar', 'Editar Clientes', 0),
(226, 11, 21, 'Menu', 'salvar_edicao', 'Salvar Edição', 0),
(227, 11, 30, 'Menu', 'parcelar', 'Parcelamento', 0),
(228, 11, 29, 'Menu', 'tipo_cliente', 'Cadastrar Tipos de Clientes', 1),
(229, 11, 32, 'Menu', 'salvar_parcelamento', 'Salvar Parcelamento', 0),
(230, 11, 31, 'Menu', 'finalizar_cliente', 'Finalizar Cliente', 0),
(232, 11, 3, 'Menu Guerra', 'mes', 'Mês', 1),
(233, 11, 17, 'Menu Guerra', 'detalhes_guerra', 'Ver Detalhes Cliente Guerra', 0),
(234, 11, 9, 'Menu VS', 'ver_comprovante', 'Ver comprovante', 0),
(235, 11, 2, 'Menu VS', 'diaria', 'Diária', 1),
(236, 11, 8, 'Menu VS', 'detalhes', 'Detalhes', 0),
(238, 11, 18, 'Menu Chat', 'chat', 'Chat', 1),
(239, 6, 32, 'Menu', 'salvar_parcelamento', 'Salvar Parcelamento', 0),
(240, 1, 29, 'Menu', 'tipo_cliente', 'Cadastrar Tipos de Clientes', 1),
(241, 1, 31, 'Menu', 'finalizar_cliente', 'Finalizar Cliente', 0),
(242, 1, 32, 'Menu', 'salvar_parcelamento', 'Salvar Parcelamento', 0),
(243, 1, 2, 'Menu VS', 'diaria', 'Diária', 1),
(244, 1, 23, 'Menu Login', 'mudar_senha', 'Mudar Senha', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `valor_pago`
--

CREATE TABLE `valor_pago` (
  `id` int(11) NOT NULL,
  `id_solicitacao` int(11) NOT NULL,
  `valor_pago` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `atraso_diaria` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `atraso_parcela` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `total_atraso` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `em_aberto` varchar(15) NOT NULL,
  `usuario` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `data_valor_pago` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `valor_pago`
--

INSERT INTO `valor_pago` (`id`, `id_solicitacao`, `valor_pago`, `atraso_diaria`, `atraso_parcela`, `total_atraso`, `em_aberto`, `usuario`, `data_valor_pago`) VALUES
(1, 10, '2600.00', '', '', '', '', 'manuella.santos', '2022-11-01 15:31:23');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `comprovantes`
--
ALTER TABLE `comprovantes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `fotos_clientes`
--
ALTER TABLE `fotos_clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Índices de tabela `nome_cliente`
--
ALTER TABLE `nome_cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `solicitacao`
--
ALTER TABLE `solicitacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tbchat`
--
ALTER TABLE `tbchat`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `user_accesses`
--
ALTER TABLE `user_accesses`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `valor_pago`
--
ALTER TABLE `valor_pago`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

--
-- AUTO_INCREMENT de tabela `comprovantes`
--
ALTER TABLE `comprovantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `fotos_clientes`
--
ALTER TABLE `fotos_clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

--
-- AUTO_INCREMENT de tabela `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `nome_cliente`
--
ALTER TABLE `nome_cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `solicitacao`
--
ALTER TABLE `solicitacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=971;

--
-- AUTO_INCREMENT de tabela `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tbchat`
--
ALTER TABLE `tbchat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `user_accesses`
--
ALTER TABLE `user_accesses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT de tabela `valor_pago`
--
ALTER TABLE `valor_pago`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
