.class public abstract Lcom/ut/mini/plugin/UTPlugin;
.super Ljava/lang/Object;
.source "UTPlugin.java"


# static fields
.field public static final MSG_ID_IN_DISPATCH_AGGREGATION_LOG_MAP:I = 0x5

.field public static final MSG_ID_IN_DISPATCH_LOG_STRING_4_UTPERF_PLUGIN:I = 0x9

.field public static final MSG_ID_IN_NOMATCH_ONLINE_CONF:I = 0x7

.field public static final MSG_ID_IN_SWITCH_BACKGROUND:I = 0x2

.field public static final MSG_ID_IN_SWITCH_FOREGROUND:I = 0x8

.field public static final MSG_ID_OUT_AGGREGATED_LOG_MAP:I = 0x10000


# instance fields
.field private a:Lcom/ut/mini/plugin/UTPluginContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/ut/mini/plugin/UTPlugin;->a:Lcom/ut/mini/plugin/UTPluginContext;

    return-void
.end method


# virtual methods
.method a(Lcom/ut/mini/plugin/UTPluginContext;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/ut/mini/plugin/UTPlugin;->a:Lcom/ut/mini/plugin/UTPluginContext;

    return-void
.end method

.method public final deliverMsgToSDK(ILjava/lang/Object;)V
    .locals 1

    .line 44
    invoke-static {}, Lcom/ut/mini/plugin/UTPluginMgr;->getInstance()Lcom/ut/mini/plugin/UTPluginMgr;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/plugin/UTPluginMgr;->dispatchPluginMsg(ILjava/lang/Object;)Z

    return-void
.end method

.method public final getPluginContext()Lcom/ut/mini/plugin/UTPluginContext;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/ut/mini/plugin/UTPlugin;->a:Lcom/ut/mini/plugin/UTPluginContext;

    return-object v0
.end method

.method public onPluginContextValueUpdate(I)V
    .locals 0

    return-void
.end method

.method public abstract onPluginMsgArrivedFromSDK(ILjava/lang/Object;)V
.end method

.method public onRegistered()V
    .locals 0

    return-void
.end method

.method public onUnRegistered()V
    .locals 0

    return-void
.end method

.method public abstract returnRequiredMsgIds()[I
.end method

.method public returnRequiredOnlineConfNames()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
