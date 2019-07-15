.class public Lcom/phicomm/speaker/player/swig/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 58
    invoke-static {}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->new_Callback()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v3}, Lcom/phicomm/speaker/player/swig/Callback;-><init>(JZ)V

    .line 59
    iget-wide v0, p0, Lcom/phicomm/speaker/player/swig/Callback;->swigCPtr:J

    iget-boolean v2, p0, Lcom/phicomm/speaker/player/swig/Callback;->swigCMemOwn:Z

    invoke-static {p0, v0, v1, v2, v3}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->Callback_director_connect(Lcom/phicomm/speaker/player/swig/Callback;JZZ)V

    .line 60
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1
    .param p1, "cPtr"    # J
    .param p3, "cMemoryOwn"    # Z

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/phicomm/speaker/player/swig/Callback;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/phicomm/speaker/player/swig/Callback;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/phicomm/speaker/player/swig/Callback;)J
    .locals 2
    .param p0, "obj"    # Lcom/phicomm/speaker/player/swig/Callback;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/phicomm/speaker/player/swig/Callback;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public airplay_notify_cb(III)I
    .locals 6
    .param p1, "msg"    # I
    .param p2, "ext1"    # I
    .param p3, "ext2"    # I

    .prologue
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/phicomm/speaker/player/swig/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/phicomm/speaker/player/swig/Callback;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->Callback_airplay_notify_cb(JLcom/phicomm/speaker/player/swig/Callback;III)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/phicomm/speaker/player/swig/Callback;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->Callback_airplay_notify_cbSwigExplicitCallback(JLcom/phicomm/speaker/player/swig/Callback;III)I

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/phicomm/speaker/player/swig/Callback;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/swig/Callback;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/swig/Callback;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/phicomm/speaker/player/swig/Callback;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->delete_Callback(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/phicomm/speaker/player/swig/Callback;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/swig/Callback;->delete()V

    .line 26
    return-void
.end method

.method protected swigDirectorDisconnect()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/swig/Callback;->swigCMemOwn:Z

    .line 40
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/swig/Callback;->delete()V

    .line 41
    return-void
.end method

.method public swigReleaseOwnership()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/swig/Callback;->swigCMemOwn:Z

    .line 45
    iget-wide v0, p0, Lcom/phicomm/speaker/player/swig/Callback;->swigCPtr:J

    invoke-static {p0, v0, v1, v2}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->Callback_change_ownership(Lcom/phicomm/speaker/player/swig/Callback;JZ)V

    .line 46
    return-void
.end method

.method public swigTakeOwnership()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/swig/Callback;->swigCMemOwn:Z

    .line 50
    iget-wide v0, p0, Lcom/phicomm/speaker/player/swig/Callback;->swigCPtr:J

    invoke-static {p0, v0, v1, v2}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->Callback_change_ownership(Lcom/phicomm/speaker/player/swig/Callback;JZ)V

    .line 51
    return-void
.end method
