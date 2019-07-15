.class public Lcom/unisound/sdk/an;
.super Ljava/lang/Thread;


# static fields
.field private static final a:I = 0x1e


# instance fields
.field private b:Lcom/unisound/sdk/ak;

.field private c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private d:Lcom/unisound/sdk/ai;

.field private e:Lcom/unisound/sdk/as;

.field private f:Ljava/lang/String;

.field private volatile g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/content/Context;

.field private l:Ljava/lang/String;

.field private m:Z


# direct methods
.method public constructor <init>(Lcom/unisound/sdk/as;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/an;->b:Lcom/unisound/sdk/ak;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/an;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/unisound/sdk/ai;

    invoke-direct {v0}, Lcom/unisound/sdk/ai;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/an;->d:Lcom/unisound/sdk/ai;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/an;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/an;->g:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/an;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/an;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/an;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/an;->l:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/unisound/sdk/an;->m:Z

    iput-object p2, p0, Lcom/unisound/sdk/an;->k:Landroid/content/Context;

    iput-object p1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    sput-boolean v1, Lcom/unisound/sdk/ai;->a:Z

    return-void
.end method

.method private a(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetRecognition --> RecognitionEvent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/an;->b:Lcom/unisound/sdk/ak;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/ak;->k(I)V

    :cond_0
    return-void
.end method

.method private a(ILcn/yunzhisheng/asr/JniUscClient;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->b:Lcom/unisound/sdk/ak;

    invoke-virtual {p0}, Lcom/unisound/sdk/an;->b()V

    invoke-static {p2}, Lcom/unisound/common/y;->a(Lcn/yunzhisheng/asr/JniUscClient;)Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/ak;->a(I)V

    :cond_0
    return-void
.end method

.method private a(Lcn/yunzhisheng/asr/JniUscClient;)V
    .locals 8

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->ap()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    const/16 v0, 0xd1

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    :cond_0
    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    const/16 v0, 0xd1

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    :cond_1
    const-string v0, "init"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/unisound/common/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->bb()Lcom/unisound/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/common/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/unisound/common/a;->c()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcn/yunzhisheng/asr/JniUscClient;->a(Ljava/lang/String;I)J

    move-result-wide v6

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "NetRecognition -- > server = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/unisound/common/a;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, " ip = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/unisound/common/a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, " port = "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-virtual {v0}, Lcom/unisound/common/a;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v1, "server"

    invoke-virtual {v0}, Lcom/unisound/common/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "port"

    invoke-virtual {v0}, Lcom/unisound/common/a;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "create"

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/unisound/common/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_2

    const-string v0, "create"

    const-string v1, "error"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "handle=0"

    invoke-static/range {v0 .. v5}, Lcom/unisound/common/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/unisound/sdk/an;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "juc.create() returns "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    iget v1, v1, Lcom/unisound/sdk/as;->bb:I

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    iget v1, v1, Lcom/unisound/sdk/as;->bc:I

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    iget v1, v1, Lcom/unisound/sdk/as;->ba:I

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    iget v1, v1, Lcom/unisound/sdk/as;->bd:I

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "enable_vad"

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    iget v1, v1, Lcom/unisound/sdk/as;->bb:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vad_timeout"

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    iget v1, v1, Lcom/unisound/sdk/as;->bc:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pcm_compress"

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    iget v1, v1, Lcom/unisound/sdk/as;->ba:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "result_timeout"

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    iget v1, v1, Lcom/unisound/sdk/as;->bd:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "create"

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/unisound/common/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/unisound/sdk/an;->b(Lcn/yunzhisheng/asr/JniUscClient;)V

    invoke-direct {p0, p1}, Lcom/unisound/sdk/an;->d(Lcn/yunzhisheng/asr/JniUscClient;)V

    invoke-direct {p0, p1}, Lcom/unisound/sdk/an;->c(Lcn/yunzhisheng/asr/JniUscClient;)V

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->an()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "Start"

    invoke-direct {p0, p1, v0}, Lcom/unisound/sdk/an;->a(Lcn/yunzhisheng/asr/JniUscClient;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aX()Lcom/unisound/sdk/cl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/cl;->y()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aW()Lcom/unisound/sdk/ct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/ct;->d()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aX()Lcom/unisound/sdk/cl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/cl;->w()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/unisound/sdk/an;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_0
    const-string v1, "filterName=nlu2;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aS()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    const-string v1, ""

    iget-object v2, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v2}, Lcom/unisound/sdk/as;->aS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additionalService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v2}, Lcom/unisound/sdk/as;->aS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->bt()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, "req_nlu_length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v3}, Lcom/unisound/sdk/as;->bt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aX()Lcom/unisound/sdk/cl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/cl;->z()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    const-string v1, "appendLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v3}, Lcom/unisound/sdk/as;->aX()Lcom/unisound/sdk/cl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unisound/sdk/cl;->z()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->bv()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "maxWell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v3}, Lcom/unisound/sdk/as;->bv()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->bw()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->bw()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "retType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v3}, Lcom/unisound/sdk/as;->bw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v1, "fullDuplex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v3}, Lcom/unisound/sdk/as;->bz()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "audioUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v3}, Lcom/unisound/sdk/as;->by()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "filterUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v3}, Lcom/unisound/sdk/as;->bq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aT()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aT()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    const/16 v1, 0xc9

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "juc init traficParams = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_b
    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->aT()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->aT()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xc9

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "juc init external setting traficParams = "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v2}, Lcom/unisound/sdk/as;->aT()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->aP()I

    move-result v0

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->be()I

    move-result v1

    if-eq v0, v1, :cond_d

    const/16 v0, 0x140

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aP()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    const/16 v0, 0x141

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->be()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    :cond_d
    const/4 v0, 0x0

    sput v0, Lcom/unisound/common/y;->x:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "juc init success"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    return-void

    :cond_e
    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aW()Lcom/unisound/sdk/ct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/ct;->d()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aX()Lcom/unisound/sdk/cl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/cl;->w()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/unisound/sdk/an;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aW()Lcom/unisound/sdk/ct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/ct;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aX()Lcom/unisound/sdk/cl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/cl;->w()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/unisound/sdk/an;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/sdk/an;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_10
    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aW()Lcom/unisound/sdk/ct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/ct;->d()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aX()Lcom/unisound/sdk/cl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/cl;->w()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/unisound/sdk/an;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "filterName=vpr;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_11
    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aW()Lcom/unisound/sdk/ct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/ct;->d()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aX()Lcom/unisound/sdk/cl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/cl;->w()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/unisound/sdk/an;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "filterName=search;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_12
    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aW()Lcom/unisound/sdk/ct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/ct;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aX()Lcom/unisound/sdk/cl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/cl;->w()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/unisound/sdk/an;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/sdk/an;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "filterName=vpr,search;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_13
    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aR()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "additionalService=wx_adapt;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method private a(Lcn/yunzhisheng/asr/JniUscClient;Lcom/unisound/common/ak;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/unisound/common/ak;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    invoke-virtual {p2}, Lcom/unisound/common/ak;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAsrScene "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/unisound/common/ak;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " res : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/unisound/common/ak;->a(Z)V

    :cond_0
    return-void
.end method

.method private a(Lcn/yunzhisheng/asr/JniUscClient;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->aX()Lcom/unisound/sdk/cl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/unisound/sdk/cl;->b(J)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->w()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->A()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/unisound/sdk/an;->j:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "NetRecognition --> "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    const-string v4, " NluParams : "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->A()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "nlu_sendParams"

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->A()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "initNLU"

    move-object v3, v1

    move-object v4, v1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/unisound/common/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Lcn/yunzhisheng/asr/JniUscClient;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "null"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    new-instance v0, Lcom/unisound/sdk/al;

    invoke-direct {v0}, Lcom/unisound/sdk/al;-><init>()V

    sget-object v1, Lcom/unisound/sdk/am;->a:Lcom/unisound/sdk/am;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/al;->a(Lcom/unisound/sdk/am;)V

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/al;->b(Ljava/lang/String;)V

    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Lcn/yunzhisheng/asr/JniUscClient;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/al;->a(Ljava/lang/String;)V

    const-string v2, "variable"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v5}, Lcom/unisound/sdk/al;->b(Z)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/unisound/sdk/an;->a(Lcom/unisound/sdk/al;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/unisound/sdk/an;->b(Ljava/lang/String;)Lcom/unisound/sdk/cu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/sdk/cu;->a()I

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/unisound/sdk/an;->m:Z

    :cond_0
    iget-boolean v0, p0, Lcom/unisound/sdk/an;->m:Z

    if-nez v0, :cond_1

    const v0, -0x10d89

    invoke-direct {p0, v0, p1}, Lcom/unisound/sdk/an;->a(ILcn/yunzhisheng/asr/JniUscClient;)V

    :cond_1
    return-void

    :cond_2
    if-eqz p4, :cond_3

    const/16 v2, 0x3e

    invoke-virtual {p1, v2}, Lcn/yunzhisheng/asr/JniUscClient;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0, v4}, Lcom/unisound/sdk/al;->a(Z)V

    :cond_3
    :goto_1
    invoke-virtual {v0, v4}, Lcom/unisound/sdk/al;->b(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v5}, Lcom/unisound/sdk/al;->a(Z)V

    goto :goto_1
.end method

.method private a(Lcn/yunzhisheng/asr/JniUscClient;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, ""

    :goto_0
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Lcn/yunzhisheng/asr/JniUscClient;->c(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/unisound/sdk/an;->a(Lcn/yunzhisheng/asr/JniUscClient;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/unisound/sdk/al;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetRecognition --> onRecognitionResult=>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/unisound/sdk/al;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/an;->b:Lcom/unisound/sdk/ak;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/ak;->a(Lcom/unisound/sdk/al;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "}{\"asr_recongize\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "\\}\\{\"asr_recongize\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"asr_recongize\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"asr_recongize\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_3
    const-string v1, "}{\"gender\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "\\}\\{\"gender\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_3
    array-length v2, v1

    if-ge v0, v2, :cond_6

    if-nez v0, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"gender\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_4

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"gender\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_4

    :cond_6
    move-object v0, v1

    goto :goto_2

    :cond_7
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    move-object v0, v1

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)Lcom/unisound/sdk/cu;
    .locals 7

    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v1, Lcom/unisound/sdk/cu;

    invoke-direct {v1}, Lcom/unisound/sdk/cu;-><init>()V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "partial="

    aput-object v2, v0, v3

    aput-object p1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "returnCode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "returnCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "USCDEBUG"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "returnCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/cu;->a(I)V

    if-nez v2, :cond_1

    const-string v0, ""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errorInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/cu;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v2, "errorInfo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "USCDEBUG"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errorInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/cu;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Lcn/yunzhisheng/asr/JniUscClient;)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->aW()Lcom/unisound/sdk/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/sdk/ct;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3f7

    invoke-virtual {p1, v2, v7}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    const/16 v2, 0x3fc

    invoke-virtual {p1, v2, v5}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    const/16 v2, 0x3fb

    iget-object v3, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v3}, Lcom/unisound/sdk/as;->bi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/unisound/sdk/ct;->e()I

    move-result v2

    if-ne v2, v5, :cond_2

    const-string v2, "register"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    const-string v2, ";"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "userName="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/unisound/sdk/ct;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "appkey="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v4}, Lcom/unisound/sdk/as;->aZ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "returnType="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "json"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "scene="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/unisound/sdk/ct;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v6, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "vpr params:  "

    aput-object v4, v0, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/an;->i:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "vpr_init"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vpr_md5_check"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vpr_secret"

    iget-object v4, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v4}, Lcom/unisound/sdk/as;->bi()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vpr_sendParams"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "initVPR"

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/unisound/common/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/unisound/sdk/ct;->e()I

    move-result v2

    if-ne v2, v6, :cond_0

    const-string v2, "matchSingle"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private c(Lcn/yunzhisheng/asr/JniUscClient;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PN="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/unisound/c/a;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OS=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CR="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/unisound/c/a;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    iget v3, v3, Lcom/unisound/sdk/as;->aZ:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MD="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/unisound/c/a;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SV="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/unisound/common/an;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RPT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v3}, Lcom/unisound/sdk/as;->bm()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v3}, Lcom/unisound/sdk/as;->bj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NPT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v3}, Lcom/unisound/sdk/as;->bo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IP="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unisound/sdk/an;->k:Landroid/content/Context;

    invoke-static {v3}, Lcom/unisound/common/ae;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EC="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v3}, Lcom/unisound/sdk/as;->bn()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/unisound/common/y;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcn/yunzhisheng/asr/JniUscClient;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcn/yunzhisheng/asr/JniUscClient;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    iget-object v2, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v2, v6}, Lcom/unisound/sdk/as;->Q(I)V

    iget-object v2, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/unisound/sdk/as;->k(J)V

    iget-object v2, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/unisound/sdk/as;->x(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "nlu_sendParams"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "collected_info = "

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const-string v0, "collectedInfo"

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/unisound/common/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(Lcn/yunzhisheng/asr/JniUscClient;)V
    .locals 9

    const/16 v8, 0x14

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->ba()Lcom/unisound/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/sdk/i;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v0}, Lcom/unisound/sdk/i;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    const-string v2, "engine_parameter"

    invoke-virtual {v0}, Lcom/unisound/sdk/i;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "NetRecognition --> AsrParams : "

    aput-object v2, v1, v4

    invoke-virtual {v0}, Lcom/unisound/sdk/i;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    const-string v3, "="

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\n"

    const-string v3, ";"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->aY()Lcom/unisound/common/ak;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/unisound/sdk/an;->a(Lcn/yunzhisheng/asr/JniUscClient;Lcom/unisound/common/ak;)V

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    iget-boolean v0, v0, Lcom/unisound/sdk/as;->aG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    iget-boolean v0, v0, Lcom/unisound/sdk/as;->aJ:Z

    if-eqz v0, :cond_5

    const-string v0, "open"

    invoke-virtual {p1, v8, v0}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    iget v0, v0, Lcom/unisound/sdk/as;->aW:I

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    iget v1, v1, Lcom/unisound/sdk/as;->aW:I

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->bf()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcn/yunzhisheng/asr/JniUscClient;->a(Z)I

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->aq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pcm"

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "pcm"

    invoke-virtual {p1, v0}, Lcn/yunzhisheng/asr/JniUscClient;->a(Ljava/lang/String;)I

    move-result v0

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "NetRecognition --> setAudioFormat : "

    aput-object v2, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_2
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    sget-object v0, Lcom/unisound/c/a;->q:Ljava/lang/String;

    invoke-virtual {p1, v7, v0}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->aZ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->bu()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->bu()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    const/16 v0, 0x16

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    new-array v0, v7, [Ljava/lang/Object;

    const-string v2, "NetRecognition --> appkey = "

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v2}, Lcom/unisound/sdk/as;->aZ()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    const-string v2, ", imei = "

    aput-object v2, v0, v6

    const/4 v2, 0x3

    sget-object v3, Lcom/unisound/c/a;->q:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, ", userId = "

    aput-object v3, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    const-string v3, ", udid = "

    aput-object v3, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->bh()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x11

    const-string v1, "req_audio_url"

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->br()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v0, 0x97

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->br()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    const-string v0, "close"

    invoke-virtual {p1, v8, v0}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method private e(Lcn/yunzhisheng/asr/JniUscClient;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->b:Lcom/unisound/sdk/ak;

    invoke-virtual {p0}, Lcom/unisound/sdk/an;->b()V

    invoke-static {p1}, Lcom/unisound/common/y;->a(Lcn/yunzhisheng/asr/JniUscClient;)Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/ak;->i()V

    :cond_0
    return-void
.end method

.method private f(Lcn/yunzhisheng/asr/JniUscClient;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->b:Lcom/unisound/sdk/ak;

    invoke-virtual {p0}, Lcom/unisound/sdk/an;->b()V

    invoke-static {p1}, Lcom/unisound/common/y;->a(Lcn/yunzhisheng/asr/JniUscClient;)Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/ak;->m()V

    :cond_0
    return-void
.end method

.method private g(Lcn/yunzhisheng/asr/JniUscClient;)I
    .locals 11

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    new-array v0, v9, [Ljava/lang/Object;

    const-string v1, "NetRecognition --> continue recognize"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcn/yunzhisheng/asr/JniUscClient;->b()I

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->ar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->as()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->bj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".wav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->be()I

    move-result v1

    invoke-static {v0, v9, v1}, Lcom/unisound/common/j;->a(Ljava/lang/String;II)Z

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/an;->f:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v9}, Lcom/unisound/sdk/an;->a(Lcn/yunzhisheng/asr/JniUscClient;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/unisound/sdk/an;->m:Z

    if-nez v0, :cond_1

    move v0, v6

    :goto_0
    return v0

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/an;->f:Ljava/lang/String;

    new-array v0, v9, [Ljava/lang/Object;

    const-string v1, "NetRecognition --> start called "

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/unisound/sdk/an;->a(Lcn/yunzhisheng/asr/JniUscClient;)V

    new-array v0, v10, [Ljava/lang/Object;

    const-string v1, "RecognitionThread : Service Mode =  "

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aQ()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const/16 v0, 0x3f7

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aQ()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    const/16 v0, 0xcf

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->bs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    invoke-virtual {p1}, Lcn/yunzhisheng/asr/JniUscClient;->a()I

    move-result v8

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Lcn/yunzhisheng/asr/JniUscClient;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/an;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    iget-object v1, p0, Lcom/unisound/sdk/an;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/as;->x(Ljava/lang/String;)V

    const/16 v0, 0x474

    invoke-direct {p0, v0}, Lcom/unisound/sdk/an;->a(I)V

    new-array v0, v10, [Ljava/lang/Object;

    const-string v1, "NetRecognition --> sessionId = "

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/unisound/sdk/an;->f:Ljava/lang/String;

    aput-object v1, v0, v9

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/an;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/sdk/an;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/an;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/an;->f:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/an;->l:Ljava/lang/String;

    :cond_2
    if-eqz v8, :cond_3

    const-string v0, "start"

    const-string v1, "error"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/unisound/common/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NetRecognition --> continue Recognition start error occured! , startCode = "

    aput-object v1, v0, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, ", sessionId = "

    aput-object v1, v0, v10

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/unisound/sdk/an;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-direct {p0, v8, p1}, Lcom/unisound/sdk/an;->a(ILcn/yunzhisheng/asr/JniUscClient;)V

    invoke-virtual {p1}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->bc()V

    move v0, v6

    goto/16 :goto_0

    :cond_3
    move v0, v7

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Lcom/unisound/sdk/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/an;->b:Lcom/unisound/sdk/ak;

    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+[B>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/sdk/an;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v2, p0, Lcom/unisound/sdk/an;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/an;->d:Lcom/unisound/sdk/ai;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/unisound/sdk/ai;->a([BII)Z

    iget-object v0, p0, Lcom/unisound/sdk/an;->d:Lcom/unisound/sdk/ai;

    invoke-virtual {v0}, Lcom/unisound/sdk/ai;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/an;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/an;->g:Z

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/an;->g:Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/an;->b:Lcom/unisound/sdk/ak;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/an;->g:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->b:Lcom/unisound/sdk/ak;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->b:Lcom/unisound/sdk/ak;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/ak;->A()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 3

    invoke-virtual {p0}, Lcom/unisound/sdk/an;->c()V

    invoke-virtual {p0}, Lcom/unisound/sdk/an;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xf3c

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/unisound/sdk/an;->join(J)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "RecognitionThread::waitEnd()"

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

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->h:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 15

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    new-array v0, v12, [Ljava/lang/Object;

    const-string v1, "NetRecogniton -> run start"

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RecognitionThread -> ThreadName = "

    aput-object v1, v0, v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    const-string v1, ", ThreadId = "

    aput-object v1, v0, v13

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v14

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_0
    new-array v0, v12, [Ljava/lang/Object;

    const-string v1, "RecognitionThread start"

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/unisound/common/y;->g([Ljava/lang/Object;)V

    new-instance v11, Lcn/yunzhisheng/asr/JniUscClient;

    invoke-direct {v11}, Lcn/yunzhisheng/asr/JniUscClient;-><init>()V

    invoke-direct {p0, v11}, Lcom/unisound/sdk/an;->a(Lcn/yunzhisheng/asr/JniUscClient;)V

    new-array v0, v13, [Ljava/lang/Object;

    const-string v1, "RecognitionThread : Service Mode =  "

    aput-object v1, v0, v10

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aQ()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const/16 v0, 0x3f7

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aQ()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    const/16 v0, 0xcf

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->bs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/an;->f:Ljava/lang/String;

    new-array v0, v12, [Ljava/lang/Object;

    const-string v1, "NetRecognition --> start called "

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {v11}, Lcn/yunzhisheng/asr/JniUscClient;->a()I

    move-result v6

    const/16 v0, 0x15

    invoke-virtual {v11, v0}, Lcn/yunzhisheng/asr/JniUscClient;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/an;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    iget-object v1, p0, Lcom/unisound/sdk/an;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/as;->x(Ljava/lang/String;)V

    const/16 v0, 0x474

    invoke-direct {p0, v0}, Lcom/unisound/sdk/an;->a(I)V

    new-array v0, v13, [Ljava/lang/Object;

    const-string v1, "NetRecognition --> sessionId = "

    aput-object v1, v0, v10

    iget-object v1, p0, Lcom/unisound/sdk/an;->f:Ljava/lang/String;

    aput-object v1, v0, v12

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/an;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/sdk/an;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/an;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/an;->f:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/an;->l:Ljava/lang/String;

    :cond_1
    if-eqz v6, :cond_2

    const-string v0, "start"

    const-string v1, "error"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/unisound/common/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NetRecognition --> start error occured! , startCode = "

    aput-object v1, v0, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v12

    const-string v1, ", sessionId = "

    aput-object v1, v0, v13

    iget-object v1, p0, Lcom/unisound/sdk/an;->f:Ljava/lang/String;

    aput-object v1, v0, v14

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-direct {p0, v6, v11}, Lcom/unisound/sdk/an;->a(ILcn/yunzhisheng/asr/JniUscClient;)V

    invoke-virtual {v11}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->bc()V

    :goto_0
    return-void

    :cond_2
    const-string v0, "start"

    const-string v1, "success"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/unisound/common/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unisound/sdk/an;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v11}, Lcn/yunzhisheng/asr/JniUscClient;->d()I

    const-string v1, "cancel"

    const-string v6, "cancel(start)"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v1 .. v6}, Lcom/unisound/common/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v12, [Ljava/lang/Object;

    const-string v1, "NetRecognition --> cancel(start)"

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {v11}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x0

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/unisound/sdk/an;->c:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v6, 0x1e

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v6, v7, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_16

    array-length v1, v0

    if-ne v1, v12, :cond_8

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/16 v3, 0x64

    if-eq v1, v3, :cond_4

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/16 v3, 0x63

    if-ne v1, v3, :cond_8

    :cond_4
    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->an()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_16

    move-wide v0, v4

    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/unisound/sdk/as;->j(J)V

    const-string v3, ""

    iput-object v3, p0, Lcom/unisound/sdk/an;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v3}, Lcom/unisound/sdk/as;->an()Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "Stop"

    invoke-direct {p0, v11, v3}, Lcom/unisound/sdk/an;->a(Lcn/yunzhisheng/asr/JniUscClient;Ljava/lang/String;)V

    :cond_6
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "NetRecognition --> stop called , bufferLength = "

    aput-object v4, v3, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v12

    const-string v0, ", sessionId = "

    aput-object v0, v3, v13

    iget-object v0, p0, Lcom/unisound/sdk/an;->l:Ljava/lang/String;

    aput-object v0, v3, v14

    invoke-static {v3}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {v11}, Lcn/yunzhisheng/asr/JniUscClient;->b()I

    move-result v6

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->ar()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->as()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->bj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".wav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->be()I

    move-result v1

    invoke-static {v0, v12, v1}, Lcom/unisound/common/j;->a(Ljava/lang/String;II)Z

    :cond_7
    if-gez v6, :cond_14

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NetRecognition --> stop error occured! , stopCode = "

    aput-object v1, v0, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v12

    const-string v1, ", sessionId = "

    aput-object v1, v0, v13

    iget-object v1, p0, Lcom/unisound/sdk/an;->f:Ljava/lang/String;

    aput-object v1, v0, v14

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const-string v0, "stop"

    const-string v1, "error"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/unisound/common/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6, v11}, Lcom/unisound/sdk/an;->a(ILcn/yunzhisheng/asr/JniUscClient;)V

    invoke-virtual {v11}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    goto/16 :goto_0

    :cond_8
    :try_start_1
    invoke-virtual {p0}, Lcom/unisound/sdk/an;->d()Z

    move-result v1

    if-nez v1, :cond_17

    array-length v1, v0

    invoke-virtual {v11, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a([BI)I

    move-result v1

    move v9, v1

    :goto_3
    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->ar()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->as()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v3}, Lcom/unisound/sdk/as;->bj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".wav"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/common/j;->a([BLjava/lang/String;)Z

    :cond_9
    sget-boolean v1, Lcom/unisound/common/y;->q:Z

    if-eqz v1, :cond_a

    const-string v1, "/sdcard/asrtest/oneshotonline.pcm"

    invoke-static {v0, v1}, Lcom/unisound/common/j;->a([BLjava/lang/String;)Z

    :cond_a
    array-length v0, v0

    int-to-long v0, v0

    add-long/2addr v0, v4

    if-ltz v9, :cond_d

    const/4 v3, 0x5

    if-eq v9, v3, :cond_d

    iget-object v3, p0, Lcom/unisound/sdk/an;->f:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v11, v3, v4}, Lcom/unisound/sdk/an;->a(Lcn/yunzhisheng/asr/JniUscClient;Ljava/lang/String;Z)V

    :cond_b
    :goto_4
    iget-object v3, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v3}, Lcom/unisound/sdk/as;->al()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v3}, Lcom/unisound/sdk/as;->an()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-direct {p0, v11}, Lcom/unisound/sdk/an;->g(Lcn/yunzhisheng/asr/JniUscClient;)I

    move-result v3

    iget-object v4, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/unisound/sdk/as;->v(Z)V

    if-nez v3, :cond_5

    :cond_c
    iget-boolean v3, p0, Lcom/unisound/sdk/an;->g:Z

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/unisound/sdk/an;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "NetRecognition --> break"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const-string v0, "NetRecognition --> exception"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    const-string v0, "recognition"

    const-string v1, "error"

    const v3, -0xf231

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "recognition exception"

    move-object v3, v2

    invoke-static/range {v0 .. v5}, Lcom/unisound/common/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, -0xf231

    invoke-direct {p0, v0, v11}, Lcom/unisound/sdk/an;->a(ILcn/yunzhisheng/asr/JniUscClient;)V

    const v0, -0xf231

    sput v0, Lcn/yunzhisheng/asr/JniUscClient;->l:I

    sput v10, Lcn/yunzhisheng/asr/JniUscClient;->m:I

    invoke-virtual {v11}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x5

    if-ne v9, v3, :cond_e

    const/4 v3, 0x1

    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "NetRecognition --> server vad stop"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/unisound/sdk/an;->f()V

    goto :goto_4

    :cond_e
    const/16 v3, -0x7532

    if-ne v9, v3, :cond_f

    const-string v3, "recognition"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "max speech timeout"

    invoke-static/range {v3 .. v8}, Lcom/unisound/common/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "NetRecognition --> max speech timeout"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-direct {p0, v11}, Lcom/unisound/sdk/an;->f(Lcn/yunzhisheng/asr/JniUscClient;)V

    goto/16 :goto_4

    :cond_f
    const/16 v3, -0x7531

    if-ne v9, v3, :cond_10

    const-string v3, "recognition"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "vad timeout"

    invoke-static/range {v3 .. v8}, Lcom/unisound/common/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "NetRecognition --> vad timeout"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_10
    const v3, -0x16413

    if-ne v9, v3, :cond_11

    iget-object v3, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v3}, Lcom/unisound/sdk/as;->an()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-direct {p0, v11}, Lcom/unisound/sdk/an;->g(Lcn/yunzhisheng/asr/JniUscClient;)I

    move-result v3

    if-eqz v3, :cond_b

    goto/16 :goto_2

    :cond_11
    const-string v3, "recognition"

    const-string v4, "error"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/unisound/common/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v3, "NetRecognition --> error:"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-direct {p0, v9, v11}, Lcom/unisound/sdk/an;->a(ILcn/yunzhisheng/asr/JniUscClient;)V

    invoke-virtual {v11}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->bc()V

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p0}, Lcom/unisound/sdk/an;->d()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v11}, Lcn/yunzhisheng/asr/JniUscClient;->d()I

    const-string v3, "recognition"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "cancel(recognizer)"

    invoke-static/range {v3 .. v8}, Lcom/unisound/common/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v3, "NetRecognition --> cancel(recognizer)"

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {v11}, Lcn/yunzhisheng/asr/JniUscClient;->e()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_13
    move-wide v4, v0

    goto/16 :goto_1

    :cond_14
    const-string v0, "stop"

    const-string v1, "success"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/unisound/common/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    iget v0, v0, Lcom/unisound/sdk/as;->aW:I

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    const/16 v1, 0x19

    invoke-virtual {v11, v1}, Lcn/yunzhisheng/asr/JniUscClient;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/common/t;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/unisound/sdk/as;->aY:I

    new-array v0, v13, [Ljava/lang/Object;

    const-string v1, "NetRecognition --> asrRspSpeakerInfo="

    aput-object v1, v0, v10

    iget-object v1, p0, Lcom/unisound/sdk/an;->e:Lcom/unisound/sdk/as;

    iget v1, v1, Lcom/unisound/sdk/as;->aY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_15
    iget-object v0, p0, Lcom/unisound/sdk/an;->f:Ljava/lang/String;

    invoke-direct {p0, v11, v0, v12}, Lcom/unisound/sdk/an;->a(Lcn/yunzhisheng/asr/JniUscClient;Ljava/lang/String;Z)V

    invoke-direct {p0, v11}, Lcom/unisound/sdk/an;->e(Lcn/yunzhisheng/asr/JniUscClient;)V

    new-array v0, v12, [Ljava/lang/Object;

    const-string v1, "NetRecognition --> released"

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {v11}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    iget-object v0, p0, Lcom/unisound/sdk/an;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    new-array v0, v12, [Ljava/lang/Object;

    const-string v1, "RecognitionThread stop"

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/unisound/common/y;->g([Ljava/lang/Object;)V

    new-array v0, v12, [Ljava/lang/Object;

    const-string v1, "NetRecognition --> run stop"

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_16
    move-wide v0, v4

    goto/16 :goto_4

    :cond_17
    move v9, v10

    goto/16 :goto_3
.end method
