CREATE TABLE [dbo].[AL_Grila_preturi_centre_colectare] (
    [id_centru]     INT           NULL,
    [cod_centru]    VARCHAR (36)  CONSTRAINT [DF_AL_Grila_preturi_centre_colectare_cod_centru] DEFAULT (newid()) NOT NULL,
    [id_tip_lapte]  INT           NULL,
    [cod_lapte]     CHAR (20)     NOT NULL,
    [data_lunii]    DATETIME2 (0) NOT NULL,
    [tip_plata]     CHAR (1)      NOT NULL,
    [Pret]          FLOAT (53)    NOT NULL,
    [Cantitate]     FLOAT (53)    NOT NULL,
    [Procent]       REAL          NOT NULL,
    [UM]            CHAR (3)      NOT NULL,
    [Data_operarii] DATETIME      NOT NULL,
    [Ora_operarii]  CHAR (6)      NOT NULL,
    [Utilizator]    CHAR (10)     NOT NULL
);


GO
CREATE UNIQUE CLUSTERED INDEX [Unic]
    ON [dbo].[AL_Grila_preturi_centre_colectare]([cod_centru] ASC, [cod_lapte] ASC, [data_lunii] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'backward compatibility AL OLD', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AL_Grila_preturi_centre_colectare', @level2type = N'COLUMN', @level2name = N'cod_centru';

