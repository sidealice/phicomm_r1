.class Lcom/phicomm/speaker/player/airplay/ShairportWrapper$ShairportCallback;
.super Lcom/phicomm/speaker/player/swig/Callback;
.source "ShairportWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/airplay/ShairportWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShairportCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/airplay/ShairportWrapper;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/player/airplay/ShairportWrapper;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/phicomm/speaker/player/airplay/ShairportWrapper$ShairportCallback;->this$0:Lcom/phicomm/speaker/player/airplay/ShairportWrapper;

    invoke-direct {p0}, Lcom/phicomm/speaker/player/swig/Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/player/airplay/ShairportWrapper;Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/phicomm/speaker/player/airplay/ShairportWrapper;
    .param p2, "x1"    # Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/airplay/ShairportWrapper$ShairportCallback;-><init>(Lcom/phicomm/speaker/player/airplay/ShairportWrapper;)V

    return-void
.end method


# virtual methods
.method public airplay_notify_cb(III)I
    .locals 2
    .param p1, "msg"    # I
    .param p2, "ext1"    # I
    .param p3, "ext2"    # I

    .prologue
    .line 105
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 106
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 107
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 108
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 109
    iget-object v1, p0, Lcom/phicomm/speaker/player/airplay/ShairportWrapper$ShairportCallback;->this$0:Lcom/phicomm/speaker/player/airplay/ShairportWrapper;

    invoke-static {v1}, Lcom/phicomm/speaker/player/airplay/ShairportWrapper;->access$300(Lcom/phicomm/speaker/player/airplay/ShairportWrapper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    const/4 v1, 0x0

    return v1
.end method
