.class Lcom/phicomm/speaker/activity/MySpeakerActivity$1;
.super Lcom/phicomm/speaker/presenter/b/d;
.source "MySpeakerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/MySpeakerActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/MySpeakerActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/MySpeakerActivity;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$1;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 91
    iget-object p2, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$1;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-virtual {p2}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$1;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-virtual {p2}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {p1}, Lcom/phicomm/speaker/e/c/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$1;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$1;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$1;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$1;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->a(Lcom/phicomm/speaker/activity/MySpeakerActivity;)Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$1;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-static {v2}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->b(Lcom/phicomm/speaker/activity/MySpeakerActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->a(Lcom/phicomm/speaker/activity/MySpeakerActivity;Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MySpeakerActivity"

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceListResult deviceInfoLists  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$1;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$1;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_2

    .line 103
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$1;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->a(Lcom/phicomm/speaker/activity/MySpeakerActivity;Z)V

    .line 107
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$1;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->c(Lcom/phicomm/speaker/activity/MySpeakerActivity;)Lcom/phicomm/speaker/adapter/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/adapter/o;->a(Ljava/util/List;)V

    goto :goto_1

    .line 104
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$1;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->a(Lcom/phicomm/speaker/activity/MySpeakerActivity;Z)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 113
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$1;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$1;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$1;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->d(Lcom/phicomm/speaker/activity/MySpeakerActivity;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
