CREATE TABLE [dbo].[BordAchizLapte] (
    [Data_lunii]       DATETIME   NOT NULL,
    [Tip]              CHAR (1)   NOT NULL,
    [Producator]       CHAR (9)   NOT NULL,
    [Centru_colectare] CHAR (9)   NOT NULL,
    [Tip_lapte]        CHAR (20)  NOT NULL,
    [Cant_UM]          FLOAT (53) NOT NULL,
    [Grasime_1]        REAL       NOT NULL,
    [Grasime_2]        REAL       NOT NULL,
    [Grasime]          REAL       NOT NULL,
    [Cant_UG]          FLOAT (53) NOT NULL,
    [Cant_STAS]        FLOAT (53) NOT NULL,
    [Pret]             FLOAT (53) NOT NULL,
    [Valoare]          FLOAT (53) NOT NULL,
    [Nr_doc]           CHAR (20)  DEFAULT ('') NOT NULL,
    [Data_doc]         DATETIME   DEFAULT ('') NOT NULL,
    [Data_operarii]    DATETIME   NOT NULL,
    [Ora_operarii]     CHAR (6)   NOT NULL,
    [Utilizator]       CHAR (10)  NOT NULL
);


GO
CREATE NONCLUSTERED INDEX [Data]
    ON [dbo].[BordAchizLapte]([Data_lunii] DESC, [Tip] ASC, [Producator] ASC, [Centru_colectare] ASC, [Tip_lapte] ASC);


GO
CREATE UNIQUE CLUSTERED INDEX [Unic]
    ON [dbo].[BordAchizLapte]([Data_lunii] ASC, [Tip] ASC, [Producator] ASC, [Centru_colectare] ASC, [Tip_lapte] ASC);

