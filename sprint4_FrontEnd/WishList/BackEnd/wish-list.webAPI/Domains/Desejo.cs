using System;



namespace wish_list.webAPI.Domains
{
    public partial class Desejo
    {
        public int IdDesejo { get; set; }
        public int? IdUsuario { get; set; }
        public string Descricao { get; set; }
        

        public virtual Usuario IdUsuarioNavigation { get; set; }
    }
}
