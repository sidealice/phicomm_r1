.class Lcom/unisound/lib/push/CommonPushManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/push/CommonPushManager;->connectUnisoundMqtt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/lib/push/CommonPushManager;


# direct methods
.method constructor <init>(Lcom/unisound/lib/push/CommonPushManager;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/CommonPushManager$3;->this$0:Lcom/unisound/lib/push/CommonPushManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "CommonPushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channelParams:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/push/CommonPushManager$3;->this$0:Lcom/unisound/lib/push/CommonPushManager;

    invoke-static {v2}, Lcom/unisound/lib/push/CommonPushManager;->access$200(Lcom/unisound/lib/push/CommonPushManager;)Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unisound/lib/push/mqtt/bean/ChannelParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unisound/lib/push/CommonPushManager$3;->this$0:Lcom/unisound/lib/push/CommonPushManager;

    iget-object v1, p0, Lcom/unisound/lib/push/CommonPushManager$3;->this$0:Lcom/unisound/lib/push/CommonPushManager;

    invoke-static {v1}, Lcom/unisound/lib/push/CommonPushManager;->access$200(Lcom/unisound/lib/push/CommonPushManager;)Lcom/unisound/lib/push/mqtt/bean/ChannelParams;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/lib/push/CommonPushManager;->access$300(Lcom/unisound/lib/push/CommonPushManager;Lcom/unisound/lib/push/mqtt/bean/ChannelParams;)V

    return-void
.end method
