.class Lcom/phicomm/speaker/player/tester/MessageReceiver$MessageHandler;
.super Landroid/os/Handler;
.source "MessageReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/tester/MessageReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/tester/MessageReceiver;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/player/tester/MessageReceiver;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/phicomm/speaker/player/tester/MessageReceiver$MessageHandler;->this$0:Lcom/phicomm/speaker/player/tester/MessageReceiver;

    .line 54
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 59
    invoke-static {}, Lcom/phicomm/speaker/player/tester/MessageReceiver;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " receive msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 61
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/ParcelableUtil;

    .line 62
    .local v0, "obj":Landroid/os/ParcelableUtil;
    invoke-static {}, Lcom/phicomm/speaker/player/tester/MessageReceiver;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " receive msg obj: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v0    # "obj":Landroid/os/ParcelableUtil;
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 65
    iget-object v1, p0, Lcom/phicomm/speaker/player/tester/MessageReceiver$MessageHandler;->this$0:Lcom/phicomm/speaker/player/tester/MessageReceiver;

    invoke-static {v1, p1}, Lcom/phicomm/speaker/player/tester/MessageReceiver;->access$300(Lcom/phicomm/speaker/player/tester/MessageReceiver;Landroid/os/Message;)V

    .line 67
    :cond_1
    return-void
.end method
