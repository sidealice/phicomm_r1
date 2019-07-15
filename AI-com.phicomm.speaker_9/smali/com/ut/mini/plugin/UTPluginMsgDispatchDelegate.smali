.class public abstract Lcom/ut/mini/plugin/UTPluginMsgDispatchDelegate;
.super Ljava/lang/Object;
.source "UTPluginMsgDispatchDelegate.java"


# instance fields
.field private f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ut/mini/plugin/UTPluginMsgDispatchDelegate;->f:Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lcom/ut/mini/plugin/UTPluginMsgDispatchDelegate;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getDispatchObject(Lcom/ut/mini/plugin/UTPlugin;)Ljava/lang/Object;
    .locals 0

    .line 20
    iget-object p1, p0, Lcom/ut/mini/plugin/UTPluginMsgDispatchDelegate;->f:Ljava/lang/Object;

    return-object p1
.end method

.method public final getMsgObj()Ljava/lang/Object;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/ut/mini/plugin/UTPluginMsgDispatchDelegate;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public isMatchPlugin(Lcom/ut/mini/plugin/UTPlugin;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
