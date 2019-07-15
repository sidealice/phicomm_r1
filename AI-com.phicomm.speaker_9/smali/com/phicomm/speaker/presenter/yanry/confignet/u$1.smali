.class Lcom/phicomm/speaker/presenter/yanry/confignet/u$1;
.super Lcom/phicomm/speaker/model/common/f;
.source "ConfigByBlePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/confignet/u;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$1;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-direct {p0}, Lcom/phicomm/speaker/model/common/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 3

    if-eqz p1, :cond_2

    .line 54
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$1;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 68
    :pswitch_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$1;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->e(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)B

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const-string p1, "config net fail: %s."

    .line 75
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$1;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {v2}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->e(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$1;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/h;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 77
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$1;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/h;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$1;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->e(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)B

    move-result v0

    invoke-interface {p1, v0}, Lcom/phicomm/speaker/b/h;->a(I)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$1;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/h;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 71
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$1;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/phicomm/speaker/b/h;->d()Z

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$1;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/h;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 63
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$1;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/phicomm/speaker/b/h;->e()V

    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$1;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->b(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/model/confignet/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/model/confignet/a;->d()V

    .line 57
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$1;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->c(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/f;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 58
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$1;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->c(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/phicomm/speaker/b/f;->e()V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
