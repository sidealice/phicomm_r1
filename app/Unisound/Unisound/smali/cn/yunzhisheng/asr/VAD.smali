.class public Lcn/yunzhisheng/asr/VAD;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = -0x1

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static f:I = 0x0

.field private static final l:I = 0x0

.field private static final m:I = 0x1

.field private static final n:I = -0x3e9


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private B:Z

.field private C:D

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public h:Z

.field protected i:J

.field public j:Z

.field public k:Z

.field private o:Ljava/io/ByteArrayOutputStream;

.field private p:Lcn/yunzhisheng/asr/a;

.field private q:Lcom/unisound/sdk/cr;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:[B

.field private w:Z

.field private x:I

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcn/yunzhisheng/asr/VAD;->f:I

    return-void
.end method

.method public constructor <init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/cr;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x5000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    iput-boolean v4, p0, Lcn/yunzhisheng/asr/VAD;->r:Z

    iput-boolean v4, p0, Lcn/yunzhisheng/asr/VAD;->s:Z

    iput-boolean v4, p0, Lcn/yunzhisheng/asr/VAD;->h:Z

    iput-wide v6, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/VAD;->j:Z

    iput-boolean v4, p0, Lcn/yunzhisheng/asr/VAD;->k:Z

    iput-boolean v4, p0, Lcn/yunzhisheng/asr/VAD;->t:Z

    iput-boolean v4, p0, Lcn/yunzhisheng/asr/VAD;->u:Z

    new-array v0, v2, [B

    const/16 v1, 0x63

    aput-byte v1, v0, v4

    iput-object v0, p0, Lcn/yunzhisheng/asr/VAD;->v:[B

    iput-boolean v4, p0, Lcn/yunzhisheng/asr/VAD;->w:Z

    iput v4, p0, Lcn/yunzhisheng/asr/VAD;->x:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VAD;->y:Ljava/util/ArrayList;

    iput-boolean v4, p0, Lcn/yunzhisheng/asr/VAD;->z:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VAD;->A:Ljava/util/ArrayList;

    iput-boolean v4, p0, Lcn/yunzhisheng/asr/VAD;->B:Z

    iput-object p1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iput-object p2, p0, Lcn/yunzhisheng/asr/VAD;->q:Lcom/unisound/sdk/cr;

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    const-string v0, "jni VAD create fail!"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0, v2}, Lcn/yunzhisheng/asr/a;->n(Z)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->S()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/common/s;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->av()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->af()V

    :cond_2
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0, v4}, Lcn/yunzhisheng/asr/a;->l(Z)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->n()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Z)V

    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/VAD;->init(J)V

    goto :goto_0
.end method

.method private a(D)D
    .locals 3

    const-wide/high16 v0, 0x4040000000000000L    # 32.0

    div-double v0, p1, v0

    return-wide v0
.end method

.method private a([BI[BI)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v2, p2, -0x1

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-byte v3, p1, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 v4, v0, 0x1

    aput-byte v3, p3, v0

    add-int/lit8 v0, v4, 0x1

    aput-byte v2, p3, v4

    add-int/lit8 v4, v0, 0x1

    aput-byte v3, p3, v0

    add-int/lit8 v0, v4, 0x1

    aput-byte v2, p3, v4

    goto :goto_0

    :cond_0
    return v0
.end method

.method private b(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "timeout"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "afterTimeoutVoice"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private b(I)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->q:Lcom/unisound/sdk/cr;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/cr;->b(I)V

    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 4

    const/16 v3, -0x3e9

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->s:Z

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/VAD;->s:Z

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->s:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v3, v2}, Lcn/yunzhisheng/asr/VAD;->setTime(JII)V

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v3, v2}, Lcn/yunzhisheng/asr/VAD;->setTime(JII)V

    goto :goto_0
.end method

.method private c(I)V
    .locals 4

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/asr/VAD;->a(I)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/unisound/common/j;->a(ZLjava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->q:Lcom/unisound/sdk/cr;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/unisound/sdk/cr;->a(Lcn/yunzhisheng/asr/VAD;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0, v3}, Lcn/yunzhisheng/asr/a;->v(Z)V

    :cond_1
    if-eq p1, v1, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "VAD >>"

    aput-object v1, v0, v2

    const-string v1, "TimeOut"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private d(I)V
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->C:D

    int-to-double v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->C:D

    return-void
.end method

.method private declared-synchronized d([B)V
    .locals 6

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    move v3, v2

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v0, v3

    iget-object v3, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget v3, v3, Lcn/yunzhisheng/asr/a;->ad:I

    if-lt v0, v3, :cond_0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {p0, v3, v0, v4, v5}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    move v3, v0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->q:Lcom/unisound/sdk/cr;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/cr;->n()V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->q:Lcom/unisound/sdk/cr;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/cr;->o()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->z:Z

    return-void
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->B:Z

    return-void
.end method

.method private j()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->C:D

    return-void
.end method

.method private k()D
    .locals 2

    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->C:D

    return-wide v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcn/yunzhisheng/asr/VAD;->nativeSetOption(JILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Lcn/yunzhisheng/asr/b;)I
    .locals 2

    invoke-virtual {p1}, Lcn/yunzhisheng/asr/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcn/yunzhisheng/asr/b;->b:I

    invoke-virtual {p1}, Lcn/yunzhisheng/asr/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/VAD;->a(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public a([BI)I
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcn/yunzhisheng/asr/VAD;->checkPitchOffset(J[BI)I

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized a([BII)I
    .locals 10

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    array-length v0, p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/16 v2, 0x63

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    aget-byte v0, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unisound/common/j;->a([BLjava/lang/String;)Z

    :cond_3
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, p1}, Lcom/unisound/common/s;->b([B)V

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "VAD::write size ="

    aput-object v3, v0, v2

    const/4 v2, 0x1

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, " first byte "

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_4
    array-length v0, p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_5

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/16 v2, 0x63

    if-ne v0, v2, :cond_6

    :cond_5
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, p3}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    move v0, v1

    goto :goto_0

    :cond_6
    if-gtz p3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->s()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->t()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    array-length v2, p1

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-object p1, v0, v3

    aput-object p1, v0, v2

    move-object v4, v0

    :goto_1
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-boolean v0, v0, Lcn/yunzhisheng/asr/a;->ag:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->i()I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->o()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    aget-object v0, v4, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v4, v3

    array-length v3, v3

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    const/4 v0, 0x0

    aget-object v0, v4, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    array-length v4, v4

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    array-length v3, v2

    move v4, v3

    move-object v3, v2

    move-object v2, v0

    :goto_2
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->D()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    array-length v5, v2

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Lcn/yunzhisheng/asr/a;->e(J)V

    :cond_8
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, v2}, Lcom/unisound/common/s;->c([B)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, v3}, Lcom/unisound/common/s;->d([B)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->A()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->B()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcn/yunzhisheng/asr/VAD;->x:I

    array-length v5, p1

    add-int/2addr v0, v5

    iput v0, p0, Lcn/yunzhisheng/asr/VAD;->x:I

    iget v0, p0, Lcn/yunzhisheng/asr/VAD;->x:I

    int-to-long v6, v0

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->aj()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->w:Z

    :cond_9
    iget-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->j:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->A()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->w:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->B()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_a
    const/4 v0, 0x1

    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {p0, v0, v2, v3, v4}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    array-length v0, v2

    invoke-virtual {p0, v2, v0}, Lcn/yunzhisheng/asr/VAD;->c([BI)I

    move-result v0

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/VAD;->b(I)V

    move v0, v1

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x2

    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, p1}, Lcom/unisound/common/s;->a([B)[[B

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_1

    :cond_c
    const/4 v0, 0x2

    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, p1}, Lcom/unisound/common/s;->a([B)[[B

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->av()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, p1}, Lcom/unisound/common/s;->a([B)[[B

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_1

    :cond_e
    const/4 v0, 0x2

    array-length v2, p1

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-object p1, v0, v3

    aput-object p1, v0, v2

    move-object v4, v0

    goto/16 :goto_1

    :cond_f
    const/4 v0, 0x1

    aget-object v0, v4, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    aget-object v3, v4, v3

    array-length v3, v3

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    const/4 v0, 0x0

    aget-object v0, v4, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    array-length v4, v4

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    array-length v3, v2

    move v4, v3

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_2

    :cond_10
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->o()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    aget-object v0, v4, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    aget-object v3, v4, v3

    array-length v3, v3

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    const/4 v0, 0x1

    aget-object v0, v4, v0

    const/4 v3, 0x0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    array-length v4, v4

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    array-length v3, v2

    move v4, v3

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_2

    :cond_11
    const/4 v0, 0x0

    aget-object v0, v4, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v4, v3

    array-length v3, v3

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    const/4 v0, 0x1

    aget-object v0, v4, v0

    const/4 v3, 0x0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    array-length v4, v4

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    array-length v3, v2

    move v4, v3

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_2

    :cond_12
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->i()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->o()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    aget-object v0, v4, v0

    array-length v0, v0

    mul-int/lit8 v5, v0, 0x2

    new-array v2, v5, [B

    const/4 v0, 0x0

    aget-object v0, v4, v0

    const/4 v3, 0x0

    aget-object v3, v4, v3

    array-length v3, v3

    invoke-direct {p0, v0, v3, v2, v5}, Lcn/yunzhisheng/asr/VAD;->a([BI[BI)I

    move-result v3

    new-array v0, v5, [B

    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x0

    aget-object v4, v4, v7

    array-length v4, v4

    invoke-direct {p0, v6, v4, v0, v5}, Lcn/yunzhisheng/asr/VAD;->a([BI[BI)I

    move v4, v3

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_2

    :cond_13
    const/4 v0, 0x1

    aget-object v0, v4, v0

    array-length v0, v0

    mul-int/lit8 v5, v0, 0x2

    new-array v2, v5, [B

    const/4 v0, 0x1

    aget-object v0, v4, v0

    const/4 v3, 0x1

    aget-object v3, v4, v3

    array-length v3, v3

    invoke-direct {p0, v0, v3, v2, v5}, Lcn/yunzhisheng/asr/VAD;->a([BI[BI)I

    move-result v3

    new-array v0, v5, [B

    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x0

    aget-object v4, v4, v7

    array-length v4, v4

    invoke-direct {p0, v6, v4, v0, v5}, Lcn/yunzhisheng/asr/VAD;->a([BI[BI)I

    move v4, v3

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_2

    :cond_14
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->o()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    aget-object v0, v4, v0

    array-length v0, v0

    mul-int/lit8 v5, v0, 0x2

    new-array v2, v5, [B

    const/4 v0, 0x1

    aget-object v0, v4, v0

    const/4 v3, 0x1

    aget-object v3, v4, v3

    array-length v3, v3

    invoke-direct {p0, v0, v3, v2, v5}, Lcn/yunzhisheng/asr/VAD;->a([BI[BI)I

    move-result v3

    new-array v0, v5, [B

    const/4 v6, 0x1

    aget-object v6, v4, v6

    const/4 v7, 0x1

    aget-object v4, v4, v7

    array-length v4, v4

    invoke-direct {p0, v6, v4, v0, v5}, Lcn/yunzhisheng/asr/VAD;->a([BI[BI)I

    move v4, v3

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_2

    :cond_15
    const/4 v0, 0x0

    aget-object v0, v4, v0

    array-length v0, v0

    mul-int/lit8 v5, v0, 0x2

    new-array v2, v5, [B

    const/4 v0, 0x0

    aget-object v0, v4, v0

    const/4 v3, 0x0

    aget-object v3, v4, v3

    array-length v3, v3

    invoke-direct {p0, v0, v3, v2, v5}, Lcn/yunzhisheng/asr/VAD;->a([BI[BI)I

    move-result v3

    new-array v0, v5, [B

    const/4 v6, 0x1

    aget-object v6, v4, v6

    const/4 v7, 0x1

    aget-object v4, v4, v7

    array-length v4, v4

    invoke-direct {p0, v6, v4, v0, v5}, Lcn/yunzhisheng/asr/VAD;->a([BI[BI)I

    move v4, v3

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_2

    :cond_16
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->m()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->r:Z

    if-nez v0, :cond_18

    invoke-virtual {p0, v2}, Lcn/yunzhisheng/asr/VAD;->a([B)V

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/VAD;->b(I)V

    move v0, v1

    :cond_17
    :goto_3
    sget-boolean v1, Lcom/unisound/common/y;->l:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "AF_VAD::read size ="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, " first byte "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_18
    :try_start_2
    invoke-virtual {p0, v3, v4}, Lcn/yunzhisheng/asr/VAD;->b([BI)I

    move-result v0

    if-nez v0, :cond_1d

    :cond_19
    :goto_4
    iget-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->h:Z

    if-nez v1, :cond_27

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-boolean v1, v1, Lcn/yunzhisheng/asr/a;->Y:Z

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->at()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->A()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->B()Z

    move-result v1

    if-nez v1, :cond_1b

    :cond_1a
    invoke-direct {p0, v2}, Lcn/yunzhisheng/asr/VAD;->d([B)V

    :cond_1b
    :goto_5
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "VAD done        1"

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->f([Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->c()I

    move-result v1

    invoke-direct {p0, v1}, Lcn/yunzhisheng/asr/VAD;->b(I)V

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->A()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->B()Z

    move-result v1

    if-eqz v1, :cond_1c

    array-length v1, p1

    invoke-direct {p0, v1}, Lcn/yunzhisheng/asr/VAD;->d(I)V

    :cond_1c
    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->A()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->u:Z

    if-nez v1, :cond_29

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v1}, Lcom/unisound/common/s;->a()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {p0, v3}, Lcn/yunzhisheng/asr/VAD;->b([B)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->k()D

    move-result-wide v2

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    const/4 v4, 0x2

    invoke-direct {p0, v2, v3}, Lcn/yunzhisheng/asr/VAD;->a(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcn/yunzhisheng/asr/VAD;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/a;->c(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/VAD;->c(I)V

    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->j()V

    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->h()V

    goto/16 :goto_3

    :cond_1d
    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->A()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->u:Z

    if-nez v1, :cond_1f

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->z:Z

    :goto_6
    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->z()Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x0

    iget-object v5, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v5}, Lcn/yunzhisheng/asr/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/unisound/common/j;->b(ZLjava/lang/String;)Z

    :cond_1e
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "VAD >>"

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const-string v6, "ASR_VAD_BACK_END "

    aput-object v6, v1, v5

    const/4 v5, 0x2

    const-string v6, "param = "

    aput-object v6, v1, v5

    const/4 v5, 0x3

    iget-boolean v6, p0, Lcn/yunzhisheng/asr/VAD;->u:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->g()V

    goto/16 :goto_4

    :cond_1f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->B:Z

    goto :goto_6

    :cond_20
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->B:Z

    goto :goto_6

    :cond_21
    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    const/4 v5, 0x0

    const-string v6, ""

    invoke-direct {p0, v5, v6}, Lcn/yunzhisheng/asr/VAD;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/yunzhisheng/asr/a;->c(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcn/yunzhisheng/asr/VAD;->c(I)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "VAD >>"

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const-string v6, "ASR_VAD_MAX_SIL1"

    aput-object v6, v1, v5

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_22
    const/4 v1, 0x3

    if-ne v0, v1, :cond_19

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->A()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->B()Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->u:Z

    :cond_23
    iget-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->u:Z

    if-nez v1, :cond_25

    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->h()V

    :goto_7
    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->b()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->z()Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x1

    iget-object v5, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v5}, Lcn/yunzhisheng/asr/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/unisound/common/j;->a(ZLjava/lang/String;)Z

    :cond_24
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->h:Z

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "VAD >>"

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const-string v6, "ASR_VAD_FRONT_END "

    aput-object v6, v1, v5

    const/4 v5, 0x2

    const-string v6, "param = "

    aput-object v6, v1, v5

    const/4 v5, 0x3

    iget-boolean v6, p0, Lcn/yunzhisheng/asr/VAD;->u:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->f()V

    goto/16 :goto_4

    :cond_25
    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->i()V

    goto :goto_7

    :cond_26
    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->i()V

    goto :goto_7

    :cond_27
    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-boolean v1, v1, Lcn/yunzhisheng/asr/a;->Y:Z

    if-eqz v1, :cond_28

    iget-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->t:Z

    if-nez v1, :cond_28

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->at()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->h:Z

    iput-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->t:Z

    goto/16 :goto_5

    :cond_28
    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v2, v5, v4}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    goto/16 :goto_5

    :cond_29
    invoke-virtual {p0, v3}, Lcn/yunzhisheng/asr/VAD;->c([B)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->k()D

    move-result-wide v2

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3}, Lcn/yunzhisheng/asr/VAD;->a(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcn/yunzhisheng/asr/VAD;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/a;->c(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/VAD;->c(I)V

    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->j()V

    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method public declared-synchronized a(I)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->h:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->r:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->t:Z

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->u:Z

    :cond_0
    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :try_start_1
    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/VAD;->reset(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(II)V
    .locals 4

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    div-int/lit8 v0, p1, 0xa

    div-int/lit8 v1, p2, 0xa

    iget-wide v2, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    invoke-virtual {p0, v2, v3, v0, v1}, Lcn/yunzhisheng/asr/VAD;->setTime(JII)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/VAD;->j:Z

    return-void
.end method

.method public a(Z[BII)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VAD::onVadData size ="

    aput-object v1, v0, v3

    array-length v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, " first byte "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aget-byte v2, p2, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "enabled = "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->q:Lcom/unisound/sdk/cr;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    array-length v1, p2

    if-ne v1, v4, :cond_1

    aget-byte v1, p2, v3

    const/16 v2, 0x64

    if-eq v1, v2, :cond_2

    aget-byte v1, p2, v3

    const/16 v2, 0x63

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/unisound/common/j;->a([BLjava/lang/String;)Z

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/unisound/sdk/cr;->b(Z[BII)V

    :cond_3
    return-void
.end method

.method protected declared-synchronized a([B)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget v1, v1, Lcn/yunzhisheng/asr/a;->ae:I

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-wide v2, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    array-length v1, v0

    invoke-virtual {p0, v2, v3, v0, v1}, Lcn/yunzhisheng/asr/VAD;->checkPitchOffset(J[BI)I

    move-result v1

    if-lez v1, :cond_0

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {p0, v3, v2, v4, v5}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    iget-object v2, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {v2, v0, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v2, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    :cond_0
    sput v1, Lcn/yunzhisheng/asr/VAD;->f:I

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/VAD;->b([BI)I

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->r:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Z
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b([BI)I
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcn/yunzhisheng/asr/VAD;->isVADTimeout(J[BI)I

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "frontSil = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget v1, v1, Lcn/yunzhisheng/asr/a;->ab:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, " backSil= "

    aput-object v1, v0, v5

    const/4 v1, 0x3

    iget-object v2, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget v2, v2, Lcn/yunzhisheng/asr/a;->ac:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget v0, v0, Lcn/yunzhisheng/asr/a;->ab:I

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget v1, v1, Lcn/yunzhisheng/asr/a;->ac:I

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/VAD;->a(II)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.isFarFeildEnabled() = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->h()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/VAD;->b(Z)V

    :cond_0
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->y:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->y:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.MINBACKENG = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->y:Lcn/yunzhisheng/asr/c;

    iget-object v1, v1, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->y:Lcn/yunzhisheng/asr/c;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_1
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->z:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->z:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.MINBACKENGH = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->z:Lcn/yunzhisheng/asr/c;

    iget-object v1, v1, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->z:Lcn/yunzhisheng/asr/c;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_2
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->A:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->A:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.PITCHTH = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->A:Lcn/yunzhisheng/asr/c;

    iget-object v1, v1, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->A:Lcn/yunzhisheng/asr/c;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_3
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->B:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->B:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.PITCHSTNUMTH = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->B:Lcn/yunzhisheng/asr/d;

    iget-object v1, v1, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->B:Lcn/yunzhisheng/asr/d;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_4
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->C:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->C:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.PITCHENDNUMTH = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->C:Lcn/yunzhisheng/asr/d;

    iget-object v1, v1, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->C:Lcn/yunzhisheng/asr/d;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_5
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->D:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->D:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.LOWHIGHTH = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->D:Lcn/yunzhisheng/asr/c;

    iget-object v1, v1, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->D:Lcn/yunzhisheng/asr/c;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_6
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->E:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->E:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.MINSIGLEN = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->E:Lcn/yunzhisheng/asr/d;

    iget-object v1, v1, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->E:Lcn/yunzhisheng/asr/d;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_7
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->F:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->F:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->F:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget v2, v2, Lcn/yunzhisheng/asr/a;->ac:I

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.MAXSILLEN = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->F:Lcn/yunzhisheng/asr/d;

    iget-object v1, v1, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->F:Lcn/yunzhisheng/asr/d;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_8
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->G:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->G:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.SINGLEMAX = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->G:Lcn/yunzhisheng/asr/c;

    iget-object v1, v1, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->G:Lcn/yunzhisheng/asr/c;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_9
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->H:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->H:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.NOISE2YTH = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->H:Lcn/yunzhisheng/asr/c;

    iget-object v1, v1, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->H:Lcn/yunzhisheng/asr/c;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_a
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->I:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->I:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.NOISE2YTHVOWEL = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->I:Lcn/yunzhisheng/asr/c;

    iget-object v1, v1, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->I:Lcn/yunzhisheng/asr/c;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_b
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->J:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->J:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.VOICEPROBTH = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->J:Lcn/yunzhisheng/asr/c;

    iget-object v1, v1, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->J:Lcn/yunzhisheng/asr/c;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_c
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->K:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->K:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.USEPEAK = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->K:Lcn/yunzhisheng/asr/d;

    iget-object v1, v1, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->K:Lcn/yunzhisheng/asr/d;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_d
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->L:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->L:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.NOISE2YST = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->L:Lcn/yunzhisheng/asr/d;

    iget-object v1, v1, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->L:Lcn/yunzhisheng/asr/d;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_e
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->M:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->M:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.PITCHLASTTH = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->M:Lcn/yunzhisheng/asr/d;

    iget-object v1, v1, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->M:Lcn/yunzhisheng/asr/d;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_f
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->N:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->N:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.DETECTMUSIC = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->N:Lcn/yunzhisheng/asr/d;

    iget-object v1, v1, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->N:Lcn/yunzhisheng/asr/d;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_10
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->O:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->O:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.MUSICTH = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->O:Lcn/yunzhisheng/asr/c;

    iget-object v1, v1, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->O:Lcn/yunzhisheng/asr/c;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_11
    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->j()V

    return-void
.end method

.method protected b([B)Z
    .locals 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->z:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->G()I

    move-result v4

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v3, v1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v3, v0

    if-lt v3, v4, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public c()I
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/VAD;->getVolume(J)I

    move-result v0

    goto :goto_0
.end method

.method protected c([BI)I
    .locals 8

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v3, v2

    move v4, v0

    :goto_0
    if-ge v3, p2, :cond_1

    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v0, v5

    const v5, 0x8000

    if-lt v0, v5, :cond_0

    const v5, 0xffff

    sub-int v0, v5, v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v4, v0

    add-int/lit8 v0, v3, 0x2

    move v3, v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v4

    int-to-float v3, p2

    div-float/2addr v0, v3

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v0, v3

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    if-gez v0, :cond_2

    move v0, v2

    :cond_2
    if-le v0, v1, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method protected c([B)Z
    .locals 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->B:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->H()I

    move-result v4

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v3, v1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v3, v0

    if-lt v3, v4, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected native checkPitchOffset(J[BI)I
.end method

.method protected native create()J
.end method

.method public declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/VAD;->destory(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method protected native destory(J)V
.end method

.method public declared-synchronized e()V
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->h:Z

    iget-object v2, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    :cond_0
    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-boolean v3, p0, Lcn/yunzhisheng/asr/VAD;->h:Z

    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {p0, v3, v0, v4, v5}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/VAD;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected native getVolume(J)I
.end method

.method protected native init(J)V
.end method

.method protected native isVADTimeout(J[BI)I
.end method

.method protected native nativeSetOption(JILjava/lang/String;)I
.end method

.method protected native reset(J)V
.end method

.method protected native setTime(JII)V
.end method
