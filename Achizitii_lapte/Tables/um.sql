﻿CREATE TABLE dbo.um (
    UM       VARCHAR (3)  NOT NULL,
    Denumire VARCHAR (30) NOT NULL
);


GO
CREATE NONCLUSTERED INDEX Denumire
    ON dbo.um(Denumire ASC);


GO
CREATE UNIQUE CLUSTERED INDEX UM
    ON dbo.um(UM ASC);

