.class Lcom/phicomm/speaker/presenter/yanry/j$4;
.super Lcom/phicomm/speaker/net/a/a;
.source "SelectWakeNamePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/j;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/phicomm/speaker/presenter/yanry/j;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/j;Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/j$4;->b:Lcom/phicomm/speaker/presenter/yanry/j;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/j$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "http error(%s): %s"

    const/4 v1, 0x2

    .line 135
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/j$4;->b:Lcom/phicomm/speaker/presenter/yanry/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/j;->b(Lcom/phicomm/speaker/presenter/yanry/j;)Lcom/phicomm/speaker/model/common/f;

    move-result-object p1

    new-instance p2, Lcom/phicomm/speaker/presenter/yanry/n;

    invoke-direct {p2, p0}, Lcom/phicomm/speaker/presenter/yanry/n;-><init>(Lcom/phicomm/speaker/presenter/yanry/j$4;)V

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lokhttp3/Request;)V
    .locals 1

    .line 144
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/j$4;->b:Lcom/phicomm/speaker/presenter/yanry/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/j;->b(Lcom/phicomm/speaker/presenter/yanry/j;)Lcom/phicomm/speaker/model/common/f;

    move-result-object p1

    new-instance p2, Lcom/phicomm/speaker/presenter/yanry/o;

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/j$4;->a:Ljava/lang/String;

    invoke-direct {p2, p0, v0}, Lcom/phicomm/speaker/presenter/yanry/o;-><init>(Lcom/phicomm/speaker/presenter/yanry/j$4;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/String;)Z
    .locals 1

    .line 146
    const-class v0, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/yanry/i;->c()Lcom/phicomm/speaker/bean/MqttDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->getWakeWord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/j$4;->b:Lcom/phicomm/speaker/presenter/yanry/j;

    const-string v0, "\u5c0f\u8baf\u5c0f\u8baf"

    invoke-static {p1, v0}, Lcom/phicomm/speaker/presenter/yanry/j;->a(Lcom/phicomm/speaker/presenter/yanry/j;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/j$4;->b:Lcom/phicomm/speaker/presenter/yanry/j;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/yanry/j;->a(Z)V

    return v0
.end method

.method final synthetic b()Z
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/j$4;->b:Lcom/phicomm/speaker/presenter/yanry/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/j;->a(Z)V

    const/4 v0, 0x1

    return v0
.end method
