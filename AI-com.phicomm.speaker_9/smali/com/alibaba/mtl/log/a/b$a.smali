.class Lcom/alibaba/mtl/log/a/b$a;
.super Ljava/lang/Object;
.source "GcConfigChannelMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/log/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/alibaba/mtl/log/a/b;


# direct methods
.method constructor <init>(Lcom/alibaba/mtl/log/a/b;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/alibaba/mtl/log/a/b$a;->b:Lcom/alibaba/mtl/log/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 30
    invoke-static {}, Lcom/alibaba/mtl/log/e/l;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    .line 35
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "b01n15"

    .line 36
    invoke-static {v3}, Lcom/alibaba/mtl/log/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "b01na"

    .line 37
    invoke-static {v4}, Lcom/alibaba/mtl/log/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_b01n15"

    .line 38
    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "_b01na"

    .line 39
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/log/a/b;->g()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/alibaba/mtl/log/e/t;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConfigMgr"

    const/4 v5, 0x1

    .line 44
    new-array v6, v5, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "config:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v3, v6}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-static {v5, v2, v4, v0}, Lcom/alibaba/mtl/log/e/e;->a(ILjava/lang/String;Ljava/util/Map;Z)Lcom/alibaba/mtl/log/e/e$a;

    move-result-object v2

    .line 47
    iget-object v3, v2, Lcom/alibaba/mtl/log/e/e$a;->e:[B

    if-eqz v3, :cond_1

    .line 48
    new-instance v3, Ljava/lang/String;

    iget-object v4, v2, Lcom/alibaba/mtl/log/e/e$a;->e:[B

    iget-object v2, v2, Lcom/alibaba/mtl/log/e/e$a;->e:[B

    array-length v2, v2

    invoke-direct {v3, v4, v0, v2}, Ljava/lang/String;-><init>([BII)V

    .line 49
    invoke-static {v3}, Lcom/alibaba/mtl/log/a/a;->h(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->q()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 56
    invoke-static {v2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    const-wide/16 v2, 0x2710

    .line 59
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
