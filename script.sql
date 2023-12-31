USE [master]
GO
/****** Object:  Database [EXPEDIENTE MEDICO]    Script Date: 08/06/2021 05:08:54 p. m. ******/
CREATE DATABASE [EXPEDIENTE MEDICO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EXPEDIENTE MEDICO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\EXPEDIENTE MEDICO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EXPEDIENTE MEDICO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\EXPEDIENTE MEDICO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EXPEDIENTE MEDICO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET ARITHABORT OFF 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET  MULTI_USER 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET QUERY_STORE = OFF
GO
USE [EXPEDIENTE MEDICO]
GO
/****** Object:  Table [dbo].[ctg_Acciones]    Script Date: 08/06/2021 05:08:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctg_Acciones](
	[Accion_ID] [int] NOT NULL,
	[Accion] [nvarchar](550) NULL,
 CONSTRAINT [PK_ctg_Acciones] PRIMARY KEY CLUSTERED 
(
	[Accion_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ctg_Area]    Script Date: 08/06/2021 05:08:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctg_Area](
	[Area_ID] [int] NOT NULL,
	[Unidad_ID] [int] NULL,
	[Area] [nvarchar](550) NULL,
	[Status_ID] [int] NULL,
 CONSTRAINT [PK_ctg_Area] PRIMARY KEY CLUSTERED 
(
	[Area_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ctg_Cargo]    Script Date: 08/06/2021 05:08:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctg_Cargo](
	[Cargo_id] [int] NOT NULL,
	[Unidad_ID] [int] NULL,
	[Cargo] [nvarchar](550) NULL,
 CONSTRAINT [PK_ctg_Cargo] PRIMARY KEY CLUSTERED 
(
	[Cargo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ctg_Contacto]    Script Date: 08/06/2021 05:08:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctg_Contacto](
	[Contacto_ID] [int] NOT NULL,
	[Contacto] [nvarchar](550) NULL,
 CONSTRAINT [PK_ctg_Contacto] PRIMARY KEY CLUSTERED 
(
	[Contacto_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ctg_Diagnostico]    Script Date: 08/06/2021 05:08:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctg_Diagnostico](
	[Diagnostico_ID] [int] NOT NULL,
	[Diagnostico] [nvarchar](550) NULL,
 CONSTRAINT [PK_ctg_Diagnostico] PRIMARY KEY CLUSTERED 
(
	[Diagnostico_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ctg_Perfil]    Script Date: 08/06/2021 05:08:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctg_Perfil](
	[Perfil_ID] [int] NOT NULL,
	[Perfil] [nvarchar](550) NULL,
 CONSTRAINT [PK_ctg_Perfil] PRIMARY KEY CLUSTERED 
(
	[Perfil_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ctg_Servicio]    Script Date: 08/06/2021 05:08:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctg_Servicio](
	[Servicio_ID] [int] NOT NULL,
	[Servicio] [nvarchar](550) NULL,
 CONSTRAINT [PK_ctg_Servicio] PRIMARY KEY CLUSTERED 
(
	[Servicio_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ctg_TipoReferencia]    Script Date: 08/06/2021 05:08:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctg_TipoReferencia](
	[TIpoReferencia_ID] [int] NOT NULL,
	[TIpoReferencia] [nvarchar](550) NULL,
 CONSTRAINT [PK_ctg_TipoReferencia] PRIMARY KEY CLUSTERED 
(
	[TIpoReferencia_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ctg_Unidad]    Script Date: 08/06/2021 05:08:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctg_Unidad](
	[Unidad_ID] [int] NULL,
	[Unidad] [nvarchar](550) NULL,
	[Clave] [nvarchar](550) NULL,
	[Tipo] [int] NULL,
	[Proveedor] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rel_AccionDiagnostico]    Script Date: 08/06/2021 05:08:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rel_AccionDiagnostico](
	[AccionDiagnostico_ID] [int] NOT NULL,
	[Accion_ID] [int] NULL,
	[Diagnostico_ID] [int] NULL,
	[Status_ID] [int] NULL,
	[Folio] [nvarchar](550) NULL,
 CONSTRAINT [PK_rel_AccionDiagnostico] PRIMARY KEY CLUSTERED 
(
	[AccionDiagnostico_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rel_ContactoPersona]    Script Date: 08/06/2021 05:08:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rel_ContactoPersona](
	[ContactoPersona] [int] NOT NULL,
	[Contacto_id] [int] NULL,
	[Persona_ID] [int] NULL,
	[Valor] [nvarchar](550) NULL,
 CONSTRAINT [PK_rel_ContactoPersona] PRIMARY KEY CLUSTERED 
(
	[ContactoPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rel_UnidadPersona]    Script Date: 08/06/2021 05:08:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rel_UnidadPersona](
	[UnidadPersona] [int] NOT NULL,
	[Persona_ID] [int] NULL,
	[Unidad_ID] [int] NULL,
	[Categoria] [int] NULL,
	[FecRegistro] [date] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_rel_UnidadPersona] PRIMARY KEY CLUSTERED 
(
	[UnidadPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Diagnostico]    Script Date: 08/06/2021 05:08:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Diagnostico](
	[Diagnostico_ID] [int] NOT NULL,
	[Paciente_ID] [int] NULL,
	[ExamenFisico_ID] [int] NULL,
	[Prediagnostico] [int] NULL,
	[Fecha] [date] NULL,
	[ResumenClinico] [nchar](10) NULL,
	[Status_ID] [int] NULL,
	[Medico_ID] [int] NULL,
 CONSTRAINT [PK_tbl_Diagnostico] PRIMARY KEY CLUSTERED 
(
	[Diagnostico_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_DomicilioPaciente]    Script Date: 08/06/2021 05:08:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_DomicilioPaciente](
	[Domicilio_ID] [int] NOT NULL,
	[Paciente_ID] [int] NULL,
	[Calle] [nvarchar](550) NULL,
	[NumExt] [nvarchar](550) NULL,
	[NumInt] [nvarchar](550) NULL,
	[CodigoPostal] [nvarchar](550) NULL,
	[Municipio] [nvarchar](550) NULL,
	[Entidad] [nvarchar](550) NULL,
	[Status_ID] [int] NULL,
 CONSTRAINT [PK_tbl_DomicilioPaciente] PRIMARY KEY CLUSTERED 
(
	[Domicilio_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ExamenFisico]    Script Date: 08/06/2021 05:08:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ExamenFisico](
	[ExamenFisico_ID] [int] NOT NULL,
	[Paciente_ID] [int] NULL,
	[Altura] [numeric](18, 2) NULL,
	[Peso] [numeric](18, 2) NULL,
	[TA] [numeric](18, 2) NULL,
	[FR] [numeric](18, 2) NULL,
	[FC] [numeric](18, 2) NULL,
	[Observaciones] [nvarchar](max) NULL,
	[Fecha] [date] NULL,
	[Status_ID] [int] NULL,
 CONSTRAINT [PK_tbl_ExamenFisico] PRIMARY KEY CLUSTERED 
(
	[ExamenFisico_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Medico]    Script Date: 08/06/2021 05:08:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Medico](
	[Medico_ID] [int] NOT NULL,
	[Persona_ID] [int] NULL,
	[Unidad_ID] [int] NULL,
	[Area_ID] [int] NULL,
	[NumeroTrabajador] [nvarchar](550) NULL,
	[Cargo_ID] [int] NULL,
	[CedulaProfesional] [nvarchar](550) NULL,
	[Expediente] [nvarchar](550) NULL,
 CONSTRAINT [PK_tbl_Medico] PRIMARY KEY CLUSTERED 
(
	[Medico_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Paciente]    Script Date: 08/06/2021 05:08:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Paciente](
	[Paciente_ID] [int] NOT NULL,
	[Persona_ID] [int] NULL,
	[Expediente] [nvarchar](550) NULL,
	[Fotografia] [nvarchar](550) NULL,
 CONSTRAINT [PK_tbl_Paciente] PRIMARY KEY CLUSTERED 
(
	[Paciente_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Persona]    Script Date: 08/06/2021 05:08:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Persona](
	[Persona_ID] [int] NOT NULL,
	[Perfil] [int] NULL,
	[Nombre] [nvarchar](550) NULL,
	[ApPaterno] [nvarchar](550) NULL,
	[ApMaterno] [nvarchar](550) NULL,
	[FecNacimiento] [date] NULL,
	[Genero] [int] NULL,
	[CorreoElectrónico] [nvarchar](550) NULL,
	[Proveedor] [int] NULL,
	[ClaveAcceso] [nvarchar](550) NULL,
	[CodigoAcceso] [nvarchar](550) NULL,
 CONSTRAINT [PK_tbl_Persona] PRIMARY KEY CLUSTERED 
(
	[Persona_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Referencia]    Script Date: 08/06/2021 05:08:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Referencia](
	[Referencia_ID] [int] NOT NULL,
	[UnidadEmisora] [int] NULL,
	[MotivoReferencia] [nvarchar](550) NULL,
	[Paciente_ID] [int] NULL,
	[UnidadReceptora] [int] NULL,
	[TipoReferencia] [int] NULL,
	[Servicio_ID] [int] NULL,
	[TipoTraslado] [int] NULL,
	[Fecha] [datetime] NOT NULL,
	[MotivoEnvio] [nchar](10) NULL,
	[LicenciaOtorgaDesde] [date] NULL,
	[LicenciaOtorgaHasta] [date] NULL,
	[MedicoTratante] [int] NULL,
	[JefeInmediato] [int] NULL,
	[DIrector] [int] NULL,
 CONSTRAINT [PK_tbl_Referencia] PRIMARY KEY CLUSTERED 
(
	[Referencia_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ctg_Unidad]  WITH CHECK ADD  CONSTRAINT [FK_ctg_Unidad_ctg_Area] FOREIGN KEY([Unidad_ID])
REFERENCES [dbo].[ctg_Area] ([Area_ID])
GO
ALTER TABLE [dbo].[ctg_Unidad] CHECK CONSTRAINT [FK_ctg_Unidad_ctg_Area]
GO
ALTER TABLE [dbo].[ctg_Unidad]  WITH CHECK ADD  CONSTRAINT [FK_ctg_Unidad_rel_UnidadPersona] FOREIGN KEY([Unidad_ID])
REFERENCES [dbo].[rel_UnidadPersona] ([UnidadPersona])
GO
ALTER TABLE [dbo].[ctg_Unidad] CHECK CONSTRAINT [FK_ctg_Unidad_rel_UnidadPersona]
GO
ALTER TABLE [dbo].[rel_AccionDiagnostico]  WITH CHECK ADD  CONSTRAINT [FK_rel_AccionDiagnostico_ctg_Acciones] FOREIGN KEY([Accion_ID])
REFERENCES [dbo].[ctg_Acciones] ([Accion_ID])
GO
ALTER TABLE [dbo].[rel_AccionDiagnostico] CHECK CONSTRAINT [FK_rel_AccionDiagnostico_ctg_Acciones]
GO
ALTER TABLE [dbo].[rel_AccionDiagnostico]  WITH CHECK ADD  CONSTRAINT [FK_rel_AccionDiagnostico_tbl_Diagnostico] FOREIGN KEY([Diagnostico_ID])
REFERENCES [dbo].[tbl_Diagnostico] ([Diagnostico_ID])
GO
ALTER TABLE [dbo].[rel_AccionDiagnostico] CHECK CONSTRAINT [FK_rel_AccionDiagnostico_tbl_Diagnostico]
GO
ALTER TABLE [dbo].[rel_ContactoPersona]  WITH CHECK ADD  CONSTRAINT [FK_rel_ContactoPersona_ctg_Contacto] FOREIGN KEY([Contacto_id])
REFERENCES [dbo].[ctg_Contacto] ([Contacto_ID])
GO
ALTER TABLE [dbo].[rel_ContactoPersona] CHECK CONSTRAINT [FK_rel_ContactoPersona_ctg_Contacto]
GO
ALTER TABLE [dbo].[rel_ContactoPersona]  WITH CHECK ADD  CONSTRAINT [FK_rel_ContactoPersona_tbl_Persona] FOREIGN KEY([Persona_ID])
REFERENCES [dbo].[tbl_Persona] ([Persona_ID])
GO
ALTER TABLE [dbo].[rel_ContactoPersona] CHECK CONSTRAINT [FK_rel_ContactoPersona_tbl_Persona]
GO
ALTER TABLE [dbo].[rel_UnidadPersona]  WITH CHECK ADD  CONSTRAINT [FK_rel_UnidadPersona_tbl_Persona] FOREIGN KEY([Persona_ID])
REFERENCES [dbo].[tbl_Persona] ([Persona_ID])
GO
ALTER TABLE [dbo].[rel_UnidadPersona] CHECK CONSTRAINT [FK_rel_UnidadPersona_tbl_Persona]
GO
ALTER TABLE [dbo].[tbl_Diagnostico]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Diagnostico_ctg_Diagnostico] FOREIGN KEY([Prediagnostico])
REFERENCES [dbo].[ctg_Diagnostico] ([Diagnostico_ID])
GO
ALTER TABLE [dbo].[tbl_Diagnostico] CHECK CONSTRAINT [FK_tbl_Diagnostico_ctg_Diagnostico]
GO
ALTER TABLE [dbo].[tbl_Diagnostico]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Diagnostico_tbl_ExamenFisico] FOREIGN KEY([ExamenFisico_ID])
REFERENCES [dbo].[tbl_ExamenFisico] ([ExamenFisico_ID])
GO
ALTER TABLE [dbo].[tbl_Diagnostico] CHECK CONSTRAINT [FK_tbl_Diagnostico_tbl_ExamenFisico]
GO
ALTER TABLE [dbo].[tbl_Diagnostico]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Diagnostico_tbl_Medico] FOREIGN KEY([Medico_ID])
REFERENCES [dbo].[tbl_Medico] ([Medico_ID])
GO
ALTER TABLE [dbo].[tbl_Diagnostico] CHECK CONSTRAINT [FK_tbl_Diagnostico_tbl_Medico]
GO
ALTER TABLE [dbo].[tbl_Diagnostico]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Diagnostico_tbl_Paciente] FOREIGN KEY([Paciente_ID])
REFERENCES [dbo].[tbl_Paciente] ([Paciente_ID])
GO
ALTER TABLE [dbo].[tbl_Diagnostico] CHECK CONSTRAINT [FK_tbl_Diagnostico_tbl_Paciente]
GO
ALTER TABLE [dbo].[tbl_DomicilioPaciente]  WITH CHECK ADD  CONSTRAINT [FK_tbl_DomicilioPaciente_tbl_Paciente] FOREIGN KEY([Paciente_ID])
REFERENCES [dbo].[tbl_Paciente] ([Paciente_ID])
GO
ALTER TABLE [dbo].[tbl_DomicilioPaciente] CHECK CONSTRAINT [FK_tbl_DomicilioPaciente_tbl_Paciente]
GO
ALTER TABLE [dbo].[tbl_DomicilioPaciente]  WITH CHECK ADD  CONSTRAINT [FK_tbl_DomicilioPaciente_tbl_Paciente1] FOREIGN KEY([Paciente_ID])
REFERENCES [dbo].[tbl_Paciente] ([Paciente_ID])
GO
ALTER TABLE [dbo].[tbl_DomicilioPaciente] CHECK CONSTRAINT [FK_tbl_DomicilioPaciente_tbl_Paciente1]
GO
ALTER TABLE [dbo].[tbl_DomicilioPaciente]  WITH CHECK ADD  CONSTRAINT [FK_tbl_DomicilioPaciente_tbl_Paciente2] FOREIGN KEY([Paciente_ID])
REFERENCES [dbo].[tbl_Paciente] ([Paciente_ID])
GO
ALTER TABLE [dbo].[tbl_DomicilioPaciente] CHECK CONSTRAINT [FK_tbl_DomicilioPaciente_tbl_Paciente2]
GO
ALTER TABLE [dbo].[tbl_ExamenFisico]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ExamenFisico_tbl_Paciente] FOREIGN KEY([Paciente_ID])
REFERENCES [dbo].[tbl_Paciente] ([Paciente_ID])
GO
ALTER TABLE [dbo].[tbl_ExamenFisico] CHECK CONSTRAINT [FK_tbl_ExamenFisico_tbl_Paciente]
GO
ALTER TABLE [dbo].[tbl_Medico]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Medico_ctg_Area] FOREIGN KEY([Area_ID])
REFERENCES [dbo].[ctg_Area] ([Area_ID])
GO
ALTER TABLE [dbo].[tbl_Medico] CHECK CONSTRAINT [FK_tbl_Medico_ctg_Area]
GO
ALTER TABLE [dbo].[tbl_Medico]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Medico_ctg_Cargo] FOREIGN KEY([Cargo_ID])
REFERENCES [dbo].[ctg_Cargo] ([Cargo_id])
GO
ALTER TABLE [dbo].[tbl_Medico] CHECK CONSTRAINT [FK_tbl_Medico_ctg_Cargo]
GO
ALTER TABLE [dbo].[tbl_Paciente]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Paciente_tbl_Persona] FOREIGN KEY([Persona_ID])
REFERENCES [dbo].[tbl_Persona] ([Persona_ID])
GO
ALTER TABLE [dbo].[tbl_Paciente] CHECK CONSTRAINT [FK_tbl_Paciente_tbl_Persona]
GO
ALTER TABLE [dbo].[tbl_Persona]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Persona_ctg_Perfil] FOREIGN KEY([Perfil])
REFERENCES [dbo].[ctg_Perfil] ([Perfil_ID])
GO
ALTER TABLE [dbo].[tbl_Persona] CHECK CONSTRAINT [FK_tbl_Persona_ctg_Perfil]
GO
ALTER TABLE [dbo].[tbl_Referencia]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Referencia_ctg_Servicio] FOREIGN KEY([Servicio_ID])
REFERENCES [dbo].[ctg_Servicio] ([Servicio_ID])
GO
ALTER TABLE [dbo].[tbl_Referencia] CHECK CONSTRAINT [FK_tbl_Referencia_ctg_Servicio]
GO
ALTER TABLE [dbo].[tbl_Referencia]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Referencia_ctg_TipoReferencia] FOREIGN KEY([TipoReferencia])
REFERENCES [dbo].[ctg_TipoReferencia] ([TIpoReferencia_ID])
GO
ALTER TABLE [dbo].[tbl_Referencia] CHECK CONSTRAINT [FK_tbl_Referencia_ctg_TipoReferencia]
GO
ALTER TABLE [dbo].[tbl_Referencia]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Referencia_ctg_TipoReferencia1] FOREIGN KEY([TipoReferencia])
REFERENCES [dbo].[ctg_TipoReferencia] ([TIpoReferencia_ID])
GO
ALTER TABLE [dbo].[tbl_Referencia] CHECK CONSTRAINT [FK_tbl_Referencia_ctg_TipoReferencia1]
GO
ALTER TABLE [dbo].[tbl_Referencia]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Referencia_tbl_Medico] FOREIGN KEY([MedicoTratante])
REFERENCES [dbo].[tbl_Medico] ([Medico_ID])
GO
ALTER TABLE [dbo].[tbl_Referencia] CHECK CONSTRAINT [FK_tbl_Referencia_tbl_Medico]
GO
USE [master]
GO
ALTER DATABASE [EXPEDIENTE MEDICO] SET  READ_WRITE 
GO
