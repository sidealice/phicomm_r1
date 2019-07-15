.class Lcom/phicomm/speaker/player/MsgHandler$MsgReceiver;
.super Ljava/lang/Object;
.source "MsgHandler.java"

# interfaces
.implements Landroid/os/MessageDispatchManager$MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/MsgHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MsgReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/MsgHandler;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/player/MsgHandler;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/phicomm/speaker/player/MsgHandler$MsgReceiver;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/player/MsgHandler;Lcom/phicomm/speaker/player/MsgHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/phicomm/speaker/player/MsgHandler;
    .param p2, "x1"    # Lcom/phicomm/speaker/player/MsgHandler$1;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/MsgHandler$MsgReceiver;-><init>(Lcom/phicomm/speaker/player/MsgHandler;)V

    return-void
.end method


# virtual methods
.method public notifyMsg(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 60
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 61
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 62
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 63
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 64
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lcom/phicomm/speaker/player/MsgHandler$MsgReceiver;->this$0:Lcom/phicomm/speaker/player/MsgHandler;

    invoke-static {v1}, Lcom/phicomm/speaker/player/MsgHandler;->access$200(Lcom/phicomm/speaker/player/MsgHandler;)Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 66
    return-void
.end method
