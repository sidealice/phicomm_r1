.class public Lcom/ut/mini/plugin/UTPluginContext;
.super Ljava/lang/Object;
.source "UTPluginContext.java"


# static fields
.field public static final DEBUG_LOG_SWITCH:I = 0x1


# instance fields
.field private Q:Z

.field private R:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/ut/mini/plugin/UTPluginContext;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/ut/mini/plugin/UTPluginContext;->Q:Z

    .line 11
    iput-boolean v0, p0, Lcom/ut/mini/plugin/UTPluginContext;->R:Z

    return-void
.end method


# virtual methods
.method public enableRealtimeDebug()V
    .locals 1

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/ut/mini/plugin/UTPluginContext;->R:Z

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/ut/mini/plugin/UTPluginContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public isDebugLogEnable()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/ut/mini/plugin/UTPluginContext;->Q:Z

    return v0
.end method

.method public isRealtimeDebugEnable()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/ut/mini/plugin/UTPluginContext;->R:Z

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/ut/mini/plugin/UTPluginContext;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setDebugLogFlag(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/ut/mini/plugin/UTPluginContext;->Q:Z

    return-void
.end method
