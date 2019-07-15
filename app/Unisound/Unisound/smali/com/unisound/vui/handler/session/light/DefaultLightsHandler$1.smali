.class Lcom/unisound/vui/handler/session/light/DefaultLightsHandler$1;
.super Ljava/lang/Object;
.source "DefaultLightsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;->onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;

.field final synthetic val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;


# direct methods
.method constructor <init>(Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler$1;->this$0:Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;

    iput-object p2, p0, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 44
    iget-object v1, p0, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_FOURMIC_DOA_RESULT:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-interface {v1, v2}, Lcom/unisound/vui/engine/ANTEngineConfig;->getOption(Lcom/unisound/vui/engine/ANTEngineOption;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 45
    .local v0, "angle":I
    iget-object v1, p0, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler$1;->this$0:Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;

    invoke-static {v1}, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;->access$000(Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;)Lcom/unisound/vui/handler/session/light/LightListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/unisound/vui/handler/session/light/LightListener;->onWakeupSuccess(I)V

    .line 46
    return-void
.end method
