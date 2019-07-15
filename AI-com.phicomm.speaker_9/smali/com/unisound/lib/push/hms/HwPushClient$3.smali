.class Lcom/unisound/lib/push/hms/HwPushClient$3;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/push/hms/HwPushClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/lib/push/hms/HwPushClient;


# direct methods
.method constructor <init>(Lcom/unisound/lib/push/hms/HwPushClient;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/hms/HwPushClient$3;->this$0:Lcom/unisound/lib/push/hms/HwPushClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x106

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "HwPushClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",callBack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/unisound/lib/push/hms/HwPushClient;->access$000()Lcom/unisound/lib/push/intf/IMsgCallBack;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/unisound/lib/push/hms/HwPushClient;->access$000()Lcom/unisound/lib/push/intf/IMsgCallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "HwPushClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",callBack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/unisound/lib/push/hms/HwPushClient;->access$000()Lcom/unisound/lib/push/intf/IMsgCallBack;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/unisound/lib/push/hms/HwPushClient;->access$000()Lcom/unisound/lib/push/intf/IMsgCallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/unisound/lib/push/hms/HwPushClient;->access$000()Lcom/unisound/lib/push/intf/IMsgCallBack;

    move-result-object v0

    const-string v1, "HUAWEI"

    invoke-interface {v0, v1, p1}, Lcom/unisound/lib/push/intf/IMsgCallBack;->onRegisterSuc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lcom/unisound/lib/push/hms/HwPushClient;->access$000()Lcom/unisound/lib/push/intf/IMsgCallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {}, Lcom/unisound/lib/push/hms/HwPushClient;->access$000()Lcom/unisound/lib/push/intf/IMsgCallBack;

    move-result-object v0

    const-string v1, "HUAWEI"

    invoke-interface {v0, v1, p1}, Lcom/unisound/lib/push/intf/IMsgCallBack;->onReceiverPusMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "HwPushClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",callBack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/unisound/lib/push/hms/HwPushClient;->access$000()Lcom/unisound/lib/push/intf/IMsgCallBack;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/unisound/lib/push/hms/HwPushClient;->access$000()Lcom/unisound/lib/push/intf/IMsgCallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/unisound/lib/push/hms/HwPushClient;->access$000()Lcom/unisound/lib/push/intf/IMsgCallBack;

    move-result-object v0

    const-string v1, "HUAWEI"

    invoke-interface {v0, v1, p1}, Lcom/unisound/lib/push/intf/IMsgCallBack;->onRegisterFail(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
