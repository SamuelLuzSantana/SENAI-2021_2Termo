using System;
using System.Collections.Generic;

#nullable disable

namespace senai.hroads.webApi.Domains
{
    public partial class TiposHabilidade
    {
        public TiposHabilidade()
        {
            Habilidades = new HashSet<Habilidade>();
        }

        public int IdTipo { get; set; }
        public string NomeTipo { get; set; }

        public virtual ICollection<Habilidade> Habilidades { get; set; }
    }
}
