CREATE TABLE [dbo].[AL_Grila_preturi_centre_colectare] (
    [data_lunii]    DATETIME2 (0)   NOT NULL,
    [id_centru]     INT             NOT NULL,
    [id_tip_lapte]  INT             NOT NULL,
    [cod_centru]    VARCHAR (36)    NULL,
    [cod_lapte]     VARCHAR (20)    NULL,
    [tip_plata]     CHAR (1)        NOT NULL,
    [pret]          DECIMAL (12, 5) NOT NULL,
    [cantitate]     DECIMAL (12, 3) NOT NULL,
    [procent]       DECIMAL (5, 3)  NOT NULL,
    [UM]            VARCHAR (3)     NOT NULL,
    [data_operarii] DATETIME2 (3)   NOT NULL,
    [operator]      VARCHAR (10)    NULL,
    CONSTRAINT [CK_AL_Grila_preturi_centre_colectare_tip_plata] CHECK ([tip_plata]=LEFT('Zilnica',1) OR [tip_plata]=LEFT('Saptamanala',1) OR [tip_plata]=LEFT('Bilunara',1) OR [tip_plata]=LEFT('Lunara', 1) OR [tip_plata]=LEFT('Initiala',1)),
    CONSTRAINT [FK_AL_Grila_preturi_centre_colectare_AL_Centre_colectare] FOREIGN KEY ([id_centru]) REFERENCES [dbo].[AL_Centre_colectare] ([id_centru]),
    CONSTRAINT [FK_AL_Grila_preturi_centre_colectare_Nomencl] FOREIGN KEY ([cod_lapte]) REFERENCES [dbo].[nomencl] ([Cod]),
    CONSTRAINT [FK_AL_Grila_preturi_centre_colectare_Um] FOREIGN KEY ([UM]) REFERENCES [dbo].[um] ([UM]),
    CONSTRAINT [FK_AL_Grila_preturi_centre_colectare_Utilizatori] FOREIGN KEY ([operator]) REFERENCES [dbo].[utilizatori] ([ID])
);




GO
CREATE UNIQUE CLUSTERED INDEX [Unic]
    ON [dbo].[AL_Grila_preturi_centre_colectare]([data_lunii] ASC, [id_centru] ASC, [id_tip_lapte] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'backward compatibility AL OLD', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AL_Grila_preturi_centre_colectare', @level2type = N'COLUMN', @level2name = N'cod_centru';

