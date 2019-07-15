.class public Lcom/alibaba/mtl/log/e/s;
.super Ljava/lang/Object;
.source "UTAdapter.java"


# direct methods
.method public static send(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.ut.mini.UTAnalytics"

    const-string v1, "getInstance"

    .line 10
    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "getDefaultTracker"

    .line 12
    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/o;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 14
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "send"

    .line 16
    new-array v1, v1, [Ljava/lang/Class;

    const-class v4, Ljava/util/Map;

    aput-object v4, v1, v3

    invoke-static {v0, p0, v2, v1}, Lcom/alibaba/mtl/log/e/o;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
