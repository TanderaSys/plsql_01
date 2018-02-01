CREATE OR REPLACE FUNCTION FG_GET_LINE_ERROR (ev_local   in varchar2
                           ,ev_msg_usu in varchar2
                           ,ev_msg_ora in varchar2) return varchar2 IS


--
----------------------------------------------------------------------------------------------
--
--   IDENTIFICA��O
--   -------------
--   Package      : FG_GET_LINE_ERROR
--   Autor        : Edson Gon�alez/Marcio Gon�alez
--   Data cria��o : 23/08/2016
--
--   DEPEND� NCIAS
--   ------------
--
--   COMENT�RIO
--   ----------
--
----------------------------------------------------------------------------------------------
--
-- $$plsql_unit
-- $$plsql_line
--
----------------------------------------------------------------------------------------------
--

/*
   MANUTEN��ES
   -----------

   -------------------------------------------------------------------------------------
   ---DATA---   PROGRAMADOR --VERS�O-- -----------------DESCRI��O-----------------------
   -------------------------------------------------------------------------------------
   23/08/2016   Sergio         1.0        Cria��o da funcao

*/
--|-------------------------------------------------------------------------------------
--| Vari�veis Globais
--|-------------------------------------------------------------------------------------
v_m           varchar2 (4000) := dbms_utility.format_error_backtrace;
v_n1          varchar2 (10);
--
vv_linha      varchar2 (10);
vv_mensagem   varchar2 (4000);
--

BEGIN
   v_m  := replace(v_m,chr(10),null);
   v_m  := replace(v_m,chr(13),null);
--
   v_n1 := trim(substr(v_m,instr(v_m,' ', -1),length(v_m)));
--
   if v_n1 is not null and length( v_n1 ) > 0 then
      vv_linha := v_n1;
   else
      vv_linha := null;
   end if;
--
   vv_mensagem := 'Erro na ' || ev_local;
--
   if vv_linha is not null then
      vv_mensagem := vv_mensagem || ', Linha: ' || vv_linha;
   end if;
--
   if ev_msg_usu is not null then
      vv_mensagem := vv_mensagem || ', ' || ev_msg_usu;
   end if;
--
   if ev_msg_ora is not null then
      vv_mensagem := vv_mensagem || ', ' || ev_msg_ora;
   end if;
--
   return (vv_mensagem);
--
END FG_GET_LINE_ERROR;
/
