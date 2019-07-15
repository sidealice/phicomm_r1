.class public Lcom/phicomm/speaker/player/exomedia/util/Repeater;
.super Ljava/lang/Object;
.source "Repeater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/exomedia/util/Repeater$PollRunnable;,
        Lcom/phicomm/speaker/player/exomedia/util/Repeater$RepeatListener;
    }
.end annotation


# static fields
.field protected static final DEFAULT_REPEAT_DELAY:I = 0x21

.field protected static final HANDLER_THREAD_NAME:Ljava/lang/String; = "ExoMedia_Repeater_HandlerThread"


# instance fields
.field protected delayedHandler:Landroid/os/Handler;

.field protected handlerThread:Landroid/os/HandlerThread;

.field protected listener:Lcom/phicomm/speaker/player/exomedia/util/Repeater$RepeatListener;

.field protected pollRunnable:Lcom/phicomm/speaker/player/exomedia/util/Repeater$PollRunnable;

.field protected repeatDelay:I

.field protected volatile repeaterRunning:Z

.field protected useHandlerThread:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/exomedia/util/Repeater;-><init>(Z)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->repeaterRunning:Z

    .line 36
    const/16 v0, 0x21

    iput v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->repeatDelay:I

    .line 40
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->useHandlerThread:Z

    .line 43
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/util/Repeater$PollRunnable;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/exomedia/util/Repeater$PollRunnable;-><init>(Lcom/phicomm/speaker/player/exomedia/util/Repeater;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->pollRunnable:Lcom/phicomm/speaker/player/exomedia/util/Repeater$PollRunnable;

    .line 65
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->delayedHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "processOnStartingThread"    # Z

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->repeaterRunning:Z

    .line 36
    const/16 v0, 0x21

    iput v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->repeatDelay:I

    .line 40
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->useHandlerThread:Z

    .line 43
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/util/Repeater$PollRunnable;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/exomedia/util/Repeater$PollRunnable;-><init>(Lcom/phicomm/speaker/player/exomedia/util/Repeater;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->pollRunnable:Lcom/phicomm/speaker/player/exomedia/util/Repeater$PollRunnable;

    .line 53
    if-eqz p1, :cond_0

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->delayedHandler:Landroid/os/Handler;

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->useHandlerThread:Z

    goto :goto_0
.end method


# virtual methods
.method public getRepeaterDelay()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->repeatDelay:I

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->repeaterRunning:Z

    return v0
.end method

.method public setRepeatListener(Lcom/phicomm/speaker/player/exomedia/util/Repeater$RepeatListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/phicomm/speaker/player/exomedia/util/Repeater$RepeatListener;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->listener:Lcom/phicomm/speaker/player/exomedia/util/Repeater$RepeatListener;

    .line 130
    return-void
.end method

.method public setRepeaterDelay(I)V
    .locals 0
    .param p1, "milliSeconds"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->repeatDelay:I

    .line 75
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->repeaterRunning:Z

    if-nez v0, :cond_1

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->repeaterRunning:Z

    .line 93
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->useHandlerThread:Z

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoMedia_Repeater_HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->handlerThread:Landroid/os/HandlerThread;

    .line 95
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 96
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->delayedHandler:Landroid/os/Handler;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->pollRunnable:Lcom/phicomm/speaker/player/exomedia/util/Repeater$PollRunnable;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/util/Repeater$PollRunnable;->performPoll()V

    .line 101
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 111
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/Repeater;->repeaterRunning:Z

    .line 112
    return-void
.end method
