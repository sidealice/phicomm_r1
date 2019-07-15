.class public Lcom/unisound/sdk/BlockingAudioTrack;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "TTS.BlockingAudioTrack"

.field private static final b:Z = false

.field private static final c:J = 0x14L

.field private static final d:J = 0x9c4L

.field private static final e:J = 0x9c4L

.field private static final f:I = 0x2000


# instance fields
.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:Z

.field private m:I

.field private n:I

.field private o:Landroid/media/AudioTrack;

.field private volatile p:Z

.field private final q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IIII)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/unisound/sdk/BlockingAudioTrack;->n:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->q:Ljava/lang/Object;

    iput p1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->g:I

    iput p2, p0, Lcom/unisound/sdk/BlockingAudioTrack;->h:I

    iput p3, p0, Lcom/unisound/sdk/BlockingAudioTrack;->i:I

    iput p4, p0, Lcom/unisound/sdk/BlockingAudioTrack;->j:I

    iget v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->i:I

    invoke-static {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->c(I)I

    move-result v0

    iget v1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->j:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->k:I

    iput-boolean v2, p0, Lcom/unisound/sdk/BlockingAudioTrack;->l:Z

    iput v2, p0, Lcom/unisound/sdk/BlockingAudioTrack;->m:I

    iput v2, p0, Lcom/unisound/sdk/BlockingAudioTrack;->n:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    iput-boolean v2, p0, Lcom/unisound/sdk/BlockingAudioTrack;->p:Z

    return-void
.end method

.method static a(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/16 v0, 0xc

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/media/AudioTrack;[B)I
    .locals 2

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    if-gtz v1, :cond_2

    :cond_1
    return v0

    :cond_2
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private static final a(JJJ)J
    .locals 2

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    cmp-long v0, p0, p4

    if-lez v0, :cond_1

    move-wide p2, p4

    goto :goto_0

    :cond_1
    move-wide p2, p0

    goto :goto_0
.end method

.method private a()Landroid/media/AudioTrack;
    .locals 7

    const/4 v6, 0x1

    iget v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->j:I

    invoke-static {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->a(I)I

    move-result v3

    iget v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->h:I

    iget v1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->i:I

    invoke-static {v0, v3, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    const/16 v1, 0x2000

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->g:I

    iget v2, p0, Lcom/unisound/sdk/BlockingAudioTrack;->h:I

    iget v4, p0, Lcom/unisound/sdk/BlockingAudioTrack;->i:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-eq v1, v6, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "TTS.BlockingAudioTrack"

    aput-object v3, v1, v2

    const-string v2, "Unable to create audio track."

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/unisound/common/y;->e([Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iput v5, p0, Lcom/unisound/sdk/BlockingAudioTrack;->m:I

    goto :goto_0
.end method

.method private a(Landroid/media/AudioTrack;)V
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->n:I

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->l:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/unisound/sdk/BlockingAudioTrack;->b()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/unisound/sdk/BlockingAudioTrack;->b(Landroid/media/AudioTrack;)V

    goto :goto_0
.end method

.method private b()V
    .locals 2

    iget v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->n:I

    iget v1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->k:I

    div-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->h:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Landroid/media/AudioTrack;)V
    .locals 14

    const-wide/16 v8, 0x0

    const/4 v13, 0x3

    const-wide/16 v4, 0x9c4

    iget v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->n:I

    iget v1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->k:I

    div-int v12, v0, v1

    const/4 v0, -0x1

    move-wide v6, v8

    move v10, v0

    :goto_0
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v11

    if-ge v11, v12, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-ne v0, v13, :cond_0

    iget-boolean v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->p:Z

    if-nez v0, :cond_0

    sub-int v0, v12, v11

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v1

    div-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x14

    invoke-static/range {v0 .. v5}, Lcom/unisound/sdk/BlockingAudioTrack;->a(JJJ)J

    move-result-wide v2

    if-ne v11, v10, :cond_1

    add-long v0, v6, v2

    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "TTS.BlockingAudioTrack"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Waited unsuccessfully for "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "ms "

    aput-object v1, v0, v13

    const/4 v1, 0x4

    const-string v2, "for AudioTrack to make progress, Aborting"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->e([Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-wide v0, v8

    :cond_2
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v6, v0

    move v10, v11

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static c(I)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p0, v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method b(I)J
    .locals 2

    iget v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->k:I

    div-int v0, p1, v0

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->h:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public init()V
    .locals 2

    invoke-direct {p0}, Lcom/unisound/sdk/BlockingAudioTrack;->a()Landroid/media/AudioTrack;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->p:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public waitAndRelease()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->n:I

    iget v1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->m:I

    if-ge v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->p:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->l:Z

    iget-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_1
    iget-boolean v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->p:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    invoke-direct {p0, v0}, Lcom/unisound/sdk/BlockingAudioTrack;->a(Landroid/media/AudioTrack;)V

    :cond_2
    iget-object v1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write([B)I
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->p:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    invoke-static {v0, p1}, Lcom/unisound/sdk/BlockingAudioTrack;->a(Landroid/media/AudioTrack;[B)I

    move-result v0

    iget v1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->n:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->n:I

    goto :goto_0
.end method

.method public write([BII)I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->p:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    goto :goto_0
.end method
