using System;
using System.ComponentModel;
using System.Drawing.Design;

//namespace WebControls
//{
namespace WebControls
{
    public class SmartImage : System.Web.UI.WebControls.Image
    {
        [Editor(typeof(System.Web.UI.Design.ImageUrlEditor), typeof(UITypeEditor))]
        public string FallBackUrl
        {
            get
            {
                var s = (string)ViewState["FallBackUrl"];
                // if (s == null) return string.Empty;
                //para mostrar el ejemplo de una configuración por defecto
                if (s == null) return "~/Images/default-thumb.gif";

                return s;
            }
            set
            {
                ViewState["FallBackUrl"] = value;
            }
        }

        protected override void OnLoad(EventArgs e)
        {
            if (!string.IsNullOrEmpty(FallBackUrl))
            {
                string defaultImageUrl = ResolveUrl(FallBackUrl);
                this.Attributes["onerror"] = String.Format("this.src ='{0}'", defaultImageUrl);
            }
            base.OnLoad(e);
        }
    }
}

//}