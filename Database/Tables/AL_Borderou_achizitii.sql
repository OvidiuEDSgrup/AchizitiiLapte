CREATE TABLE [dbo].[BordAchizLapte] (
    [data_lunii]       DATETIME   NOT NULL,
    [tip_plata]              CHAR (1)   NOT NULL,
    [cod_prod]       VARCHAR(36)   NULL,
    [cod_centru] VARCHAR(36)   NULL,
    [cod_lapte]        VARCHAR(20)  NULL,
    [Cant_UM]          DECIMAL(12, 3) NOT NULL,
    [Grasime_1]        REAL       NOT NULL,
    [Grasime_2]        REAL       NOT NULL,
    [Grasime]          REAL       NOT NULL,
    [Cant_UG]          FLOAT (53) NOT NULL,
    [Cant_STAS]        FLOAT (53) NOT NULL,
    [Pret]             FLOAT (53) NOT NULL,
    [Valoare]          FLOAT (53) NOT NULL,
    [Data_operarii]    DATETIME   NOT NULL,
    [Ora_operarii]     CHAR (6)   NOT NULL,
    [Utilizator]       CHAR (10)  NOT NULL
);


GO
CREATE NONCLUSTERED INDEX [missing_index_158]
    ON [dbo].[BordAchizLapte]([cod_prod] ASC);


GO
CREATE NONCLUSTERED INDEX [missing_index_146]
    ON [dbo].[BordAchizLapte]([cod_prod] ASC)
    INCLUDE([data_lunii], [tip_plata], [cod_centru], [cod_lapte], [Cant_UM], [Grasime]);


GO
CREATE NONCLUSTERED INDEX [missing_index_131]
    ON [dbo].[BordAchizLapte]([cod_centru] ASC, [cod_lapte] ASC, [data_lunii] ASC)
    INCLUDE([tip_plata], [cod_prod], [Cant_UM], [Grasime], [Cant_UG]);


GO
CREATE NONCLUSTERED INDEX [missing_index_1049]
    ON [dbo].[BordAchizLapte]([cod_prod] ASC)
    INCLUDE([data_lunii], [tip_plata], [cod_centru], [cod_lapte], [Cant_UM], [Grasime], [Cant_UG], [Cant_STAS], [Pret], [Valoare]);


GO
CREATE NONCLUSTERED INDEX [Data]
    ON [dbo].[BordAchizLapte]([data_lunii] DESC, [tip_plata] ASC, [cod_prod] ASC, [cod_centru] ASC, [cod_lapte] ASC) WITH (FILLFACTOR = 80);


GO
CREATE NONCLUSTERED INDEX [_dta_index_BordAchizLapte_13_434204697__K6_K5_K4_K1_K3_K2_7_8_9_12]
    ON [dbo].[BordAchizLapte]([Cant_UM] ASC, [cod_lapte] ASC, [cod_centru] ASC, [data_lunii] ASC, [cod_prod] ASC, [tip_plata] ASC)
    INCLUDE([Grasime_1], [Grasime_2], [Grasime], [Pret]) WITH (FILLFACTOR = 80);


GO
CREATE NONCLUSTERED INDEX [_dta_index_BordAchizLapte_13_434204697__K1_K2_K3_K4_K5_K6_7_8_9]
    ON [dbo].[BordAchizLapte]([data_lunii] ASC, [tip_plata] ASC, [cod_prod] ASC, [cod_centru] ASC, [cod_lapte] ASC, [Cant_UM] ASC)
    INCLUDE([Grasime_1], [Grasime_2], [Grasime]) WITH (FILLFACTOR = 80);


GO
CREATE UNIQUE CLUSTERED INDEX [Unic]
    ON [dbo].[BordAchizLapte]([data_lunii] DESC, [tip_plata] ASC, [cod_prod] ASC, [cod_centru] ASC, [cod_lapte] ASC) WITH (FILLFACTOR = 80);

