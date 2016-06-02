CREATE TABLE [dbo].[AL_Grila_preturi_centre_colectare] (
    [id_centru]     INT           NOT NULL,
    [cod_centru]    VARCHAR (36)   NULL,
    [id_tip_lapte]  INT           NOT NULL,
    [cod_lapte]     VARCHAR(20)     NOT NULL,
    [data_lunii]    DATETIME2 (0) NOT NULL,
    [tip_plata]     CHAR (1)      NOT NULL,
    [pret]          DECIMAL(12, 5)    NOT NULL,
    [cantitate]     DECIMAL(12, 3)    NOT NULL,
    [procent]       DECIMAL(5, 3)          NOT NULL,
    [UM]            VARCHAR(3)      NOT NULL,
    [data_operarii] DATETIME2(3)      NOT NULL,
    [operator]    VARCHAR(10)     NULL, 
    CONSTRAINT [FK_AL_Grila_preturi_centre_colectare_AL_Centre_colectare] FOREIGN KEY (id_centru) REFERENCES [AL_Centre_colectare](id_centru), 
    CONSTRAINT [FK_AL_Grila_preturi_centre_colectare_Nomencl] FOREIGN KEY (cod_lapte) REFERENCES Nomencl(cod)
);


GO
CREATE UNIQUE CLUSTERED INDEX [Unic]
    ON [dbo].[AL_Grila_preturi_centre_colectare]([cod_centru] ASC, [cod_lapte] ASC, [data_lunii] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'backward compatibility AL OLD', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AL_Grila_preturi_centre_colectare', @level2type = N'COLUMN', @level2name = N'cod_centru';

