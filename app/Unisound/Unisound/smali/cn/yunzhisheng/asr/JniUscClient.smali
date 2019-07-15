.class public Lcn/yunzhisheng/asr/JniUscClient;
.super Ljava/lang/Object;


# static fields
.field public static final A:I = 0x7

.field public static final B:I = 0x8

.field public static final C:I = 0x9

.field public static final D:I = 0xa

.field public static final E:I = 0xb

.field public static final F:I = 0xc

.field public static final G:I = 0xd

.field public static final H:I = 0xe

.field public static final I:I = 0xf

.field public static final J:I = 0x10

.field public static final K:I = 0x11

.field public static final L:I = 0x12

.field public static final M:I = 0x13

.field public static final N:I = 0x1f

.field public static final O:I = 0x15

.field public static final P:I = 0x16

.field public static final Q:I = 0x19

.field public static final R:I = 0x1a

.field public static final S:I = 0x0

.field public static final T:I = 0x1

.field public static final U:I = 0x14

.field public static final V:I = 0x15

.field public static final W:I = 0x16

.field public static final X:I = 0x18

.field public static final Y:I = 0x20

.field public static final Z:I = 0x21

.field public static final a:I = 0x0

.field public static final aA:Ljava/lang/String; = "no"

.field public static final aB:Ljava/lang/String; = "variable"

.field public static final aC:Ljava/lang/String; = "formal"

.field public static final aa:I = 0x22

.field public static final ab:I = 0x23

.field public static final ac:I = 0x97

.field public static final ad:I = 0x17

.field public static final ae:I = 0x1a

.field public static final af:I = 0x1b

.field public static final ag:I = 0x1c

.field public static final ah:I = 0x22

.field public static final ai:I = 0xc9

.field public static final aj:I = 0xce

.field public static final ak:I = 0xcc

.field public static final al:I = 0xcf

.field public static final am:I = 0x0

.field public static final an:I = 0x1

.field public static final ao:I = 0x0

.field public static final ap:I = 0x1

.field public static final aq:I = 0x2

.field public static final ar:I = 0x3

.field public static final as:I = 0x4

.field public static final at:I = 0x3f7

.field public static final au:I = 0x140

.field public static final av:I = 0x141

.field public static final aw:I = 0x3c

.field public static final ax:I = 0x3d

.field public static final ay:I = 0x3e

.field public static final az:Ljava/lang/String; = "null"

.field public static final b:I = 0x0

.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x5

.field public static final g:I = 0x3ea

.field public static final h:I = 0x3f7

.field public static final i:I = 0xc9

.field public static final j:I = 0x3fc

.field public static final k:I = 0x3fb

.field public static l:I = 0x0

.field public static m:I = 0x0

.field public static final n:Ljava/lang/String; = "opus"

.field public static final o:Ljava/lang/String; = "opus-nb"

.field public static final p:Ljava/lang/String; = "req_audio_url"

.field public static final q:Ljava/lang/String; = "get_variable"

.field public static final r:Ljava/lang/String; = "open"

.field public static final s:Ljava/lang/String; = "close"

.field public static final t:I = 0x0

.field public static final u:I = 0x1

.field public static final v:I = 0x2

.field public static final w:I = 0x3

.field public static final x:I = 0x4

.field public static final y:I = 0x5

.field public static final z:I = 0x6


# instance fields
.field private aD:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcn/yunzhisheng/asr/JniUscClient;->l:I

    sput v0, Lcn/yunzhisheng/asr/JniUscClient;->m:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    return-void
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "NETWORK_TYPE_NONE"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "NETWORK_TYPE_NONE"

    goto :goto_0

    :pswitch_1
    const-string v0, "NETWORK_TYPE_WIFI"

    goto :goto_0

    :pswitch_2
    const-string v0, "NETWORK_TYPE_3G"

    goto :goto_0

    :pswitch_3
    const-string v0, "NETWORK_TYPE_2G"

    goto :goto_0

    :pswitch_4
    const-string v0, "NETWORK_TYPE_MOBILE"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private native cancel(J)I
.end method

.method private native createNative(Ljava/lang/String;I)J
.end method

.method private native destroyNative(J)V
.end method

.method private native getLastErrno(J)I
.end method

.method private native getOptionValue(JI)Ljava/lang/String;
.end method

.method private native getResult(J)Ljava/lang/String;
.end method

.method private native login(J)I
.end method

.method private native recognize(J[BI)I
.end method

.method private native setOptionInt(JII)I
.end method

.method private native setOptionString(JILjava/lang/String;)I
.end method

.method private native start(J)I
.end method

.method private native stop(J)I
.end method


# virtual methods
.method public a()I
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->start(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/JniUscClient;->a(I)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(II)I
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcn/yunzhisheng/asr/JniUscClient;->setOptionInt(JII)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)I
    .locals 6

    const/4 v0, -0x1

    iget-wide v2, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    const-string v1, "JniUscClient setOptionString error : s is null!"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcn/yunzhisheng/asr/JniUscClient;->setOptionString(JILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const-string v1, "pcm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    invoke-virtual {p0, v1, v0}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    const/16 v1, 0x65

    const/16 v2, 0x12c0

    invoke-virtual {p0, v1, v2}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    const/16 v1, 0x10

    invoke-virtual {p0, v1, p1}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(Z)I
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x23

    const-string v1, "get_variable"

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([BI)I
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcn/yunzhisheng/asr/JniUscClient;->recognize(J[BI)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/JniUscClient;->a(I)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)J
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcn/yunzhisheng/asr/JniUscClient;->createNative(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    :cond_0
    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    return-wide v0
.end method

.method public a(I)V
    .locals 1

    sput p1, Lcn/yunzhisheng/asr/JniUscClient;->l:I

    sget v0, Lcn/yunzhisheng/asr/JniUscClient;->l:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/JniUscClient;->f()I

    move-result v0

    sput v0, Lcn/yunzhisheng/asr/JniUscClient;->m:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcn/yunzhisheng/asr/JniUscClient;->m:I

    goto :goto_0
.end method

.method public b()I
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->stop(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/JniUscClient;->a(I)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->getResult(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public c(I)Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    invoke-direct {p0, v0, v1, p1}, Lcn/yunzhisheng/asr/JniUscClient;->getOptionValue(JI)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public d()I
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->cancel(J)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->destroyNative(J)V

    iput-wide v2, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    :cond_0
    return-void
.end method

.method public f()I
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->getLastErrno(J)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()I
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aD:J

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->login(J)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
