.class public Lcom/unisound/sdk/bu;
.super Lcom/unisound/sdk/bs;


# instance fields
.field c:[B

.field private d:Lcom/unisound/sdk/bz;

.field private e:Lcom/unisound/sdk/bw;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/unisound/sdk/bw;)V
    .locals 2

    invoke-virtual {p2}, Lcom/unisound/sdk/bw;->r()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2}, Lcom/unisound/sdk/bw;->m()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/unisound/sdk/bs;-><init>(ZZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bu;->d:Lcom/unisound/sdk/bz;

    iput-object p1, p0, Lcom/unisound/sdk/bu;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/unisound/sdk/bu;->e:Lcom/unisound/sdk/bw;

    return-void
.end method

.method private a(Lcom/unisound/sdk/bw;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x64

    const/16 v3, 0x32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/unisound/sdk/bw;->v()I

    move-result v1

    if-eq v1, v3, :cond_0

    const-string v2, "pit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Lcom/unisound/sdk/bw;->u()I

    move-result v1

    if-eq v1, v3, :cond_1

    const-string v2, "spd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1}, Lcom/unisound/sdk/bw;->w()I

    move-result v1

    if-eq v1, v3, :cond_2

    const-string v2, "vol="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p1}, Lcom/unisound/sdk/bw;->t()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xiaoli"

    if-eq v1, v2, :cond_3

    const-string v2, "vcn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p1}, Lcom/unisound/sdk/bw;->o()I

    move-result v1

    if-eq v1, v4, :cond_4

    const-string v2, "smt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p1}, Lcom/unisound/sdk/bw;->p()I

    move-result v1

    if-eq v1, v4, :cond_5

    const-string v2, "emt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p1}, Lcom/unisound/sdk/bw;->n()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v2, "e2c="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p1}, Lcom/unisound/sdk/bw;->y()I

    move-result v1

    const/16 v2, 0x5622

    if-eq v1, v2, :cond_7

    const-string v2, "sampleRate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lcom/unisound/sdk/bu;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/sdk/bu;->j()V

    return-void
.end method

.method private a([B)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bu;->d:Lcom/unisound/sdk/bz;

    if-eqz v0, :cond_0

    array-length v1, p1

    invoke-interface {v0, p1, v1}, Lcom/unisound/sdk/bz;->a([BI)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/unisound/sdk/bu;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bu;->b(Z)Z

    move-result v0

    return v0
.end method

.method private b(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bu;->d:Lcom/unisound/sdk/bz;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/bz;->a(I)V

    :cond_0
    return-void
.end method

.method private b(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bu;->e:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->D()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/unisound/sdk/bu;->k()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bu;->d:Lcom/unisound/sdk/bz;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/bz;->a()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bu;->d:Lcom/unisound/sdk/bz;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/bz;->b()V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bu;->d:Lcom/unisound/sdk/bz;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unisound/sdk/bu;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/unisound/sdk/bz;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/unisound/sdk/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bu;->d:Lcom/unisound/sdk/bz;

    return-void
.end method

.method public b()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/bs;->b()V

    return-void
.end method

.method public b(Lcom/unisound/sdk/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bu;->d:Lcom/unisound/sdk/bz;

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bu;->d:Lcom/unisound/sdk/bz;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "TTSOnlineSynthesizerThread ->run ThreadName = "

    aput-object v2, v0, v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    const-string v2, ", ThreadId = "

    aput-object v2, v0, v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v10

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Lcom/unisound/sdk/bs;->run()V

    new-array v0, v8, [Ljava/lang/Object;

    const-string v2, "TTSOnlineSynthesizerThread run()\uff1asynthesizer start"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    new-instance v2, Lcn/yunzhisheng/tts/JniClient;

    invoke-direct {v2}, Lcn/yunzhisheng/tts/JniClient;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/unisound/sdk/bu;->e:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->f()Lcom/unisound/common/a;

    move-result-object v0

    iget-object v3, p0, Lcom/unisound/sdk/bu;->e:Lcom/unisound/sdk/bw;

    invoke-virtual {v3}, Lcom/unisound/sdk/bw;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/unisound/common/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/unisound/common/a;->c()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcn/yunzhisheng/tts/JniClient;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TTSOnlineSynthesizerThread getTTSData: TTSThread:create error appkey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/unisound/sdk/bu;->e:Lcom/unisound/sdk/bw;

    invoke-virtual {v4}, Lcom/unisound/sdk/bw;->B()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " server:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/unisound/common/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/unisound/common/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/unisound/common/a;->c()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    const v0, -0x11e59

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bu;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lcn/yunzhisheng/tts/JniClient;->b()I

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x8

    :try_start_1
    sget-object v3, Lcom/unisound/c/a;->q:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcn/yunzhisheng/tts/JniClient;->a(ILjava/lang/String;)I

    const/16 v0, 0xe

    iget-object v3, p0, Lcom/unisound/sdk/bu;->e:Lcom/unisound/sdk/bw;

    invoke-virtual {v3}, Lcom/unisound/sdk/bw;->B()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unisound/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcn/yunzhisheng/tts/JniClient;->a(ILjava/lang/String;)I

    const/16 v0, 0x16

    iget-object v3, p0, Lcom/unisound/sdk/bu;->e:Lcom/unisound/sdk/bw;

    invoke-virtual {v3}, Lcom/unisound/sdk/bw;->B()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unisound/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcn/yunzhisheng/tts/JniClient;->a(ILjava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/unisound/c/a;->s:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/unisound/c/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/unisound/sdk/bu;->e:Lcom/unisound/sdk/bw;

    iget v3, v3, Lcom/unisound/sdk/bw;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/unisound/c/a;->t:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "v3.10.77-phicomm,c6a7b7c5"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/unisound/common/y;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcn/yunzhisheng/tts/JniClient;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcn/yunzhisheng/tts/JniClient;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "TTSOnlineSynthesizerThread getTTSData: TTS_OPT_CLIENT_INFO: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    const/16 v3, 0xf

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcn/yunzhisheng/tts/JniClient;->a(ILjava/lang/String;)I

    iget-object v0, p0, Lcom/unisound/sdk/bu;->e:Lcom/unisound/sdk/bw;

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bu;->a(Lcom/unisound/sdk/bw;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "TTSOnlineSynthesizerThread getTTSData: ParamString(): "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    const/16 v3, 0x68

    invoke-virtual {v2, v3, v0}, Lcn/yunzhisheng/tts/JniClient;->a(ILjava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/unisound/sdk/bu;->e:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v0, 0xcb

    iget-object v3, p0, Lcom/unisound/sdk/bu;->e:Lcom/unisound/sdk/bw;

    invoke-virtual {v3}, Lcom/unisound/sdk/bw;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcn/yunzhisheng/tts/JniClient;->a(ILjava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/unisound/sdk/bu;->e:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->C()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v0, 0xcc

    iget-object v3, p0, Lcom/unisound/sdk/bu;->e:Lcom/unisound/sdk/bw;

    invoke-virtual {v3}, Lcom/unisound/sdk/bw;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcn/yunzhisheng/tts/JniClient;->a(ILjava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/unisound/sdk/bu;->e:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->b()Lcom/unisound/sdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/sdk/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/unisound/sdk/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/yunzhisheng/tts/JniClient;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TTSOnlineSynthesizerThread getTTSData: jni.start error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " audioFormat.toParamString(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/unisound/sdk/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " audioFormat.getEncode(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/unisound/sdk/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/unisound/sdk/bu;->b(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Lcn/yunzhisheng/tts/JniClient;->b()I

    goto/16 :goto_0

    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/unisound/sdk/bu;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcn/yunzhisheng/tts/JniClient;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TTSOnlineSynthesizerThread getTTSData: jni.textPut error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bu;->b(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Lcn/yunzhisheng/tts/JniClient;->b()I

    goto/16 :goto_0

    :cond_6
    :try_start_3
    invoke-direct {p0}, Lcom/unisound/sdk/bu;->i()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move v0, v1

    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/unisound/sdk/bu;->a()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v2, Lcn/yunzhisheng/tts/JniClient;->m:Lcn/yunzhisheng/tts/a;

    iget v3, v3, Lcn/yunzhisheng/tts/a;->b:I

    if-eq v3, v9, :cond_9

    const/16 v3, 0xa

    if-ge v0, v3, :cond_9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "TTSOnlineSynthesizerThread run : jni.getResult() before"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->f([Ljava/lang/Object;)V

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iget-object v4, p0, Lcom/unisound/sdk/bu;->e:Lcom/unisound/sdk/bw;

    invoke-virtual {v4}, Lcom/unisound/sdk/bw;->D()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v10, :cond_8

    new-instance v4, Lcom/unisound/sdk/bv;

    invoke-direct {v4, p0, v2}, Lcom/unisound/sdk/bv;-><init>(Lcom/unisound/sdk/bu;Lcn/yunzhisheng/tts/JniClient;)V

    iget-object v5, p0, Lcom/unisound/sdk/bu;->e:Lcom/unisound/sdk/bw;

    invoke-virtual {v5}, Lcom/unisound/sdk/bw;->L()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_8
    invoke-virtual {v2}, Lcn/yunzhisheng/tts/JniClient;->d()[B

    move-result-object v4

    iput-object v4, p0, Lcom/unisound/sdk/bu;->c:[B

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "TTSOnlineSynthesizerThread run : jni.getResult() after"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->f([Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/unisound/sdk/bu;->c:[B

    if-nez v3, :cond_b

    add-int/lit8 v0, v0, 0x1

    iget-object v3, v2, Lcn/yunzhisheng/tts/JniClient;->m:Lcn/yunzhisheng/tts/a;

    iget v3, v3, Lcn/yunzhisheng/tts/a;->c:I

    if-eqz v3, :cond_7

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/unisound/sdk/bu;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    invoke-virtual {v2}, Lcn/yunzhisheng/tts/JniClient;->c()I

    invoke-direct {p0}, Lcom/unisound/sdk/bu;->j()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v2}, Lcn/yunzhisheng/tts/JniClient;->b()I

    :goto_2
    new-array v0, v8, [Ljava/lang/Object;

    const-string v2, "TTSOnlineSynthesizerThread run()\uff1asynthesizer end"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TTSOnlineSynthesizerThread getTTSData: jni.getResult() error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v2}, Lcn/yunzhisheng/tts/JniClient;->b()I

    goto :goto_2

    :cond_b
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/unisound/sdk/bu;->c:[B

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bu;->a([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v0, v1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcn/yunzhisheng/tts/JniClient;->b()I

    throw v0
.end method
