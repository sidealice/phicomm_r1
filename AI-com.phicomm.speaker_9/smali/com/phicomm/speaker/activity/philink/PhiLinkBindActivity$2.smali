.class Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$2;
.super Ljava/lang/Object;
.source "PhiLinkBindActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/e/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$2;->a:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$2;->a:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;

    iget-object p2, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$2;->a:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;

    invoke-static {p2}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->b(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;)Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->getDev_id()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->a(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;Ljava/lang/String;)V

    return-void
.end method

.method public a(IZLjava/lang/String;)V
    .locals 3

    const/16 v0, -0x271b

    if-eq p1, v0, :cond_3

    const/16 v0, -0x271c

    if-eq p1, v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$2;->a:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;

    const v1, 0x7f0f0177

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "philink"

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBindError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " * "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$2;->a:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->c(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8bf7\u7a0d\u540e\u518d\u8bd5("

    goto :goto_0

    :cond_1
    const-string v0, "\u8bf7\u91cd\u8bd5("

    :goto_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_2

    .line 119
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "u"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 121
    :cond_2
    iget-object p2, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$2;->a:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->b(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    iget-object p1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$2;->a:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;

    const/16 p2, 0x7d0

    invoke-static {p1, p2}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->a(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;I)V

    goto :goto_4

    .line 113
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$2;->a:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;

    iget-object p3, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$2;->a:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;

    invoke-static {p3}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->c(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$2;->a:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;

    const v0, 0x7f0f0178

    :goto_2
    invoke-virtual {p3, v0}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_4
    iget-object p3, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$2;->a:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;

    const v0, 0x7f0f01ba

    goto :goto_2

    :goto_3
    invoke-static {p2, p1, p3}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->a(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;ILjava/lang/String;)V

    :goto_4
    return-void
.end method
