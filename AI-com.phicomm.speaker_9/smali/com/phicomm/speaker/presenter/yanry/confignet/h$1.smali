.class Lcom/phicomm/speaker/presenter/yanry/confignet/h$1;
.super Lcom/phicomm/speaker/model/common/f;
.source "ConfigByApPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/confignet/h;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$1;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-direct {p0}, Lcom/phicomm/speaker/model/common/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$1;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 56
    :pswitch_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$1;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    const-string v0, "request fail on timeout."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/h;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    :pswitch_1
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$1;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->b(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)Lcom/phicomm/speaker/b/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$1;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->b(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)Lcom/phicomm/speaker/b/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/phicomm/speaker/b/f;->e()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
