.class public Lcom/unisound/sdk/bx;
.super Lcom/unisound/sdk/bs;


# static fields
.field public static final c:I = 0x32

.field public static d:Z

.field private static final g:Ljava/text/SimpleDateFormat;

.field private static h:I


# instance fields
.field e:I

.field f:I

.field private i:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private j:Lcom/unisound/sdk/by;

.field private k:Z

.field private volatile l:I

.field private volatile m:I

.field private n:Lcom/unisound/sdk/BlockingAudioTrack;

.field private o:Z

.field private p:Z

.field private q:Ljava/lang/Object;

.field private r:Ljava/lang/Boolean;

.field private s:Ljava/lang/Boolean;

.field private t:Lcom/unisound/client/IAudioSource;

.field private u:Lcom/unisound/sdk/bw;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy_MM_dd_HH_mm_ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/unisound/sdk/bx;->g:Ljava/text/SimpleDateFormat;

    const/16 v0, 0x32

    sput v0, Lcom/unisound/sdk/bx;->h:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unisound/sdk/bx;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/unisound/sdk/bw;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/unisound/sdk/bw;->r()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Lcom/unisound/sdk/bw;->m()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/unisound/sdk/bs;-><init>(ZZ)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/bx;->i:Ljava/util/concurrent/BlockingQueue;

    iput-boolean v2, p0, Lcom/unisound/sdk/bx;->k:Z

    iput v2, p0, Lcom/unisound/sdk/bx;->l:I

    iput v2, p0, Lcom/unisound/sdk/bx;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    iput-boolean v2, p0, Lcom/unisound/sdk/bx;->o:Z

    iput-boolean v2, p0, Lcom/unisound/sdk/bx;->p:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/bx;->q:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bx;->r:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bx;->s:Ljava/lang/Boolean;

    iput v2, p0, Lcom/unisound/sdk/bx;->e:I

    iput v2, p0, Lcom/unisound/sdk/bx;->f:I

    iput-object p1, p0, Lcom/unisound/sdk/bx;->u:Lcom/unisound/sdk/bw;

    invoke-virtual {p1}, Lcom/unisound/sdk/bw;->x()I

    move-result v0

    invoke-virtual {p1}, Lcom/unisound/sdk/bw;->y()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/unisound/sdk/bx;->e:I

    invoke-virtual {p1}, Lcom/unisound/sdk/bw;->H()I

    move-result v0

    iput v0, p0, Lcom/unisound/sdk/bx;->f:I

    return-void
.end method

.method private declared-synchronized a(II)V
    .locals 1

    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    :goto_0
    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_0
    iget v0, p0, Lcom/unisound/sdk/bx;->l:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/unisound/sdk/bx;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_1
    iget v0, p0, Lcom/unisound/sdk/bx;->l:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/unisound/sdk/bx;->l:I

    goto :goto_0

    :pswitch_2
    iput p2, p0, Lcom/unisound/sdk/bx;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a([S)[B
    .locals 5

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-short v2, p0, v0

    mul-int/lit8 v3, v0, 0x2

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    const v4, 0xff00

    and-int/2addr v2, v4

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lcom/unisound/sdk/bx;->d:Z

    return-void
.end method

.method private c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/by;->a(Z)V

    :cond_0
    return-void
.end method

.method private d(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/by;->b(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/bx;->p:Z

    return-void
.end method

.method private declared-synchronized e(I)V
    .locals 1

    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    :goto_0
    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_0
    iget v0, p0, Lcom/unisound/sdk/bx;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unisound/sdk/bx;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_1
    iget v0, p0, Lcom/unisound/sdk/bx;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/unisound/sdk/bx;->m:I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/sdk/bx;->m:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static l()Z
    .locals 1

    sget-boolean v0, Lcom/unisound/sdk/bx;->d:Z

    return v0
.end method

.method private m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/bx;->k:Z

    return v0
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/by;->a()V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/by;->b()V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/by;->c()V

    :cond_0
    return-void
.end method

.method private q()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/bx;->p:Z

    iget-object v0, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/by;->e()V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/by;->f()V

    :cond_0
    return-void
.end method

.method private s()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/by;->g()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/bx;->p:Z

    return-void
.end method

.method private t()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/sdk/bx;->g:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private u()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/unisound/sdk/bx;->u:Lcom/unisound/sdk/bw;

    invoke-virtual {v2}, Lcom/unisound/sdk/bw;->G()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/unisound/sdk/bx;->m:I

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/unisound/sdk/bx;->l:I

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private v()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_0

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "TTSPlayThread->playThreadNotify begin"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/unisound/sdk/bx;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/unisound/sdk/bx;->o:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/bx;->o:Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "lockObject notify.."

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/bx;->q:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    invoke-direct {p0}, Lcom/unisound/sdk/bx;->r()V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_2

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "TTSPlayThread->playThreadNotify end"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private w()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/bx;->o:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/unisound/client/IAudioSource;)V
    .locals 2

    iput-object p1, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    iget-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisound/common/e;

    iget-object v1, p0, Lcom/unisound/sdk/bx;->u:Lcom/unisound/sdk/bw;

    invoke-direct {v0, v1}, Lcom/unisound/common/e;-><init>(Lcom/unisound/sdk/bw;)V

    iput-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    :cond_0
    return-void
.end method

.method public a(Lcom/unisound/sdk/by;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bx;->r:Ljava/lang/Boolean;

    return-void
.end method

.method public a([B)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unisound/sdk/bx;->u:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->G()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/unisound/sdk/bx;->e(I)V

    iget v0, p0, Lcom/unisound/sdk/bx;->m:I

    iget v1, p0, Lcom/unisound/sdk/bx;->f:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bx;->c(Z)V

    :goto_0
    iget-object v0, p0, Lcom/unisound/sdk/bx;->i:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/sdk/bx;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unisound/sdk/bx;->n()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bx;->s:Ljava/lang/Boolean;

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, v2}, Lcom/unisound/sdk/bx;->c(Z)V

    goto :goto_0

    :cond_2
    array-length v0, p1

    invoke-direct {p0, v2, v0}, Lcom/unisound/sdk/bx;->a(II)V

    goto :goto_0
.end method

.method public b()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/unisound/sdk/bs;->b()V

    iget-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_0

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "TTSPlayThread->reqStop AudioSource 1"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/unisound/sdk/bx;->v()V

    iget-object v1, p0, Lcom/unisound/sdk/bx;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "TTSPlayThread->AudioSource.closeAudioOut begin"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    invoke-interface {v0}, Lcom/unisound/client/IAudioSource;->closeAudioOut()V

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "TTSPlayThread->AudioSource.closeAudioOut end"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_4

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "TTSPlayThread->reqStop AudioSource 2"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    sget-boolean v1, Lcom/unisound/common/y;->l:Z

    if-eqz v1, :cond_6

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "TTSPlayThread->reqStop AudioTrack 1"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_6
    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/unisound/sdk/bx;->v()V

    sget-boolean v1, Lcom/unisound/common/y;->l:Z

    if-eqz v1, :cond_7

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "TTSPlayThread->audioTrack.stop() begin"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->stop()V

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_8

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "TTSPlayThread->audioTrack.stop() end"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_8
    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_4

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "TTSPlayThread->reqStop AudioTrack 2"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/by;->a(I)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/unisound/sdk/bx;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unisound/sdk/bx;->j()V

    int-to-long v0, p1

    :try_start_0
    invoke-super {p0, v0, v1}, Lcom/unisound/sdk/bs;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public d()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/bs;->d()V

    invoke-direct {p0}, Lcom/unisound/sdk/bx;->w()V

    return-void
.end method

.method public f()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/bs;->f()V

    invoke-direct {p0}, Lcom/unisound/sdk/bx;->v()V

    return-void
.end method

.method public g()Lcom/unisound/sdk/by;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    return-object v0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/bx;->k:Z

    return-void
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bx;->r:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/unisound/sdk/bx;->k:Z

    return-void
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/bx;->p:Z

    return v0
.end method

.method public run()V
    .locals 14

    const/4 v13, 0x2

    const/4 v2, 0x0

    const/4 v12, 0x1

    const/4 v7, 0x0

    invoke-super {p0}, Lcom/unisound/sdk/bs;->run()V

    new-array v0, v12, [Ljava/lang/Object;

    const-string v1, "TTSPlayThread run(): play start"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TTSPlayThread -> ThreadName = "

    aput-object v1, v0, v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    const-string v1, ", ThreadId = "

    aput-object v1, v0, v13

    const/4 v1, 0x3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/unisound/sdk/bx;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/bx;->u:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/unisound/sdk/bx;->u:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->s()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/unisound/sdk/bx;->t()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    invoke-interface {v0}, Lcom/unisound/client/IAudioSource;->openAudioOut()I

    move-result v0

    if-eqz v0, :cond_3

    const v0, -0x11e5a

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bx;->d(I)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_2
    move-object v1, v2

    goto :goto_0

    :cond_3
    invoke-static {v12}, Lcom/unisound/sdk/bx;->b(Z)V

    :goto_2
    iget-object v0, p0, Lcom/unisound/sdk/bx;->u:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->y()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v5, v0, 0x32

    :goto_3
    :try_start_1
    iget-object v0, p0, Lcom/unisound/sdk/bx;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TTSPlayThread :: pause 1 "

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_4
    const-wide/16 v8, 0x32

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const v0, -0x11e5b

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bx;->d(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    if-eqz v0, :cond_2e

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_5

    new-array v0, v12, [Ljava/lang/Object;

    const-string v2, "TTSPlayThread ->reqStop--1--"

    aput-object v2, v0, v7

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_5
    iget-object v2, p0, Lcom/unisound/sdk/bx;->q:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TTSPlayThread ->reqStop--2--"

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TTSPlayThread->run:AudioSource.closeAudioOut() begin"

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    invoke-interface {v0}, Lcom/unisound/client/IAudioSource;->closeAudioOut()V

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TTSPlayThread->run:AudioSource.closeAudioOut() end"

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    :cond_9
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_a
    :goto_4
    iput-boolean v7, p0, Lcom/unisound/sdk/bx;->o:Z

    if-eqz v1, :cond_b

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_b
    :goto_5
    invoke-static {v7}, Lcom/unisound/sdk/bx;->b(Z)V

    invoke-virtual {p0, v7}, Lcom/unisound/sdk/bx;->b(I)V

    iget-object v0, p0, Lcom/unisound/sdk/bx;->u:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->G()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-direct {p0, v13}, Lcom/unisound/sdk/bx;->e(I)V

    :goto_6
    new-array v0, v12, [Ljava/lang/Object;

    const-string v1, "TTSPlayThread run(): play end"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_c
    new-instance v0, Lcom/unisound/sdk/BlockingAudioTrack;

    iget-object v3, p0, Lcom/unisound/sdk/bx;->u:Lcom/unisound/sdk/bw;

    invoke-virtual {v3}, Lcom/unisound/sdk/bw;->A()I

    move-result v3

    iget-object v4, p0, Lcom/unisound/sdk/bx;->u:Lcom/unisound/sdk/bw;

    invoke-virtual {v4}, Lcom/unisound/sdk/bw;->y()I

    move-result v4

    invoke-direct {v0, v3, v4, v13, v12}, Lcom/unisound/sdk/BlockingAudioTrack;-><init>(IIII)V

    iput-object v0, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    iget-object v0, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->init()V

    iget-object v0, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->start()V

    goto/16 :goto_2

    :cond_d
    :try_start_5
    iget-object v0, p0, Lcom/unisound/sdk/bx;->u:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->G()Z

    move-result v0

    if-nez v0, :cond_16

    :goto_7
    invoke-virtual {p0}, Lcom/unisound/sdk/bx;->a()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/unisound/sdk/bx;->m()Z

    move-result v0

    if-nez v0, :cond_18

    iget v0, p0, Lcom/unisound/sdk/bx;->l:I

    iget v3, p0, Lcom/unisound/sdk/bx;->e:I

    if-ge v0, v3, :cond_18

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TTSPlayThread :: pause 2 "

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_e
    const-wide/16 v8, 0x32

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    if-eqz v3, :cond_30

    sget-boolean v2, Lcom/unisound/common/y;->l:Z

    if-eqz v2, :cond_f

    new-array v2, v12, [Ljava/lang/Object;

    const-string v3, "TTSPlayThread ->reqStop--1--"

    aput-object v3, v2, v7

    invoke-static {v2}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_f
    iget-object v2, p0, Lcom/unisound/sdk/bx;->q:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    sget-boolean v3, Lcom/unisound/common/y;->l:Z

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "TTSPlayThread ->reqStop--2--"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_10
    iget-object v3, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    if-eqz v3, :cond_13

    sget-boolean v3, Lcom/unisound/common/y;->l:Z

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "TTSPlayThread->run:AudioSource.closeAudioOut() begin"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_11
    iget-object v3, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    invoke-interface {v3}, Lcom/unisound/client/IAudioSource;->closeAudioOut()V

    sget-boolean v3, Lcom/unisound/common/y;->l:Z

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "TTSPlayThread->run:AudioSource.closeAudioOut() end"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_12
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    :cond_13
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_14
    :goto_8
    iput-boolean v7, p0, Lcom/unisound/sdk/bx;->o:Z

    if-eqz v1, :cond_15

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_15
    :goto_9
    throw v0

    :cond_16
    :goto_a
    :try_start_8
    invoke-virtual {p0}, Lcom/unisound/sdk/bx;->a()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/unisound/sdk/bx;->m()Z

    move-result v0

    if-nez v0, :cond_18

    iget v0, p0, Lcom/unisound/sdk/bx;->m:I

    if-ge v0, v12, :cond_18

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TTSPlayThread :: pause 2 "

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_17
    const-wide/16 v8, 0x32

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_a

    :cond_18
    invoke-direct {p0}, Lcom/unisound/sdk/bx;->o()V

    invoke-direct {p0}, Lcom/unisound/sdk/bx;->u()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-direct {p0}, Lcom/unisound/sdk/bx;->p()V

    :cond_19
    :goto_b
    invoke-virtual {p0}, Lcom/unisound/sdk/bx;->a()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/unisound/sdk/bx;->i:Ljava/util/concurrent/BlockingQueue;

    sget v3, Lcom/unisound/sdk/bx;->h:I

    int-to-long v8, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v8, v9, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_22

    sget-boolean v3, Lcom/unisound/common/y;->l:Z

    if-eqz v3, :cond_1a

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "TTSPlayThread :: buffersize ="

    aput-object v6, v3, v4

    const/4 v4, 0x1

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    const-string v6, " first byte = "

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const/4 v6, 0x0

    aget-byte v6, v0, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_1a
    array-length v4, v0

    iget-object v3, p0, Lcom/unisound/sdk/bx;->u:Lcom/unisound/sdk/bw;

    invoke-virtual {v3}, Lcom/unisound/sdk/bw;->G()Z

    move-result v3

    if-eqz v3, :cond_1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TTSPlay bufferDataTime = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/unisound/sdk/bx;->m:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget v3, p0, Lcom/unisound/sdk/bx;->m:I

    iget v6, p0, Lcom/unisound/sdk/bx;->f:I

    if-lt v3, v6, :cond_1c

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/unisound/sdk/bx;->c(Z)V

    :goto_c
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/unisound/sdk/bx;->e(I)V

    move v6, v7

    :goto_d
    if-lez v4, :cond_21

    invoke-virtual {p0}, Lcom/unisound/sdk/bx;->a()Z

    move-result v3

    if-nez v3, :cond_21

    iget-object v3, p0, Lcom/unisound/sdk/bx;->q:Ljava/lang/Object;

    monitor-enter v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-boolean v8, p0, Lcom/unisound/sdk/bx;->o:Z

    if-eqz v8, :cond_1f

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "TTSPlayThread run(): lockObject wait..."

    aput-object v10, v8, v9

    invoke-static {v8}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/unisound/sdk/bx;->q()V

    iget-object v8, p0, Lcom/unisound/sdk/bx;->q:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V

    :goto_e
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-le v5, v4, :cond_33

    move v3, v4

    :goto_f
    :try_start_a
    iget-object v8, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    if-eqz v8, :cond_20

    new-array v8, v3, [B

    const/4 v9, 0x0

    invoke-static {v0, v6, v8, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "TTSPlayThread run : before writeData "

    aput-object v11, v9, v10

    invoke-static {v9}, Lcom/unisound/common/y;->f([Ljava/lang/Object;)V

    sget-boolean v9, Lcom/unisound/common/y;->l:Z

    if-eqz v9, :cond_1b

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "TTSPlayThread :: writeData "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_1b
    iget-object v9, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    invoke-interface {v9, v8, v3}, Lcom/unisound/client/IAudioSource;->writeData([BI)I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "TTSPlayThread run : after writeData "

    aput-object v10, v8, v9

    invoke-static {v8}, Lcom/unisound/common/y;->f([Ljava/lang/Object;)V

    :goto_10
    add-int/2addr v6, v3

    sub-int/2addr v4, v3

    goto :goto_d

    :cond_1c
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/unisound/sdk/bx;->c(Z)V

    goto :goto_c

    :cond_1d
    iget v3, p0, Lcom/unisound/sdk/bx;->l:I

    iget v6, p0, Lcom/unisound/sdk/bx;->e:I

    if-lt v3, v6, :cond_1e

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/unisound/sdk/bx;->c(Z)V

    :goto_11
    const/4 v3, 0x1

    invoke-direct {p0, v3, v4}, Lcom/unisound/sdk/bx;->a(II)V

    move v6, v7

    goto :goto_d

    :cond_1e
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/unisound/sdk/bx;->c(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_11

    :cond_1f
    const/4 v8, 0x1

    :try_start_b
    iput-boolean v8, p0, Lcom/unisound/sdk/bx;->p:Z

    goto :goto_e

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v0

    :cond_20
    iget-object v8, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v8, v0, v6, v3}, Lcom/unisound/sdk/BlockingAudioTrack;->write([BII)I

    goto :goto_10

    :cond_21
    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/unisound/sdk/bx;->c()Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto/16 :goto_b

    :cond_22
    invoke-direct {p0}, Lcom/unisound/sdk/bx;->m()Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_23
    invoke-direct {p0}, Lcom/unisound/sdk/bx;->s()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_24
    iget-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    if-eqz v0, :cond_2c

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_25

    new-array v0, v12, [Ljava/lang/Object;

    const-string v2, "TTSPlayThread ->reqStop--1--"

    aput-object v2, v0, v7

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_25
    iget-object v2, p0, Lcom/unisound/sdk/bx;->q:Ljava/lang/Object;

    monitor-enter v2

    :try_start_d
    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TTSPlayThread ->reqStop--2--"

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_26
    iget-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    if-eqz v0, :cond_29

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TTSPlayThread->run:AudioSource.closeAudioOut() begin"

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_27
    iget-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    invoke-interface {v0}, Lcom/unisound/client/IAudioSource;->closeAudioOut()V

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TTSPlayThread->run:AudioSource.closeAudioOut() end"

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    :cond_29
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :cond_2a
    :goto_12
    iput-boolean v7, p0, Lcom/unisound/sdk/bx;->o:Z

    if-eqz v1, :cond_b

    :try_start_e
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    :cond_2b
    const/4 v0, 0x0

    :try_start_f
    invoke-direct {p0, v0}, Lcom/unisound/sdk/bx;->c(Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    throw v0

    :cond_2c
    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_2d

    new-array v0, v12, [Ljava/lang/Object;

    const-string v3, "TTSPlayThread ->reqStop--3--"

    aput-object v3, v0, v7

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_2d
    iget-object v0, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->stop()V

    iget-object v0, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->waitAndRelease()V

    iput-object v2, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    goto :goto_12

    :catchall_3
    move-exception v0

    :try_start_11
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    throw v0

    :cond_2e
    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_2f

    new-array v0, v12, [Ljava/lang/Object;

    const-string v3, "TTSPlayThread ->reqStop--3--"

    aput-object v3, v0, v7

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_2f
    iget-object v0, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->stop()V

    iget-object v0, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->waitAndRelease()V

    iput-object v2, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    goto/16 :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    :catchall_4
    move-exception v0

    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    throw v0

    :cond_30
    sget-boolean v3, Lcom/unisound/common/y;->l:Z

    if-eqz v3, :cond_31

    new-array v3, v12, [Ljava/lang/Object;

    const-string v4, "TTSPlayThread ->reqStop--3--"

    aput-object v4, v3, v7

    invoke-static {v3}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_31
    iget-object v3, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v3}, Lcom/unisound/sdk/BlockingAudioTrack;->stop()V

    iget-object v3, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v3}, Lcom/unisound/sdk/BlockingAudioTrack;->waitAndRelease()V

    iput-object v2, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    goto/16 :goto_8

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    :cond_32
    invoke-direct {p0, v13, v7}, Lcom/unisound/sdk/bx;->a(II)V

    goto/16 :goto_6

    :cond_33
    move v3, v5

    goto/16 :goto_f
.end method
