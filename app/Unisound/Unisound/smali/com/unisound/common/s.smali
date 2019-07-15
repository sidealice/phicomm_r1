.class public Lcom/unisound/common/s;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x186a0

.field public static final b:I = 0x186a1

.field public static final c:I = 0x186a2

.field public static final d:I = 0x186a3

.field public static final e:I = 0x186a4

.field public static final f:I = 0x186a5

.field public static final g:I = 0x186a6

.field public static final h:I = 0x186a7

.field public static final i:I = 0x186a8

.field public static final j:I = 0x186a9

.field public static final k:I = 0x186aa

.field private static final r:Ljava/lang/String; = "USCFourMic"

.field private static final s:Z


# instance fields
.field public l:Z

.field public m:Z

.field n:I

.field o:I

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field private t:Landroid/media/AudioManager;

.field private u:Lcom/unisound/jni/Uni4micHalJNI;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/media/AudioManager;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/unisound/common/s;->v:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/common/s;->w:Z

    iput-boolean v2, p0, Lcom/unisound/common/s;->l:Z

    iput-boolean v2, p0, Lcom/unisound/common/s;->m:Z

    iput v2, p0, Lcom/unisound/common/s;->n:I

    iput v2, p0, Lcom/unisound/common/s;->o:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/YunZhiSheng/4mic/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/common/s;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/common/s;->q:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/unisound/common/s;->x:Z

    iput v2, p0, Lcom/unisound/common/s;->y:I

    iput-boolean v2, p0, Lcom/unisound/common/s;->z:Z

    iput-object p1, p0, Lcom/unisound/common/s;->t:Landroid/media/AudioManager;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/common/s;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/unisound/common/s;->m:Z

    if-eqz v0, :cond_0

    const-string v0, "USCFourMic"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private u()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/unisound/common/s;->d()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()Z
    .locals 2

    invoke-virtual {p0}, Lcom/unisound/common/s;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UNI_4MIC_HAL_ANDROID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(II)I
    .locals 1

    div-int/lit8 v0, p1, 0x2

    mul-int/lit16 v0, v0, 0x3e8

    div-int/2addr v0, p2

    return v0
.end method

.method public a(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unisound/common/s;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set4MicWakeup -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/common/s;->t:Landroid/media/AudioManager;

    const v1, 0x186a0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "print debug log set4MicWakeup -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/common/s;->q:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/common/s;->l:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/common/s;->l:Z

    return v0
.end method

.method public a([BLjava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/unisound/common/s;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/unisound/common/s;->b(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v1, p2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public a([B)[[B
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x2

    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    filled-new-array {v6, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v1, v2

    :goto_0
    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x2

    array-length v4, p1

    if-ge v3, v4, :cond_0

    mul-int/lit8 v3, v1, 0x4

    aget-object v4, v0, v2

    mul-int/lit8 v5, v1, 0x2

    invoke-static {p1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    aget-object v4, v0, v4

    mul-int/lit8 v5, v1, 0x2

    invoke-static {p1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public b()I
    .locals 2

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unisound/common/s;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/common/s;->t:Landroid/media/AudioManager;

    const v1, 0x186a2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public b(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unisound/common/s;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_set4MicWakeup -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0, p1}, Lcom/unisound/jni/Uni4micHalJNI;->set4MicWakeUpStatus(I)I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "print debug log _set4MicWakeup -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unisound/common/s;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/unisound/common/s;->t:Landroid/media/AudioManager;

    const v3, 0x186a4

    invoke-virtual {v2, v3, v1, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDebugMode set To board  -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDebugMode  -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/unisound/common/s;->m:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public b([B)V
    .locals 2

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unisound/common/s;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unisound/common/s;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/common/s;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_real.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/unisound/common/s;->a([BLjava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unisound/common/s;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0}, Lcom/unisound/jni/Uni4micHalJNI;->get4MicDoaResult()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public c(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unisound/common/s;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set4MicDoaTimeLen -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/common/s;->t:Landroid/media/AudioManager;

    const v1, 0x186a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/unisound/common/s;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v1, v0}, Lcom/unisound/jni/Uni4micHalJNI;->set4MicDebugMode(I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDebugMode set To board  -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDebugMode  -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/unisound/common/s;->m:Z

    return-void
.end method

.method public c([B)V
    .locals 2

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unisound/common/s;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unisound/common/s;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/common/s;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_asr.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/unisound/common/s;->a([BLjava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public d()I
    .locals 2

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/common/s;->t:Landroid/media/AudioManager;

    const v1, 0x186a3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public d(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unisound/common/s;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set4MicDoaTimeLen -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0, p1}, Lcom/unisound/jni/Uni4micHalJNI;->set4MicUtteranceTimeLen(I)I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "print debug log _set4MicDoaTimeLen -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    return-void
.end method

.method public d(Z)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/unisound/common/s;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/unisound/common/s;->t:Landroid/media/AudioManager;

    const v3, 0x186a6

    invoke-virtual {v2, v3, v1, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close4MicAlgorithm set To board  -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public d([B)V
    .locals 2

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unisound/common/s;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unisound/common/s;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/common/s;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_vad.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/unisound/common/s;->a([BLjava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0}, Lcom/unisound/jni/Uni4micHalJNI;->get4MicBoardVersion()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public e(I)V
    .locals 1

    iget v0, p0, Lcom/unisound/common/s;->n:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/unisound/common/s;->n:I

    return-void
.end method

.method public e(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/unisound/common/s;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v3, v0}, Lcom/unisound/jni/Uni4micHalJNI;->close4MicAlgorithm(I)I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "FourMicUtil"

    aput-object v4, v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close4MicAlgorithm flag = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_close4MicAlgorithm set To board  -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public f(I)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/unisound/common/s;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    if-gez p1, :cond_0

    move p1, v0

    :cond_0
    iget-object v1, p0, Lcom/unisound/common/s;->t:Landroid/media/AudioManager;

    const v2, 0x186a5

    invoke-virtual {v1, v2, v0, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDelayTime -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public f(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/unisound/common/s;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lcom/unisound/common/s;->x:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/unisound/common/s;->m(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOneShotReadyFor4Mic -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "setOneShotReadyFor4Mic error not 4mic"

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/common/s;->m:Z

    return v0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/common/s;->n:I

    return-void
.end method

.method public g(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/unisound/common/s;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0, p1}, Lcom/unisound/jni/Uni4micHalJNI;->set4MicDelayTime(I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDelayTime -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public g(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/unisound/common/s;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lcom/unisound/common/s;->x:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/unisound/common/s;->n(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOneShotReadyFor4Mic -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "setOneShotReadyFor4Mic error not 4mic"

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/unisound/common/s;->n:I

    return v0
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/common/s;->o:I

    return-void
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/common/s;->z:Z

    return-void
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/unisound/common/s;->o:I

    return v0
.end method

.method public i(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unisound/common/s;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOneShotTimeStart -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/common/s;->t:Landroid/media/AudioManager;

    const v1, 0x186a7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "setOneShotTimeStart error not 4mic"

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/common/s;->v:Z

    return-void
.end method

.method public j()I
    .locals 2

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unisound/common/s;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/common/s;->t:Landroid/media/AudioManager;

    const v1, 0x186aa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public j(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unisound/common/s;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOneShotTimeStart -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0, p1}, Lcom/unisound/jni/Uni4micHalJNI;->set4MicOneShotStartLen(I)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "_setOneShotTimeStart error not 4mic"

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/common/s;->w:Z

    return-void
.end method

.method public k()I
    .locals 2

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unisound/common/s;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0}, Lcom/unisound/jni/Uni4micHalJNI;->get4MicOneShotReady()I

    :cond_0
    return v1
.end method

.method public k(I)V
    .locals 3

    const v1, 0x7fffffff

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/unisound/common/s;->u()Z

    move-result v2

    if-eqz v2, :cond_2

    if-gez p1, :cond_1

    const-string v1, "setStartWakeupTimeLen -> timeLen min"

    invoke-direct {p0, v1}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    move p1, v0

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStartWakeupTimeLen -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/common/s;->t:Landroid/media/AudioManager;

    const v2, 0x186a8

    invoke-virtual {v1, v2, v0, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :goto_1
    return-void

    :cond_1
    if-le p1, v1, :cond_0

    const-string v2, "setStartWakeupTimeLen -> timeLen max"

    invoke-direct {p0, v2}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    move p1, v1

    goto :goto_0

    :cond_2
    const-string v0, "setStartWakeupTimeLen error not 4mic"

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public l(I)V
    .locals 2

    const v0, 0x7fffffff

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/unisound/common/s;->v()Z

    move-result v1

    if-eqz v1, :cond_2

    if-gez p1, :cond_1

    const/4 p1, 0x0

    const-string v0, "setStartWakeupTimeLen -> timeLen min"

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStartWakeupTimeLen -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0, p1}, Lcom/unisound/jni/Uni4micHalJNI;->set4MicWakeupStartLen(I)I

    :goto_1
    return-void

    :cond_1
    if-le p1, v0, :cond_0

    const-string v1, "setStartWakeupTimeLen -> timeLen max"

    invoke-direct {p0, v1}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    move p1, v0

    goto :goto_0

    :cond_2
    const-string v0, "setStartWakeupTimeLen error not 4mic"

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/common/s;->x:Z

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/unisound/common/s;->y:I

    return v0
.end method

.method public m(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unisound/common/s;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOneshotReady -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/common/s;->t:Landroid/media/AudioManager;

    const v1, 0x186a9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "setOneshotReady error not 4mic"

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/common/s;->y:I

    return-void
.end method

.method public n(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unisound/common/s;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOneshotReady -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0, p1}, Lcom/unisound/jni/Uni4micHalJNI;->set4MicOneShotReady(I)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "setOneshotReady error not 4mic"

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/common/s;->y:I

    return-void
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/common/s;->z:Z

    return v0
.end method

.method public p()Lcom/unisound/jni/Uni4micHalJNI;
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    return-object v0
.end method

.method public p(I)V
    .locals 1

    iget v0, p0, Lcom/unisound/common/s;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/unisound/common/s;->y:I

    return-void
.end method

.method public q()I
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/unisound/jni/Uni4micHalJNI;->getInstance()Lcom/unisound/jni/Uni4micHalJNI;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0, v4}, Lcom/unisound/jni/Uni4micHalJNI;->init(I)I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "FourMicUtil"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFourMic status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    return v0
.end method

.method public r()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0}, Lcom/unisound/jni/Uni4micHalJNI;->release()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/common/s;->v:Z

    return v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/common/s;->w:Z

    return v0
.end method
