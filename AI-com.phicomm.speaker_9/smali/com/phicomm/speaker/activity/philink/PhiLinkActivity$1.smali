.class Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$1;
.super Lcom/phicomm/speaker/presenter/b/m;
.source "PhiLinkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$1;->a:Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$1;->a:Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->a(Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 53
    iget-object p1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$1;->a:Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8f6e\u8be2\u8bbe\u5907\u5217\u8868\u5931\u8d25,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->a(Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$1;->a:Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->a(Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;)Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$1;->a:Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->a(Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;)Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$1;->a:Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->a(Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;Ljava/lang/String;)V

    return-void
.end method
