create or replace package cd_firmas_utl is

   --||
   --|| CD_FIRMAS_UTL : Utilitarios para CD_FIRMAS
   --||

   function cod_grupo(cod in cd_firmas.firma%type
                     ,gru in char) return cd_firmas.firma%type;
   pragma restrict_references(cod_grupo,
                              wnds,
                              wnps);

   function nome_grupo(cod in cd_firmas.firma%type
                      ,gru in char) return cd_firmas.nome%type;
   pragma restrict_references(nome_grupo,
                              wnds,
                              wnps);

   function nome(cod in cd_firmas.firma%type) return cd_firmas.nome%type;
   pragma restrict_references(nome,
                              wnds,
                              wnps);
   --------------------------------------------------------------------------------
   function is_filial(p_firm in cd_firmas.firma%type ) return boolean;                              
  --------------------------------------------------------------------------------
   function firma_filial(emp in cd_filiais.empresa%type,
                         fil in cd_filiais.filial%type) return cd_firmas.firma%type;
   
   --------------------------------------------------------------------------------
   function nome(cod in varchar2) return cd_firmas.nome%type;
   pragma restrict_references(nome,
                              wnds,
                              wnps);

   --------------------------------------------------------------------------------
   function pais(cod in cd_firmas.firma%type) return cd_paises.pais%type;
   /*
   || Retorna sigla do pais
   */
   function cod_cidade(cod in cd_firmas.firma%type)
      return cd_firmas.cod_cidade%type;
   pragma restrict_references(cod_cidade,
                              wnds,
                              wnps);

   function cidade(cod in cd_firmas.firma%type) return cd_cidades.cidade%type;
   pragma restrict_references(cidade,
                              wnds,
                              wnps);

   function endereco(cod in cd_firmas.firma%type) return cd_firmas.endereco%type;
   pragma restrict_references(endereco,
                              wnds,
                              wnps);
   --------------------------------------------------------------------------------
   function uf_cidade(cod in cd_cidades.cod_cidade%type) return cd_cidades.uf%type;
   pragma restrict_references(uf_cidade,
                              wnds,
                              wnps);
                              
   function uf(cod in cd_firmas.firma%type) return cd_firmas.uf%type;
   pragma restrict_references(uf,
                              wnds,
                              wnps);
   ---------------------------------------------------------------------------------
   function uf_ibge(cod in cd_firmas.firma%type) return cd_uf.cd_ibge%type;
   pragma restrict_references(uf_ibge,
                              wnds,
                              wnps);
   --------------------------------------------------------------------------------
   function uf_ibge(p_uf in cd_uf.uf%type) return cd_uf.cd_ibge%type;
   pragma restrict_references(uf_ibge,
                              wnds,
                              wnps);
   ---------------------------------------------------------------------------------                              
   function nacional(cod in cd_firmas.firma%type) return cd_firmas.nacional%type;
   pragma restrict_references(uf,
                              wnds,
                              wnps);

   function cgc_cpf(v_firma cd_firmas.firma%type) return cd_firmas.cgc_cpf%type;
   pragma restrict_references(cgc_cpf,
                              wnds,
                              wnps);
   
      --------------------------------------------------------------------------------

   function cnpj_filial(p_emp cd_filiais.empresa%type
                        , p_fil cd_filiais.filial%type) return cd_firmas.cgc_cpf%type;
   pragma restrict_references(cnpj_filial,
                              wnds,
                              wnps);
                              
   function cnpj_cpf_sem_masc(v_firma cd_firmas.firma%type) return cd_firmas.cgc_cpf%type;
   pragma restrict_references(cnpj_cpf_sem_masc,
                              wnds,
                              wnps);
   function inscr(v_firma cd_firmas.firma%type) return cd_firmas.iest%type;
   pragma restrict_references(inscr,
                              wnds,
                              wnps);

   function regiao(cod in cd_firmas.firma%type) return cd_regioes.descricao%type;
   pragma restrict_references(regiao,
                              wnds,
                              wnps);

   function cod_regiao(cod in cd_firmas.firma%type)
      return cd_regioes.descricao%type;
   pragma restrict_references(cod_regiao,
                              wnds,
                              wnps);

   function supervisor(cod in cd_firmas.firma%type) return cd_firmas.firma%type;
   pragma restrict_references(supervisor,
                              wnds,
                              wnps);

   function fone(cod in cd_firmas.firma%type) return cd_fones.fone%type;
   pragma restrict_references(fone,
                              wnds,
                              wnps);

   function tipo(cod in cd_firmas.firma%type
                ,tip in cd_classif.tipo_firma%type) return char;
   pragma restrict_references(tipo,
                              wnds,
                              wnps);

   function contato(cod in cd_firmas.firma%type) return cd_contatos.contato%type;
   pragma restrict_references(contato,
                              wnds,
                              wnps);

   function contato(cod in cd_firmas.firma%type
                   ,ind in cd_contatos.indice%type)
      return cd_contatos.contato%type;
   pragma restrict_references(contato,
                              wnds,
                              wnps);

   function area(cod in cd_firmas.firma%type) return cd_regioes.descricao%type;
   pragma restrict_references(area,
                              wnds,
                              wnps);

   function cod_area(cod in cd_firmas.firma%type) return cd_areas.descricao%type;
   pragma restrict_references(cod_area,
                              wnds,
                              wnps);

   function cod_cidade_cob(cod in cd_firmas.firma%type)
      return cd_firmas.cod_cidade%type;
   pragma restrict_references(cod_cidade_cob,
                              wnds,
                              wnps);

   function cidade_cob(cod in cd_firmas.firma%type) return cd_cidades.cidade%type;
   pragma restrict_references(cidade_cob,
                              wnds,
                              wnps);

   function endereco_cob(cod in cd_firmas.firma%type)
      return cd_firmas.endereco%type;
   pragma restrict_references(endereco_cob,
                              wnds,
                              wnps);

   function uf_cob(cod in cd_firmas.firma%type) return cd_firmas.uf%type;
   pragma restrict_references(uf_cob,
                              wnds,
                              wnps);

   function cep_cob(cod in cd_firmas.firma%type) return cd_firmas.cep%type;
   pragma restrict_references(cep_cob,
                              wnds,
                              wnps);

   function cep(cod in cd_firmas.firma%type) return cd_firmas.cep%type;
   pragma restrict_references(cep,
                              wnds,
                              wnps);

   function bairro_cob(cod in cd_firmas.firma%type) return cd_firmas.cep%type;
   pragma restrict_references(bairro_cob,
                              wnds,
                              wnps);

   function bairro(cod in cd_firmas.firma%type) return cd_firmas.cep%type;
   pragma restrict_references(bairro,
                              wnds,
                              wnps);

   function email(cod in cd_firmas.firma%type) return cd_firmas.email%type;
   pragma restrict_references(email,
                              wnds,
                              wnps);
   --------------------------------------------------------------------------------
   function email_contato(cod in cd_firmas.firma%type
                         ,ind in cd_contatos.indice%type)
      return cd_contatos.email%type;
   pragma restrict_references(email_contato,
                              wnds,
                              wnps);   
                              
   --------------------------------------------------------------------------------
   function email_nfe(cod in cd_firmas.firma%type
                      )
      return cd_contatos.email%type; 
   pragma restrict_references(email_nfe,
                              wnds,
                              wnps);                                                                  
   --------------------------------------------------------------------------------
   function email_usu(usu in cd_firmas.usuario%type) return cd_firmas.email%type;
   pragma restrict_references(email_usu,
                              wnds,
                              wnps);

   function reduzido(cod in cd_firmas.firma%type) return cd_firmas.reduzido%type;
   pragma restrict_references(reduzido,
                              wnds,
                              wnps);

   ----------------------------------------------------------------------------------------------
   -- Retorna o Numero de "Filiais" de uma Firma
   ----------------------------------------------------------------------------------------------
   function filiais(fir cd_firmas.firma%type) return number;
   pragma restrict_references(filiais,
                              wnds,
                              wnps);

   function fax(cod in cd_firmas.firma%type) return cd_fones.fone%type;
   pragma restrict_references(fax,
                              wnds,
                              wnps);

   function centro_custo(p_firm cd_firmas.firma%type) return cg_ccusto.ccusto%type;

   function chapa(chp in cd_firmas.firma%type) return cd_firmas.nome%type;
   pragma restrict_references(chapa,
                              wnds,
                              wnps);

   -----------------------------------------------------------------------------------------------
   function usuario_chapa(usr in cd_firmas.usuario%type)
      return cd_firmas.chapa%type;
-----------------------------------------------------------------------------------------------
   function usuario(p_cd in cd_firmas.firma%type)
      return cd_firmas.usuario%type;      
   -----------------------------------------------------------------------------------------------
   -----------------------------------------------------------------------------------------------
   function usuario_codigo(usr in cd_firmas.usuario%type)
      return cd_firmas.firma%type;

   ------------------------------------------------------------------------------------------------
   function nome_usuario(usr in cd_firmas.usuario%type) return cd_firmas.nome%type;
   
   ------------------------------------------------------------------------------------------------
   function codigo_por_cnpjcpf(p_cnpj cd_firmas.cgc_cpf%type) return cd_firmas.firma%type;
  --|--------------------------------------------------------------------------------------
  FUNCTION IS_DIRETOR RETURN CHAR;
  --|--------------------------------------------------------------------------------------
  function cidade_ibge(p_ibge number, p_cid varchar2, p_uf varchar2) return cd_cidades.cod_cidade%type;
  
  --|--------------------------------------------------------------------------------------
  function cidade_ibge(p_cid cd_cidades.cod_cidade%type) return cd_cidades.ibge%type;
    
  --|--------------------------------------------------------------------------------------
  function cidade_ibge_firma(p_firma number) return cd_cidades.ibge%type;
    
end cd_firmas_utl;
/
create or replace package body cd_firmas_utl is

   --||
   --|| CD_FIRMAS_UTL : Utilitarios para CD_FIRMAS
   --||

   --------------------------------------------------------------------------------
   function cod_grupo(cod in cd_firmas.firma%type
                     ,gru in char) return cd_firmas.firma%type
   /*
      || Retorn codigo do grupo
      */
    is
   
   begin
   
      if gru = 'S' then
         return trunc(cod / 100) * 100;
      else
         return cod;
      end if;
   
   exception
   
      when others then
         return 0;
      
   end;

   --------------------------------------------------------------------------------
   function nome_grupo(cod in cd_firmas.firma%type
                      ,gru in char) return cd_firmas.nome%type
   /*
      || Retorn nome do grupo da firma
      */
    is
   
      v_cod   cd_firmas.firma%type;
      v_campo cd_firmas.nome%type;
   
      cursor cr is
         select firma
               ,nome
           from cd_firmas
          where firma >= trunc(cod / 100) * 100;
   
   begin
   
      if gru = 'S' then
         open cr;
         fetch cr
            into v_cod
                ,v_campo;
         if cr%notfound then
            close cr;
            return '';
         end if;
         close cr;
         if trunc(v_cod / 100) = trunc(cod / 100) then
            return v_campo;
         else
            return '';
         end if;
      else
         select nome into v_campo from cd_firmas where firma = cod;
         return v_campo;
      end if;
   
   exception
   
      when others then
         return '';
      
   end;
   --------------------------------------------------------------------------------
   function firma_filial(emp in cd_filiais.empresa%type,
                         fil in cd_filiais.filial%type) return cd_firmas.firma%type
   /*
      || Retorna codigo da firma da filial
      */
    is
   
      v_campo  cd_firmas.firma%type;
   
   begin
   
      select firma into v_campo from cd_firmas where empresa = emp
                                                and filial = fil;
      return v_campo;
   
   exception
   
      when others then
         return null;
      
   end;
   
   --------------------------------------------------------------------------------
   function is_filial(p_firm in cd_firmas.firma%type ) return boolean
   /*
      || Retorna se codigo � uma filial
      */
    is
   
      v_campo  varchar2(100);
      v_ret boolean;
   begin
      v_ret := false;
      
      select 1 into v_campo from cd_firmas where filial is not null and firma = p_firm;
      if v_campo is not null then
         v_ret := true;
      end if;
      return v_ret;
   
   exception
   
      when others then
         return false;
      
   end;   
   --------------------------------------------------------------------------------
   function nome(cod in cd_firmas.firma%type) return cd_firmas.nome%type
   /*
      || Retorn nome da firma
      */
    is
   
      v_campo cd_firmas.nome%type;
   
   begin
   
      select nome into v_campo from cd_firmas where firma = cod;
      return v_campo;
   
   exception
   
      when others then
         return '';
      
   end;
   --------------------------------------------------------------------------------
   function nome(cod varchar2) return cd_firmas.nome%type
   /*
      || Retorn nome da firma
      */
    is
   
      v_campo cd_firmas.nome%type;
   
   begin
      if lib_util.is_numeric(cod)= 'S' then
      
         select nome into v_campo from cd_firmas where firma = cod;
      else
         select nome into v_campo from cd_firmas where usuario = cod;
      end if;
      
      return v_campo;
   
   exception
   
      when others then
         return '';
      
   end;

   --------------------------------------------------------------------------------
   function cod_cidade(cod in cd_firmas.firma%type)
      return cd_firmas.cod_cidade%type
   /*
      || Retorna codigo cidade
      */
    is
   
      v_campo cd_firmas.cod_cidade%type;
   
   begin
   
      select cod_cidade into v_campo from cd_firmas where firma = cod;
      return v_campo;
   
   exception
   
      when others then
         return null;
      
   end;

   --------------------------------------------------------------------------------
   function cidade(cod in cd_firmas.firma%type) return cd_cidades.cidade%type
   /*
      || Retorna nome da cidade
      */
    is
   
      v_campo cd_firmas.cod_cidade%type;
      v_cida  cd_cidades.cidade%type;
   
   begin
   
      select cod_cidade into v_campo from cd_firmas where firma = cod;
      select cidade into v_cida from cd_cidades where cod_cidade = v_campo;
      return v_cida;
   
   exception
   
      when others then
         return '';
      
   end;

   --------------------------------------------------------------------------------
   function pais(cod in cd_firmas.firma%type) return cd_paises.pais%type
   /*
      || Retorna sigla do pais
      */
    is
   
      v_campo cd_firmas.cod_cidade%type;
      v_pais  cd_paises.pais%type;
   
   begin
   
      select pais into v_pais from cd_firmas where firma = cod;
      --  select cidade into v_cida from cd_cidades where cod_cidade = v_campo;
      return v_pais;
   
   exception
   
      when others then
         return '';
      
   end;

   --------------------------------------------------------------------------------
   function endereco(cod in cd_firmas.firma%type) return cd_firmas.endereco%type
   /*
      || Retorna endereco
      */
    is
   
      v_campo cd_firmas.endereco%type;
   
   begin
      select endereco into v_campo from cd_firmas where firma = cod;
   
      return v_campo;
   
   exception
      when others then
         return '';
      
   end;
   --------------------------------------------------------------------------------
   function uf_cidade(cod in cd_cidades.cod_cidade%type) return cd_cidades.uf%type
   /*
      || Retorna nome da cidade
      */
    is
   
      v_uf  cd_cidades.uf%type;
   
   begin
   

      select uf into v_uf from cd_cidades where cod_cidade = cod;
      return v_uf;
   
   exception
   
      when others then
         return '';
      
   end;

   --------------------------------------------------------------------------------
   function uf(cod in cd_firmas.firma%type) return cd_firmas.uf%type
   /*
      || Retorna UF
      */
    is
   
      v_campo cd_firmas.uf%type;
   
   begin
   
      select uf into v_campo from cd_firmas where firma = cod;
      return v_campo;
   
   exception
   
      when others then
         return '';
      
   end;
   --------------------------------------------------------------------------------
   function uf_ibge(cod in cd_firmas.firma%type) return cd_uf.cd_ibge%type
   /*
      || Retorna UF
      */
    is
   
      v_campo cd_uf.cd_ibge%type;
   
   begin
   
      select b.cd_ibge
        into v_campo
        from cd_firmas a
            ,cd_uf     b
       where a.firma = cod
         and b.uf = a.uf;
   
      return v_campo;
   
   exception
   
      when others then
         return null;
      
   end;
   --------------------------------------------------------------------------------
   function uf_ibge(p_uf in cd_uf.uf%type) return cd_uf.cd_ibge%type
   /*
      || Retorna UF
      */
    is
   
      v_campo cd_uf.cd_ibge%type;
   
   begin
   
      select b.cd_ibge into v_campo from cd_uf b where b.uf = p_uf;
   
      return v_campo;
   
   exception
   
      when others then
         return null;
      
   end;
   --------------------------------------------------------------------------------
   function nacional(cod in cd_firmas.firma%type) return cd_firmas.nacional%type
   /*
      || Retorna nacional
      */
    is
   
      v_campo cd_firmas.nacional%type;
   
   begin
   
      select nacional into v_campo from cd_firmas where firma = cod;
      return v_campo;
   
   exception
   
      when others then
         return '';
      
   end;

   --------------------------------------------------------------------------------

   function cgc_cpf(v_firma cd_firmas.firma%type) return cd_firmas.cgc_cpf%type
   /*
      || Retorna cgc/cpf do destinatario/remetente
      */
    is
   
      v_val cd_firmas.cgc_cpf%type;
   
   begin
   
      select cgc_cpf into v_val from cd_firmas where firma = v_firma;
      return v_val;
   
   exception
   
      when others then
         return '';
      
   end;
   
   --------------------------------------------------------------------------------

   function cnpj_filial(p_emp cd_filiais.empresa%type
                        , p_fil cd_filiais.filial%type) return cd_firmas.cgc_cpf%type
   /*
      || Retorna cgc/cpf da filial
      */
    is
   
      v_val cd_firmas.cgc_cpf%type;
   
   begin
   
      select cgc_cpf into v_val 
        from cd_firmas where empresa = p_emp
                         and filial  = p_fil;
      return v_val;
   
   exception
   
      when others then
         return '';
      
   end;   
      --------------------------------------------------------------------------------

   function cnpj_cpf_sem_masc(v_firma cd_firmas.firma%type) return cd_firmas.cgc_cpf%type
   /*
      || Retorna cgc/cpf do destinatario/remetente
      */
    is
   
      v_val cd_firmas.cgc_cpf%type;
   
   begin
   
      select replace(replace(replace(cgc_cpf,'.',''),'/',''),'-','') into v_val from cd_firmas where firma = v_firma;
      return v_val;
   
   exception
   
      when others then
         return '';
      
   end;
   --------------------------------------------------------------------------------
   function inscr(v_firma cd_firmas.firma%type) return cd_firmas.iest%type
   /*
      || Retorna inscricao / incr.produtor
      */
    is
   
      v_nat cd_firmas.natureza%type;
      v_ie  cd_firmas.iest%type;
      v_ip  cd_firmas.ipro%type;
   
   begin
   
      select natureza
            ,iest
            ,ipro
        into v_nat
            ,v_ie
            ,v_ip
        from cd_firmas
       where firma = v_firma;
      if v_nat = 'J' then
         return v_ie;
      else
         return v_ip;
      end if;
   
   exception
   
      when others then
         return '';
      
   end;

   --------------------------------------------------------------------------------
   function regiao(cod in cd_firmas.firma%type) return cd_regioes.descricao%type
   /*
      || Retorna regiao
      */
    is
   
      v_campo cd_regioes.regiao%type;
      v_desc  cd_regioes.descricao%type;
   
   begin
   
      select regiao into v_campo from cd_firmas where firma = cod;
      v_desc := '';
      if v_campo is not null then
         select descricao into v_desc from cd_regioes where regiao = v_campo;
      end if;
      return v_desc;
   
   exception
   
      when others then
         return '';
      
   end;

   --------------------------------------------------------------------------------
   function cod_regiao(cod in cd_firmas.firma%type)
      return cd_regioes.descricao%type
   /*
      || Retorna codigo da regiao
      */
    is
   
      v_campo cd_regioes.regiao%type;
   
   begin
   
      select regiao into v_campo from cd_firmas where firma = cod;
      return v_campo;
   
   exception
   
      when others then
         return '';
      
   end;

   --------------------------------------------------------------------------------
   function supervisor(cod in cd_firmas.firma%type) return cd_firmas.firma%type
   /*
      || Retorna supervisor
      */
    is
   
      v_campo cd_firmas.firma%type;
   
   begin
   
      select supervisor into v_campo from cd_firmas where firma = cod;
      return v_campo;
   
   exception
   
      when others then
         return null;
      
   end;

   --------------------------------------------------------------------------------
   function fone(cod in cd_firmas.firma%type) return cd_fones.fone%type
   /*
      || Retorna telefone
      */
    is
   
      v_campo cd_fones.fone%type;
      cursor cr is
         select '(' || ddd || ') ' || fone
           from cd_fones
          where firma = cod
          order by firma
                  ,indice;
   
   begin
   
      open cr;
      fetch cr
         into v_campo;
      if cr%notfound then
         v_campo := '';
      end if;
      close cr;
      return v_campo;
   
   exception
   
      when others then
         return null;
      
   end;

   --------------------------------------------------------------------------------
   function tipo(cod in cd_firmas.firma%type
                ,tip in cd_classif.tipo_firma%type) return char
   /*
      || Retorna se firma e do tipo indicado
      */
    is
   
      v_campo cd_classif.tipo_firma%type;
      v_ret   char(1);
      v_num   number;
      cursor cr(t cd_classif.tipo_firma%type) is
         select 1
           from cd_classif
          where firma = cod
            and tipo_firma = t;
   
   begin
   
      v_ret   := 'N';
      v_campo := upper(tip);
      open cr(v_campo);
      fetch cr
         into v_num;
      if cr%found then
         v_ret := 'S';
      end if;
      close cr;
      return v_ret;
   
   exception
   
      when others then
         return null;
      
   end;

   --------------------------------------------------------------------------------
   function contato(cod in cd_firmas.firma%type) return cd_contatos.contato%type
   /*
      || Retorna Contato
      */
    is
   
      v_campo cd_contatos.contato%type;
      cursor cr is
         select contato
           from cd_contatos
          where firma = cod
          order by firma
                  ,indice;
   
   begin
   
      open cr;
      fetch cr
         into v_campo;
      if cr%notfound then
         v_campo := '';
      end if;
      close cr;
      return v_campo;
   
   exception
   
      when others then
         return null;
      
   end;
 --------------------------------------------------------------------------------
   function contato(cod in cd_firmas.firma%type
                   ,ind in cd_contatos.indice%type)
      return cd_contatos.contato%type
   /*
      || Retorna Contato por indice
      */
    is
   
      v_campo cd_contatos.contato%type;
      cursor cr is
         select contato
           from cd_contatos
          where firma = cod
            and (ind is null or indice = ind)
          order by firma
                  ,indice;
   
   begin
   
      open cr;
      fetch cr
         into v_campo;
      if cr%notfound then
         v_campo := '';
      end if;
      close cr;
      return v_campo;
   
   exception
   
      when others then
         return null;
      
   end;
   --------------------------------------------------------------------------------
   function email_contato(cod in cd_firmas.firma%type
                         ,ind in cd_contatos.indice%type)
      return cd_contatos.email%type
   /*
      || Retorna E-mail do Contato por indice
      */
    is
   

      cursor cr is
         select a.email
           from cd_contatos a
          where firma = cod
            and (ind is null or indice = ind)
          order by firma
                  ,indice;
   v_campo cd_contatos.email%type;
   
   begin
   
      open cr;
      fetch cr
         into v_campo;
      if cr%notfound then
         v_campo := '';
      end if;
      close cr;
      return v_campo;
   
   exception
   
      when others then
         return null;
      
   end;
   --------------------------------------------------------------------------------
   function email_nfe(cod in cd_firmas.firma%type
                      )
      return cd_contatos.email%type
   /*
      || Retorna E-mail do Contato por indice
      */
    is
   

      cursor cr is
         select a.email
           from cd_contatos a
          where firma = cod
            and a.tipo_cont = 'NFE';

   v_campo cd_contatos.email%type;
   
   begin
   
      open cr;
      fetch cr
         into v_campo;
      if cr%notfound then
         v_campo := '';
      end if;
      close cr;
      return v_campo;
   
   exception
   
      when others then
         return null;
      
   end;   
   --------------------------------------------------------------------------------
   function area(cod in cd_firmas.firma%type) return cd_regioes.descricao%type
   /*
      || Retorna area
      */
    is
   
      v_campo cd_areas.area%type;
      v_desc  cd_areas.descricao%type;
   
   begin
   
      select area into v_campo from cd_firmas where firma = cod;
      v_desc := '';
      if v_campo is not null then
         select descricao into v_desc from cd_areas where area = v_campo;
      end if;
      return v_desc;
   
   exception
   
      when others then
         return '';
      
   end;

   --------------------------------------------------------------------------------
   function cod_area(cod in cd_firmas.firma%type) return cd_areas.descricao%type
   /*
      || Retorna codigo da area
      */
    is
   
      v_campo cd_areas.area%type;
   
   begin
   
      select area into v_campo from cd_firmas where firma = cod;
      return v_campo;
   
   exception
   
      when others then
         return '';
      
   end;

   --------------------------------------------------------------------------------
   function cod_cidade_cob(cod in cd_firmas.firma%type)
      return cd_firmas.cod_cidade%type
   /*
      || Retorna codigo cidade de cobranca
      */
    is
   
      cursor cr1(t cd_ender.tipo_ender%type) is
         select cod_cidade
           from cd_ender
          where firma = cod
            and tipo_ender = t
          order by firma
                  ,indice;
   
      v_campo cd_firmas.cod_cidade%type;
      v_tipo  cd_ender.tipo_ender%type;
   
   begin
   
      --select ender_cob into v_tipo from ft_prgen;
      v_tipo := 'COBRANCA';
   
      open cr1(v_tipo);
      fetch cr1
         into v_campo;
      if cr1%notfound then
         v_campo := null;
      end if;
      close cr1;
   
      if v_campo is not null then
         return v_campo;
      end if;
   
      select cod_cidade into v_campo from cd_firmas where firma = cod;
      return v_campo;
   
   exception
   
      when others then
         return null;
      
   end;

   --------------------------------------------------------------------------------
   function cidade_cob(cod in cd_firmas.firma%type) return cd_cidades.cidade%type
   /*
      || Retorna nome da cidade de cobranca
      */
    is
   
      cursor cr1(t cd_ender.tipo_ender%type) is
         select cod_cidade
           from cd_ender
          where firma = cod
            and tipo_ender = t
          order by firma
                  ,indice;
   
      v_campo cd_firmas.cod_cidade%type;
      v_tipo  cd_ender.tipo_ender%type;
      v_cida  cd_cidades.cidade%type;
   
   begin
   
      --select ender_cob into v_tipo from ft_prgen;
      v_tipo := 'COBRANCA';
   
      open cr1(v_tipo);
      fetch cr1
         into v_campo;
      if cr1%notfound then
         v_campo := null;
      end if;
      close cr1;
   
      if v_campo is null then
         select cod_cidade into v_campo from cd_firmas where firma = cod;
      end if;
      select cidade into v_cida from cd_cidades where cod_cidade = v_campo;
      return v_cida;
   
   exception
   
      when others then
         return '';
      
   end;

   --------------------------------------------------------------------------------
   function endereco_cob(cod in cd_firmas.firma%type)
      return cd_firmas.endereco%type
   /*
      || Retorna endereco de cobranca
      */
    is
   
      cursor cr1(t cd_ender.tipo_ender%type) is
         select endereco
           from cd_ender
          where firma = cod
            and tipo_ender = t
          order by firma
                  ,indice;
   
      v_campo cd_firmas.endereco%type;
      v_tipo  cd_ender.tipo_ender%type;
   
   begin
   
      --select ender_cob into v_tipo from ft_prgen;
      v_tipo := 'COBRANCA';
   
      open cr1(v_tipo);
      fetch cr1
         into v_campo;
      if cr1%notfound then
         v_campo := null;
      end if;
      close cr1;
   
      if v_campo is null then
         select endereco into v_campo from cd_firmas where firma = cod;
      end if;
   
      return v_campo;
   
   exception
      when others then
         return '';
      
   end;

   --------------------------------------------------------------------------------
   function uf_cob(cod in cd_firmas.firma%type) return cd_firmas.uf%type
   /*
      || Retorna UF de cobranca
      */
    is
   
      cursor cr1(t cd_ender.tipo_ender%type) is
         select uf
           from cd_ender
          where firma = cod
            and tipo_ender = t
          order by firma
                  ,indice;
   
      v_tipo  cd_ender.tipo_ender%type;
      v_campo cd_firmas.uf%type;
   
   begin
   
      --select ender_cob into v_tipo from ft_prgen;
      v_tipo := 'COBRANCA';
   
      open cr1(v_tipo);
      fetch cr1
         into v_campo;
      if cr1%notfound then
         v_campo := null;
      end if;
      close cr1;
   
      if v_campo is null then
         select uf into v_campo from cd_firmas where firma = cod;
      end if;
   
      return v_campo;
   
   exception
   
      when others then
         return '';
      
   end;

   --------------------------------------------------------------------------------
   function cep_cob(cod in cd_firmas.firma%type) return cd_firmas.cep%type
   /*
      || Retorna CEP de cobranca
      */
    is
   
      cursor cr1(t cd_ender.tipo_ender%type) is
         select cep
           from cd_ender
          where firma = cod
            and tipo_ender = t
          order by firma
                  ,indice;
   
      v_tipo  cd_ender.tipo_ender%type;
      v_campo cd_firmas.cep%type;
   
   begin
   
      --select ender_cob into v_tipo from ft_prgen;
      v_tipo := 'COBRANCA';
   
      open cr1(v_tipo);
      fetch cr1
         into v_campo;
      if cr1%notfound then
         v_campo := null;
      end if;
      close cr1;
   
      if v_campo is null then
         select cep into v_campo from cd_firmas where firma = cod;
      end if;
   
      return v_campo;
   
   exception
   
      when others then
         return '';
      
   end;

   --------------------------------------------------------------------------------
   function cep(cod in cd_firmas.firma%type) return cd_firmas.cep%type
   /*
      || Retorna CEP
      */
    is
   
      v_campo cd_firmas.cep%type;
   
   begin
   
      select cep into v_campo from cd_firmas where firma = cod;
   
      return v_campo;
   
   exception
   
      when others then
         return '';
      
   end;

   --------------------------------------------------------------------------------
   function bairro_cob(cod in cd_firmas.firma%type) return cd_firmas.cep%type
   /*
      || Retorna BAIRRO de cobranca
      */
    is
   
      cursor cr1(t cd_ender.tipo_ender%type) is
         select bairro
           from cd_ender
          where firma = cod
            and tipo_ender = t
          order by firma
                  ,indice;
   
      v_tipo  cd_ender.tipo_ender%type;
      v_campo cd_firmas.bairro%type;
   
   begin
   
      --select ender_cob into v_tipo from ft_prgen;
      v_tipo := 'COBRANCA';
   
      open cr1(v_tipo);
      fetch cr1
         into v_campo;
      if cr1%notfound then
         v_campo := null;
      end if;
      close cr1;
   
      if v_campo is null then
         select bairro into v_campo from cd_firmas where firma = cod;
      end if;
   
      return v_campo;
   
   exception
   
      when others then
         return '';
      
   end;

   --------------------------------------------------------------------------------
   function bairro(cod in cd_firmas.firma%type) return cd_firmas.cep%type
   /*
      || Retorna BAIRRO
      */
    is
   
      v_campo cd_firmas.bairro%type;
   
   begin
   
      select bairro into v_campo from cd_firmas where firma = cod;
   
      return v_campo;
   
   exception
   
      when others then
         return '';
      
   end;

   --------------------------------------------------------------------------------
   function email(cod in cd_firmas.firma%type) return cd_firmas.email%type
   /*
      || Retorna E-MAIL
      */
    is
   
      v_email cd_firmas.email%type;
   
   begin
   
      select email into v_email from cd_firmas where firma = cod;
   
      return v_email;
   
   exception
   
      when others then
         return '';
      
   end;

   --------------------------------------------------------------------------------
   function email_usu(usu in cd_firmas.usuario%type) return cd_firmas.email%type
   /*
      || Retorna E-MAIL
      */
    is
   
      v_email cd_firmas.email%type;
   
   begin
   
      select email into v_email from cd_firmas where usuario = usu;
   
      return v_email;
   
   exception
   
      when others then
         return '';
      
   end;
   ------------------------------------------------------------------------------
   function reduzido(cod in cd_firmas.firma%type) return cd_firmas.reduzido%type
   /*
      || Retorn nome REDUZIDO da firma
      */
    is
   
      v_campo cd_firmas.reduzido%type;
   
   begin
   
      select reduzido into v_campo from cd_firmas where firma = cod;
      return v_campo;
   
   exception
   
      when others then
         return '';
      
   end;

   ----------------------------------------------------------------------------------------------
   -- Retorna o Numero de "Filiais" de uma Firma
   ----------------------------------------------------------------------------------------------
   function filiais(fir cd_firmas.firma%type) return number is
      cursor curfirma(pc_fir cd_firmas.firma%type) is
         select count(firma)
           from cd_firmas
          where firma between round(pc_fir,
                                    -2) and
                round(pc_fir,
                      -2) + 99;
      num_filiais number;
   begin
      open curfirma(fir);
      fetch curfirma
         into num_filiais;
      close curfirma;
   
      return num_filiais;
   exception
      when others then
         return null;
      
   end;

   -----------------------------------------------------------------------------------------------
   function fax(cod in cd_firmas.firma%type) return cd_fones.fone%type
   /*
      || Retorna o Fax
      */
    is
   
      v_campo cd_fones.fone%type;
      cursor cr is
         select '(' || ddd || ') ' || fone
           from cd_fones
          where firma = cod
            and tipo_fone = 'FAX'
          order by firma
                  ,indice;
   
   begin
   
      open cr;
      fetch cr
         into v_campo;
      if cr%notfound then
         v_campo := '';
      end if;
      close cr;
      return v_campo;
   
   exception
   
      when others then
         return null;
      
   end;
   -----------------------------------------------------------------------------------------------
   function centro_custo(p_firm cd_firmas.firma%type) return cg_ccusto.ccusto%type is
      cursor cr is
         select ccusto
           from cd_cargos a
               ,cd_firmas b
          where b.firma = p_firm
            and lib_cniv.sub_nivel(a.cargo,
                                   b.cargo) = 'S';
   
      v_ret cg_ccusto.ccusto%type;
   begin
      open cr;
      fetch cr
         into v_ret;
      close cr;
   
      return v_ret;
   
   end;

   -----------------------------------------------------------------------------------------------
   function chapa(chp in cd_firmas.firma%type) return cd_firmas.nome%type
   /*
      || Retorna nome da firma atraves da chapa
      */
    is
   
      v_campo cd_firmas.nome%type;
   
   begin
   
      select nome into v_campo from cd_firmas where chapa = chp;
      return v_campo;
   
   exception
   
      when others then
         return '';
      
   end;

   -----------------------------------------------------------------------------------------------

   -----------------------------------------------------------------------------------------------
   function usuario_chapa(usr in cd_firmas.usuario%type)
      return cd_firmas.chapa%type
   
    is
   
      v_campo cd_firmas.chapa%type;
   
   begin
   
      select chapa into v_campo from cd_firmas where usuario = usr;
   
      return v_campo;
   
   exception
   
      when others then
         return '';
      
   end;
-----------------------------------------------------------------------------------------------
   function usuario(p_cd in cd_firmas.firma%type)
      return cd_firmas.usuario%type
   
    is
   
      v_campo cd_firmas.usuario%type;
   
   begin
   
      select usuario into v_campo from cd_firmas where firma = p_cd;
   
      return v_campo;
   
   exception
   
      when others then
         return '';
      
   end;   
   -----------------------------------------------------------------------------------------------
   function usuario_codigo(usr in cd_firmas.usuario%type)
      return cd_firmas.firma%type
   
    is
   
      v_campo cd_firmas.chapa%type;
   
   begin
   
      select firma into v_campo from cd_firmas where usuario = usr;
   
      return v_campo;
   
   exception
   
      when others then
         return '';
      
   end;

   -----------------------------------------------------------------------------------------------

   function nome_usuario(usr in cd_firmas.usuario%type) return cd_firmas.nome%type
   /*
      || Retorna o nome do Funcionario atraves do usuario
      */
    is
   
      cursor cr is
         select nome from cd_firmas where usuario = usr;
   
      v_campo cd_firmas.nome%type;
   
   begin
   
      open cr;
      fetch cr
         into v_campo;
      close cr;
   
      return v_campo;
   
   exception
   
      when others then
         return '';
      
   end;
   ------------------------------------------------------------------------------------------------
   function codigo_por_cnpjcpf(p_cnpj cd_firmas.cgc_cpf%type) return cd_firmas.firma%type is
     cursor cr is
        select  firma
          from cd_firmas f
          where replace(replace(replace(f.cgc_cpf,'.',''),'/',''),'-','') = p_cnpj;
    
     v_ret cd_firmas.firma%type;
    begin
       open cr;
       fetch cr  into v_ret;
       close cr;
       
       return v_ret;
    end;
  
  --|--------------------------------------------------------------------------------------
  FUNCTION IS_DIRETOR RETURN CHAR IS
    CURSOR CR IS
     select 'S' from V_ROLE_USUARIO 
      WHERE GRUPO IN('GESTAO_CIO','GESTAO_COO','GESTAO_CPO','GESTAO_CEO','GESTAO_ADM')
        AND USUARIO = USER;

    V_RET CHAR(1);
  BEGIN
    V_RET := 'N';
    OPEN CR;
    FETCH CR INTO V_RET;
    CLOSE CR;
    
    RETURN V_RET;
    
    
  END;
 --|--------------------------------------------------------------------------------------
  function cidade_ibge_firma(p_firma number) return cd_cidades.ibge%type
    is
    
    cursor cr is
      select d.ibge
        from cd_cidades d
           , cd_firmas f
        where firma = p_firma
        and d.cod_cidade = f.cod_cidade
        and d.uf = f.uf;
        
   v_ret cd_cidades.ibge%type;
  begin
    open cr;
    fetch cr into v_ret;
    close cr;
    
    return v_ret;
  end;
  
  
 --|--------------------------------------------------------------------------------------
 function cidade_ibge(p_ibge number, p_cid varchar2, p_uf varchar2) return cd_cidades.cod_cidade%type is
 cursor cr is
   select cod_cidade
    from cd_cidades d
    where d.ibge = p_ibge
  union all
   select cod_cidade
    from cd_cidades d
   where upper(d.cidade) = upper(p_cid)
     and upper(d.uf) = upper(p_uf)
     and not exists (select 1
                       from cd_cidades d
                      where d.ibge = p_ibge)
   order by cod_cidade
    ;  
  
   
 
 v_ret cd_cidades.cod_cidade%type;
 
 begin
    open cr;
    fetch cr into v_ret;
    close cr;
    
   return v_ret;
 end;
 
   --|--------------------------------------------------------------------------------------
  function cidade_ibge(p_cid cd_cidades.cod_cidade%type) return cd_cidades.ibge%type is

  cursor cr is
     select ibge
      from cd_cidades d
      where d.cod_cidade = p_cid
      ;  

   v_ret cd_cidades.ibge%type;
   
   begin
      open cr;
      fetch cr into v_ret;
      close cr;
      
     return v_ret;
   end;
     
end cd_firmas_utl;
/
