.class Lcom/phicomm/speaker/player/tester/MessageReceiver$MsgReceiver;
.super Ljava/lang/Object;
.source "MessageReceiver.java"

# interfaces
.implements Landroid/os/MessageDispatchManager$MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/tester/MessageReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MsgReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/tester/MessageReceiver;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/player/tester/MessageReceiver;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/phicomm/speaker/player/tester/MessageReceiver$MsgReceiver;->this$0:Lcom/phicomm/speaker/player/tester/MessageReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/player/tester/MessageReceiver;Lcom/phicomm/speaker/player/tester/MessageReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/phicomm/speaker/player/tester/MessageReceiver;
    .param p2, "x1"    # Lcom/phicomm/speaker/player/tester/MessageReceiver$1;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/tester/MessageReceiver$MsgReceiver;-><init>(Lcom/phicomm/speaker/player/tester/MessageReceiver;)V

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
    .line 42
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 43
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 44
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 45
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 46
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 47
    iget-object v1, p0, Lcom/phicomm/speaker/player/tester/MessageReceiver$MsgReceiver;->this$0:Lcom/phicomm/speaker/player/tester/MessageReceiver;

    invoke-static {v1}, Lcom/phicomm/speaker/player/tester/MessageReceiver;->access$100(Lcom/phicomm/speaker/player/tester/MessageReceiver;)Lcom/phicomm/speaker/player/tester/MessageReceiver$MessageHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/player/tester/MessageReceiver$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 48
    return-void
.end method
