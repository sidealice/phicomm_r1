.class Lcom/unisound/ant/device/devicelayer/DeviceStateMgr$3;
.super Ljava/lang/Object;
.source "DeviceStateMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->reQueryDeviceBoundStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;


# direct methods
.method constructor <init>(Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr$3;->this$0:Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 247
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Lcom/unisound/vui/util/ThreadUtils;->sleep(J)V

    .line 248
    iget-object v0, p0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr$3;->this$0:Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;

    invoke-static {v0}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->access$000(Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;)V

    .line 249
    return-void
.end method
