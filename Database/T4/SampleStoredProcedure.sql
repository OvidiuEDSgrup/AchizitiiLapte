-- delete the following assembly reference when you are using SQL2005

		create procedure __RefactorLog_delete 
		@OperationKey uniqueidentifier		as 
		delete from __RefactorLog where	 
        OperationKey = @OperationKey


		create procedure AL_Achizitii_delete 
		@id_achizitie int		as 
		delete from AL_Achizitii where	 
        id_achizitie = @id_achizitie


		create procedure AL_Analize_achizitii_delete 
		@id_analiza int		as 
		delete from AL_Analize_achizitii where	 
        id_analiza = @id_analiza


		create procedure AL_Centre_colectare_delete 
		@id_centru int		as 
		delete from AL_Centre_colectare where	 
        id_centru = @id_centru


		create procedure AL_Indicatori_analiza_delete 
		@cod_indicator varchar		as 
		delete from AL_Indicatori_analiza where	 
        cod_indicator = @cod_indicator


		create procedure AL_Indicatori_analiza_Tipuri_lapte_delete 
				as 
		delete from AL_Indicatori_analiza_Tipuri_lapte where	 


		create procedure AL_Liste_achizitii_delete 
		@id_lista int		as 
		delete from AL_Liste_achizitii where	 
        id_lista = @id_lista


		create procedure AL_Producatori_delete 
		@id_prod int		as 
		delete from AL_Producatori where	 
        id_prod = @id_prod


		create procedure AL_Tipuri_lapte_delete 
		@id_tip_lapte int		as 
		delete from AL_Tipuri_lapte where	 
        id_tip_lapte = @id_tip_lapte


		create procedure Judete_delete 
				as 
		delete from Judete where	 


		create procedure lm_delete 
				as 
		delete from lm where	 


		create procedure Localitati_delete 
				as 
		delete from Localitati where	 


		create procedure nomencl_delete 
				as 
		delete from nomencl where	 


		create procedure rute_delete 
		@codRuta varchar		as 
		delete from rute where	 
        codRuta = @codRuta


		create procedure sysdiagrams_delete 
		@diagram_id int		as 
		delete from sysdiagrams where	 
        diagram_id = @diagram_id


		create procedure Tari_delete 
				as 
		delete from Tari where	 


		create procedure terti_delete 
				as 
		delete from terti where	 


		create procedure um_delete 
				as 
		delete from um where	 


		create procedure utilizatori_delete 
				as 
		delete from utilizatori where	 


