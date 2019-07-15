.class Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$3;
.super Landroid/os/Handler;
.source "DefaultMusicHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;


# direct methods
.method constructor <init>(Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    .prologue
    .line 1436
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$3;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$3;"
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$3;->this$0:Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1439
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$3;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$3;"
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1447
    :goto_0
    return-void

    .line 1441
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1442
    .local v0, "content":Ljava/lang/String;
    invoke-static {}, Lcom/unisound/ant/device/DeviceCenterHandler;->getDeviceCenterMgr()Lcom/unisound/ant/device/DeviceCenterHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/unisound/ant/device/DeviceCenterHandler;->onReceivedMsg(ILjava/lang/String;)V

    goto :goto_0

    .line 1439
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
