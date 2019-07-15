.class public Lcom/unisound/vui/bootstrap/NativeBootstrap;
.super Lcom/unisound/vui/bootstrap/AbstractBootstrap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/bootstrap/NativeBootstrap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unisound/vui/bootstrap/AbstractBootstrap",
        "<",
        "Lcom/unisound/vui/bootstrap/NativeBootstrap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeBootstrap"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/vui/bootstrap/AbstractBootstrap;-><init>()V

    return-void
.end method


# virtual methods
.method protected init0(Lcom/unisound/vui/engine/ANTEngine;)V
    .locals 6
    .param p1, "engine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/unisound/vui/bootstrap/NativeBootstrap;->options()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngineConfig;->setOptions(Ljava/util/Map;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p0}, Lcom/unisound/vui/bootstrap/NativeBootstrap;->attrs()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v1}, Lcom/unisound/vui/engine/ANTEngine;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/vui/bootstrap/NativeBootstrap;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    new-array v1, v5, [Lcom/unisound/vui/engine/ANTHandler;

    invoke-virtual {p0}, Lcom/unisound/vui/bootstrap/NativeBootstrap;->handler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    :cond_1
    new-array v1, v5, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v2, Lcom/unisound/vui/bootstrap/NativeBootstrap$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/unisound/vui/bootstrap/NativeBootstrap$a;-><init>(Lcom/unisound/vui/bootstrap/NativeBootstrap;Lcom/unisound/vui/bootstrap/NativeBootstrap$1;)V

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    return-void
.end method

.method isUseProxyMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
