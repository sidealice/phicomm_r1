.class Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$3;
.super Ljava/lang/Object;
.source "PhiLinkActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;Ljava/util/List;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$3;->b:Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 101
    invoke-static {}, Lcom/phicomm/speaker/f/u;->g()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$3;->b:Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;

    invoke-static {p2}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->b(Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$3;->b:Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;

    const-string p2, "SSID\u6709\u53d8\u5316"

    invoke-static {p1, p2}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->a(Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$3;->b:Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->c(Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;)Lcom/phicomm/speaker/presenter/m;

    move-result-object p1

    iget-object p2, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$3;->a:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/m;->a(Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;)V

    .line 107
    iget-object p1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$3;->b:Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->a(Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;)Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->dismiss()V

    return-void
.end method
