.class Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1;
.super Ljava/lang/Object;
.source "ShairportWrapper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/airplay/ShairportWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/airplay/ShairportWrapper;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/airplay/ShairportWrapper;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1;->this$0:Lcom/phicomm/speaker/player/airplay/ShairportWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 53
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 54
    .local v0, "message":Landroid/os/Message;
    sget-object v1, Lcom/phicomm/speaker/player/swig/media_event_type;->MEDIA_PREPARED:Lcom/phicomm/speaker/player/swig/media_event_type;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/swig/media_event_type;->swigValue()I

    move-result v1

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_1

    .line 55
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v1

    new-instance v2, Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1$1;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1$1;-><init>(Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1;)V

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 98
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 63
    :cond_1
    sget-object v1, Lcom/phicomm/speaker/player/swig/media_event_type;->MEDIA_STARTED:Lcom/phicomm/speaker/player/swig/media_event_type;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/swig/media_event_type;->swigValue()I

    move-result v1

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_2

    .line 64
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v1

    new-instance v2, Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1$2;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1$2;-><init>(Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1;)V

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 73
    :cond_2
    sget-object v1, Lcom/phicomm/speaker/player/swig/media_event_type;->MEDIA_PAUSED:Lcom/phicomm/speaker/player/swig/media_event_type;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/swig/media_event_type;->swigValue()I

    move-result v1

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_3

    .line 74
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v1

    new-instance v2, Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1$3;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1$3;-><init>(Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1;)V

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 83
    :cond_3
    sget-object v1, Lcom/phicomm/speaker/player/swig/media_event_type;->MEDIA_STOPPED:Lcom/phicomm/speaker/player/swig/media_event_type;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/swig/media_event_type;->swigValue()I

    move-result v1

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_4

    .line 84
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v1

    new-instance v2, Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1$4;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1$4;-><init>(Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1;)V

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 93
    :cond_4
    sget-object v1, Lcom/phicomm/speaker/player/swig/media_event_type;->MEDIA_INFO:Lcom/phicomm/speaker/player/swig/media_event_type;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/swig/media_event_type;->swigValue()I

    move-result v1

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_0

    .line 94
    sget-object v1, Lcom/phicomm/speaker/player/swig/media_info_type;->MEDIA_INFO_METADATA_UPDATE:Lcom/phicomm/speaker/player/swig/media_info_type;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/swig/media_info_type;->swigValue()I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_0

    .line 95
    new-instance v1, Lcom/phicomm/speaker/player/swig/MetaData_t;

    invoke-direct {v1}, Lcom/phicomm/speaker/player/swig/MetaData_t;-><init>()V

    invoke-static {v1}, Lcom/phicomm/speaker/player/swig/Shairport;->get_metadata(Lcom/phicomm/speaker/player/swig/MetaData_t;)I

    goto :goto_0
.end method
