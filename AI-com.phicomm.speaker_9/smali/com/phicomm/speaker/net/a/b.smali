.class public abstract Lcom/phicomm/speaker/net/a/b;
.super Lcom/phicomm/speaker/net/a/a;
.source "BeanCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/phicomm/speaker/net/a/a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;Lokhttp3/Request;)V
    .locals 2

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/k;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 28
    :try_start_0
    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    move-object p1, v1

    :goto_0
    if-nez p1, :cond_0

    const-string p1, "305"

    .line 34
    invoke-virtual {p0, p1, v1, p2}, Lcom/phicomm/speaker/net/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;)V

    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/net/a/b;->a(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
