.class public abstract Lcom/unisound/vui/engine/ANTEngineInitializer;
.super Lcom/unisound/vui/handler/ANTEventDispatcher;


# static fields
.field private static final TAG:Ljava/lang/String; = "ANTEngineInitializer"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/vui/handler/ANTEventDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v0, "ANTEngineInitializer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Failed to initialize the ant engine"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/unisound/vui/engine/ANTPipeline;->context(Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTHandlerContext;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0}, Lcom/unisound/vui/engine/ANTPipeline;->remove(Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    :cond_0
    return-void
.end method

.method protected onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unisound/vui/engine/ANTEngineInitializer;->onEngineInitDone(Lcom/unisound/vui/engine/ANTEngine;)V

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/unisound/vui/engine/ANTPipeline;->remove(Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onEngineInitDone(Lcom/unisound/vui/engine/ANTEngine;)V
.end method
