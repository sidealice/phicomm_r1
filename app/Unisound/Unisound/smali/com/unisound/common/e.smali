.class public Lcom/unisound/common/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/client/IAudioSource;


# static fields
.field public static final a:I = 0x3e80

.field protected static b:I

.field protected static c:I

.field protected static d:I

.field protected static e:I

.field protected static f:I

.field protected static g:I

.field private static h:I

.field private static i:I


# instance fields
.field private j:Landroid/media/AudioRecord;

.field private k:Ljava/lang/Object;

.field private l:Lcn/yunzhisheng/asr/a;

.field private m:Lcom/unisound/sdk/bw;

.field private n:Lcom/unisound/sdk/BlockingAudioTrack;

.field private o:Lcom/unisound/jni/Uni4micHalJNI;

.field private p:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v1, 0x10

    const/16 v0, 0x3e80

    sput v0, Lcom/unisound/common/e;->h:I

    sput v1, Lcom/unisound/common/e;->b:I

    sput v1, Lcom/unisound/common/e;->c:I

    const/16 v0, 0xc

    sput v0, Lcom/unisound/common/e;->d:I

    const/4 v0, 0x2

    sput v0, Lcom/unisound/common/e;->e:I

    const/4 v0, 0x4

    sput v0, Lcom/unisound/common/e;->f:I

    const/4 v0, 0x1

    sput v0, Lcom/unisound/common/e;->g:I

    const/16 v0, 0x1900

    sput v0, Lcom/unisound/common/e;->i:I

    sget v0, Lcom/unisound/common/e;->h:I

    sget v1, Lcom/unisound/common/e;->b:I

    sget v2, Lcom/unisound/common/e;->e:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    sget v1, Lcom/unisound/common/e;->i:I

    if-ge v1, v0, :cond_0

    sput v0, Lcom/unisound/common/e;->i:I

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/unisound/common/e;->j:Landroid/media/AudioRecord;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unisound/common/e;->k:Ljava/lang/Object;

    iput-object v1, p0, Lcom/unisound/common/e;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/unisound/common/e;->p:J

    return-void
.end method

.method public constructor <init>(Lcn/yunzhisheng/asr/a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/unisound/common/e;->j:Landroid/media/AudioRecord;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unisound/common/e;->k:Ljava/lang/Object;

    iput-object v1, p0, Lcom/unisound/common/e;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/unisound/common/e;->p:J

    iput-object p1, p0, Lcom/unisound/common/e;->l:Lcn/yunzhisheng/asr/a;

    return-void
.end method

.method public constructor <init>(Lcom/unisound/sdk/bw;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/unisound/common/e;->j:Landroid/media/AudioRecord;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unisound/common/e;->k:Ljava/lang/Object;

    iput-object v1, p0, Lcom/unisound/common/e;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/unisound/common/e;->p:J

    iput-object p1, p0, Lcom/unisound/common/e;->m:Lcom/unisound/sdk/bw;

    return-void
.end method

.method private a()I
    .locals 6

    iget-object v1, p0, Lcom/unisound/common/e;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/unisound/sdk/BlockingAudioTrack;

    iget-object v2, p0, Lcom/unisound/common/e;->m:Lcom/unisound/sdk/bw;

    invoke-virtual {v2}, Lcom/unisound/sdk/bw;->A()I

    move-result v2

    iget-object v3, p0, Lcom/unisound/common/e;->m:Lcom/unisound/sdk/bw;

    invoke-virtual {v3}, Lcom/unisound/sdk/bw;->y()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/unisound/sdk/BlockingAudioTrack;-><init>(IIII)V

    iput-object v0, p0, Lcom/unisound/common/e;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    iget-object v0, p0, Lcom/unisound/common/e;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->init()V

    iget-object v0, p0, Lcom/unisound/common/e;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->start()V

    monitor-exit v1

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a([BI)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unisound/common/e;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unisound/common/e;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v1, p1, v0, p2}, Lcom/unisound/sdk/BlockingAudioTrack;->write([BII)I

    move-result v0

    :cond_0
    return v0
.end method

.method private b([BI)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unisound/common/e;->l:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unisound/common/e;->l:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v1}, Lcom/unisound/common/s;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unisound/common/e;->l:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v1}, Lcom/unisound/common/s;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unisound/common/e;->o:Lcom/unisound/jni/Uni4micHalJNI;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/unisound/common/e;->o:Lcom/unisound/jni/Uni4micHalJNI;

    iget-wide v2, p0, Lcom/unisound/common/e;->p:J

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/unisound/jni/Uni4micHalJNI;->readData(J[BI)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/unisound/common/e;->j:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unisound/common/e;->j:Landroid/media/AudioRecord;

    invoke-virtual {v1, p1, v0, p2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    iget-object v1, p0, Lcom/unisound/common/e;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/unisound/common/e;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/common/e;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->stop()V

    iget-object v0, p0, Lcom/unisound/common/e;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->waitAndRelease()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/common/e;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c()I
    .locals 9

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/unisound/common/e;->l:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unisound/common/e;->l:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unisound/common/e;->l:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/common/e;->l:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->p()Lcom/unisound/jni/Uni4micHalJNI;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/common/e;->o:Lcom/unisound/jni/Uni4micHalJNI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/common/e;->o:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0, v4}, Lcom/unisound/jni/Uni4micHalJNI;->openAudioIn(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unisound/common/e;->p:J

    iget-object v0, p0, Lcom/unisound/common/e;->o:Lcom/unisound/jni/Uni4micHalJNI;

    iget-wide v2, p0, Lcom/unisound/common/e;->p:J

    invoke-virtual {v0, v2, v3}, Lcom/unisound/jni/Uni4micHalJNI;->startRecorder(J)I

    move-result v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "AudioSourceImpl"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openIn uni4micHalJNI status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    move v0, v7

    goto :goto_0

    :cond_1
    move v0, v7

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/unisound/common/e;->l:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->e()I

    move-result v1

    iget-object v2, p0, Lcom/unisound/common/e;->l:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v2}, Lcn/yunzhisheng/asr/a;->f()I

    move-result v2

    sget v3, Lcom/unisound/common/e;->d:I

    sget v4, Lcom/unisound/common/e;->e:I

    sget v5, Lcom/unisound/common/e;->i:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/unisound/common/e;->j:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/unisound/common/e;->j:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v8, :cond_4

    iget-object v0, p0, Lcom/unisound/common/e;->j:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    move v0, v6

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/unisound/common/e;->l:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->e()I

    move-result v1

    iget-object v2, p0, Lcom/unisound/common/e;->l:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v2}, Lcn/yunzhisheng/asr/a;->f()I

    move-result v2

    sget v3, Lcom/unisound/common/e;->c:I

    sget v4, Lcom/unisound/common/e;->e:I

    sget v5, Lcom/unisound/common/e;->i:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/unisound/common/e;->j:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/unisound/common/e;->j:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v8, :cond_4

    iget-object v0, p0, Lcom/unisound/common/e;->j:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    move v0, v6

    goto :goto_0

    :cond_4
    move v0, v7

    goto :goto_0
.end method

.method private d()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/unisound/common/e;->l:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/common/e;->l:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/common/e;->l:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/common/e;->o:Lcom/unisound/jni/Uni4micHalJNI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/common/e;->o:Lcom/unisound/jni/Uni4micHalJNI;

    iget-wide v2, p0, Lcom/unisound/common/e;->p:J

    invoke-virtual {v0, v2, v3}, Lcom/unisound/jni/Uni4micHalJNI;->stopRecorder(J)I

    move-result v0

    iget-object v1, p0, Lcom/unisound/common/e;->o:Lcom/unisound/jni/Uni4micHalJNI;

    iget-wide v2, p0, Lcom/unisound/common/e;->p:J

    invoke-virtual {v1, v2, v3}, Lcom/unisound/jni/Uni4micHalJNI;->closeAudioIn(J)I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "AudioSourceImpl"

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeIn uni4micHalJNI stop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", close = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v2}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unisound/common/e;->j:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "IAudioSource::close audioRecord.stop()"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/common/e;->j:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/unisound/common/e;->j:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :cond_2
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "IAudioSource::close audioRecord.release()"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/common/e;->j:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/common/e;->j:Landroid/media/AudioRecord;

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "IAudioSource::close ok"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public closeAudioIn()V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/common/e;->d()V

    return-void
.end method

.method public closeAudioOut()V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/common/e;->b()V

    return-void
.end method

.method public openAudioIn()I
    .locals 1

    invoke-direct {p0}, Lcom/unisound/common/e;->c()I

    move-result v0

    return v0
.end method

.method public openAudioOut()I
    .locals 1

    invoke-direct {p0}, Lcom/unisound/common/e;->a()I

    move-result v0

    return v0
.end method

.method public readData([BI)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/unisound/common/e;->b([BI)I

    move-result v0

    return v0
.end method

.method public writeData([BI)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/unisound/common/e;->a([BI)I

    move-result v0

    return v0
.end method
