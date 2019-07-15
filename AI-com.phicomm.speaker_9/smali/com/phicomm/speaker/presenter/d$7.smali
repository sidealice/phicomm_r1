.class Lcom/phicomm/speaker/presenter/d$7;
.super Lcom/phicomm/speaker/net/a/b;
.source "DeviceInfoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/d;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/net/a/b<",
        "Lcom/phicomm/speaker/bean/WakeUpWords;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/phicomm/speaker/presenter/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/d;Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/d$7;->b:Lcom/phicomm/speaker/presenter/d;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/d$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/WakeUpWords;)V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d$7;->b:Lcom/phicomm/speaker/presenter/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/d;->q(Lcom/phicomm/speaker/presenter/d;)V

    .line 283
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d$7;->b:Lcom/phicomm/speaker/presenter/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/d;->b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 284
    iget-object v0, p1, Lcom/phicomm/speaker/bean/WakeUpWords;->wake_up_words:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d$7;->b:Lcom/phicomm/speaker/presenter/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/d;->b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/d$7;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/phicomm/speaker/bean/WakeUpWords;->wake_up_words:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/presenter/b/d;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 270
    check-cast p1, Lcom/phicomm/speaker/bean/WakeUpWords;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/d$7;->a(Lcom/phicomm/speaker/bean/WakeUpWords;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d$7;->b:Lcom/phicomm/speaker/presenter/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/d;->p(Lcom/phicomm/speaker/presenter/d;)V

    .line 275
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d$7;->b:Lcom/phicomm/speaker/presenter/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/d;->b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d$7;->b:Lcom/phicomm/speaker/presenter/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/d;->b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
