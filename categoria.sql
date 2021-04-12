-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 12/04/2021 às 04:43
-- Versão do servidor: 10.4.18-MariaDB
-- Versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `inpi`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `codigo` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`id`, `categoria`, `codigo`, `titulo`, `descricao`) VALUES
(1, 'Categoria', 'Código', 'Titulo', 'Descrição'),
(2, 'Administração', 'AD01', 'Administr', 'desenvolv.organizacional, desburocratização'),
(3, 'Administração', 'AD02', 'Função Adm', 'Planejamento governamental: estratégico, operacional, técnica de planej.,\norganização administr., organização funcional, organograma, estrutura\norganizacional, controle administr. - análise de desempenho, avaliação de\ndesempenho'),
(4, 'Administração', 'AD03', 'Modern Adm ', 'análise organizacional, O&M'),
(5, 'Administração', 'AD04', 'Adm Publ', '(Administr. Federal, Estadual, Municipal, direito administr., reforma\nadministr., intervenção do Estado na economia, controle da administr.\npública'),
(6, 'Administração', 'AD05', 'Adm Empres', 'administr., de negócios, privada, organização de empresas'),
(7, 'Administração', 'AD06', 'Adm Prod', 'planejamento da fábrica, engenharia do produto, prot ótipo, planejamento\nda produção, controle de qualidade'),
(8, 'Administração', 'AD07', 'Adm Pes', 'planejamento de pessoal - recrutamento, seleção, admissão, avaliação, promoção, etc'),
(9, 'Administração', 'AD08', 'Adm Materl ', 'planejamento de material, aquisição, armazenamento, almoxarifado,\nalienação, controle de material, de estoque, inventário, requisi ção de\nmaterial'),
(10, 'Administração', 'AD09', 'Adm Patrim', '(inventário patrimonial, fiscalização, conservação, manutenção do\npatrimônio'),
(11, 'Administração', 'AD10', 'Marketing', '(mercadologia, administr. de marketing ou mercadológica, análise, e\npesquisa de mercado, estratégia de marketing, composto do produtomarca-embalagem, administr. de vendas - planejamento de vendas -\ncontrole de vendas)'),
(12, 'Administração', 'AD11', 'Adm Escrit ', '(serviços de escritório - comunicação administr., arquivo de escritório, etc'),
(13, 'Agricultura', 'AG01', 'Agricultur', 'agropecuária, desenvolvimento rural, extensão rural, planejamento e\npolítica agrícola, zoneamento agrícola'),
(14, 'Agricultura', 'AG02', 'Ciênc Agrl', 'agrologia, agronomia, agrostologia, edafologia, pomologia'),
(15, 'Agricultura', 'AG03', 'Adm Agricl', 'imóvel rural: fazenda - granja empresa rural'),
(16, 'Agricultura', 'AG04', 'Econom Agríc', 'economia agrícola'),
(17, 'Agricultura', 'AG05', 'Sist agríc', 'agricultura extensiva, intensiva, itinerante, monocultura, policultura'),
(18, 'Agricultura', 'AG06', 'Eng agríc', 'construção rural: açude - barragem, estufa, habitação rural, drenagem\nirrigação'),
(19, 'Agricultura', 'AG07', 'Edafologia', 'conservação de solo, controle da eros ão, melhoramento, recuperação,\ntratamento, manejo do solo: adubação, fertilização'),
(20, 'Agricultura', 'AG08', 'Fitopatol ', 'doenças e pragas vegetais, defensivo agrícola'),
(21, 'Agricultura', 'AG09', 'Prod Veget', 'produção agrícola, fitotecnia: cultura agrícola, lavoura, cultivo - técnica\nagrícola'),
(22, 'Agricultura', 'AG10', 'Prod Animl ', 'produto animal, zootecnia: tipos de criação, veterinária ou medicina\nveterinária, zoopatologia, produto veterinário; veterinária preventiva'),
(23, 'Agricultura', 'AG11', 'Ciênc Flor ', 'Ciências Florestais (dasonomia, economia florestal, política florestal, produção vegetal, silvicultura; arboricultura-florestamento, reflorestamento, terra marginal)'),
(24, 'Agricultura', 'AG12', 'Aquacultur', 'aquacultura ou aquicultura animal, vegetal'),
(25, 'Agricultura', 'AG13', 'Extr Veget', 'Extrativismo vegetal (produto extrativo vegetal: celulose, cera, fibra, goma natural, madeira, l átex)'),
(26, 'Agricultura', 'AG14', 'Extr Animl', 'Extrativismo Animal (caça, pesca, prospecção produto extrativo animal: couro-pele-pescado)'),
(27, 'Antropologia e Sociologia', 'AN01', 'Sociedade ', 'sistema social, estrutura, situação, mobilização, controle, mudança e\nreforma social'),
(28, 'Antropologia e Sociologia', 'AN02', 'Desenv soc ', '(planejamento social, política social, ação social, bem-estar social, nível ou\npadrão de vida'),
(29, 'Antropologia e Sociologia', 'AN03', 'Grupos soc', 'tribo, bando, etnia, grupo local, desenvolvimento comunitário, nação, indivíduo'),
(30, 'Antropologia e Sociologia', 'AN04', 'Cultura', 'civilização, cultura popular: folclore uso e costumes'),
(31, 'Antropologia e Sociologia', 'AN05', 'Religião', 'doutrina, teologia, prática religiosa, etc.'),
(32, 'Antropologia e Sociologia', 'AN06', 'Antropolog', 'antropologia física: antropometria -paleantropologia, enologia: etnografia -\nernologia, etnografia, antropologia: economia - urbana - política'),
(33, 'Antropologia e Sociologia', 'AN07', 'Sociologia', 'sistemática, comparada aplicada: urbana - rural - política - econômica - do\ntrabalho - da educação - do direito, sociografia, pesquisa social, processo\nsocial'),
(34, 'Assentamentos Humanos', 'AH01', 'Assen Hum', 'povoamento, núcleo populacional, invasão, assentamento rural, urbano, cinturão verde)'),
(35, 'Assentamentos Humanos', 'AH02', 'Cidade', 'metrópole, região ou área metropolitana, rurópolis'),
(36, 'Assentamentos Humanos', 'AH03', 'Org Territ ', 'Organização Territorial (organização do espaço, rede urbana, conurbação)'),
(37, 'Assentamentos Humanos', 'AH04', 'Pol As Hum', 'Políticas de Assentamento Humanos (política demográfica, migrat ória, planejamento familiar, política de colonização, de desenvolvimento urbano ou política urbana);'),
(38, 'Assentamentos Humanos', 'AH05', 'População', 'distribuição da população, mobilidade ou movimento da população, migração, dinâmica populacional'),
(39, 'Assentamentos Humanos', 'AH06', 'Discip Aux', 'Disciplinas Auxiliares (demografia, geografia urbana, agrária, teoria dos\nlimiares ou localização, teoria da polariza ção)'),
(40, 'Biologia', 'BL01', 'Biologia', '(ser vivo, substância orgânica, leis biológicas, biotipologia, biometria, bioclimatologia, parasitologia, filogenia ou evolução, geobiologia, histologia, limnologia)'),
(41, 'Biologia', 'BL02', 'Genética', '(citogenética, engenharia genética, genotipo, hereditariedade, melhoramento genético, gen, genética das populações)'),
(42, 'Biologia', 'BL03', 'Citologia', '(ou biologia celular, célula, meiose, etc);'),
(43, 'Biologia', 'BL04', 'Microbiolg', '(bacteriologia, virologia, biogeografia);'),
(44, 'Biologia', 'BL05', 'Anatomia', '(sistemas: cardiovascular - digestivo - tegumentar, etc, embriologia, secreção, excreção, órgãos dos sentidos);'),
(45, 'Biologia', 'BL06', 'Fisiologia', '(nascimento, digestão, reprodução, sexualidade, nemofisiologia, metabolismo);'),
(46, 'Biologia', 'BL07', 'Bioquímica', '(aminoácido, proteína, hormônio, fenômeno bioqu ímicos: biossíntese - fermentação - osmose, etc);'),
(47, 'Biologia', 'BL08', 'Biofísica', '(bioenergética, biomecânica, eletrofisiologia).'),
(48, 'Botânica', 'BT01', 'Botânica', '(fitologia, vegetal, vegetação, morfologia, fisiologia vegetal, quimiossíntese, genética vegetal, fitossociologia, biologia floral);'),
(49, 'Botânica', 'BT02', 'Fitogeograf', '(geografia botânica ou bot ânica geográfica, caatinga, cerrado, campo, mangue, etc.);'),
(50, 'Botânica', 'BT03', 'Botân Econ', '(planta condimentícia, daninha ou nociva, aromática, feculenta, têxtil, cereal, legume, hortaliça, grão aliment ício);'),
(51, 'Botânica', 'BT04', 'Botân Sist', '(taxonomia vegetal)'),
(52, 'Conhecimento e Comunicação', 'CO01', 'Filosofia', '(metafísica, estética, ética, filosofia social, teoria do conhecimento, hermenêutica, lógica, dialética, doutrina filosófica);'),
(53, 'Conhecimento e Comunicação', 'CO02', 'Ciência', '(ciências humanas e sociais, naturais, biológicas, geociência, política científica, desenvolvimento científico, história da ciência, filosofia da ciência, metodologia científica, metodologia, pesquisa ou investigação, pesquisa aplicada - indicar a área específica com outro código, instituição de pesquisa);'),
(54, 'Conhecimento e Comunicação', 'CO03', 'Ciênc Ling', '(lingüística, geolinguística, sociolingu ística e linguagem popular, linguagem: natural, artificial);'),
(55, 'Conhecimento e Comunicação', 'CO04', 'Comunic', '(comunicação humana, escrita, visual, social: comunicação de massa,\npropaganda, relações públicas, meios de comunicação: radiocomunicação,\nimprensa; pesquisa de opinião, arte gráfica: editoração, editoração,\nimpressão, edição);'),
(56, 'Conhecimento e Comunicação', 'CO05', 'Arte', '(criação artística, patrimônio artístico, industrial, fotografia, aerofotografia, cinema, música, literatura);'),
(57, 'Conhecimento e Comunicação', 'CO06', 'História', '(política, econômica, social, pesquisa histórica: arqueologia, numismática, genealogia, filatelia, epigrafia; patrimônio histórico).'),
(58, 'Construção Civil', 'CC01', 'Construção', '(construção civil: habitacional, comercial, industrial: construção industrializada ou pré-fabricada);'),
(59, 'Construção Civil', 'CC02', 'Proc Const', 'Processo Construtivo (tradicional, convencional, misto, evoluído, cantaria, adobe, alvenaria, concreto, máquina de construção, equipamento para construção);'),
(60, 'Construção Civil', 'CC03', 'Org Constr', 'Organização da construção (licitação de obra, custa da construção, memorial descritivo de obra, gerência de projeto de construção, execução da obra, fiscalização de obra, racionalização da construção, coordena ção dimensional, coordenação modular, suprimento de obra);'),
(61, 'Construção Civil', 'CC04', 'Obra Públ', 'engenharia civil, engenharia de avaliações, contrato de obra pública,\nlicitação de obra pública, obra de grande porte, obra de arte; como\nengenharia civil);'),
(62, 'Construção Civil', 'CC05', 'Estrutura', '(cálculo estrutural, análise de estrutura, mecânica das estruturas: esóstica, plana, retocila, etc; tipo de estrutura: concreto, aço, met álico, inflável, etc; armadura: estrutural, armadura para concreto armado);'),
(63, 'Construção Civil', 'CC06', 'Edificação', '(prédio, edifício, elemento construtivo: fundação, pilar, viga, componente\nconstrutivo: painel, instalações, manutenção da construção, obra: de\nacabamento, melhoria, demolição);'),
(64, 'Construção Civil', 'CC07', 'Tecn Const', '(ancoragem, apiloagem, caleamento estrutural, cimbramento, concretagem,\nescoramento, terraplanagem, pavimentação);'),
(65, 'Construção Civil', 'CC08', 'Hig Const', 'Higiene das construções (ventilação, iluminação, conforto térmico isolamento: acústico, t érmico, e higroscópico);'),
(66, 'Construção Civil', 'CC09', 'Eng Hidrl', '(obra hidráulica ou estrutura hidr áulica; conduto hidráulico, tubulação, canal, reservatório: lago artificial, piscina, açude eclusa, dispositivos de controle de água: comporta, polder, reguladora de nível; barragem, drenagem, hidráulica do solo);'),
(67, 'Construção Civil', 'CC10', 'Solo', '(mecânica das rochas, mecânicas dos solos, aterro, escavação, talude,\nmovimento de terra, obra de terra; nivelamento de terra; obra de contenção:\nestrutura de arrimo, contenção de encosta).'),
(68, 'Direito', 'DI01', 'Legislação', '(federal, estadual, municipal, hierárquica das leis; constituição, lei ordinária,\netc; proteção da lei ou proteção legal, hermenêutica jurídica ou\ninterpretação das leis);'),
(69, 'Direito', 'DI02', 'Dir Constl', 'Direito Constitucional (poder constituinte, organização nacional: união,\nestado, município, distrito federal, território federal, poderes do estado;\nlegislativo, executivo, judiciário, declaração de direitos: nacionalidade,\ndireitos políticos, etc; direito eleitoral); '),
(70, 'Direito', 'DI03', 'Disc Dr', 'Outras Disciplinas do Direito (disciplinar, previdenciário, ecológico, urbanístico, econômico, financeiro, tributário: cálculo do tributo, evasão tributária, infração tributária, etc; direito processual civil, direito penal, direito processual penal, direito internacional público; direitos do homem ou humanos, litígio internacional; direito privado, direito civil, bens: propriedade pública, privada, patrimônio, semoventes, imóveis, públicos, direito de família, direito das coisas: direito autoral, enfiteuse ou aforamento, laudemio, registro imobiliário; direito sucessório: herança, sucessão, inventário, direito das obrigações: acordo, convênio, contrato, loca ção, arrendamento, fiança, direito agrário; direito do trabalho, direito comercial, direito industrial, direito marítimo, direito aeronáutico, direito internacional privado.'),
(71, 'Ecologia', 'EL01', 'Ecologia', '(biosfera, relação biótica, relação abiótica, ecologia agrícola, aquática, florestal, equilíbrio / desequilíbrio ecológico, fenômeno ecológico);'),
(72, 'Ecologia', 'EL02', 'Ecofisiol', '(ecofisiologia animal, vegetal, distrófico, digotrófico, eutrófico, etc.);'),
(73, 'Ecologia', 'EL03', 'Ecol Human', '(ecodesenvolvimento, ecologia social, ecologia urbana);'),
(74, 'Ecologia', 'EL04', 'Ec Veg/Anm', 'Ecologia Vegetal/Ecologia Animal (autoecologia, sinecologia, habitat, vida selvagem)'),
(75, 'Ecologia', 'EL05', 'Etologia', 'migração; anodromo, catadromo, piracema, hibernação, comportamento animal, comportamento vegetal'),
(76, 'Economia', 'EC01', 'Economia', '(teoria econômica, metodologia da economia: modelos e econometria; análise econômica, sistema econômico);'),
(77, 'Economia', 'EC02', 'An Microec', '(microeconomia, teoria da oferta, teoria da produção, função da produção, economias de escala, teoria dos custos, elasticidade da oferta: preço e renda; teoria da demanda ou teoria do consumidor, teoria da utilidade ou análise cardinal, teoria dos mercados, teoria do preço ou do valor, teoria do equilíbrio econômico, teoria do bem-estar, ou economia social ou teoria da distribuição da renda, ótimo de pareto curva de Lorenz, custo social);'),
(78, 'Economia', 'EC03', 'Teo Microe', '(ou microeconomia ou teoria microecon ômica, demanda agregada, oferta\nagregada, venda, nível de emprego);'),
(79, 'Economia', 'EC04', 'Ativ Econm', '(setor econômico ou setor de produção, setores: primário, secundário, terciário, público, privado, informal ou economia silenciosa ou invisível ou mercado informal; fator de produção, distribuição da renda, produtividade, superprodução, consumo, poupança, interna, externa, entesouramento, poupança forçada, investimento, formação de capital; recursos econômicos ou riqueza, indicador econ., indexação, desindexação, desenvolv. econ. local, regional, nacional, setorial, integrado, crescimento econ., desempenho econ., disparidade econ., acumulação de capital);'),
(80, 'Economia', 'EC05', 'Contab Nac', '(ou contabilidade social ou conta nacional, agregado econômico: PIB, PNB, PNL, PIL; renda nacional, análise de insumo - produto ou input - output ou de relações intersetoriais, ou análise de Leontief, ou insumo-produto);'),
(81, 'Economia', 'EC06', 'Econ Monet', '(moeda: criação, circulação, flutuação; sist. monetário: tipos de moeda e meios de pagto ou meio circulante; base monetária, unidade monetária, moeda divisionária; reforma monetária);'),
(82, 'Economia', 'EC07', 'Mercado', '(demanda, oferta, mercado consumidor, mercado externo ou externo ou exterior, mercado interno, internacional, produtor, paralelo, a termo, preço);'),
(83, 'Economia', 'EC08', 'Bens Econom', '(bens de consumo, de capital, insumo, bens: duráveis, não duráveis, tangíveis, intangíveis, inferiores, normais, de Giffen);'),
(84, 'Economia', 'EC09', 'Eng/Din Ec', 'Engenharia econômica/dinâmica econômica (an álise custo/benefício ou custo benefício, pay-out ou prazo de refluxo, ciclo econômico ou flutua ção econômica, nível dos preços: inflação, deflação, conjuntura econômica);'),
(85, 'Economia', 'EC10', 'Econ Espec', '(ou ciência regional ou economia regional, economia local, urbana regionalização);'),
(86, 'Economia', 'EC11', 'Propriedad', '(propriedade do capital, da terra ou propriedade fundiária, estrutura agrária, loteamento);'),
(87, 'Economia', 'EC12', 'Ec Internac', '(ou relações econômicas, balanço de pagamentos: balança comercial, balança de serviços, movimento de capitais internacionais; protecionismo, livre comércio, câmbio: conversibilidade da moeda, controle cambial, câmbio livre, taxa de câmbio, estatiza ção monetária, valorização da moeda, minidesvalorização, maxidesvalorização, mercado cambial; divisas, reservas monetárias, dívida externa, integração econômica internacional, zona monetária, cooperação econômica, bloqueio econômico);'),
(88, 'Economia', 'EC13', 'Polít Econ', '(política fiscal, monetária, de crédito, econômica internacional, de comércio exterior, de desenvolvimento econômico, de desenvolvimento nacional, de distribuição da renda, agrária, de preços, estatização, privatização, planejamento econômico);'),
(89, 'Economia', 'EC14', 'Empresa', '(total, média, marginal, custo ou custo operacional: total, médio, etc; tipos de empresa: pública, privada, multinacional, estrangeira, microempresa, de pequeno, médio e grande porte, nacional, cooperativa; concentração econômica: holding, conglomerado de empresas, combinação de empresas, consórcio de empresas, truste, joint-venture).'),
(90, 'Educação', 'ED01', 'Ensin Regl', 'Ensino regular (pré-escolar, 1º grau, 2º grau, superior, pós-graduação, orientação profissional);'),
(91, 'Educação', 'ED02', 'Ensin-Supl', 'Ensino supletivo (alfabetização, aprendizagem; comercial, industrial, agrícola, suprimento: curso de atualização, de aperfeiçoamento, treinamento);'),
(92, 'Educação', 'ED03', 'Adm/Pr Ens', 'Instituição/Administra ção/Processo de ensino (jardim escolar, escola maternal, jardim de infância, escola: de 1º grau, 2º grau, centro de ensino, de estudo supletivo, universidade, faculdade ou instituto superior de ensino, evasão escolar, serviços educacionais, equipamento escolar, método de ensino, didática: técnica de ensino, prática de ensino; ensino integrado, processo formal de ensino, processo não formal de ensino);'),
(93, 'Educação', 'ED04', 'Formas Ens', 'Formas de ensino/material instrucional (ensino direto, teleducação, por correspondência, radioeducação, ensino semi-indireto; módulo instrucional, equipamento didático, material audio-visual aprendizagem cognitiva, psicomotora, afetiva, autodidatismo);'),
(94, 'Educação', 'ED05', 'Currículo', '(currículo ou programa de ensino, reforma de ensino, currículo mínimo, etc; corpo docente, corpo discente, graus e diplomas);'),
(95, 'Educação', 'ED06', 'Educação', '(pedagogia, ensino, sistema educacional, rede de ensino, educação de adulto, educação de base, de massa, etc, política educacional; educa ção ectra-escolar: educação comunitária, recuperadora).'),
(96, 'Energia', 'EN01', 'Energia', '(política energética, economia energética: consumo de energia, empresa de energia);'),
(97, 'Energia', 'EN02', 'Rec Energ', 'Recursos/serviços/formas de energia (recursos hidrelétricos ou hidroelétricos, carboníferos, petrolíferos, uran íferos, serviços de energia elétrica, de gás canalizado; formas: energia elétrica, mec ânica, química, radiante, luminosa, sonora, térmica, etc);'),
(98, 'Energia', 'EN03', 'Combustívl', '(fóssil, de origem vegetal, biomassa, nuclear, sólido, líquido, gasoso);'),
(99, 'Energia', 'EN04', 'Tecn Energ', 'Tecnologia e Energia (fonte de energia: convencional, alternativa; geração de energia, usina de energia, conversão de energia, armazenamento de energia, transporte de energia, distribuição de energia: eletrificação, engenharia elétrica, medição de energia);'),
(100, 'Energia', 'EN05', 'Eng Eltrôn', '(microeletrônica, circuito eletrônico, eletrônica industrial, semicondutor);'),
(101, 'Energia', 'EN06', 'Eng Nucle', '(tecnologia de reatores, reator nuclear).'),
(102, 'Finanças', 'FN01', 'Finan Públ', '(receita pública, or çamento público, sistema tribut ário, despesa pública, crédito público, administra ção fiscal);'),
(103, 'Finanças', 'FN02', 'Finan Priv', ''),
(104, 'Finanças', 'FN03', 'Sist Finan', '(instituição financeira, operações financeiras: operação de crédito, bancária, de fiança, de câmbio, de sero, open market, hedge, overnight, cobrança; mercado de capitais);'),
(105, 'Finanças', 'FN04', 'Rec/Instrum', 'Recursos/Orçamento/Instrumentos (aplica ção de recursos, capital, recursos orçamentários, fundos; orçamento: analítico, de custeio de capital, empresarial ou privado, público, de aplicação, de caixa, de receita e despesa, familiar; título de crédito, ação, cartão de crédito, caderneta de poupança, financiamento);'),
(106, 'Finanças', 'FN05', 'Adm Finan', '(administração financeira, juro, crédito, débito, loteria (planejamento financeiro, política financeira, controle financeiro, análise financeira; assistência financeira, juro de mora, taxa de juro, spread; crédito: especialização geral; público, internacional, tributário; débito, débito fiscal; loteria esportiva, loto);'),
(107, 'Finanças', 'FN06', 'Contabilid', '(contabilidade, financeira, gerencial, técnicas cont ábeis, demonstração de resultado: receita/despesa, resultado contábil; balancete, demonstração de lucros e prejuízos acumulados, demonstração de origens e aplicações de recursos, depreciação, exaustão).'),
(108, 'Física e Química', 'FQ01', 'Fís Partíc', 'Matéria/Física das Partículas/e dos íons (antimat éria, valência composi ção de matéria, estados da matéria, partícula ótica, partícula elementar, partícula carregada, ionização);'),
(109, 'Física e Química', 'FQ02', 'Acúst/Ótic', '(onda sonora, som; luz, ótica geométrica, microscópica, física, alidade microscopia, solametria);'),
(110, 'Física e Química', 'FQ03', 'Onda', '(amplitude, difração, freqüência, modulação, demodulação, reflex ão, refração, propagação, ressonância e tipos de onda);'),
(111, 'Física e Química', 'FQ04', 'Metrologia', '(unidade de medida, dimensão, análise dimensional, equação dimensional, sistema de medida, medição: macro e micro-medição);'),
(112, 'Física e Química', 'FQ05', 'Mecânica', '(estática, din âmica, cinemática, cinética, espaço, tempo, movimento, momento, força, densidade, massa, volume, resistência dos materiais, trabalho (potência);'),
(113, 'Física e Química', 'FQ06', 'Fis Solid', 'Física dos Sólidos/ dos Fluídos/ dos Plasmas (mecânica dos sólidos, propriedade dos sólidos, estrutura dos sólidos; mecânica dos fluídos, dinâmica dos fluídos, estática dos fluídos, cinemática dos fluídos, mecânica dos gases, hidromecânica, viscosidade; plasma-física);'),
(114, 'Física e Química', 'FQ07', 'Termodinâm', '(calor, calorimetria, temperatura, radiação térmica, tratamento térm., termologia, propried. termodinâmica);'),
(115, 'Física e Química', 'FQ08', 'Eletrônica', '(quântica, linear, não linear);'),
(116, 'Física e Química', 'FQ09', 'Magn/Elmag', 'Magnetismo/Eletromagnetismo (campo, polo, circuito e propriedade magnética; interferência eletromagnética, propriedade eletromagnética, onda eletromagnética, radia ção monocromática, micro-onda, polariza ção espontânea, onda hertziana);'),
(117, 'Física e Química', 'FQ10', 'Fís SupDis', 'Física de Superfície/de Dispersão (tensão superficial, capilaridade; física coloidal);'),
(118, 'Física e Química', 'FQ11', 'Radiação', '(efeito da radiação, radiação atmosférica, radiação ionizante);'),
(119, 'Física e Química', 'FQ12', 'Espectrosc', '(espectrografia, espectrometria, espectroscopia atômica, molecular e ótica, espectrofotometria);'),
(120, 'Física e Química', 'FQ13', 'Fís Molecl', 'Física Molecular (ou física atômica, reação nuclear, estrutura molecular, radiatividade, radiometria);'),
(121, 'Física e Química', 'FQ14', 'Química', '(composto químico, subst ância combustível, substância qu ímica, propriedade química, legação química, radical químico, reação química, composição química, polímero inorgânico);'),
(122, 'Física e Química', 'FQ15', 'Quím An/Po', 'Química Analítica / dos polímeros (análise químicas calorimetria, condumetria, cromatografia; polímero orgânico, polímero inorgânico);'),
(123, 'Física e Química', 'FQ16', 'Fís-Quím', '(análise f ísico-química, processos físicos-químicos);'),
(124, 'Física e Química', 'FQ17', 'Quím Orgân', '(composto orgânico, ácido, sal);'),
(125, 'Física e Química', 'FQ18', 'Quím Inorg', '(elemento químico, metal, gases raros, terras raras, composto inorgânico, nuclídeo)'),
(126, 'Geografia e Cartografia', 'GC01', 'Geog Físic', '(ou fisiografia, paleografia, geomorfologia, acidente geogr áfico, morfologia genética, morfologia fisiológica);'),
(127, 'Geografia e Cartografia', 'GC02', 'Geog Humna', '(ou antopogeografia, geografia econômica, política, da população);'),
(128, 'Geografia e Cartografia', 'GC03', 'Geog Regio', '(região: homogênea, elementar; zona geográfica: tórrida, subtropical);'),
(129, 'Geografia e Cartografia', 'GC04', 'Orient Geo', '(pontos cardeais, colaterais, hemisfério);'),
(130, 'Geografia e Cartografia', 'GC05', 'Geodesia', '(astronômica, espacial, gravimétrica, geométrica, levantamento geodésico);'),
(131, 'Geografia e Cartografia', 'GC06', 'Topografia', '(topometria, planimetria, altimetria, acidente topográfico, sensoramento remoto ou monitoreamento remoto);'),
(132, 'Geografia e Cartografia', 'GC07', 'Fotogramet', '(fotogrametria terrestre, aerofotogrametria, etc);'),
(133, 'Geografia e Cartografia', 'GC08', 'Mapeamento', '(fotogramia, mapa, carta, fotocarta, mosaico, etc);'),
(134, 'Geografia e Cartografia', 'GC09', 'Met Cartog', 'Métodos e Processos de Cartografia (processo astrogeodésico, método das direções, método de Schreiber, de Sterneck, etc.);'),
(135, 'Geografia e Cartografia', 'GC10', 'Plan Carto', 'Plano Cartográfico (azimute / posição / ponto meridiano, paralelo, círculo horário, etc, azimute de Laplace, geodésico, da carta, etc; triângulo de posição, polar, culminação, etc; polo geográfico, celeste, elevado, etc).'),
(136, 'Geologia', 'GL01', 'Geol Físic', '(dinâmica externa: intemperismo, eluviação, iluvia ção, erosão; dinâmica\ninterna: tectonismo, magma, etc; geologia estrutural: anticlinal, sinclinal,\ndobra, junta, foliação);'),
(137, 'Geologia', 'GL02', 'Glaciolog', '(ou criologia, glaciação, moraina);'),
(138, 'Geologia', 'GL03', 'Geotectonc', 'Geotectônica (tectônica, geodinâmica, sismologia);'),
(139, 'Geologia', 'GL04', 'Geol Marin', 'Geologia Marinha (fotogeologia: mapeamento geológico);'),
(140, 'Geologia', 'GL05', 'Geol Hist', '(paleontologia, arcabouço tectônico da terra, sedimentologia, estratigrafia);'),
(141, 'Geologia', 'GL06', 'Geol Econ', '(petrologia, petrografia, gênese de jazida: metalgenia, mineralização, jazida mineral, prospecção; mineralogia física, química, etc);'),
(142, 'Geologia', 'GL07', 'GeoQuiFiTe', 'Geoquímica / Hidrogeologia / Geofísica / Geotécnica (geoquímica dos solos, das rochas; água subterr ânea; geof ísica marinha, terrestre, sísmica, gravimetria; ensaio geotécnico);'),
(143, 'Habitação', 'HB01', 'Habitação', '(moradia, função habitacional, mercado habitacional, política habitacional);'),
(144, 'Habitação', 'HB02', 'Tipol Habt', 'Tipologia Habitacional (habitação unifamiliar, multifamiliar, funcional, especial: para velhos, para estudantes; habitação provisória: alojamento,\nacampamento, tugurio, habitação móvel, espontânea, flutuante, etc).'),
(145, 'Hidrologia e Oceanografia', 'HD01', 'Hidrologia', '(água, ciclo hidrológico);'),
(146, 'Hidrologia e Oceanografia', 'HD02', 'Hidrograf', '(bacia hidrográfica, representativa, área de inundação, curso de água, bacia lacustre, etc);'),
(147, 'Hidrologia e Oceanografia', 'HD03', 'Hidrometr', '(fluviometria, pluviometria, evapometria, sedimentometria, estação hidrométrica, fluviométrica, etc);'),
(148, 'Hidrologia e Oceanografia', 'HD04', 'Oceanograf', '(ou oceanologia, ou talassografia, oceano, mar, tipos de oceanografia: física, química, biológica, geológica, batimetria);'),
(149, 'Indústria', 'IN01', 'Indústria', '(política industrial, concentração industrial, produção industrial, pesquisa industrial, empresa industrial);'),
(150, 'Indústria', 'IN02', 'Tecnologia', '(política tecnológica, cooperação técnica, pesquisa tecnológica, inova ção tecnológica, tecnologia apropriada, química tecnológica);'),
(151, 'Indústria', 'IN03', 'Engenharia', '(desenho técnico, engenharia metalúrgica, engenharia qu ímica, mec ânica, automotiva, aeronáutica, naval, de produção, de teste);'),
(152, 'Indústria', 'IN04', 'Ind Ext Mi', 'Indústria Extrativa Mineral (política mineral, pesquisa mineral, engenharia e minas, mineração, extrativismo mineral, ou exploração mineral);'),
(153, 'Indústria', 'IN05', 'Ind Transf', 'Indústria de Transformação (indústria manufatureira, produto, industrialização, processo industrial, gênero da ind ústria: metalúrgica, de material elétrico, eletrônico, química, mecânica, de componentes, de armamento, têxtil, etc; estabelecimento industrial, produto industrializado, alimentício, etc; materiais e equipamentos).'),
(154, 'Informação', 'F01', 'Informação', '(cient ífica, tecnológica, bibliográfica, estratégica, dados, etc);'),
(155, 'Informação', 'F02', 'Documentaç', '(análise da informação, processamento de informação armazenamento, recuperação, disseminação, interc âmbio, bibliofilia, bibliologia, bibliometria);'),
(156, 'Informação', 'F03', 'Reprograf', '(fotoc ópia, microfotografia, microfilmagem, micrografia);'),
(157, 'Informação', 'F04', 'Documento', '(informação, registrada, ou material de informação, documento cient ífico, confidencial, primário, secundário, não convencional, obra de refer ência, multimeio, material legível por máquina);'),
(158, 'Informação', 'F05', 'Biblioteco', '(administração de biblioteca, processos técnicos);'),
(159, 'Informação', 'F06', 'Arquivolog', '(ou arquivística, administração de arquivos);'),
(160, 'Informação', 'F07', 'Ciênc Info', '(sistema de informação, rede de informação, teoria da informação, fluxo de informação);'),
(161, 'Informação', 'F08', 'Serv Info', '(biblioteca, centro de documentação, arquivo, centro referencial, museu, etc);'),
(162, 'Informação', 'F09', 'Uso Inform', '(usuário, estudo e perfil do usuário);'),
(163, 'Informação', 'F10', 'Genérico', '(processamento de dados).'),
(164, 'Matemática', 'MT01', 'Lógica Mat', '(metamatemática, método matemático, processo matemático, teoria lógica);'),
(165, 'Matemática', 'MT02', 'Álgebra', '(teoria dos conjuntos, teoria dos números, álgebra elementar, estrutura algébrica, tipos de álgebra);'),
(166, 'Matemática', 'MT03', 'Geometria', '(geometria plana, geometria sólida, geometria analítica, trigonometria, geometria descritiva, geometria diferencial, etc);'),
(167, 'Matemática', 'MT04', 'Anális Mat', '(topologia, análise real, análise numérica, análise complexa, vetorial, matricial, tensorial, funcional, transformação integral, equação);'),
(168, 'Matemática', 'MT05', 'Cálculo', '(cálculo diferencial, integral, operacional, vetorial, matricial, tensorial, numérico, variacional);'),
(169, 'Matemática', 'MT06', 'Mat Aplic', '(= modelo matemático. Especificar a aplicação: estatística, gráfico, cálculo de probabilidade, análise estatística, pesquisa operacional, matemática financeira atuarial).'),
(170, 'Meio Ambiente', 'MA01', 'Meio Amb', '(artificial, natural, política do meio ambiente);'),
(171, 'Meio Ambiente', 'MA02', 'Recurs Nat', '(natureza: conservação, recursos naturais renováveis, não renov áveis, área protegida);'),
(172, 'Meio Ambiente', 'MA03', 'Poluição', '(tipos de poluição: atmosférica, bacteriológica, física, do solo, água, química, radioativa, sonora, etc; controle prevenção; nível de poluição; poluente);'),
(173, 'Meio Ambiente', 'MA04', 'Qualid Amb', '(qualidade da vida, da água, do ar, monitoramento ambiental, engenharia ambiental, de defesa civil).'),
(174, 'Meteorologia e climatologia', 'ME01', 'Metodolg', '(física, dinâmica, aplicada);'),
(175, 'Meteorologia e climatologia', 'ME02', 'Atmosfera', '(ar, atmosfera inferior, superior, circula ção e pressão atmosférica, previsão e estação metereológica, vento, tempestade, massa de ar, temperatura do ar, radiação solar, umidade do ar);'),
(176, 'Meteorologia e climatologia', 'ME03', 'Climatolog', '(clima, aclimatação, agroclimatologia, estação climatológica; tipos de clima).'),
(177, 'Pedologia', 'PD01', 'Pedologia', '(= ciência do solo; terra, solo: mineral ou orgânico);'),
(178, 'Pedologia', 'PD02', 'Pedogênese', 'fatores de formação do solo, processo pedogenético, perfil do solo: morfopedologia, física do solo: morfopedologia, física do solo, química do solo mineralogia do solo, biologia do solo, horizonte);'),
(179, 'Pedologia', 'PD03', 'Tipos de Solo', ''),
(180, 'Política', 'PL01', 'Ciênc Pol', '(teoria política, metodologia política);'),
(181, 'Política', 'PL02', 'Política', '(sistema político, estrutura política, Estado (nação) soberania, formas de estado, governo, regime político, poder público, organização do poder, ação política, política de governo, doutrina política).'),
(182, 'Previdência e Assistet ência social', 'PR01', 'Previdênc', '(seguridade social, política de previdência social, previdência social, previdência privada);'),
(183, 'Previdência e Assistet ência social', 'PR02', 'Benef Prev', '(aposentadoria, auxílio ou assistência previdenciária, pecúlio, abono, etc);'),
(184, 'Previdência e Assistet ência social', 'PR03', 'Assist Soc', '(médica, odontológica, alimentar, reeducativa, assistência habitacional, organizações de assistência social, servi ço social).'),
(185, 'Psicologia', 'PS01', 'Psicologia', '(= ciência do comportamento, psicologia do desenvolvimento, psicologia social, aplicada - clínica, psicoterapia, educacional; processos: sensorial, inteligência, congnitivo, reluxo);'),
(186, 'Psicologia', 'PS02', 'Comportamt', '(= conduta ou comportamento humano; motivação);'),
(187, 'Psicologia', 'PS03', 'Teor Psic', '(sistema e teoria de psicologia, parapsicologia (associacionismo), behaviorismo, psicologia existencialista, do reforço, etc).'),
(188, 'Saneamento', 'SM01', 'Saneamento', '(engenharia sanitária, saneamento básico);'),
(189, 'Saneamento', 'SM02', 'Resíduo', '(detrito, dejeto ou efluente; lixo, resíduo: gasoso, líquido, orgânico, químico, térmico, tóxico);'),
(190, 'Saneamento', 'SM03', 'Limpeza', '(limpeza pública, drenagem urbana (limpeza urbana, de logradouro, coleta de lixo, destinação do lixo, etc; rede de drenagem urbana));'),
(191, 'Saneamento', 'SM04', 'Abast água', '(= sistema de abastecimento de água; servi ços de água, capta ção de água, adução de água, tratamento de água, reservat ório de água, distribuição de água, medição de água);'),
(192, 'Saneamento', 'SM05', 'Esgoto', '(serviço de esgoto, esgoto sanitário, tratamento: preliminar, primário, secundário, terciário; remoção de sólidos, lodo, emissário, etc, esgoto industrial).'),
(193, 'Saúde', 'SD01', 'Saúde', '(política de saúde, higiene, saúde física, mental, pública);'),
(194, 'Saúde', 'SD02', 'Adm Sanit', '(= administração de saúde; servi ços básicos de saúde, serviços de saúde: hospital, centro de saúde, posto de saúde, de socorro, etc; sistema de saúde, levantamento sanitário, educação sanitária, campanha de saúde pública, equipamento médico);'),
(195, 'Saúde', 'SD03', 'Doença', '(congênita, infecciosa, do sistema reprodutor, do sistema glandular, etc);'),
(196, 'Saúde', 'SD04', 'Defic Fís', '(física, mental, inválido);'),
(197, 'Saúde', 'SD05', 'Assist Méd', '(hospitalar, médico-domiciliar, ambulatorial, m édico-sanitária);'),
(198, 'Saúde', 'SD06', 'Terap Diag', '(terapia, diagnóstico médico (terapêutica, fisioterapia, hemoterapia, dieta, etc; diagnóstico: laboratorial, radiológico, s índrome, sintoma);'),
(199, 'Saúde', 'SD07', 'Medicina', '(alopática, hemeopática, preventiva, tropical, nuclear, medicina do trabalho, legal, de urgência);'),
(200, 'Saúde', 'SD08', 'Espec Med', 'Especialidades Médicas (cardiologia, endocrinologia, epidemiologia, ginecologia, oftalmologia, psiquiatria, patologia, dermatologia, radiologia, etc; medicina não-convencional: naturopática, caseira, acupuntura, do-in, etc);'),
(201, 'Saúde', 'SD09', 'Eng Biomed', 'Engenharia Biomédica, ciências paramédicas (bioengenharia, biotecnologia, enfermagem, optometria, fonoaudiologia);'),
(202, 'Saúde', 'SD10', 'Farmacolog', '(assistência farmacêutica, toxicologia, farmacopeia, farmacognosia, medicamento);'),
(203, 'Saúde', 'SD11', 'Odontolog', '(saúde oral, periodontias, prótese dentária, assistência odontológica).'),
(204, 'Serviços', 'SV01', 'Serviços', '(públicos especificar conforme o tipo: telefonia, telegrafia, etc: correio, serviços de energia elétrica, seguran ça pública, de água, de esgoto, etc - serviços privados: alojamento e alimentação, de reparo e manutenção, pessoais, de vigilância e guarda, etc, tarifa de servi ços);'),
(205, 'Serviços', 'SV02', 'Seguro', '(social, privado; quanto ao objeto; pessoal, patrimonial, de responsabilidade; contrato de seguro, seguradora, resseguro, co-seguro, corretora de seguro);'),
(206, 'Serviços', 'SV03', 'Comércio', '(interno, exterior, ilícito, comercialização, corretagem ou servi ços de corretagem, ensilagem, entrepostagem, intercâmbio comercial, especula ção, mercadoria, zona franca, porte livre, política comercial);'),
(207, 'Serviços', 'SV04', 'Turismo', '(política de turismo, turismo interno, externo, intercâmbio turístico, infraestrutura turística: agência de turismo, rede hoteleira).'),
(208, 'Telecomunicações', 'TC01', 'Telecom', '(política de telecomunicações, modelo de telecomunicações);'),
(209, 'Telecomunicações', 'TC02', 'Sist Telec', '(radiocomunicação, sistema de televisão, telefonia, telegrafia, sistema de radar, telemetria, transmissão de dados, comunicação por fio, teoria de telecomunicações'),
(210, 'Telecomunicações', 'TC03', 'Eng Telec', '(linha de comunicação, recepção, transmissão)'),
(211, 'Telecomunicações', 'TC04', 'Serv/Redes', '(serviços, redes estações e material de telecomunicações).'),
(212, 'Trabalho', 'TB01', 'Trabalho', '(intelectual, técnico, manual, mecanizado, rural, doméstico, eventual, em condomínio, mão-de-obra, teoria do trabalho: método de trabalho, controle do trabalho, organização do trabalho);'),
(213, 'Trabalho', 'TB02', 'Rec Human', '(desenvolvimento de recursos humanos, pessoal trabalhador = operário, classe trabalhadora: trabalhador rural, autônomo, não qualificado, etc);'),
(214, 'Trabalho', 'TB03', 'Merc Trab', 'Mercado de Trabalho (política empregatícia, salarial, pleno emprego, desemprego, subemprego, força de trabalho, emprego cíclico, fiscalização do trabalho, racionalização do trabalho);'),
(215, 'Trabalho', 'TB04', 'Cond Trab', 'Condições de Trabalho (ergonomia ou engenharia humana; ambiente de trabalho);'),
(216, 'Trabalho', 'TB05', 'Estr Ocup', 'Estrutura Ocupacional (ocupação, profissão liberal, sindicato, associação de empregos, conselho profissional, empresariado, emprego, cargo);'),
(217, 'Trabalho', 'TB06', 'Lazer', '(renovação, colônia de férias, etc)'),
(218, 'Transporte', 'TP01', 'Transporte', '(política de transporte, planejamento de transporte);'),
(219, 'Transporte', 'TP02', 'Sist Trans', '(doméstico, regional, interregional, rural, urbano, integrado, etc; infraestrutura transporte = rede de transporte, sistema viário, rede: aeroviário, dutoviário, hidrovi ária; corredor de transporte, via de transporte, terminal de transporte, equipamento de transporte, material de transporte);'),
(220, 'Transporte', 'TP03', 'Serv Trans', '(transporte de carga, de passageiro, linha de transporte, empresa de transporte);'),
(221, 'Transporte', 'TP04', 'Eng Transp', '(de tráfego, aeronáutica, ferrovi ária, rodoviária, naval, automotiva);'),
(222, 'Transporte', 'TP05', 'Mod Transp', 'Modalidades de Transporte (aéreo, terrestre, hidroviário, especial: dutoviário, vertical).'),
(223, 'Urbanismo', 'UB01', 'Urbanismo', '(= arte urbana, organização do espaço urbano, projeto urbanístico, forma urbana, planejamento urbano, história do urbanismo);'),
(224, 'Urbanismo', 'UB02', 'Solo urban', '(imóvel urbano, terreno urbano, parcelamento do solo, cadastro imobiliário, avaliação imobiliária, tributação urbana, renda imobiliária, especulação imobiliária);'),
(225, 'Urbanismo', 'UB03', 'Área urban', '(= zona urbana; sítio urbano, estrutura urbana, urbanização, uso do solo = apropriação do espaço, zoneamento urbano, renda imobil., especula ção imobil.);'),
(226, 'Urbanismo', 'UB04', 'Circ Urban', 'Circulação Urbana (via de circulação, terminal de transporte, tráfego urbano; infra-estrutura urbana = equipamento urbano, serviços públicos urbanos, equipamento comunitário);'),
(227, 'Urbanismo', 'UB05', 'Arquitetur', '(projeto de arquitetura, reconvers ão de uso; arquitetura: doméstica, industrial, de comércio, de administração, institucional, militar, tradicional, de interiores = decoração elemento formal, elemento funcional, elemento decorativo).');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
