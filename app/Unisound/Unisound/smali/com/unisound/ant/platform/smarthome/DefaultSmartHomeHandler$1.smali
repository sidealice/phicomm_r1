.class Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler$1;
.super Landroid/os/Handler;
.source "DefaultSmartHomeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;


# direct methods
.method constructor <init>(Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler$1;->this$0:Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 89
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 90
    .local v0, "content":Ljava/lang/String;
    invoke-static {}, Lcom/unisound/ant/device/DeviceCenterHandler;->getDeviceCenterMgr()Lcom/unisound/ant/device/DeviceCenterHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/unisound/ant/device/DeviceCenterHandler;->onReceivedMsg(ILjava/lang/String;)V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
