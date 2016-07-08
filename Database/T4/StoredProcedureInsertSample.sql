-- Next line is only needed on SQL 2008


		IF  EXISTS (SELECT * FROM sys.objects 
			WHERE object_id = OBJECT_ID(N'__RefactorLog_insert') AND type in (N'P', N'PC'))
		DROP PROCEDURE  __RefactorLog_insert
		GO
		
		create procedure __RefactorLog_insert
            @OperationKey uniqueidentifier    
		as
		insert into __RefactorLog 
		(
		    OperationKey
		) values (
		    @OperationKey 
        )
        GO


		IF  EXISTS (SELECT * FROM sys.objects 
			WHERE object_id = OBJECT_ID(N'AL_Achizitii_insert') AND type in (N'P', N'PC'))
		DROP PROCEDURE  AL_Achizitii_insert
		GO
		
		create procedure AL_Achizitii_insert
            @id_achizitie int , @id_lista int , @id_prod int , @cantitate decimal , @pret decimal , @data_operarii datetime2 , @operator varchar , @detalii     
		as
		insert into AL_Achizitii 
		(
		    id_achizitie , id_lista , id_prod , cantitate , pret , data_operarii , operator , detalii
		) values (
		    @id_achizitie , @id_lista , @id_prod , @cantitate , @pret , @data_operarii , @operator , @detalii 
        )
        GO


		IF  EXISTS (SELECT * FROM sys.objects 
			WHERE object_id = OBJECT_ID(N'AL_Analize_achizitii_insert') AND type in (N'P', N'PC'))
		DROP PROCEDURE  AL_Analize_achizitii_insert
		GO
		
		create procedure AL_Analize_achizitii_insert
            @id_analiza int , @id_achizitie int , @cod_indicator varchar , @rezultat decimal , @detalii  , @data_operarii datetime2 , @operator varchar    
		as
		insert into AL_Analize_achizitii 
		(
		    id_analiza , id_achizitie , cod_indicator , rezultat , detalii , data_operarii , operator
		) values (
		    @id_analiza , @id_achizitie , @cod_indicator , @rezultat , @detalii , @data_operarii , @operator 
        )
        GO


		IF  EXISTS (SELECT * FROM sys.objects 
			WHERE object_id = OBJECT_ID(N'AL_Centre_colectare_insert') AND type in (N'P', N'PC'))
		DROP PROCEDURE  AL_Centre_colectare_insert
		GO
		
		create procedure AL_Centre_colectare_insert
            @id_centru int , @cod_centru varchar , @denumire varchar , @cod_IBAN varchar , @banca varchar , @sat varchar , @comuna varchar , @cod_loc varchar , @cod_jud varchar , @cod_tara varchar , @responsabil varchar , @loc_munca varchar , @tip_pers char , @subunit varchar , @tert varchar , @cod_ruta varchar , @ord_ruta smallint , @data_operarii datetime2 , @operator varchar , @detalii     
		as
		insert into AL_Centre_colectare 
		(
		    id_centru , cod_centru , denumire , cod_IBAN , banca , sat , comuna , cod_loc , cod_jud , cod_tara , responsabil , loc_munca , tip_pers , subunit , tert , cod_ruta , ord_ruta , data_operarii , operator , detalii
		) values (
		    @id_centru , @cod_centru , @denumire , @cod_IBAN , @banca , @sat , @comuna , @cod_loc , @cod_jud , @cod_tara , @responsabil , @loc_munca , @tip_pers , @subunit , @tert , @cod_ruta , @ord_ruta , @data_operarii , @operator , @detalii 
        )
        GO


		IF  EXISTS (SELECT * FROM sys.objects 
			WHERE object_id = OBJECT_ID(N'AL_Indicatori_analiza_insert') AND type in (N'P', N'PC'))
		DROP PROCEDURE  AL_Indicatori_analiza_insert
		GO
		
		create procedure AL_Indicatori_analiza_insert
            @cod_indicator varchar , @denumire varchar    
		as
		insert into AL_Indicatori_analiza 
		(
		    cod_indicator , denumire
		) values (
		    @cod_indicator , @denumire 
        )
        GO


		IF  EXISTS (SELECT * FROM sys.objects 
			WHERE object_id = OBJECT_ID(N'AL_Indicatori_analiza_Tipuri_lapte_insert') AND type in (N'P', N'PC'))
		DROP PROCEDURE  AL_Indicatori_analiza_Tipuri_lapte_insert
		GO
		
		create procedure AL_Indicatori_analiza_Tipuri_lapte_insert
            @id_tip_lapte int , @cod_indicator varchar , @denumire varchar , @val_standard decimal , @ord_achizitii tinyint , @ord_receptii tinyint    
		as
		insert into AL_Indicatori_analiza_Tipuri_lapte 
		(
		    id_tip_lapte , cod_indicator , denumire , val_standard , ord_achizitii , ord_receptii
		) values (
		    @id_tip_lapte , @cod_indicator , @denumire , @val_standard , @ord_achizitii , @ord_receptii 
        )
        GO


		IF  EXISTS (SELECT * FROM sys.objects 
			WHERE object_id = OBJECT_ID(N'AL_Liste_achizitii_insert') AND type in (N'P', N'PC'))
		DROP PROCEDURE  AL_Liste_achizitii_insert
		GO
		
		create procedure AL_Liste_achizitii_insert
            @id_lista int , @data_lunii datetime2 , @id_centru int , @id_tip_lapte int , @cod_centru varchar , @cod_lapte varchar , @tip_plata char , @cantitate decimal , @pret decimal , @data_operarii datetime2 , @operator varchar    
		as
		insert into AL_Liste_achizitii 
		(
		    id_lista , data_lunii , id_centru , id_tip_lapte , cod_centru , cod_lapte , tip_plata , cantitate , pret , data_operarii , operator
		) values (
		    @id_lista , @data_lunii , @id_centru , @id_tip_lapte , @cod_centru , @cod_lapte , @tip_plata , @cantitate , @pret , @data_operarii , @operator 
        )
        GO


		IF  EXISTS (SELECT * FROM sys.objects 
			WHERE object_id = OBJECT_ID(N'AL_Producatori_insert') AND type in (N'P', N'PC'))
		DROP PROCEDURE  AL_Producatori_insert
		GO
		
		create procedure AL_Producatori_insert
            @id_prod int , @cod_prod varchar , @denumire varchar , @initiala_tata char , @CNP_CUI varchar , @serie_BI char , @nr_BI char , @elib_BI varchar , @cod_jud varchar , @cod_loc varchar , @cod_tara varchar , @comuna varchar , @sat varchar , @strada varchar , @nr_str varchar , @nr_casa varchar , @bloc varchar , @scara varchar , @etaj varchar , @ap varchar , @cod_exploatatie varchar , @cota_actuala decimal , @grad_actual decimal , @nr_contr varchar , @data_contr datetime2 , @valabil_contr datetime2 , @cant_contr decimal , @nr_vaci smallint , @grupa char , @pret decimal , @bonus tinyint , @tip_pers char , @subunit varchar , @tert varchar , @reprezentant varchar , @CNP_repr varchar , @id_centru int , @loc_munca varchar , @DACL tinyint , @tip_furnizor char , @cont_banca varchar , @banca varchar , @data_operarii datetime2 , @operator varchar , @detalii     
		as
		insert into AL_Producatori 
		(
		    id_prod , cod_prod , denumire , initiala_tata , CNP_CUI , serie_BI , nr_BI , elib_BI , cod_jud , cod_loc , cod_tara , comuna , sat , strada , nr_str , nr_casa , bloc , scara , etaj , ap , cod_exploatatie , cota_actuala , grad_actual , nr_contr , data_contr , valabil_contr , cant_contr , nr_vaci , grupa , pret , bonus , tip_pers , subunit , tert , reprezentant , CNP_repr , id_centru , loc_munca , DACL , tip_furnizor , cont_banca , banca , data_operarii , operator , detalii
		) values (
		    @id_prod , @cod_prod , @denumire , @initiala_tata , @CNP_CUI , @serie_BI , @nr_BI , @elib_BI , @cod_jud , @cod_loc , @cod_tara , @comuna , @sat , @strada , @nr_str , @nr_casa , @bloc , @scara , @etaj , @ap , @cod_exploatatie , @cota_actuala , @grad_actual , @nr_contr , @data_contr , @valabil_contr , @cant_contr , @nr_vaci , @grupa , @pret , @bonus , @tip_pers , @subunit , @tert , @reprezentant , @CNP_repr , @id_centru , @loc_munca , @DACL , @tip_furnizor , @cont_banca , @banca , @data_operarii , @operator , @detalii 
        )
        GO


		IF  EXISTS (SELECT * FROM sys.objects 
			WHERE object_id = OBJECT_ID(N'AL_Tipuri_lapte_insert') AND type in (N'P', N'PC'))
		DROP PROCEDURE  AL_Tipuri_lapte_insert
		GO
		
		create procedure AL_Tipuri_lapte_insert
            @id_tip_lapte int , @cod_lapte varchar , @den_lapte varchar , @are_cota tinyint    
		as
		insert into AL_Tipuri_lapte 
		(
		    id_tip_lapte , cod_lapte , den_lapte , are_cota
		) values (
		    @id_tip_lapte , @cod_lapte , @den_lapte , @are_cota 
        )
        GO


		IF  EXISTS (SELECT * FROM sys.objects 
			WHERE object_id = OBJECT_ID(N'Judete_insert') AND type in (N'P', N'PC'))
		DROP PROCEDURE  Judete_insert
		GO
		
		create procedure Judete_insert
            @cod_judet varchar , @denumire varchar , @prefix_telefonic varchar , @resedinta varchar    
		as
		insert into Judete 
		(
		    cod_judet , denumire , prefix_telefonic , resedinta
		) values (
		    @cod_judet , @denumire , @prefix_telefonic , @resedinta 
        )
        GO


		IF  EXISTS (SELECT * FROM sys.objects 
			WHERE object_id = OBJECT_ID(N'lm_insert') AND type in (N'P', N'PC'))
		DROP PROCEDURE  lm_insert
		GO
		
		create procedure lm_insert
            @Nivel smallint , @Cod varchar , @Cod_parinte varchar , @Denumire varchar    
		as
		insert into lm 
		(
		    Nivel , Cod , Cod_parinte , Denumire
		) values (
		    @Nivel , @Cod , @Cod_parinte , @Denumire 
        )
        GO


		IF  EXISTS (SELECT * FROM sys.objects 
			WHERE object_id = OBJECT_ID(N'Localitati_insert') AND type in (N'P', N'PC'))
		DROP PROCEDURE  Localitati_insert
		GO
		
		create procedure Localitati_insert
            @cod_oras varchar , @cod_judet varchar , @tip_oras varchar , @oras varchar , @cod_postal varchar , @extern bit    
		as
		insert into Localitati 
		(
		    cod_oras , cod_judet , tip_oras , oras , cod_postal , extern
		) values (
		    @cod_oras , @cod_judet , @tip_oras , @oras , @cod_postal , @extern 
        )
        GO


		IF  EXISTS (SELECT * FROM sys.objects 
			WHERE object_id = OBJECT_ID(N'nomencl_insert') AND type in (N'P', N'PC'))
		DROP PROCEDURE  nomencl_insert
		GO
		
		create procedure nomencl_insert
            @Cod varchar , @Tip char , @Denumire varchar , @UM varchar , @UM_1 varchar , @Coeficient_conversie_1 float , @UM_2 varchar , @Coeficient_conversie_2 float , @Cont varchar , @Grupa varchar , @Valuta varchar , @Pret_in_valuta float , @Pret_stoc float , @Pret_vanzare float , @Pret_cu_amanuntul float , @Cota_TVA real , @Stoc_limita float , @Stoc float , @Greutate_specifica float , @Furnizor varchar , @Loc_de_munca varchar , @Gestiune varchar , @Categorie smallint , @Tip_echipament varchar , @detalii     
		as
		insert into nomencl 
		(
		    Cod , Tip , Denumire , UM , UM_1 , Coeficient_conversie_1 , UM_2 , Coeficient_conversie_2 , Cont , Grupa , Valuta , Pret_in_valuta , Pret_stoc , Pret_vanzare , Pret_cu_amanuntul , Cota_TVA , Stoc_limita , Stoc , Greutate_specifica , Furnizor , Loc_de_munca , Gestiune , Categorie , Tip_echipament , detalii
		) values (
		    @Cod , @Tip , @Denumire , @UM , @UM_1 , @Coeficient_conversie_1 , @UM_2 , @Coeficient_conversie_2 , @Cont , @Grupa , @Valuta , @Pret_in_valuta , @Pret_stoc , @Pret_vanzare , @Pret_cu_amanuntul , @Cota_TVA , @Stoc_limita , @Stoc , @Greutate_specifica , @Furnizor , @Loc_de_munca , @Gestiune , @Categorie , @Tip_echipament , @detalii 
        )
        GO


		IF  EXISTS (SELECT * FROM sys.objects 
			WHERE object_id = OBJECT_ID(N'rute_insert') AND type in (N'P', N'PC'))
		DROP PROCEDURE  rute_insert
		GO
		
		create procedure rute_insert
            @codRuta varchar , @denumire varchar , @descriere varchar , @detalii     
		as
		insert into rute 
		(
		    codRuta , denumire , descriere , detalii
		) values (
		    @codRuta , @denumire , @descriere , @detalii 
        )
        GO


		IF  EXISTS (SELECT * FROM sys.objects 
			WHERE object_id = OBJECT_ID(N'sysdiagrams_insert') AND type in (N'P', N'PC'))
		DROP PROCEDURE  sysdiagrams_insert
		GO
		
		create procedure sysdiagrams_insert
            @name sysname , @principal_id int , @version int , @definition varbinary    
		as
		insert into sysdiagrams 
		(
		    name , principal_id , version , definition
		) values (
		    @name , @principal_id , @version , @definition 
        )
        GO


		IF  EXISTS (SELECT * FROM sys.objects 
			WHERE object_id = OBJECT_ID(N'Tari_insert') AND type in (N'P', N'PC'))
		DROP PROCEDURE  Tari_insert
		GO
		
		create procedure Tari_insert
            @cod_tara varchar , @denumire varchar , @prefix_telefonic varchar , @Teritoriu char , @Val1 float , @Data datetime , @Detalii varchar    
		as
		insert into Tari 
		(
		    cod_tara , denumire , prefix_telefonic , Teritoriu , Val1 , Data , Detalii
		) values (
		    @cod_tara , @denumire , @prefix_telefonic , @Teritoriu , @Val1 , @Data , @Detalii 
        )
        GO


		IF  EXISTS (SELECT * FROM sys.objects 
			WHERE object_id = OBJECT_ID(N'terti_insert') AND type in (N'P', N'PC'))
		DROP PROCEDURE  terti_insert
		GO
		
		create procedure terti_insert
            @Subunitate varchar , @Tert varchar , @Denumire varchar , @Cod_fiscal varchar , @Localitate varchar , @Judet varchar , @Adresa varchar , @Telefon_fax varchar , @Banca varchar , @Cont_in_banca varchar , @Tert_extern bit , @Grupa varchar , @Cont_ca_furnizor varchar , @Cont_ca_beneficiar varchar , @Sold_ca_furnizor float , @Sold_ca_beneficiar float , @Sold_maxim_ca_beneficiar float , @Disccount_acordat real , @detalii     
		as
		insert into terti 
		(
		    Subunitate , Tert , Denumire , Cod_fiscal , Localitate , Judet , Adresa , Telefon_fax , Banca , Cont_in_banca , Tert_extern , Grupa , Cont_ca_furnizor , Cont_ca_beneficiar , Sold_ca_furnizor , Sold_ca_beneficiar , Sold_maxim_ca_beneficiar , Disccount_acordat , detalii
		) values (
		    @Subunitate , @Tert , @Denumire , @Cod_fiscal , @Localitate , @Judet , @Adresa , @Telefon_fax , @Banca , @Cont_in_banca , @Tert_extern , @Grupa , @Cont_ca_furnizor , @Cont_ca_beneficiar , @Sold_ca_furnizor , @Sold_ca_beneficiar , @Sold_maxim_ca_beneficiar , @Disccount_acordat , @detalii 
        )
        GO


		IF  EXISTS (SELECT * FROM sys.objects 
			WHERE object_id = OBJECT_ID(N'um_insert') AND type in (N'P', N'PC'))
		DROP PROCEDURE  um_insert
		GO
		
		create procedure um_insert
            @UM varchar , @Denumire varchar    
		as
		insert into um 
		(
		    UM , Denumire
		) values (
		    @UM , @Denumire 
        )
        GO


		IF  EXISTS (SELECT * FROM sys.objects 
			WHERE object_id = OBJECT_ID(N'utilizatori_insert') AND type in (N'P', N'PC'))
		DROP PROCEDURE  utilizatori_insert
		GO
		
		create procedure utilizatori_insert
            @ID varchar , @Nume varchar , @Parola varchar , @Info varchar , @Categoria smallint , @Jurnal varchar , @Marca varchar , @Observatii varchar    
		as
		insert into utilizatori 
		(
		    ID , Nume , Parola , Info , Categoria , Jurnal , Marca , Observatii
		) values (
		    @ID , @Nume , @Parola , @Info , @Categoria , @Jurnal , @Marca , @Observatii 
        )
        GO


