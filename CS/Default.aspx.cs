
namespace WebApplication1 {
    public partial class _Default : System.Web.UI.Page {
        protected void ASPxGridView1_CustomColumnDisplayText(object sender, DevExpress.Web.ASPxGridViewColumnDisplayTextEventArgs e) {
            if (e.Column.Caption == "#") {
                e.DisplayText = e.VisibleRowIndex.ToString();
            }
        }
    }
}
