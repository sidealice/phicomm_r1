.class public Lcom/unisound/sdk/x;
.super Ljava/lang/Thread;


# static fields
.field protected static a:I

.field protected static b:I

.field protected static c:I

.field protected static d:I

.field protected static e:I

.field protected static f:I

.field private static q:I

.field private static r:I

.field private static t:I


# instance fields
.field g:I

.field private h:Lcom/unisound/jni/Uni4micHalJNI;

.field private i:J

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/media/AudioRecord;

.field private s:I

.field private u:Lcom/unisound/client/FourMicAudioManagerListener;

.field private v:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v1, 0x10

    const/16 v0, 0x3e80

    sput v0, Lcom/unisound/sdk/x;->q:I

    sput v1, Lcom/unisound/sdk/x;->a:I

    sput v1, Lcom/unisound/sdk/x;->b:I

    const/16 v0, 0xc

    sput v0, Lcom/unisound/sdk/x;->c:I

    const/4 v0, 0x2

    sput v0, Lcom/unisound/sdk/x;->d:I

    const/4 v0, 0x4

    sput v0, Lcom/unisound/sdk/x;->e:I

    const/4 v0, 0x1

    sput v0, Lcom/unisound/sdk/x;->f:I

    sget v0, Lcom/unisound/sdk/x;->q:I

    sput v0, Lcom/unisound/sdk/x;->t:I

    const/16 v0, 0x1900

    sput v0, Lcom/unisound/sdk/x;->r:I

    sget v0, Lcom/unisound/sdk/x;->t:I

    sget v1, Lcom/unisound/sdk/x;->a:I

    sget v2, Lcom/unisound/sdk/x;->d:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    sget v1, Lcom/unisound/sdk/x;->r:I

    if-ge v1, v0, :cond_0

    sput v0, Lcom/unisound/sdk/x;->r:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/unisound/client/FourMicAudioManagerListener;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/unisound/sdk/x;->i:J

    iput-boolean v3, p0, Lcom/unisound/sdk/x;->j:Z

    iput v3, p0, Lcom/unisound/sdk/x;->k:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/unisound/sdk/x;->l:I

    iput v3, p0, Lcom/unisound/sdk/x;->m:I

    iput v2, p0, Lcom/unisound/sdk/x;->n:I

    iput v2, p0, Lcom/unisound/sdk/x;->o:I

    iput-object v4, p0, Lcom/unisound/sdk/x;->p:Landroid/media/AudioRecord;

    iput v2, p0, Lcom/unisound/sdk/x;->g:I

    const/16 v0, 0x4b0

    iput v0, p0, Lcom/unisound/sdk/x;->s:I

    iput-object v4, p0, Lcom/unisound/sdk/x;->u:Lcom/unisound/client/FourMicAudioManagerListener;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/unisound/sdk/x;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/unisound/sdk/x;->u:Lcom/unisound/client/FourMicAudioManagerListener;

    return-void
.end method

.method private a()I
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    iget-boolean v0, p0, Lcom/unisound/sdk/x;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    iget v1, p0, Lcom/unisound/sdk/x;->l:I

    invoke-virtual {v0, v1}, Lcom/unisound/jni/Uni4micHalJNI;->openAudioIn(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unisound/sdk/x;->i:J

    iget-object v0, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    iget-wide v2, p0, Lcom/unisound/sdk/x;->i:J

    invoke-virtual {v0, v2, v3}, Lcom/unisound/jni/Uni4micHalJNI;->startRecorder(J)I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FourMicAudioManagerInterface"

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

    iget v1, p0, Lcom/unisound/sdk/x;->g:I

    sget v2, Lcom/unisound/sdk/x;->q:I

    sget v3, Lcom/unisound/sdk/x;->b:I

    sget v4, Lcom/unisound/sdk/x;->d:I

    sget v5, Lcom/unisound/sdk/x;->r:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/unisound/sdk/x;->p:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/unisound/sdk/x;->p:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v8, :cond_3

    iget-object v0, p0, Lcom/unisound/sdk/x;->p:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    move v0, v6

    goto :goto_0

    :cond_3
    move v0, v7

    goto :goto_0
.end method

.method private a([BI)I
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/unisound/sdk/x;->j:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    iget-wide v2, p0, Lcom/unisound/sdk/x;->i:J

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/unisound/jni/Uni4micHalJNI;->readData(J[BI)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/unisound/sdk/x;->p:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unisound/sdk/x;->p:Landroid/media/AudioRecord;

    invoke-virtual {v1, p1, v0, p2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method private b()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/unisound/sdk/x;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    iget-wide v2, p0, Lcom/unisound/sdk/x;->i:J

    invoke-virtual {v0, v2, v3}, Lcom/unisound/jni/Uni4micHalJNI;->stopRecorder(J)I

    move-result v0

    iget-object v1, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    iget-wide v2, p0, Lcom/unisound/sdk/x;->i:J

    invoke-virtual {v1, v2, v3}, Lcom/unisound/jni/Uni4micHalJNI;->closeAudioIn(J)I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "FourMicAudioManagerInterface"

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
    iget-object v0, p0, Lcom/unisound/sdk/x;->p:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "FourMicAudioManagerInterface::close audioRecord.stop()"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/x;->p:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/x;->p:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :cond_2
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "FourMicAudioManagerInterface::close audioRecord.release()"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/x;->p:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/x;->p:Landroid/media/AudioRecord;

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "FourMicAudioManagerInterface::close ok"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private c()I
    .locals 5

    invoke-static {}, Lcom/unisound/jni/Uni4micHalJNI;->getInstance()Lcom/unisound/jni/Uni4micHalJNI;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    iget-object v0, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    iget v1, p0, Lcom/unisound/sdk/x;->k:I

    invoke-virtual {v0, v1}, Lcom/unisound/jni/Uni4micHalJNI;->init(I)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FourMicAudioManagerInterface initFourMic status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    iget v2, p0, Lcom/unisound/sdk/x;->m:I

    invoke-virtual {v1, v2}, Lcom/unisound/jni/Uni4micHalJNI;->set4MicDebugMode(I)I

    iget-object v1, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    iget v2, p0, Lcom/unisound/sdk/x;->n:I

    invoke-virtual {v1, v2}, Lcom/unisound/jni/Uni4micHalJNI;->close4MicAlgorithm(I)I

    iget-object v1, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    iget v2, p0, Lcom/unisound/sdk/x;->o:I

    invoke-virtual {v1, v2}, Lcom/unisound/jni/Uni4micHalJNI;->set4MicWakeUpStatus(I)I

    return v0
.end method

.method private d()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0}, Lcom/unisound/jni/Uni4micHalJNI;->release()I

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/x;->u:Lcom/unisound/client/FourMicAudioManagerListener;

    const/16 v1, 0x408

    invoke-interface {v0, v1}, Lcom/unisound/client/FourMicAudioManagerListener;->onEvent(I)V

    :try_start_0
    iget-boolean v0, p0, Lcom/unisound/sdk/x;->j:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unisound/sdk/x;->c()I

    :cond_0
    invoke-direct {p0}, Lcom/unisound/sdk/x;->a()I

    iget-object v0, p0, Lcom/unisound/sdk/x;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/unisound/sdk/x;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/unisound/sdk/x;->j:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/unisound/sdk/x;->s:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    :goto_1
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/unisound/sdk/x;->a([BI)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/unisound/sdk/x;->u:Lcom/unisound/client/FourMicAudioManagerListener;

    invoke-interface {v2, v0, v1}, Lcom/unisound/client/FourMicAudioManagerListener;->onRecordingData([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/unisound/sdk/x;->u:Lcom/unisound/client/FourMicAudioManagerListener;

    const v1, -0xf838

    invoke-static {v1}, Lcom/unisound/client/ErrorCode;->toMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/client/FourMicAudioManagerListener;->onError(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/unisound/sdk/x;->b()V

    iget-boolean v0, p0, Lcom/unisound/sdk/x;->j:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/unisound/sdk/x;->d()I

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/unisound/sdk/x;->u:Lcom/unisound/client/FourMicAudioManagerListener;

    const/16 v1, 0x409

    invoke-interface {v0, v1}, Lcom/unisound/client/FourMicAudioManagerListener;->onEvent(I)V

    return-void

    :cond_3
    :try_start_2
    iget v0, p0, Lcom/unisound/sdk/x;->s:I

    new-array v0, v0, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/unisound/sdk/x;->b()V

    iget-boolean v0, p0, Lcom/unisound/sdk/x;->j:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/unisound/sdk/x;->d()I

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/unisound/sdk/x;->b()V

    iget-boolean v1, p0, Lcom/unisound/sdk/x;->j:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/unisound/sdk/x;->d()I

    :cond_5
    throw v0
.end method

.method protected setOption(ILjava/lang/Object;)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    :try_start_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/unisound/sdk/x;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "set is4micMode Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unisound/sdk/x;->s:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "set recordingPacSize Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    :try_start_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lcom/unisound/sdk/x;->m:I

    :goto_1
    sput-boolean v0, Lcom/unisound/common/y;->k:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v0, "set ASR_FOURMIC_ISDEBUG Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_3
    iput v1, p0, Lcom/unisound/sdk/x;->m:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :sswitch_3
    :try_start_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/unisound/sdk/x;->n:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v0, "set ASR_FOURMIC_CLOSE_4MICALGORITHM Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :try_start_5
    iput v0, p0, Lcom/unisound/sdk/x;->n:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :sswitch_4
    :try_start_6
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/unisound/sdk/x;->q:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    const-string v0, "set asr_sampling_rate Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    :try_start_7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/unisound/sdk/x;->k:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    :catch_5
    move-exception v0

    const-string v0, "set use4mic Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :try_start_8
    iput v0, p0, Lcom/unisound/sdk/x;->k:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_0

    :sswitch_6
    :try_start_9
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unisound/sdk/x;->l:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_0

    :catch_6
    move-exception v0

    const-string v0, "set 4mic_ch_num Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    :try_start_a
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unisound/sdk/x;->g:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    const-string v0, "set asr_sampling_rate Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    :try_start_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unisound/sdk/x;->o:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v0

    const-string v0, "set wakeupStatus Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x414 -> :sswitch_4
        0x438 -> :sswitch_1
        0x457 -> :sswitch_5
        0x8ae -> :sswitch_6
        0xd05 -> :sswitch_7
        0x115c -> :sswitch_8
        0x2774 -> :sswitch_3
        0x27d6 -> :sswitch_2
        0x27d7 -> :sswitch_0
    .end sparse-switch
.end method

.method protected startRecord()V
    .locals 0

    invoke-virtual {p0}, Lcom/unisound/sdk/x;->waitEnd()V

    invoke-virtual {p0}, Lcom/unisound/sdk/x;->start()V

    return-void
.end method

.method protected stopRecord()V
    .locals 0

    invoke-virtual {p0}, Lcom/unisound/sdk/x;->waitEnd()V

    return-void
.end method

.method public waitEnd()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unisound/sdk/x;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/unisound/sdk/x;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xf3c

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/unisound/sdk/x;->join(J)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "FourMicAudioManagerInferface::waitEnd()"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V
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
