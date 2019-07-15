.class Lcom/ut/mini/plugin/UTPluginMgr$3;
.super Ljava/lang/Object;
.source "UTPluginMgr.java"

# interfaces
.implements Lcom/ut/mini/plugin/UTPluginContextValueDispatchDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ut/mini/plugin/UTPluginMgr;->updatePluginContextValue(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ut/mini/plugin/UTPluginMgr;


# direct methods
.method constructor <init>(Lcom/ut/mini/plugin/UTPluginMgr;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/ut/mini/plugin/UTPluginMgr$3;->b:Lcom/ut/mini/plugin/UTPluginMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPluginContextValueChange(Lcom/ut/mini/plugin/UTPluginContext;)V
    .locals 1

    .line 120
    invoke-static {}, Lcom/alibaba/mtl/log/e/i;->n()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ut/mini/plugin/UTPluginContext;->setDebugLogFlag(Z)V

    return-void
.end method
