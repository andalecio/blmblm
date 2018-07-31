/*------------------------------------------------------------*/
/*   Esquema para a criação do banco de dados da aplicação    */
/*                        26043PRAONDE                        */
/*------------------------------------------------------------*/

/*------------------------------------------------------------*/
/*                     Exclusão de Triggers                   */
/*------------------------------------------------------------*/

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('TB_LOGIN_GROUP_RULE') AND sysstat & 0xf = 11)
ALTER TABLE [TB_LOGIN_RULE]
DROP CONSTRAINT [TB_LOGIN_GROUP_RULE]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('TB_LOGIN_GROUP_USER') AND sysstat & 0xf = 11)
ALTER TABLE [TB_LOGIN_USER]
DROP CONSTRAINT [TB_LOGIN_GROUP_USER]
GO

/*------------------------------------------------------------*/
/*                     Exclusão de Views                      */
/*------------------------------------------------------------*/

/*------------------------------------------------------------*/
/*                     Exclusão de tabelas                    */
/*------------------------------------------------------------*/

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Baile') AND sysstat & 0xf = 3)
DROP TABLE [Baile]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Balada') AND sysstat & 0xf = 3)
DROP TABLE [Balada]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Beleza') AND sysstat & 0xf = 3)
DROP TABLE [Beleza]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Cinema') AND sysstat & 0xf = 3)
DROP TABLE [Cinema]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Comida') AND sysstat & 0xf = 3)
DROP TABLE [Comida]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Esporte') AND sysstat & 0xf = 3)
DROP TABLE [Esporte]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Evento') AND sysstat & 0xf = 3)
DROP TABLE [Evento]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Feira') AND sysstat & 0xf = 3)
DROP TABLE [Feira]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Funcionario') AND sysstat & 0xf = 3)
DROP TABLE [Funcionario]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Mbaile') AND sysstat & 0xf = 3)
DROP TABLE [Mbaile]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Mbalada') AND sysstat & 0xf = 3)
DROP TABLE [Mbalada]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Mbeleza') AND sysstat & 0xf = 3)
DROP TABLE [Mbeleza]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Mcinema') AND sysstat & 0xf = 3)
DROP TABLE [Mcinema]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Mcomida') AND sysstat & 0xf = 3)
DROP TABLE [Mcomida]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Mesporte') AND sysstat & 0xf = 3)
DROP TABLE [Mesporte]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Mfeira') AND sysstat & 0xf = 3)
DROP TABLE [Mfeira]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Mpasseio') AND sysstat & 0xf = 3)
DROP TABLE [Mpasseio]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Msamba') AND sysstat & 0xf = 3)
DROP TABLE [Msamba]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Mshow') AND sysstat & 0xf = 3)
DROP TABLE [Mshow]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Mteatro') AND sysstat & 0xf = 3)
DROP TABLE [Mteatro]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Nomeevento') AND sysstat & 0xf = 3)
DROP TABLE [Nomeevento]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Passeio') AND sysstat & 0xf = 3)
DROP TABLE [Passeio]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Patrocinador') AND sysstat & 0xf = 3)
DROP TABLE [Patrocinador]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Samba') AND sysstat & 0xf = 3)
DROP TABLE [Samba]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Show') AND sysstat & 0xf = 3)
DROP TABLE [Show]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('tb_cidade') AND sysstat & 0xf = 3)
DROP TABLE [tb_cidade]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('tb_estado') AND sysstat & 0xf = 3)
DROP TABLE [tb_estado]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('TB_LOGIN_GROUP') AND sysstat & 0xf = 3)
DROP TABLE [TB_LOGIN_GROUP]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('TB_LOGIN_RULE') AND sysstat & 0xf = 3)
DROP TABLE [TB_LOGIN_RULE]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('TB_LOGIN_USER') AND sysstat & 0xf = 3)
DROP TABLE [TB_LOGIN_USER]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Teatro') AND sysstat & 0xf = 3)
DROP TABLE [Teatro]
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('Tipoevento') AND sysstat & 0xf = 3)
DROP TABLE [Tipoevento]
GO

/*------------------------------------------------------------*/
/*                     Criação das tabelas                    */
/*------------------------------------------------------------*/

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*  Baile  */
/*------------------------------------------------------------*/

 CREATE TABLE [Baile](
	[id]                                   bigint               NOT NULL,
	[tpevento]                             int                  NULL,
	[numevento]                            int                  NULL,
	[periodoi]                             date                 NULL,
	[periodof]                             date                 NULL,
	[foto1]                                varbinary(MAX)       NULL,
	[foto2]                                varbinary(MAX)       NULL,
	[cabec]                                varchar (20)         NULL,
	[descr1]                               varchar (30)         NULL,
	[descr2]                               varchar (30)         NULL,
	[flok]                                 bit                  NULL,
	[Latitude]                             varchar (10)         NULL,
	[LOngitude]                            varchar (10)         NULL,
	[idestado]                             int                  DEFAULT 0 NULL,
	[idcidade]                             int                  DEFAULT 0 NULL
		CONSTRAINT [PK_Baile] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*   Balada   */
/*------------------------------------------------------------*/

 CREATE TABLE [Balada](
	[id]                                   bigint               NOT NULL,
	[tpevento]                             int                  NULL,
	[numevento]                            int                  NULL,
	[periodoi]                             date                 NULL,
	[periodof]                             date                 NULL,
	[foto1]                                varbinary(MAX)       NULL,
	[foto2]                                varbinary(MAX)       NULL,
	[cabec]                                varchar (20)         NULL,
	[descr1]                               varchar (30)         NULL,
	[descr2]                               varchar (30)         NULL,
	[flok]                                 bit                  NULL,
	[Latitude]                             varchar (10)         NULL,
	[LOngitude]                            varchar (10)         NULL,
	[idestado]                             int                  DEFAULT 0 NULL,
	[idcidade]                             int                  DEFAULT 0 NULL
		CONSTRAINT [PK_Balada] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*   Beleza   */
/*------------------------------------------------------------*/

 CREATE TABLE [Beleza](
	[id]                                   bigint               NOT NULL,
	[tpevento]                             int                  NULL,
	[numevento]                            int                  NULL,
	[periodoi]                             date                 NULL,
	[periodof]                             date                 NULL,
	[foto1]                                varbinary(MAX)       NULL,
	[foto2]                                varbinary(MAX)       NULL,
	[cabec]                                varchar (20)         NULL,
	[descr1]                               varchar (30)         NULL,
	[descr2]                               varchar (30)         NULL,
	[flok]                                 bit                  NULL,
	[Latitude]                             varchar (10)         NULL,
	[LOngitude]                            varchar (10)         NULL,
	[idestado]                             int                  DEFAULT 0 NULL,
	[idcidade]                             int                  DEFAULT 0 NULL
		CONSTRAINT [PK_Beleza] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*   Cinema   */
/*------------------------------------------------------------*/

 CREATE TABLE [Cinema](
	[id]                                   bigint               NOT NULL,
	[tpevento]                             int                  NULL,
	[numevento]                            int                  NULL,
	[periodoi]                             date                 NULL,
	[periodof]                             date                 NULL,
	[foto1]                                varbinary(MAX)       NULL,
	[foto2]                                varbinary(MAX)       NULL,
	[cabec]                                varchar (20)         NULL,
	[descr1]                               varchar (30)         NULL,
	[descr2]                               varchar (30)         NULL,
	[flok]                                 bit                  NULL,
	[Latitude]                             varchar (10)         NULL,
	[LOngitude]                            varchar (10)         NULL,
	[idcidade]                             int                  DEFAULT 0 NULL,
	[idestado]                             int                  DEFAULT 0 NULL
		CONSTRAINT [PK_Cinema] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*   Comida   */
/*------------------------------------------------------------*/

 CREATE TABLE [Comida](
	[id]                                   bigint               NOT NULL,
	[tpevento]                             int                  NULL,
	[numevento]                            int                  NULL,
	[periodoi]                             date                 NULL,
	[periodof]                             date                 NULL,
	[foto1]                                varbinary(MAX)       NULL,
	[foto2]                                varbinary(MAX)       NULL,
	[cabec]                                varchar (20)         NULL,
	[descr1]                               varchar (30)         NULL,
	[descr2]                               varchar (30)         NULL,
	[flok]                                 bit                  NULL,
	[Latitude]                             varchar (10)         NULL,
	[LOngitude]                            varchar (10)         NULL,
	[idestado]                             int                  DEFAULT 0 NULL,
	[idcidade]                             int                  DEFAULT 0 NULL
		CONSTRAINT [PK_Comida] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*   Esporte   */
/*------------------------------------------------------------*/

 CREATE TABLE [Esporte](
	[id]                                   bigint               NOT NULL,
	[tpevento]                             int                  NULL,
	[numevento]                            int                  NULL,
	[periodoi]                             date                 NULL,
	[periodof]                             date                 NULL,
	[foto1]                                varbinary(MAX)       NULL,
	[foto2]                                varbinary(MAX)       NULL,
	[cabec]                                varchar (20)         NULL,
	[descr1]                               varchar (30)         NULL,
	[descr2]                               varchar (30)         NULL,
	[flok]                                 bit                  NULL,
	[Latitude]                             varchar (10)         NULL,
	[LOngitude]                            varchar (10)         NULL,
	[idestado]                             int                  DEFAULT 0 NULL,
	[idcidade]                             int                  DEFAULT 0 NULL
		CONSTRAINT [PK_Esporte] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*   Evento   */
/*------------------------------------------------------------*/

 CREATE TABLE [Evento](
	[id]                                   bigint               NOT NULL,
	[codcli]                               bigint               DEFAULT 0 NOT NULL,
	[tpevento]                             int                  NULL,
	[numevento]                            int                  NULL,
	[periodoi]                             date                 NULL,
	[periodof]                             date                 NULL,
	[foto1]                                varbinary(MAX)       NULL,
	[foto2]                                varbinary(MAX)       NULL,
	[cabec]                                varchar (20)         NULL,
	[descr1]                               varchar (30)         NULL,
	[flok]                                 bit                  NULL,
	[Latitude]                             varchar (10)         NULL,
	[LOngitude]                            varchar (10)         NULL,
	[idcidade]                             int                  DEFAULT 0 NULL,
	[idestado]                             int                  DEFAULT 0 NULL,
	[flalt]                                bit                  NULL,
	[flblk]                                bit                  NULL,
	[codfunc]                              int                  DEFAULT 0 NULL,
	[dtlib]                                date                 NULL
		CONSTRAINT [PK_Evento] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*  Feira  */
/*------------------------------------------------------------*/

 CREATE TABLE [Feira](
	[id]                                   bigint               NOT NULL,
	[tpevento]                             int                  NULL,
	[numevento]                            int                  NULL,
	[periodoi]                             date                 NULL,
	[periodof]                             date                 NULL,
	[foto1]                                varbinary(MAX)       NULL,
	[foto2]                                varbinary(MAX)       NULL,
	[cabec]                                varchar (20)         NULL,
	[descr1]                               varchar (30)         NULL,
	[flok]                                 bit                  NULL,
	[Latitude]                             varchar (10)         NULL,
	[LOngitude]                            varchar (10)         NULL,
	[idestado]                             int                  DEFAULT 0 NULL,
	[idcidade]                             int                  DEFAULT 0 NULL
		CONSTRAINT [PK_Feira] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*     Funcionario     */
/*------------------------------------------------------------*/

 CREATE TABLE [Funcionario](
	[codprof]                              int                  IDENTITY(1,1) NOT NULL,
	[nome]                                 varchar (50)         NOT NULL,
	[cpf]                                  varchar (14)         NULL,
	[telefone]                             varchar (14)         NULL,
	[celular]                              varchar (15)         NULL,
	[senha]                                varchar (10)         NULL,
	[dtinicio]                             date                 NULL,
	[dtafast]                              date                 NULL
		CONSTRAINT [PK_Funcionario] PRIMARY KEY CLUSTERED
		(
			[codprof]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*   Mbaile   */
/*------------------------------------------------------------*/

 CREATE TABLE [Mbaile](
	[id]                                   bigint               IDENTITY(1,1) NOT NULL,
	[titulo]                               varchar (30)         NULL,
	[fttitulo]                             varbinary(MAX)       NULL
		CONSTRAINT [PK_Mbaile] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*   Mbalada   */
/*------------------------------------------------------------*/

 CREATE TABLE [Mbalada](
	[id]                                   bigint               IDENTITY(1,1) NOT NULL,
	[titulo]                               varchar (30)         NULL,
	[fttitulo]                             varbinary(MAX)       NULL
		CONSTRAINT [PK_Mbalada] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*   Mbeleza   */
/*------------------------------------------------------------*/

 CREATE TABLE [Mbeleza](
	[id]                                   bigint               IDENTITY(1,1) NOT NULL,
	[titulo]                               varchar (30)         NULL,
	[fttitulo]                             varbinary(MAX)       NULL
		CONSTRAINT [PK_Mbeleza] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*   Mcinema   */
/*------------------------------------------------------------*/

 CREATE TABLE [Mcinema](
	[id]                                   bigint               IDENTITY(1,1) NOT NULL,
	[titulo]                               varchar (30)         NULL,
	[fttitulo]                             varbinary(MAX)       NULL
		CONSTRAINT [PK_Mcinema] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*   Mcomida   */
/*------------------------------------------------------------*/

 CREATE TABLE [Mcomida](
	[id]                                   bigint               IDENTITY(1,1) NOT NULL,
	[titulo]                               varchar (30)         NULL,
	[fttitulo]                             varbinary(MAX)       NULL
		CONSTRAINT [PK_Mcomida] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*    Mesporte    */
/*------------------------------------------------------------*/

 CREATE TABLE [Mesporte](
	[id]                                   bigint               IDENTITY(1,1) NOT NULL,
	[titulo]                               varchar (30)         NULL,
	[fttitulo]                             varbinary(MAX)       NULL
		CONSTRAINT [PK_Mesporte] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*   Mfeira   */
/*------------------------------------------------------------*/

 CREATE TABLE [Mfeira](
	[id]                                   bigint               IDENTITY(1,1) NOT NULL,
	[titulo]                               varchar (30)         NULL,
	[fttitulo]                             varbinary(MAX)       NULL
		CONSTRAINT [PK_Mfeira] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*    Mpasseio    */
/*------------------------------------------------------------*/

 CREATE TABLE [Mpasseio](
	[id]                                   bigint               IDENTITY(1,1) NOT NULL,
	[titulo]                               varchar (30)         NULL,
	[fttitulo]                             varbinary(MAX)       NULL
		CONSTRAINT [PK_Mpasseio] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*   Msamba   */
/*------------------------------------------------------------*/

 CREATE TABLE [Msamba](
	[id]                                   bigint               IDENTITY(1,1) NOT NULL,
	[titulo]                               varchar (30)         NULL,
	[fttitulo]                             varbinary(MAX)       NULL
		CONSTRAINT [PK_Msamba] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*  Mshow  */
/*------------------------------------------------------------*/

 CREATE TABLE [Mshow](
	[id]                                   bigint               IDENTITY(1,1) NOT NULL,
	[titulo]                               varchar (30)         NULL,
	[fttitulo]                             varbinary(MAX)       NULL
		CONSTRAINT [PK_Mshow] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*   Mteatro   */
/*------------------------------------------------------------*/

 CREATE TABLE [Mteatro](
	[id]                                   bigint               IDENTITY(1,1) NOT NULL,
	[titulo]                               varchar (30)         NULL,
	[fttitulo]                             varbinary(MAX)       NULL
		CONSTRAINT [PK_Mteatro] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*     Nomeevento     */
/*------------------------------------------------------------*/

 CREATE TABLE [Nomeevento](
	[tpevento]                             int                  NOT NULL,
	[numevento]                            int                  IDENTITY(1,1) NOT NULL,
	[nomeev]                               varchar (30)         NOT NULL
		CONSTRAINT [PK_Nomeevento] PRIMARY KEY CLUSTERED
		(
			[tpevento],[numevento]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*   Passeio   */
/*------------------------------------------------------------*/

 CREATE TABLE [Passeio](
	[id]                                   bigint               NOT NULL,
	[tpevento]                             int                  NULL,
	[numevento]                            int                  NULL,
	[periodoi]                             date                 NULL,
	[periodof]                             date                 NULL,
	[foto1]                                varbinary(MAX)       NULL,
	[foto2]                                varbinary(MAX)       NULL,
	[cabec]                                varchar (20)         NULL,
	[descr1]                               varchar (30)         NULL,
	[descr2]                               varchar (30)         NULL,
	[flok]                                 bit                  NULL,
	[Latitude]                             varchar (10)         NULL,
	[LOngitude]                            varchar (10)         NULL,
	[idestado]                             int                  DEFAULT 0 NULL,
	[idcidade]                             int                  DEFAULT 0 NULL
		CONSTRAINT [PK_Passeio] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      Patrocinador      */
/*------------------------------------------------------------*/

 CREATE TABLE [Patrocinador](
	[id]                                   bigint               IDENTITY(1,1) NOT NULL,
	[razao social]                         varchar (60)         NULL,
	[idestado]                             int                  DEFAULT 0 NULL,
	[idcidade]                             int                  DEFAULT 0 NULL,
	[cpf]                                  varchar (14)         NULL,
	[cnpj]                                 varchar (18)         NOT NULL,
	[email]                                varchar (80)         NULL,
	[contato]                              varchar (50)         NULL,
	[telefone]                             varchar (14)         NULL,
	[numevento]                            int                  NULL,
	[descr1]                               varchar (30)         NULL,
	[foto5]                                varchar (10)         NULL
		CONSTRAINT [PK_Patrocinador] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*  Samba  */
/*------------------------------------------------------------*/

 CREATE TABLE [Samba](
	[id]                                   bigint               NOT NULL,
	[tpevento]                             int                  NULL,
	[numevento]                            int                  NULL,
	[periodoi]                             date                 NULL,
	[periodof]                             date                 NULL,
	[foto1]                                varbinary(MAX)       NULL,
	[foto2]                                varbinary(MAX)       NULL,
	[cabec]                                varchar (20)         NULL,
	[descr1]                               varchar (30)         NULL,
	[descr2]                               varchar (30)         NULL,
	[flok]                                 bit                  NULL,
	[Latitude]                             varchar (10)         NULL,
	[LOngitude]                            varchar (10)         NULL,
	[idestado]                             int                  DEFAULT 0 NULL,
	[idcidade]                             int                  DEFAULT 0 NULL
		CONSTRAINT [PK_Samba] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*  Show  */
/*------------------------------------------------------------*/

 CREATE TABLE [Show](
	[id]                                   bigint               NOT NULL,
	[tpevento]                             int                  NULL,
	[numevento]                            int                  NULL,
	[periodoi]                             date                 NULL,
	[periodof]                             date                 NULL,
	[foto1]                                varbinary(MAX)       NULL,
	[foto2]                                varbinary(MAX)       NULL,
	[cabec]                                varchar (20)         NULL,
	[descr1]                               varchar (30)         NULL,
	[descr2]                               varchar (30)         NULL,
	[flok]                                 bit                  NULL,
	[Latitude]                             varchar (10)         NULL,
	[LOngitude]                            varchar (10)         NULL,
	[idestado]                             int                  DEFAULT 0 NULL,
	[idcidade]                             int                  DEFAULT 0 NULL
		CONSTRAINT [PK_Show] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*    tb_cidade    */
/*------------------------------------------------------------*/

 CREATE TABLE [tb_cidade](
	[id]                                   bigint               NOT NULL,
	[estado]                               int                  DEFAULT 0 NOT NULL,
	[uf]                                   varchar (2)          NOT NULL,
	[nome]                                 varchar (50)         NOT NULL
		CONSTRAINT [PK_tb_cidade] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*    tb_estado    */
/*------------------------------------------------------------*/

 CREATE TABLE [tb_estado](
	[id]                                   bigint               NOT NULL,
	[uf]                                   varchar (2)          NOT NULL,
	[nomeeb]                               varchar (20)         NOT NULL
		CONSTRAINT [PK_tb_estado] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*       TB_LOGIN_GROUP       */
/*------------------------------------------------------------*/

 CREATE TABLE [TB_LOGIN_GROUP](
	[LOGIN_GROUP_NAME]                     varchar (60)         NOT NULL,
	[LOGIN_GROUP_IS_ADMIN]                 bit                  NOT NULL
		CONSTRAINT [LOGIN_GROUP_PK] PRIMARY KEY CLUSTERED
		(
			[LOGIN_GROUP_NAME]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      TB_LOGIN_RULE      */
/*------------------------------------------------------------*/

 CREATE TABLE [TB_LOGIN_RULE](
	[LOGIN_RULE_PROJECT]                   varchar (8)          NOT NULL,
	[LOGIN_GROUP_NAME]                     varchar (60)         NOT NULL,
	[LOGIN_RULE_OBJECT]                    varchar (100)        NOT NULL,
	[LOGIN_RULE_PERMISSIONS]               varchar (100)        NOT NULL
		CONSTRAINT [LOGIN_RULE_PK] PRIMARY KEY CLUSTERED
		(
			[LOGIN_RULE_PROJECT],[LOGIN_GROUP_NAME],[LOGIN_RULE_OBJECT]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      TB_LOGIN_USER      */
/*------------------------------------------------------------*/

 CREATE TABLE [TB_LOGIN_USER](
	[LOGIN_GROUP_NAME]                     varchar (60)         NOT NULL,
	[LOGIN_USER_LOGIN]                     varchar (40)         NOT NULL,
	[LOGIN_USER_PASSWORD]                  varchar (40)         NOT NULL,
	[LOGIN_USER_NAME]                      varchar (60)         NOT NULL,
	[LOGIN_USER_OBS]                       text                 NOT NULL
		CONSTRAINT [LOGIN_USER_PK] PRIMARY KEY CLUSTERED
		(
			[LOGIN_USER_LOGIN]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*   Teatro   */
/*------------------------------------------------------------*/

 CREATE TABLE [Teatro](
	[id]                                   bigint               NOT NULL,
	[tpevento]                             int                  NULL,
	[numevento]                            int                  NULL,
	[periodoi]                             date                 NULL,
	[periodof]                             date                 NULL,
	[foto1]                                varbinary(MAX)       NULL,
	[foto2]                                varbinary(MAX)       NULL,
	[cabec]                                varchar (20)         NULL,
	[descr1]                               varchar (30)         NULL,
	[descr2]                               varchar (30)         NULL,
	[flok]                                 bit                  NULL,
	[Latitude]                             varchar (10)         NULL,
	[LOngitude]                            varchar (10)         NULL,
	[idestado]                             int                  DEFAULT 0 NULL,
	[idcidade]                             int                  DEFAULT 0 NULL
		CONSTRAINT [PK_Teatro] PRIMARY KEY CLUSTERED
		(
			[id]
		) WITH FILLFACTOR = 90
)
GO

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*     Tipoevento     */
/*------------------------------------------------------------*/

 CREATE TABLE [Tipoevento](
	[tpevento]                             int                  IDENTITY(1,1) NOT NULL,
	[nomeev]                               varchar (30)         NOT NULL
		CONSTRAINT [PK_Tipoevento] PRIMARY KEY CLUSTERED
		(
			[tpevento]
		) WITH FILLFACTOR = 90
)
GO

ALTER TABLE [TB_LOGIN_RULE] ADD CONSTRAINT [TB_LOGIN_GROUP_RULE]
	FOREIGN KEY
		([LOGIN_GROUP_NAME])
	REFERENCES [TB_LOGIN_GROUP]
		([LOGIN_GROUP_NAME])
	ON DELETE CASCADE
GO

ALTER TABLE [TB_LOGIN_USER] ADD CONSTRAINT [TB_LOGIN_GROUP_USER]
	FOREIGN KEY
		([LOGIN_GROUP_NAME])
	REFERENCES [TB_LOGIN_GROUP]
		([LOGIN_GROUP_NAME])
	ON DELETE CASCADE
GO

