.class public Lcn/yunzhisheng/asrfix/JniAsrFix;
.super Ljava/lang/Object;


# static fields
.field private static D:Lcn/yunzhisheng/asrfix/JniAsrFix; = null

.field private static E:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final F:I = 0x0

.field private static final G:I = -0x1

.field private static final H:I = -0x2

.field private static final I:I = -0x3

.field private static final J:I = 0x64

.field private static final K:I = 0x10

.field private static final L:I = 0x1f4

.field private static final M:I = 0x1f6

.field private static R:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = -0x1

.field public static final f:I = -0x2

.field public static final g:I = -0x3

.field public static final h:I = -0x4

.field public static final i:I = -0x5

.field public static final j:I = -0x6

.field public static final k:I = -0x7

.field public static final l:I = -0x8

.field public static final m:I = -0x9

.field public static final n:I = -0xb

.field public static final o:I = -0xc

.field public static final p:I = 0x0

.field public static final q:I = 0x1

.field public static final r:I = 0x2

.field public static final s:I = 0x3

.field public static final t:I = 0x4

.field public static final u:I = 0x5

.field public static final v:I = 0x6

.field public static final w:I = 0x7

.field public static final x:I = 0x8

.field public static final y:I = 0x9

.field public static final z:I = 0x16


# instance fields
.field A:Z

.field protected B:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/lang/Object;

.field private N:Z

.field private O:I

.field private P:Lcom/unisound/sdk/u;

.field private Q:I

.field private S:Z

.field private T:Z

.field private U:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/yunzhisheng/asrfix/JniAsrFix;->D:Lcn/yunzhisheng/asrfix/JniAsrFix;

    const-string v0, "asrfix"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->C:Ljava/lang/Object;

    iput-boolean v1, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->N:Z

    const/16 v0, 0x5dd

    iput v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->O:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->P:Lcom/unisound/sdk/u;

    iput v2, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->Q:I

    iput-boolean v1, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->A:Z

    iput-boolean v2, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->S:Z

    iput-boolean v1, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->T:Z

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->B:Ljava/util/concurrent/BlockingQueue;

    iput-boolean v1, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->U:Z

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/16 v0, -0xc

    if-le p0, v0, :cond_0

    if-gez p0, :cond_0

    const v0, -0xf870

    add-int/2addr p0, v0

    :cond_0
    return p0
.end method

.method static synthetic a(Lcn/yunzhisheng/asrfix/JniAsrFix;I)I
    .locals 0

    iput p1, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->O:I

    return p1
.end method

.method static synthetic a(Lcn/yunzhisheng/asrfix/JniAsrFix;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/yunzhisheng/asrfix/JniAsrFix;->reset(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a()Lcn/yunzhisheng/asrfix/JniAsrFix;
    .locals 1

    sget-object v0, Lcn/yunzhisheng/asrfix/JniAsrFix;->D:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-nez v0, :cond_0

    new-instance v0, Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-direct {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;-><init>()V

    sput-object v0, Lcn/yunzhisheng/asrfix/JniAsrFix;->D:Lcn/yunzhisheng/asrfix/JniAsrFix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/yunzhisheng/asrfix/JniAsrFix;->E:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/yunzhisheng/asrfix/JniAsrFix;->R:Ljava/util/ArrayList;

    :cond_0
    sget-object v0, Lcn/yunzhisheng/asrfix/JniAsrFix;->D:Lcn/yunzhisheng/asrfix/JniAsrFix;

    return-object v0
.end method

.method static synthetic a(Lcn/yunzhisheng/asrfix/JniAsrFix;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->S:Z

    return v0
.end method

.method static synthetic a(Lcn/yunzhisheng/asrfix/JniAsrFix;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->T:Z

    return p1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->crcCheck(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcn/yunzhisheng/asrfix/JniAsrFix;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->N:Z

    return v0
.end method

.method static synthetic b(Lcn/yunzhisheng/asrfix/JniAsrFix;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->S:Z

    return p1
.end method

.method static synthetic c(Lcn/yunzhisheng/asrfix/JniAsrFix;)I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->O:I

    return v0
.end method

.method private native cancel()I
.end method

.method private native check_wav_end()I
.end method

.method public static native compileDecodeNet(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native crcCheck(Ljava/lang/String;)I
.end method

.method static synthetic d(Lcn/yunzhisheng/asrfix/JniAsrFix;)Lcom/unisound/sdk/u;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->P:Lcom/unisound/sdk/u;

    return-object v0
.end method

.method private native getOptionInt(I)I
.end method

.method private native getOptionString(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private native getResult()Ljava/lang/String;
.end method

.method public static native getVersion()Ljava/lang/String;
.end method

.method private native init(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native isEngineIdle()I
.end method

.method private native isactive([BI)I
.end method

.method private native recognize([BI)I
.end method

.method private native release()V
.end method

.method private native reset(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native search(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native setActiveNet(I)I
.end method

.method private native setOptionInt(II)I
.end method

.method private native setOptionString(ILjava/lang/String;)I
.end method

.method private native start(Ljava/lang/String;I)I
.end method

.method private native stop()I
.end method

.method private native trackInfo(I)V
.end method

.method static synthetic w()Lcn/yunzhisheng/asrfix/JniAsrFix;
    .locals 1

    sget-object v0, Lcn/yunzhisheng/asrfix/JniAsrFix;->D:Lcn/yunzhisheng/asrfix/JniAsrFix;

    return-object v0
.end method

.method private x()V
    .locals 2

    iget-boolean v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->U:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a([BI)I

    invoke-virtual {p0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->g()I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->U:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcn/yunzhisheng/asrfix/JniAsrFix;->setOptionInt(II)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(I)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v0, -0xf80e

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)I
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->U:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcn/yunzhisheng/asrfix/JniAsrFix;->setOptionString(ILjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(I)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v0, -0xf80e

    goto :goto_0
.end method

.method public a(JI)I
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->U:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e8

    invoke-virtual {p0, p1, p2, v0, p3}, Lcn/yunzhisheng/asrfix/JniAsrFix;->grammarCompilerSetOptionInt(JII)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(I)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v0, -0xf80e

    goto :goto_0
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcn/yunzhisheng/asrfix/JniAsrFix;->E:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2, p4}, Lcn/yunzhisheng/asrfix/JniAsrFix;->loadCompiledJsgf(JLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Lcn/yunzhisheng/asrfix/JniAsrFix;->E:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadGompiledJsgf failed , the jsgf.dat of this grammarTag is already exists! The grammarTag is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcn/yunzhisheng/asrfix/JniAsrFix;->D:Lcn/yunzhisheng/asrfix/JniAsrFix;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->S:Z

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v3, "compile  compileDynamicUserData fail handle=0"

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const v0, -0xf80f

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcn/yunzhisheng/asrfix/JniAsrFix;->E:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "compileDynamicUserData  loadedGrammar = + "

    aput-object v4, v0, v3

    const/4 v3, 0x1

    aput-object p3, v0, v3

    const/4 v3, 0x2

    const-string v4, " grammarPath= "

    aput-object v4, v0, v3

    const/4 v3, 0x3

    aput-object p4, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p4}, Lcn/yunzhisheng/asrfix/JniAsrFix;->loadCompiledJsgf(JLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/yunzhisheng/asrfix/JniAsrFix;->E:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "compileDynamicUserData loadCompiledJsgf success!"

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :goto_1
    invoke-direct {p0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->isEngineIdle()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eq v0, v6, :cond_3

    const/16 v0, 0x7d0

    if-ge v1, v0, :cond_3

    const-wide/16 v4, 0x32

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v1, 0x32

    move v1, v0

    goto :goto_1

    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compileDynamicUserData loadCompileJsgf error!  loadCompiledJsgfResult = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x1

    :try_start_3
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "compileDynamicUserData : grammarDat is loaded so compile directly!"

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, p2, p5, p3}, Lcn/yunzhisheng/asrfix/JniAsrFix;->compileDynamicUserData(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "compileDynamicUserData : compile success! "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->S:Z

    monitor-exit v2

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "compileDynamicUserData : compile failed!"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public a(Ljava/lang/String;I)I
    .locals 5

    const/4 v4, 0x1

    const v0, -0xf9ff

    invoke-direct {p0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->x()V

    iget-boolean v1, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->U:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "JniAsrFix : start_ -> recognizerStatus = "

    aput-object v3, v1, v2

    iget v2, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->O:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget v1, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->O:I

    const/16 v2, 0x5dd

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1, p2}, Lcn/yunzhisheng/asrfix/JniAsrFix;->start(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->N:Z

    const/16 v1, 0x5de

    iput v1, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->O:I

    iget-object v1, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->P:Lcom/unisound/sdk/u;

    iget v2, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->O:I

    invoke-interface {v1, v2}, Lcom/unisound/sdk/u;->a(I)V

    :cond_0
    if-gez v0, :cond_1

    invoke-static {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(I)I

    move-result v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const v0, -0xf80e

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/sdk/w;Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->S:Z

    iget-boolean v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->U:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Recognizer.loadModel queue add "

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->B:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->B:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->B:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p4}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->T:Z

    if-nez v0, :cond_0

    new-instance v0, Lcn/yunzhisheng/asrfix/a;

    invoke-direct {v0, p0, p3}, Lcn/yunzhisheng/asrfix/a;-><init>(Lcn/yunzhisheng/asrfix/JniAsrFix;Lcom/unisound/sdk/w;)V

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/a;->start()V

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v0, "Recognizer.loadModel not init Error"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/sdk/w;)I
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->i()V

    iput-boolean v1, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->A:Z

    sget-object v0, Lcn/yunzhisheng/asrfix/JniAsrFix;->D:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/yunzhisheng/asrfix/JniAsrFix;->D:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {p4}, Lcom/unisound/sdk/w;->aw()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(Ljava/lang/Boolean;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/yunzhisheng/asrfix/JniAsrFix;->init(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p4}, Lcom/unisound/sdk/w;->aN()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    sget-object v0, Lcn/yunzhisheng/asrfix/JniAsrFix;->D:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_1

    sget-object v0, Lcn/yunzhisheng/asrfix/JniAsrFix;->D:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {p4}, Lcom/unisound/sdk/w;->aN()I

    move-result v3

    invoke-virtual {v0, v3}, Lcn/yunzhisheng/asrfix/JniAsrFix;->j(I)V

    :cond_1
    const/16 v0, 0x5dd

    iput v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->O:I

    iput-boolean v6, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->U:Z

    const-string v0, "init_asr"

    if-ne v0, p3, :cond_4

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->getOptionInt(I)I

    move-result v0

    iput v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->Q:I

    move v0, v1

    :goto_0
    iget v3, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->Q:I

    if-ge v0, v3, :cond_2

    const/16 v3, 0x10

    invoke-direct {p0, v3, v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->setOptionInt(II)I

    move-result v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "JniAsrFix "

    aput-object v5, v4, v1

    const-string v5, "modelNum = "

    aput-object v5, v4, v6

    iget v5, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->Q:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, ", modelId = "

    aput-object v5, v4, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v4}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    sget-object v4, Lcn/yunzhisheng/asrfix/JniAsrFix;->R:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcn/yunzhisheng/asrfix/JniAsrFix;->R:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Lcom/unisound/sdk/w;->a(Ljava/util/List;)V

    iget v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->Q:I

    if-ge v0, v7, :cond_3

    const/16 v0, 0x10

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->setOptionInt(II)I

    move-result v0

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "JniAsrFix :modelNum = "

    aput-object v4, v3, v1

    iget v1, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->Q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    const-string v1, ", defaulltModelId = "

    aput-object v1, v3, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {v3}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {p4, v0}, Lcom/unisound/sdk/w;->E(I)V

    invoke-virtual {p4, v0}, Lcom/unisound/sdk/w;->D(I)V

    :cond_3
    iget-object v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->P:Lcom/unisound/sdk/u;

    const/16 v1, 0x469

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-interface {v0, v1, v3}, Lcom/unisound/sdk/u;->a(II)V

    :cond_4
    :goto_1
    invoke-static {v2}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(I)I

    move-result v0

    return v0

    :cond_5
    iget-object v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->P:Lcom/unisound/sdk/u;

    const/16 v1, 0x514

    const v3, -0xf80d

    invoke-interface {v0, v1, v3}, Lcom/unisound/sdk/u;->b(II)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "compile  initUserDataCompiler"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {p0, p4}, Lcn/yunzhisheng/asrfix/JniAsrFix;->initUserDataCompiler(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const v0, -0xf80f

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v4, "compile  compileUserData ===handle,inPartialFile, jsgf, szContent, netDat,outPartialFile"

    aput-object v4, v0, v1

    const/4 v1, 0x1

    const-string v4, " = "

    aput-object v4, v0, v1

    const/4 v1, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x3

    const-string v4, " , "

    aput-object v4, v0, v1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    const/4 v1, 0x5

    const-string v4, " , "

    aput-object v4, v0, v1

    const/4 v1, 0x6

    aput-object p2, v0, v1

    const/4 v1, 0x7

    const-string v4, " , "

    aput-object v4, v0, v1

    const/16 v1, 0x8

    aput-object p3, v0, v1

    const/16 v1, 0x9

    const-string v4, " , "

    aput-object v4, v0, v1

    const/16 v1, 0xa

    aput-object p5, v0, v1

    const/16 v1, 0xb

    const-string v4, " , "

    aput-object v4, v0, v1

    const/16 v1, 0xc

    aput-object p6, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcn/yunzhisheng/asrfix/JniAsrFix;->partialCompileUserData(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "compile  destroyUserDataCompiler"

    aput-object v5, v1, v4

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v3}, Lcn/yunzhisheng/asrfix/JniAsrFix;->destroyUserDataCompiler(J)V

    if-nez v0, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "compile  compileUserData ok"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/16 v1, -0xa

    if-ne v0, v1, :cond_2

    const-string v0, "compile compileUserData partialfile error, autofix ok"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compile  compileUserData fail code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(I)I

    move-result v0

    goto/16 :goto_0
.end method

.method public a(Z)I
    .locals 2

    const/16 v1, 0x7d

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->setOptionInt(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->setOptionInt(II)I

    move-result v0

    goto :goto_0
.end method

.method public a([BI)I
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->U:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcn/yunzhisheng/asrfix/JniAsrFix;->isactive([BI)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(I)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v0, -0xf80e

    goto :goto_0
.end method

.method public a(J)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    iget-boolean v1, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->U:Z

    if-eqz v1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const-string v0, "handle is 0"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v0, 0x3ea

    invoke-virtual {p0, p1, p2, v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->grammarCompilerGetOptionString(JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->U:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcn/yunzhisheng/asrfix/JniAsrFix;->search(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/unisound/sdk/u;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->P:Lcom/unisound/sdk/u;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 2

    const/16 v1, 0xc

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->setOptionInt(II)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->setOptionInt(II)I

    goto :goto_0
.end method

.method public b(I)I
    .locals 1

    invoke-virtual {p0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6c

    invoke-direct {p0, v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->setOptionInt(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->setOptionInt(II)I

    move-result v0

    goto :goto_0
.end method

.method public b(JI)I
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->U:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e9

    invoke-virtual {p0, p1, p2, v0, p3}, Lcn/yunzhisheng/asrfix/JniAsrFix;->grammarCompilerSetOptionInt(JII)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(I)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v0, -0xf80e

    goto :goto_0
.end method

.method public b(Z)I
    .locals 2

    const/16 v1, 0x7e

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->setOptionInt(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->setOptionInt(II)I

    move-result v0

    goto :goto_0
.end method

.method public b([BI)I
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->U:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcn/yunzhisheng/asrfix/JniAsrFix;->recognize([BI)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0xf80e

    goto :goto_0
.end method

.method public b()V
    .locals 4

    invoke-direct {p0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->cancel()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "JniAsrFix : cancel failed , result code = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c(I)I
    .locals 2

    const/16 v0, 0x12

    div-int/lit8 v1, p1, 0xa

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->setOptionInt(II)I

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->A:Z

    return v0
.end method

.method public native compileDynamicUserData(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method public native compileUserData(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public d(I)I
    .locals 1

    const/16 v0, 0x78

    invoke-direct {p0, v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->setOptionInt(II)I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->A:Z

    return-void
.end method

.method public native destroyUserDataCompiler(J)V
.end method

.method public e()I
    .locals 3

    iget-boolean v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->U:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->stop()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v1, 0x5dd

    iput v1, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->O:I

    iget-object v1, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->P:Lcom/unisound/sdk/u;

    iget v2, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->O:I

    invoke-interface {v1, v2}, Lcom/unisound/sdk/u;->a(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->N:Z

    :cond_0
    if-gez v0, :cond_1

    invoke-static {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(I)I

    move-result v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const v0, -0xf80e

    goto :goto_0
.end method

.method public e(I)I
    .locals 1

    const/16 v0, 0xc8

    invoke-direct {p0, v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->setOptionInt(II)I

    move-result v0

    return v0
.end method

.method public f(I)I
    .locals 1

    const/16 v0, 0xc9

    invoke-direct {p0, v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->setOptionInt(II)I

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->U:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->getResult()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public g()I
    .locals 3

    iget-boolean v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->U:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->cancel()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v1, 0x5dd

    iput v1, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->O:I

    iget-object v1, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->P:Lcom/unisound/sdk/u;

    iget v2, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->O:I

    invoke-interface {v1, v2}, Lcom/unisound/sdk/u;->a(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->N:Z

    :cond_0
    if-gez v0, :cond_1

    invoke-static {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(I)I

    move-result v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const v0, -0xf80e

    goto :goto_0
.end method

.method public g(I)I
    .locals 1

    const/16 v0, 0xca

    invoke-direct {p0, v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->setOptionInt(II)I

    move-result v0

    return v0
.end method

.method public native getTagsInfo(J)Ljava/lang/String;
.end method

.method public native grammarCompilerGetOptionString(JI)Ljava/lang/String;
.end method

.method public native grammarCompilerSetOptionInt(JII)I
.end method

.method public h(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->setActiveNet(I)I

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->U:Z

    return v0
.end method

.method public i(I)I
    .locals 1

    const/16 v0, 0x16

    invoke-direct {p0, v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->setOptionInt(II)I

    move-result v0

    return v0
.end method

.method public i()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->U:Z

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "do Release"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-direct {p0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->release()V

    sget-object v0, Lcn/yunzhisheng/asrfix/JniAsrFix;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-boolean v2, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->U:Z

    iput-boolean v2, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->N:Z

    iput-boolean v3, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->S:Z

    :cond_0
    return-void
.end method

.method public native initUserDataCompiler(Ljava/lang/String;)J
.end method

.method public j(I)V
    .locals 4

    const/4 v3, 0x1

    const/16 v0, 0x1f4

    invoke-direct {p0, v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->setOptionInt(II)I

    const/16 v0, 0x1f6

    invoke-direct {p0, v0, v3}, Lcn/yunzhisheng/asrfix/JniAsrFix;->setOptionInt(II)I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "JniAsrFix : setThreadNum num = "

    aput-object v2, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->N:Z

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asrfix/JniAsrFix;->Q:I

    return v0
.end method

.method public l()I
    .locals 1

    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->getOptionInt(I)I

    move-result v0

    return v0
.end method

.method public native loadCompiledJsgf(JLjava/lang/String;)I
.end method

.method public native loadGrammarStr(Ljava/lang/String;)I
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcn/yunzhisheng/asrfix/JniAsrFix;->R:Ljava/util/ArrayList;

    return-object v0
.end method

.method public n()I
    .locals 4

    const/16 v0, 0x67

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->getOptionInt(I)I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "getAuthorizedStaus = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 4

    const/16 v0, 0x68

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->getOptionString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "getExpiryTime = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 4

    const/16 v0, 0x69

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->getOptionString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "getLimitPac = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    return-object v0
.end method

.method public native partialCompileUserData(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public q()I
    .locals 1

    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->getOptionInt(I)I

    move-result v0

    return v0
.end method

.method public r()I
    .locals 1

    const/16 v0, 0x6b

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->getOptionInt(I)I

    move-result v0

    return v0
.end method

.method public s()I
    .locals 1

    const/16 v0, 0x6a

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->getOptionInt(I)I

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 2

    invoke-static {}, Lcn/yunzhisheng/asrfix/JniAsrFix;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V3."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public u()I
    .locals 1

    invoke-direct {p0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->check_wav_end()I

    move-result v0

    return v0
.end method

.method public native unloadGrammar(Ljava/lang/String;)I
.end method

.method public v()V
    .locals 1

    sget-object v0, Lcn/yunzhisheng/asrfix/JniAsrFix;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
