.class Landroid/os/MessageDispatchManager$MSGHandler;
.super Ljava/lang/Object;
.source "MessageDispatchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageDispatchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MSGHandler"
.end annotation


# instance fields
.field mMessenger:Landroid/os/Messenger;

.field public final mRecvs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/MessageDispatchManager$MsgRecvFlaged;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/os/MessageDispatchManager;


# direct methods
.method private constructor <init>(Landroid/os/MessageDispatchManager;)V
    .locals 1

    .prologue
    .line 47
    iput-object p1, p0, Landroid/os/MessageDispatchManager$MSGHandler;->this$0:Landroid/os/MessageDispatchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/MessageDispatchManager$MSGHandler;->mMessenger:Landroid/os/Messenger;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageDispatchManager$MSGHandler;->mRecvs:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/MessageDispatchManager;Landroid/os/MessageDispatchManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/MessageDispatchManager;
    .param p2, "x1"    # Landroid/os/MessageDispatchManager$1;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/os/MessageDispatchManager$MSGHandler;-><init>(Landroid/os/MessageDispatchManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 53
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/os/MessageDispatchManager$MSGHandler$1;

    invoke-direct {v1, p0}, Landroid/os/MessageDispatchManager$MSGHandler$1;-><init>(Landroid/os/MessageDispatchManager$MSGHandler;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/os/MessageDispatchManager$MSGHandler;->mMessenger:Landroid/os/Messenger;

    .line 64
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 65
    return-void
.end method
