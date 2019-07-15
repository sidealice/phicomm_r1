.class public Lcom/unisound/sdk/bg;
.super Lcom/unisound/sdk/o;


# static fields
.field private static final O:I = 0x1

.field private static final P:I = 0x5

.field private static final Q:I = 0x6

.field private static final R:I = 0x7

.field private static final S:I = 0xb

.field private static final T:I = 0xc

.field private static final U:I = 0xd

.field private static final V:I = 0xe

.field private static final W:I = 0xf

.field private static final X:I = 0x10

.field private static final Y:I = 0x11

.field private static final Z:I = 0x12

.field private static aA:Ljava/lang/String; = null

.field private static final aG:I = 0x0

.field private static final aH:I = 0x1

.field private static final aI:I = 0x2

.field private static final aJ:I = 0x3

.field private static final aa:I = 0x14

.field private static final ab:I = 0x15

.field private static final ac:I = 0x16

.field private static final ad:I = 0x17

.field private static final ae:I = 0x18

.field private static final af:I = 0x19

.field private static final ag:I = 0x1e

.field private static final ah:I = 0x28

.field private static final ai:I = 0x32


# instance fields
.field private A:Lcom/unisound/sdk/cl;

.field private B:Lcom/unisound/sdk/y;

.field private C:Z

.field private D:Z

.field private E:Ljava/lang/String;

.field private F:I

.field private G:I

.field private H:Lcom/unisound/sdk/aw;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:I

.field private L:Z

.field private M:Z

.field private N:Z

.field private aB:Ljava/lang/String;

.field private aC:Lcom/unisound/sdk/ac;

.field private aD:Lcom/unisound/common/ag;

.field private aE:Z

.field private aF:Lcom/unisound/sdk/ad;

.field private aK:Lcom/unisound/b/a/a;

.field private aL:Landroid/os/Handler;

.field private aM:Ljava/lang/Runnable;

.field private aj:Lcom/unisound/common/ao;

.field private ak:Landroid/content/Context;

.field private al:Landroid/os/HandlerThread;

.field private am:Landroid/os/Handler;

.field private an:Landroid/os/Handler;

.field private ao:I

.field private ap:I

.field private aq:Z

.field private ar:Ljava/lang/String;

.field private as:Z

.field private at:Z

.field private au:Z

.field private av:Z

.field private aw:Ljava/lang/Object;

.field private ax:Lcom/unisound/sdk/h;

.field private ay:Lcom/unisound/sdk/g;

.field private az:Lcom/unisound/common/ba;

.field protected o:Lcom/unisound/sdk/ao;

.field protected p:Lcom/unisound/sdk/cw;

.field protected final q:I

.field protected final r:I

.field protected final s:I

.field protected final t:I

.field u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field x:Ljava/lang/String;

.field y:Ljava/lang/String;

.field private z:Lcom/unisound/client/SpeechUnderstanderListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "4bd9354d1cf247c93db388257567d0e2"

    sput-object v0, Lcom/unisound/sdk/bg;->aA:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/unisound/sdk/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bg;->B:Lcom/unisound/sdk/y;

    iput-boolean v2, p0, Lcom/unisound/sdk/bg;->C:Z

    iput-boolean v2, p0, Lcom/unisound/sdk/bg;->D:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/bg;->E:Ljava/lang/String;

    iput v2, p0, Lcom/unisound/sdk/bg;->F:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/unisound/sdk/bg;->G:I

    new-instance v0, Lcom/unisound/sdk/aw;

    invoke-direct {v0}, Lcom/unisound/sdk/aw;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->H:Lcom/unisound/sdk/aw;

    new-instance v0, Lcom/unisound/sdk/cw;

    invoke-direct {v0}, Lcom/unisound/sdk/cw;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->p:Lcom/unisound/sdk/cw;

    const-string v0, "main"

    iput-object v0, p0, Lcom/unisound/sdk/bg;->I:Ljava/lang/String;

    const-string v0, "wakeup"

    iput-object v0, p0, Lcom/unisound/sdk/bg;->J:Ljava/lang/String;

    const/16 v0, 0x33

    iput v0, p0, Lcom/unisound/sdk/bg;->q:I

    const/16 v0, 0x34

    iput v0, p0, Lcom/unisound/sdk/bg;->r:I

    const/16 v0, 0x35

    iput v0, p0, Lcom/unisound/sdk/bg;->s:I

    const/16 v0, 0x36

    iput v0, p0, Lcom/unisound/sdk/bg;->t:I

    iput v3, p0, Lcom/unisound/sdk/bg;->K:I

    iput-boolean v3, p0, Lcom/unisound/sdk/bg;->L:Z

    iput-boolean v3, p0, Lcom/unisound/sdk/bg;->M:Z

    iput-boolean v3, p0, Lcom/unisound/sdk/bg;->N:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/unisound/sdk/bg;->ap:I

    iput-boolean v3, p0, Lcom/unisound/sdk/bg;->aq:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/bg;->ar:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/unisound/sdk/bg;->as:Z

    iput-boolean v3, p0, Lcom/unisound/sdk/bg;->at:Z

    iput-boolean v3, p0, Lcom/unisound/sdk/bg;->au:Z

    iput-boolean v3, p0, Lcom/unisound/sdk/bg;->av:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->aw:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/bg;->aB:Ljava/lang/String;

    new-instance v0, Lcom/unisound/sdk/bh;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/bh;-><init>(Lcom/unisound/sdk/bg;)V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->aC:Lcom/unisound/sdk/ac;

    iput-boolean v3, p0, Lcom/unisound/sdk/bg;->aE:Z

    new-instance v0, Lcom/unisound/sdk/bk;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/bk;-><init>(Lcom/unisound/sdk/bg;)V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->aF:Lcom/unisound/sdk/ad;

    new-instance v0, Lcom/unisound/sdk/bn;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/bn;-><init>(Lcom/unisound/sdk/bg;)V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->aM:Ljava/lang/Runnable;

    invoke-static {}, Lcom/unisound/common/ba;->a()Lcom/unisound/common/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bg;->az:Lcom/unisound/common/ba;

    iput-object p1, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    iput-object p2, p0, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/sdk/bg;->y:Ljava/lang/String;

    new-instance v0, Lcom/unisound/common/ag;

    invoke-direct {v0, p1}, Lcom/unisound/common/ag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->aD:Lcom/unisound/common/ag;

    iget-object v0, p0, Lcom/unisound/sdk/bg;->p:Lcom/unisound/sdk/cw;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    iget-object v1, v1, Lcom/unisound/sdk/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/cw;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->aC:Lcom/unisound/sdk/ac;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/ab;->a(Lcom/unisound/sdk/ac;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aX()Lcom/unisound/sdk/cl;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/cl;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p3}, Lcom/unisound/sdk/cl;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/w;->o(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/w;->O(I)V

    new-instance v0, Lcom/unisound/sdk/ao;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1, v2}, Lcom/unisound/sdk/ao;-><init>(Lcom/unisound/sdk/as;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    iput-boolean v3, p0, Lcom/unisound/sdk/bg;->L:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->u:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->v:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    new-instance v0, Lcom/unisound/common/ao;

    new-instance v1, Lcom/unisound/sdk/bi;

    invoke-direct {v1, p0}, Lcom/unisound/sdk/bi;-><init>(Lcom/unisound/sdk/bg;)V

    iget-object v2, p0, Lcom/unisound/sdk/bg;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1, v2}, Lcom/unisound/common/ao;-><init>(Lcom/unisound/common/ap;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->aj:Lcom/unisound/common/ao;

    iget-object v0, p0, Lcom/unisound/sdk/bg;->aj:Lcom/unisound/common/ao;

    invoke-virtual {v0}, Lcom/unisound/common/ao;->c()V

    new-instance v0, Lcom/unisound/sdk/h;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/h;-><init>(Lcom/unisound/sdk/bg;)V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->ax:Lcom/unisound/sdk/h;

    iget-object v0, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v0}, Lcom/unisound/sdk/ab;->h()Lcom/unisound/sdk/g;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bg;->ay:Lcom/unisound/sdk/g;

    return-void
.end method

.method private C()V
    .locals 4

    iget-object v0, p0, Lcom/unisound/sdk/bg;->aD:Lcom/unisound/common/ag;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Lcom/unisound/common/ag;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "no RECORD_AUDIO permission"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    const/16 v1, 0x487

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/bg;->aD:Lcom/unisound/common/ag;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Lcom/unisound/common/ag;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "no READ_CONTACTS permission"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    const/16 v1, 0x486

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/bg;->aD:Lcom/unisound/common/ag;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Lcom/unisound/common/ag;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "no ACCESS_FINE_LOCATION permission"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    const/16 v1, 0x481

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    :cond_2
    iget-object v0, p0, Lcom/unisound/sdk/bg;->aD:Lcom/unisound/common/ag;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Lcom/unisound/common/ag;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "no READ_PHONE_STATE permission"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    const/16 v1, 0x47f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    :cond_3
    iget-object v0, p0, Lcom/unisound/sdk/bg;->aD:Lcom/unisound/common/ag;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lcom/unisound/common/ag;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "no WRITE_EXTERNAL_STORAGE permission"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    const/16 v1, 0x482

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    :cond_4
    return-void
.end method

.method private D()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->y()Z

    move-result v0

    return v0
.end method

.method private E()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->z()I

    move-result v0

    return v0
.end method

.method private F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->C:Z

    return v0
.end method

.method private G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->D:Z

    return v0
.end method

.method private H()Lcom/unisound/common/av;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0}, Lcom/unisound/sdk/ao;->p()Lcom/unisound/common/av;

    move-result-object v0

    return-object v0
.end method

.method private I()Lcom/unisound/common/au;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0}, Lcom/unisound/sdk/ao;->h()Lcom/unisound/common/au;

    move-result-object v0

    return-object v0
.end method

.method private J()V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x4ba

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->u:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->v:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/unisound/common/v;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_0
    iput-boolean v5, p0, Lcom/unisound/sdk/bg;->au:Z

    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->stop()V

    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->av:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->I:Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->u:Ljava/util/ArrayList;

    invoke-static {v1, v3, v3}, Lcom/unisound/common/v;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->v:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-static {v3, v1, v2}, Lcom/unisound/common/v;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private K()V
    .locals 15

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v11, p0, Lcom/unisound/sdk/bg;->v:Ljava/util/ArrayList;

    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    const-string v1, "full"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    move-object v10, v5

    invoke-static/range {v0 .. v10}, Lcom/unisound/common/v;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    const/4 v4, -0x1

    const-string v6, ""

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    move-object v10, v5

    move-object v11, v5

    move-object v12, v5

    move-object v13, v5

    move-object v14, v5

    invoke-static/range {v4 .. v14}, Lcom/unisound/common/v;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/bg;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->u:Ljava/util/ArrayList;

    iget v2, p0, Lcom/unisound/sdk/bg;->F:I

    const-string v3, "full"

    const-string v4, ""

    const/high16 v1, -0x3e600000    # -20.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v6, v5

    move-object v8, v5

    move-object v9, v5

    move-object v10, v5

    move-object v11, v5

    move-object v12, v5

    invoke-static/range {v2 .. v12}, Lcom/unisound/common/v;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private L()I
    .locals 3

    const v2, -0xfa01

    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->L:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    const/16 v1, 0x514

    invoke-static {v2}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onError(ILjava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private M()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->u()I

    move-result v1

    const-string v0, ""

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->getFixEngineVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "authorized_status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->v()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->w()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private N()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private O()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->ad()I

    move-result v0

    return v0
.end method

.method private P()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->ae()I

    move-result v0

    return v0
.end method

.method private Q()V
    .locals 4

    const-wide/32 v0, 0x2932e00

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/unisound/sdk/bg;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/unisound/sdk/bg;->aL:Landroid/os/Handler;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->aL:Landroid/os/Handler;

    iget-object v3, p0, Lcom/unisound/sdk/bg;->aM:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/unisound/sdk/bg;->aL:Landroid/os/Handler;

    iget-object v3, p0, Lcom/unisound/sdk/bg;->aM:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "USC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "refresh activate timer start"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    return-void
.end method

.method private R()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ax:Lcom/unisound/sdk/h;

    invoke-virtual {v0}, Lcom/unisound/sdk/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "USC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "unregiste network broadcastReceiver!"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->ax:Lcom/unisound/sdk/h;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ax:Lcom/unisound/sdk/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/h;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "USC"

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "unRegisteBroadcast exception"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/unisound/common/y;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private S()I
    .locals 3

    const v2, -0xfa02

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ay:Lcom/unisound/sdk/g;

    invoke-virtual {v0}, Lcom/unisound/sdk/g;->a()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    const/16 v1, 0x514

    invoke-static {v2}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onError(ILjava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/unisound/sdk/bg;Ljava/util/List;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bg;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const v1, -0xf7ae

    new-instance v3, Lcom/unisound/sdk/co;

    iget-object v0, p0, Lcom/unisound/sdk/bg;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    invoke-direct {v3, v0, v2}, Lcom/unisound/sdk/co;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->L()I

    move-result v0

    if-eqz v0, :cond_1

    const v0, -0xfa01

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    iget v0, p0, Lcom/unisound/sdk/bg;->ap:I

    if-le v4, v0, :cond_2

    const v0, -0xf7aa

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_7

    if-lez v4, :cond_7

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, -0xf7af

    goto :goto_0

    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unisound/sdk/co;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, -0xf7a9

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/unisound/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1}, Lcom/unisound/sdk/co;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/unisound/sdk/co;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "status"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v0, v1

    :goto_2
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v1}, Lcom/unisound/sdk/co;->a(Ljava/util/Set;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/unisound/sdk/bg;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->an:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/unisound/sdk/bg;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bg;->aB:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/IntentFilter;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ax:Lcom/unisound/sdk/h;

    invoke-virtual {v0}, Lcom/unisound/sdk/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "USC"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "registe network broadcastReceiver!"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->ax:Lcom/unisound/sdk/h;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ax:Lcom/unisound/sdk/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/h;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "USC"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "registeBroadcast exception"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/unisound/common/y;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lcom/unisound/sdk/al;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/unisound/sdk/b;

    invoke-direct {v1}, Lcom/unisound/sdk/b;-><init>()V

    invoke-virtual {v1, p1}, Lcom/unisound/sdk/b;->a(Lcom/unisound/sdk/al;)V

    iget v2, p0, Lcom/unisound/sdk/bg;->F:I

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/b;->a(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/b;->a(Z)V

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->ao()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/b;->b(Z)V

    invoke-static {v1}, Lcom/unisound/common/v;->a(Lcom/unisound/sdk/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v2, 0x4b1

    invoke-static {v3, v0, v3}, Lcom/unisound/common/v;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic a(Lcom/unisound/sdk/bg;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bg;->r(I)V

    return-void
.end method

.method static synthetic a(Lcom/unisound/sdk/bg;Lcom/unisound/sdk/al;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bg;->a(Lcom/unisound/sdk/al;)V

    return-void
.end method

.method static synthetic a(Lcom/unisound/sdk/bg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/sdk/bg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/sdk/cl;->a(Ljava/lang/String;I)Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/unisound/sdk/bl;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/unisound/sdk/bl;-><init>(Lcom/unisound/sdk/bg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/unisound/sdk/bl;->start()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/w;->n(Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "USC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "activate params is "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->aV()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/b/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/unisound/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bg;->aK:Lcom/unisound/b/a/a;

    iget-object v0, p0, Lcom/unisound/sdk/bg;->aK:Lcom/unisound/b/a/a;

    new-instance v1, Lcom/unisound/sdk/bm;

    invoke-direct {v1, p0}, Lcom/unisound/sdk/bm;-><init>(Lcom/unisound/sdk/bg;)V

    invoke-virtual {v0, v1}, Lcom/unisound/b/a/a;->a(Lcom/unisound/b/a/c;)V

    return-void
.end method

.method static synthetic a(Lcom/unisound/sdk/bg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/bg;->aE:Z

    return p1
.end method

.method static synthetic b(Lcom/unisound/sdk/bg;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/unisound/sdk/bg;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bg;->E:Ljava/lang/String;

    return-object p1
.end method

.method private b(Lcom/unisound/sdk/al;)V
    .locals 5

    const/16 v4, 0x4b1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/unisound/sdk/al;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v1}, Lcom/unisound/sdk/cl;->y()Z

    move-result v1

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-static {v0, v1, v2}, Lcom/unisound/common/v;->a(Ljava/lang/String;ZLcom/unisound/sdk/w;)Lcom/unisound/sdk/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/sdk/cn;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-static {v3, v3, v1}, Lcom/unisound/common/v;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    invoke-virtual {p1}, Lcom/unisound/sdk/al;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/unisound/sdk/al;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v1}, Lcom/unisound/sdk/cl;->y()Z

    move-result v1

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-static {v0, v1, v2}, Lcom/unisound/common/v;->a(Ljava/lang/String;ZLcom/unisound/sdk/w;)Lcom/unisound/sdk/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/sdk/cn;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-static {v3, v3, v1}, Lcom/unisound/common/v;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/unisound/sdk/w;->k(J)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const v0, -0xf83f

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bg;->q(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/unisound/sdk/bg;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bg;->q(I)V

    return-void
.end method

.method static synthetic b(Lcom/unisound/sdk/bg;Lcom/unisound/sdk/al;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/al;)V

    return-void
.end method

.method static synthetic b(Lcom/unisound/sdk/bg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/bg;->C:Z

    return p1
.end method

.method static synthetic c(Lcom/unisound/sdk/bg;)Lcom/unisound/common/ao;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->aj:Lcom/unisound/common/ao;

    return-object v0
.end method

.method private c(Lcom/unisound/sdk/al;)V
    .locals 5

    invoke-virtual {p1}, Lcom/unisound/sdk/al;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/unisound/sdk/al;->d()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisound/sdk/al;

    invoke-direct {v0}, Lcom/unisound/sdk/al;-><init>()V

    invoke-virtual {p1}, Lcom/unisound/sdk/al;->e()Lcom/unisound/sdk/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/al;->a(Lcom/unisound/sdk/am;)V

    invoke-static {}, Lcom/unisound/common/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/al;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/unisound/sdk/al;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/al;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/unisound/sdk/al;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/al;->b(Z)V

    invoke-virtual {p1}, Lcom/unisound/sdk/al;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/al;->a(Z)V

    new-instance v1, Lcom/unisound/sdk/b;

    invoke-direct {v1}, Lcom/unisound/sdk/b;-><init>()V

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/b;->a(Lcom/unisound/sdk/al;)V

    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/b;->a(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/b;->a(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->ao()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/b;->b(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->v:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/unisound/common/v;->a(Lcom/unisound/sdk/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v1, 0x4b1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/unisound/sdk/bg;->v:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-static {v2, v3, v4}, Lcom/unisound/common/v;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/unisound/sdk/bg;Lcom/unisound/sdk/al;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bg;->c(Lcom/unisound/sdk/al;)V

    return-void
.end method

.method static synthetic c(Lcom/unisound/sdk/bg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/bg;->au:Z

    return p1
.end method

.method static synthetic d(Lcom/unisound/sdk/bg;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->aw:Ljava/lang/Object;

    return-object v0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/unisound/sdk/bg;->l:Landroid/content/Context;

    sget-object v3, Lcom/unisound/sdk/bg;->aA:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v2, "deviceInfo"

    const-string v4, ""

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "appkey"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "udid"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "token"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "deviceInfo"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveTokenInfo deviceContent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "deviceInfo"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    return-void

    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "deviceInfo"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v2, v1

    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_3

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "appkey"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "udid"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v1, "token"

    invoke-virtual {v6, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_3
    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appkey"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "udid"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "token"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "deviceInfo"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_3
.end method

.method static synthetic d(Lcom/unisound/sdk/bg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/bg;->av:Z

    return p1
.end method

.method static synthetic e(Lcom/unisound/sdk/bg;)V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/o;->f()V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cl;->k(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcn/yunzhisheng/asr/JniUscClient;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/JniUscClient;-><init>()V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->bb()Lcom/unisound/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/common/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/unisound/common/a;->c()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcn/yunzhisheng/asr/JniUscClient;->a(Ljava/lang/String;I)J

    move-result-wide v2

    const/16 v4, 0x9

    invoke-virtual {v0, v4, p1}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    const/16 v4, 0xcc

    invoke-virtual {v0, v4, p2}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "SpeechUnderstanderInterface"

    aput-object v4, v0, v5

    const-string v4, "server :"

    aput-object v4, v0, v6

    invoke-virtual {v1}, Lcom/unisound/common/a;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    const-string v4, " port: "

    aput-object v4, v0, v8

    const/4 v4, 0x4

    invoke-virtual {v1}, Lcom/unisound/common/a;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "SpeechUnderstanderInterface"

    aput-object v1, v0, v5

    const-string v1, "juc.create() returns "

    aput-object v1, v0, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    return-void
.end method

.method private e(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cl;->a(Z)V

    return-void
.end method

.method static synthetic e(Lcom/unisound/sdk/bg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/bg;->at:Z

    return p1
.end method

.method static synthetic f(Lcom/unisound/sdk/bg;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->aB:Ljava/lang/String;

    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cl;->h(Ljava/lang/String;)V

    return-void
.end method

.method private f(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cl;->b(Z)V

    return-void
.end method

.method private g(Z)I
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    iget-boolean v0, v0, Lcom/unisound/sdk/ab;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bg;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "loadModel::isInit=false"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    iget-object v1, v1, Lcom/unisound/sdk/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wakeup.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    iget-object v2, v2, Lcom/unisound/sdk/ab;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    iget-object v2, v2, Lcom/unisound/sdk/ab;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init_asr"

    invoke-virtual {p0, v0, v1}, Lcom/unisound/sdk/bg;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cl;->i(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/unisound/sdk/bg;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->D:Z

    return v0
.end method

.method static synthetic h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    return-object v0
.end method

.method private h(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cl;->j(Ljava/lang/String;)V

    return-void
.end method

.method private h(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/w;->o(Z)V

    return-void
.end method

.method static synthetic i(Lcom/unisound/sdk/bg;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    return-object v0
.end method

.method private i(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cl;->e(Ljava/lang/String;)V

    return-void
.end method

.method private i(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/w;->p(Z)V

    return-void
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    const-string v0, "USC"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, " isNetworkAvailable cm is null!"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/unisound/common/y;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    :goto_0
    move v0, v2

    :goto_1
    return v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    move v0, v2

    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "SpeechUnderstander isNetworkAvailable error"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private j(Z)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/w;->t(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/unisound/sdk/bg;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->J()V

    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cl;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k(Lcom/unisound/sdk/bg;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->E:Ljava/lang/String;

    return-object v0
.end method

.method private k(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cl;->f(Ljava/lang/String;)V

    return-void
.end method

.method private k(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/w;->u(Z)V

    return-void
.end method

.method static synthetic l(Lcom/unisound/sdk/bg;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->as:Z

    return v0
.end method

.method private l(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/w;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNetEngine::error: unkown param "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l(Z)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, p1}, Lcom/unisound/common/s;->h(Z)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic m(Lcom/unisound/sdk/bg;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->au:Z

    return v0
.end method

.method private m(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/w;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNetEngineSubModel::error: unkown param "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unisound/sdk/bg;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cl;->a(I)V

    return-void
.end method

.method static synthetic n(Lcom/unisound/sdk/bg;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->Q()V

    return-void
.end method

.method private n(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/w;->p(Ljava/lang/String;)V

    return-void
.end method

.method private o(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "SpeechUnderstanderInterface -> getversion : SDK_Version = "

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private o(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/w;->P(I)Z

    return-void
.end method

.method static synthetic o(Lcom/unisound/sdk/bg;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->at:Z

    return v0
.end method

.method static synthetic p(Lcom/unisound/sdk/bg;)Lcom/unisound/b/a/a;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->aK:Lcom/unisound/b/a/a;

    return-object v0
.end method

.method private p(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/ao;->c(I)V

    return-void
.end method

.method private p(Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/unisound/common/aa;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v3, "appkey_md5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/unisound/common/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    array-length v5, v3

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_4

    aget-object v6, v3, v2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    new-array v7, v0, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkAppkeyMd5 : value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", appkey = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", appkeyMd5 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v7}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method static synthetic q(Lcom/unisound/sdk/bg;)Lcom/unisound/sdk/g;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ay:Lcom/unisound/sdk/g;

    return-object v0
.end method

.method private q(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x36

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private r(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x36

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->an:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unisound/sdk/bg;->an:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private s(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/w;->v(I)V

    return-void
.end method


# virtual methods
.method protected A()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/bg;->K:I

    return v0
.end method

.method protected B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->p:Lcom/unisound/sdk/cw;

    invoke-virtual {v0}, Lcom/unisound/sdk/cw;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected a(Lcn/yunzhisheng/asr/VAD;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->I:Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->at()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method protected a(Lcom/unisound/sdk/ay;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/ao;->a(Lcom/unisound/sdk/ay;)V

    return-void
.end method

.method protected a(Ljava/lang/String;ZII)V
    .locals 13

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/bg;->aE:Z

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->a:Lcom/unisound/sdk/l;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->aH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/unisound/sdk/l;->a(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0}, Lcom/unisound/sdk/br;->i()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v11, v0

    :goto_0
    iget-object v0, p0, Lcom/unisound/sdk/bg;->a:Lcom/unisound/sdk/l;

    iget-object v0, v0, Lcom/unisound/sdk/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "SpeechUnderstanderInterface : recognizeResult.item = "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/unisound/sdk/bg;->a:Lcom/unisound/sdk/l;

    iget-object v2, v2, Lcom/unisound/sdk/l;->a:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " , times=  "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v12, p0, Lcom/unisound/sdk/bg;->u:Ljava/util/ArrayList;

    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    const-string v1, "full"

    iget-object v2, p0, Lcom/unisound/sdk/bg;->a:Lcom/unisound/sdk/l;

    iget-object v2, v2, Lcom/unisound/sdk/l;->a:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unisound/sdk/bg;->a:Lcom/unisound/sdk/l;

    iget v5, v5, Lcom/unisound/sdk/l;->e:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {v0 .. v10}, Lcom/unisound/common/v;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_0

    :cond_0
    iget-object v12, p0, Lcom/unisound/sdk/bg;->u:Ljava/util/ArrayList;

    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    const-string v1, "full"

    iget-object v2, p0, Lcom/unisound/sdk/bg;->a:Lcom/unisound/sdk/l;

    iget-object v2, v2, Lcom/unisound/sdk/l;->a:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unisound/sdk/bg;->a:Lcom/unisound/sdk/l;

    iget v5, v5, Lcom/unisound/sdk/l;->e:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/unisound/common/v;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v1, 0x4b2

    iget-object v2, p0, Lcom/unisound/sdk/bg;->u:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/unisound/common/v;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/bg;->aE:Z

    return-void
.end method

.method protected a(Ljava/lang/String;ZIJJII)V
    .locals 12

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "SpeechUnderstandInterface doWakeupResult => "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/bg;->aE:Z

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->a:Lcom/unisound/sdk/l;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->aH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/unisound/sdk/l;->a(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aO()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3e8

    const-string v1, "full"

    iget-object v2, p0, Lcom/unisound/sdk/bg;->a:Lcom/unisound/sdk/l;

    iget-object v2, v2, Lcom/unisound/sdk/l;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unisound/sdk/bg;->a:Lcom/unisound/sdk/l;

    iget v5, v5, Lcom/unisound/sdk/l;->e:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {v0 .. v10}, Lcom/unisound/common/v;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v1, 0xc81

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v11, v2, v3}, Lcom/unisound/common/v;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/bg;->aE:Z

    return-void

    :cond_1
    const/16 v0, 0x3e8

    const-string v1, "full"

    iget-object v2, p0, Lcom/unisound/sdk/bg;->a:Lcom/unisound/sdk/l;

    iget-object v2, v2, Lcom/unisound/sdk/l;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unisound/sdk/bg;->a:Lcom/unisound/sdk/l;

    iget v5, v5, Lcom/unisound/sdk/l;->e:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/unisound/common/v;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected a(Z[BII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/unisound/sdk/o;->a(Z[BII)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->B:Lcom/unisound/sdk/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/unisound/sdk/ao;->b(Z[BII)V

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/bg;->H:Lcom/unisound/sdk/aw;

    invoke-virtual {v0, p1, p4}, Lcom/unisound/sdk/aw;->a(ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_1
    return-void
.end method

.method protected b(I)V
    .locals 2

    const/4 v1, 0x1

    const v0, -0xee4a

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0}, Lcom/unisound/sdk/ao;->d()V

    :cond_0
    iput-boolean v1, p0, Lcom/unisound/sdk/bg;->aE:Z

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bg;->q(I)V

    :cond_1
    iput-boolean v1, p0, Lcom/unisound/sdk/bg;->D:Z

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->J()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/bg;->aE:Z

    return-void
.end method

.method protected b(II)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->an:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->an:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected c(I)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/br;->b(I)V

    return-void
.end method

.method protected c(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/unisound/sdk/o;->c(II)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->an:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unisound/sdk/bg;->an:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method protected cancel()V
    .locals 6

    iget-object v1, p0, Lcom/unisound/sdk/bg;->mLooper:Landroid/os/Looper;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/unisound/sdk/bg;->as:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/bg;->C:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/bg;->D:Z

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/ao;->c(Z)V

    invoke-super {p0}, Lcom/unisound/sdk/o;->cancel()V

    :goto_0
    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->aE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x1

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/ao;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/bg;->e:Lcom/unisound/sdk/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->e:Lcom/unisound/sdk/m;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/m;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    const/16 v2, 0x45d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-interface {v0, v2, v3}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "SpeechunderStanderInterface: cancel called"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method protected convertToArabicNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/unisound/common/i;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected d(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/o;->d(I)V

    iput p1, p0, Lcom/unisound/sdk/bg;->K:I

    return-void
.end method

.method protected d(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/w;->L(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public destoryCompiler()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aJ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ay:Lcom/unisound/sdk/g;

    invoke-virtual {v0}, Lcom/unisound/sdk/g;->b()V

    :cond_0
    return-void
.end method

.method protected e(I)I
    .locals 1

    invoke-super {p0, p1}, Lcom/unisound/sdk/o;->e(I)I

    move-result v0

    return v0
.end method

.method protected f(I)I
    .locals 1

    invoke-super {p0, p1}, Lcom/unisound/sdk/o;->f(I)I

    move-result v0

    return v0
.end method

.method protected getFixEngineVersion()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0}, Lcom/unisound/sdk/o;->getFixEngineVersion()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected getOption(I)Ljava/lang/Object;
    .locals 3

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/unisound/sdk/o;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0}, Lcom/unisound/sdk/br;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0}, Lcom/unisound/sdk/br;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0}, Lcom/unisound/sdk/br;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0}, Lcom/unisound/sdk/br;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->u()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0}, Lcom/unisound/sdk/br;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0}, Lcom/unisound/sdk/ao;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->bj()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0}, Lcom/unisound/sdk/br;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->E()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->w()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->n()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->i()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->j()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->m()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->x()Lcom/unisound/sdk/cl;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_12
    iget-object v0, p0, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/unisound/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_13
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-boolean v0, v0, Lcom/unisound/sdk/w;->aH:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_14
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->I()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_15
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->ax()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_16
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->K()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_17
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aQ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_18
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->ay()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_19
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aA()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1a
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->az()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1b
    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0}, Lcom/unisound/sdk/br;->k()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1c
    invoke-direct {p0}, Lcom/unisound/sdk/bg;->M()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1d
    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->x()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1e
    iget v0, p0, Lcom/unisound/sdk/bg;->ap:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1f
    invoke-direct {p0}, Lcom/unisound/sdk/bg;->N()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_20
    invoke-direct {p0}, Lcom/unisound/sdk/bg;->O()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_21
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bg;->j(Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/unisound/sdk/bg;->P()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_22
    iget-object v0, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v0}, Lcom/unisound/sdk/ab;->g()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_23
    iget-object v0, p0, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    invoke-static {v1}, Lcom/unisound/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/unisound/c/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_24
    invoke-direct {p0}, Lcom/unisound/sdk/bg;->D()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_25
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->bx()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_4
        0x3f0 -> :sswitch_2
        0x3f1 -> :sswitch_7
        0x3f2 -> :sswitch_5
        0x3f3 -> :sswitch_6
        0x3f4 -> :sswitch_9
        0x3f6 -> :sswitch_8
        0x3fc -> :sswitch_c
        0x3fd -> :sswitch_d
        0x3ff -> :sswitch_11
        0x406 -> :sswitch_e
        0x407 -> :sswitch_f
        0x408 -> :sswitch_10
        0x40c -> :sswitch_12
        0x414 -> :sswitch_1
        0x415 -> :sswitch_a
        0x42d -> :sswitch_14
        0x434 -> :sswitch_13
        0x435 -> :sswitch_15
        0x436 -> :sswitch_16
        0x43a -> :sswitch_17
        0x43b -> :sswitch_18
        0x43c -> :sswitch_19
        0x43e -> :sswitch_1a
        0x43f -> :sswitch_1b
        0x440 -> :sswitch_1c
        0x442 -> :sswitch_1d
        0x446 -> :sswitch_1e
        0xc4e -> :sswitch_b
        0x2715 -> :sswitch_22
        0x2716 -> :sswitch_23
        0x271b -> :sswitch_1d
        0x2725 -> :sswitch_24
        0x2732 -> :sswitch_25
        0x27d4 -> :sswitch_20
        0x27d5 -> :sswitch_21
        0x27d7 -> :sswitch_1f
    .end sparse-switch
.end method

.method protected getVersion()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/unisound/sdk/bg;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ""

    :try_start_0
    const-string v2, "version/data"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v0, ""

    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-super {p0}, Lcom/unisound/sdk/o;->getVersion()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bg;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected h()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected i()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected init(Ljava/lang/String;)V
    .locals 7

    const/16 v4, 0x514

    const/4 v2, 0x2

    const/4 v6, -0x1

    const v3, -0x109a1

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->C()V

    :try_start_0
    iget-object v0, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/c/a;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget v0, p0, Lcom/unisound/sdk/bg;->G:I

    if-eq v0, v6, :cond_1

    iget v0, p0, Lcom/unisound/sdk/bg;->G:I

    if-ne v0, v2, :cond_2

    :cond_1
    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    if-eq v0, v2, :cond_6

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->aF:Lcom/unisound/sdk/ad;

    invoke-virtual {v0, v1, v2}, Lcom/unisound/sdk/ao;->a(Landroid/content/Context;Lcom/unisound/sdk/ad;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v0, "appKey"

    iget-object v2, p0, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appSecret"

    iget-object v2, p0, Lcom/unisound/sdk/bg;->y:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_5

    const-string v0, "activate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "deviceSn"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v4}, Lcom/unisound/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_4

    const v0, -0x10d8a

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bg;->q(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    invoke-static {v3}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onError(ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    invoke-static {v3}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onError(ILjava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    invoke-direct {p0, v1}, Lcom/unisound/sdk/bg;->a(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->refreshActivate()V

    :cond_6
    if-nez p1, :cond_7

    const-string p1, ""

    :cond_7
    const-string v0, ""

    if-eq p1, v0, :cond_9

    const-string v0, "activate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0}, Lcom/unisound/sdk/br;->l()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unisound/common/v;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/unisound/sdk/bg;->setOption(ILjava/lang/Object;)V

    goto :goto_3

    :cond_9
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "SpeechUnderStanderInterface : init json is an empty string!"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_a
    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->aq:Z

    if-eqz v0, :cond_b

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ht_outer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->al:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/unisound/sdk/bg;->al:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/unisound/sdk/bp;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->al:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/unisound/sdk/bp;-><init>(Lcom/unisound/sdk/bg;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    new-instance v0, Lcom/unisound/sdk/bp;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->al:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/unisound/sdk/bp;-><init>(Lcom/unisound/sdk/bg;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->an:Landroid/os/Handler;

    :goto_4
    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->z()I

    goto/16 :goto_2

    :cond_b
    new-instance v0, Lcom/unisound/sdk/bp;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/unisound/sdk/bp;-><init>(Lcom/unisound/sdk/bg;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    new-instance v0, Lcom/unisound/sdk/bp;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/unisound/sdk/bp;-><init>(Lcom/unisound/sdk/bg;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->an:Landroid/os/Handler;

    goto :goto_4
.end method

.method public initCompiler()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aJ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ay:Lcom/unisound/sdk/g;

    invoke-virtual {v0}, Lcom/unisound/sdk/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisound/sdk/bo;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/bo;-><init>(Lcom/unisound/sdk/bg;)V

    invoke-virtual {v0}, Lcom/unisound/sdk/bo;->start()V

    :cond_0
    return-void
.end method

.method protected insertVocab(Ljava/util/List;Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->L()I

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0xfa01

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/unisound/sdk/bg;->S()I

    move-result v0

    if-eqz v0, :cond_1

    const v0, -0xfa02

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_3

    :cond_2
    const v0, -0xf61d

    goto :goto_0

    :cond_3
    const-string v0, ""

    if-eq p2, v0, :cond_4

    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-eq v0, v5, :cond_5

    :cond_4
    const v0, -0xf61c

    goto :goto_0

    :cond_5
    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v7

    aget-object v0, v0, v4

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "SpeechUnderstanderInterface :"

    aput-object v3, v1, v7

    const-string v3, "inserVocab --> modelTag = "

    aput-object v3, v1, v4

    aput-object v2, v1, v5

    const/4 v3, 0x3

    const-string v4, ", tagName = "

    aput-object v4, v1, v3

    const/4 v3, 0x4

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const-string v1, "command"

    iget-object v3, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v3, v2}, Lcom/unisound/sdk/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v4, v2}, Lcom/unisound/sdk/ab;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v5, v0, p1}, Lcom/unisound/sdk/ab;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/ab;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/unisound/sdk/bg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    goto :goto_0
.end method

.method protected insertVocab(Ljava/util/Map;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->L()I

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0xfa01

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/unisound/sdk/bg;->S()I

    move-result v0

    if-eqz v0, :cond_1

    const v0, -0xfa02

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    const-string v0, ""

    if-eq p2, v0, :cond_3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v5, v1, v0}, Lcom/unisound/sdk/ab;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string v1, "command"

    iget-object v0, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/ab;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/ab;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/unisound/sdk/bg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v0, "SpeechUnderstanderInterface : insertVocab parmas error!"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected insertVocab_ext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->L()I

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0xfa01

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/unisound/sdk/bg;->S()I

    move-result v0

    if-eqz v0, :cond_1

    const v0, -0xfa02

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/unisound/sdk/bj;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/unisound/sdk/bj;-><init>(Lcom/unisound/sdk/bg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/unisound/sdk/bj;->start()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected insertVocab_ext(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    const-string v0, ""

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v5, v1, v0}, Lcom/unisound/sdk/ab;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "SpeechUnderstanderInterface --> insertVocab_ext2 : vocabContent = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/unisound/sdk/bg;->insertVocab_ext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected j()V
    .locals 3

    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/unisound/c/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/w;->F(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0}, Lcom/unisound/sdk/ao;->c()V

    :cond_0
    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/unisound/sdk/bg;->e(Lcom/unisound/sdk/bg;)V

    :cond_1
    return-void
.end method

.method protected l()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0}, Lcom/unisound/sdk/ao;->d()V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected l(I)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string v0, "SpeechUnderstander -> doUploadUserData handler is null"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/unisound/sdk/bg;->q(I)V

    goto :goto_0
.end method

.method protected loadCompiledJsgf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->L()I

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0xfa01

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/sdk/ab;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected loadGrammar(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->L()I

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0xfa01

    :goto_0
    return v0

    :cond_0
    const-string v0, "command"

    invoke-virtual {p0, p2, v0, p1}, Lcom/unisound/sdk/bg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected m(I)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x35

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected n()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->D:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->C:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/m;->a(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/ao;->c(Z)V

    const-string v0, "SpeechUnderstander fixend&netend doRecordingStart cancel"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method protected o()V
    .locals 0

    return-void
.end method

.method protected p()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public postRecordingStartStatus()V
    .locals 2

    invoke-super {p0}, Lcom/unisound/sdk/o;->postRecordingStartStatus()V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public declared-synchronized refreshActivate()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "USC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "refreshActivate called!"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "USC"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "refreshActivate network not available!"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->ax:Lcom/unisound/sdk/h;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/h;->a(Z)V

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bg;->a(Landroid/content/IntentFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/unisound/sdk/bg;->ax:Lcom/unisound/sdk/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/h;->a(Z)V

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->R()V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    invoke-static {v1}, Lcom/unisound/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/sdk/bg;->l:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/unisound/c/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unisound/sdk/bg;->at:Z

    iget-object v1, p0, Lcom/unisound/sdk/bg;->aK:Lcom/unisound/b/a/a;

    invoke-virtual {v1, v0}, Lcom/unisound/b/a/a;->q(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->aK:Lcom/unisound/b/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unisound/b/a/a;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/unisound/sdk/bg;->aK:Lcom/unisound/b/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unisound/b/a/a;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected release(ILjava/lang/String;)I
    .locals 4

    const/4 v1, 0x0

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/unisound/sdk/bg;->aL:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/unisound/sdk/bg;->aL:Landroid/os/Handler;

    iget-object v3, p0, Lcom/unisound/sdk/bg;->aM:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-direct {p0}, Lcom/unisound/sdk/bg;->R()V

    iget-object v2, p0, Lcom/unisound/sdk/bg;->n:Landroid/os/HandlerThread;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/unisound/sdk/bg;->n:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    :cond_1
    iget-object v2, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v2}, Lcom/unisound/sdk/br;->o()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, v2, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v2}, Lcom/unisound/common/s;->r()I

    :cond_2
    packed-switch p1, :pswitch_data_0

    :cond_3
    :goto_0
    return v0

    :pswitch_0
    iget-boolean v2, p0, Lcom/unisound/sdk/bg;->M:Z

    if-eqz v2, :cond_3

    iput-boolean v1, p0, Lcom/unisound/sdk/bg;->M:Z

    invoke-super {p0}, Lcom/unisound/sdk/o;->q()V

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x579
        :pswitch_0
    .end packed-switch
.end method

.method protected setAudioSource(Lcom/unisound/client/IAudioSource;)I
    .locals 1

    invoke-super {p0, p1}, Lcom/unisound/sdk/o;->setAudioSource(Lcom/unisound/client/IAudioSource;)I

    move-result v0

    return v0
.end method

.method protected setListener(Lcom/unisound/client/SpeechUnderstanderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    return-void
.end method

.method protected setOnlineWakeupWord(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcom/unisound/sdk/bq;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/bq;-><init>(Lcom/unisound/sdk/bg;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/bq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v0, ""

    return-object v0
.end method

.method protected setOption(ILjava/lang/Object;)V
    .locals 5

    const/4 v1, -0x1

    const/4 v4, 0x2

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/unisound/sdk/o;->setOption(ILjava/lang/Object;)V

    :cond_0
    :goto_1
    :sswitch_0
    return-void

    :sswitch_1
    :try_start_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USCMixRecognizer.setOption unkown value "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v1, "set asr_service_mode Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    :try_start_1
    iget v3, p0, Lcom/unisound/sdk/bg;->F:I

    if-eq v3, v2, :cond_2

    iget v3, p0, Lcom/unisound/sdk/bg;->G:I

    if-ne v3, v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unisound/sdk/bg;->L:Z

    :cond_1
    iput v2, p0, Lcom/unisound/sdk/bg;->F:I

    :cond_2
    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/br;->c(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :sswitch_2
    :try_start_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bg;->o(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v1, "set asr_sampling_rate Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    :try_start_3
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bg;->l(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/br;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v1, "set asr_domain Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_4
    :try_start_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/unisound/sdk/bg;->d(Z)Z

    iget-object v2, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v2, v1}, Lcom/unisound/sdk/br;->a(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    const-string v1, "set asr_voice_field Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_5
    :try_start_5
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bg;->n(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/br;->b(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    :catch_4
    move-exception v1

    const-string v1, "set asr_language Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_6
    :try_start_6
    check-cast p2, Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/br;->a(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v1

    const-string v1, "set asr_server_address Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const v1, -0xf836

    :try_start_7
    invoke-direct {p0, v1}, Lcom/unisound/sdk/bg;->q(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_1

    :sswitch_7
    :try_start_8
    check-cast p2, Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->u(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/br;->f(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v1

    const-string v1, "set asr_online_oneshot_server_address Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_8
    :try_start_9
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bg;->p(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_1

    :catch_7
    move-exception v1

    const-string v1, "set asr_net_timeOut Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_9
    :try_start_a
    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/unisound/sdk/w;->f(I)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/br;->a(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_1

    :catch_8
    move-exception v1

    const-string v1, "set asr_front_cache_time Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_a
    :try_start_b
    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/br;->c(Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    goto/16 :goto_1

    :catch_9
    move-exception v1

    const-string v1, "set wakeup_vad_enable Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_b
    :try_start_c
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->a(F)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    goto/16 :goto_1

    :catch_a
    move-exception v1

    const-string v1, "set wakeup_threshold_value Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_c
    :try_start_d
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bg;->e(Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    goto/16 :goto_1

    :catch_b
    move-exception v1

    const-string v1, "set nlu_enable Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_d
    :try_start_e
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bg;->e(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    goto/16 :goto_1

    :catch_c
    move-exception v1

    const-string v1, "set nlu_scenario Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_e
    :try_start_f
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bg;->i(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    goto/16 :goto_1

    :catch_d
    move-exception v1

    const-string v1, "set gps Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_f
    :try_start_10
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bg;->f(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    goto/16 :goto_1

    :catch_e
    move-exception v1

    const-string v1, "set history Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_10
    :try_start_11
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bg;->g(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f

    goto/16 :goto_1

    :catch_f
    move-exception v1

    const-string v1, "set city Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_11
    :try_start_12
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bg;->h(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10

    goto/16 :goto_1

    :catch_10
    move-exception v1

    const-string v1, "set voiceID Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_12
    :try_start_13
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bg;->j(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_11

    goto/16 :goto_1

    :catch_11
    move-exception v1

    const-string v1, "set nlu_ver Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_13
    :try_start_14
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bg;->k(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_12

    goto/16 :goto_1

    :catch_12
    move-exception v1

    const-string v1, "set nlu_appver Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_14
    :try_start_15
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->g(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_13

    goto/16 :goto_1

    :catch_13
    move-exception v1

    const-string v1, "set Front_reset_cache_byte_time Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_15
    :try_start_16
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/unisound/common/y;->t:Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_14

    goto/16 :goto_1

    :catch_14
    move-exception v1

    const-string v1, "set DEBUG_SAVELOG Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_16
    :try_start_17
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/unisound/common/y;->u:Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_16

    :goto_2
    :sswitch_17
    :try_start_18
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/unisound/sdk/bg;->aq:Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_15

    goto/16 :goto_1

    :catch_15
    move-exception v1

    const-string v1, "set USE_HANDLERTHREAD Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_16
    move-exception v1

    const-string v1, "set DEBUG_POSTLOG Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_18
    :try_start_19
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->b(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_17

    goto/16 :goto_1

    :catch_17
    move-exception v1

    const-string v1, "set SAVE_AFTERVAD_RECORDING_DATA Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_19
    :try_start_1a
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->i(Z)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_18

    goto/16 :goto_1

    :catch_18
    move-exception v1

    const-string v1, "set MARK_VAD Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_1a
    :try_start_1b
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->N(Z)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_19

    goto/16 :goto_1

    :catch_19
    move-exception v1

    const-string v1, "set TEMP_RESULT Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_1b
    :try_start_1c
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->h(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1a

    goto/16 :goto_1

    :catch_1a
    move-exception v1

    const-string v1, "set OneShot VAD back sil time Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_1c
    :try_start_1d
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->O(I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1b

    goto/16 :goto_1

    :catch_1b
    move-exception v1

    const-string v1, "set RECOGNIZE_SCENE Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_1d
    :try_start_1e
    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/unisound/sdk/w;->D(I)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "SpeechUnderstanderInterface"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "set recognize modelId "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1c

    goto/16 :goto_1

    :catch_1c
    move-exception v1

    const-string v1, "set RECOGNIZE_MODEL_ID Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_1e
    :try_start_1f
    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/unisound/sdk/w;->E(I)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "SpeechUnderstanderInterface"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "set wakeup modelId "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1d

    goto/16 :goto_1

    :catch_1d
    move-exception v1

    const-string v1, "set WAKEUP_MODEL_ID Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_1f
    :try_start_20
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->P(Z)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1e

    goto/16 :goto_1

    :catch_1e
    move-exception v1

    const-string v1, "set ALREAD_AWPE Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_20
    :try_start_21
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bg;->m(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/br;->g(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1f

    goto/16 :goto_1

    :catch_1f
    move-exception v1

    const-string v1, "set asr_subdomain Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_21
    :try_start_22
    check-cast p2, Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->m(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_20

    goto/16 :goto_1

    :catch_20
    move-exception v1

    const-string v1, "set ASR_OPT_ACTIVATE_MEMO Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_22
    :try_start_23
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->I(Z)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_21

    goto/16 :goto_1

    :catch_21
    move-exception v1

    const-string v1, "set setWxServiceEnabled Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_23
    :try_start_24
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->B(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_22

    goto/16 :goto_1

    :catch_22
    move-exception v1

    const-string v1, "set UploadUserDataServer Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_24
    :try_start_25
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->C(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_23

    goto/16 :goto_1

    :catch_23
    move-exception v1

    const-string v1, "set setUploadUserDataServerUrl Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_25
    :try_start_26
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v2, v1}, Lcom/unisound/sdk/w;->n(I)V

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v2, v1}, Lcom/unisound/sdk/w;->o(I)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_24

    goto/16 :goto_1

    :catch_24
    move-exception v1

    const-string v1, "set WAKEUP_WORK_ENGINE Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_26
    :try_start_27
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->n(Z)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_25

    goto/16 :goto_1

    :catch_25
    move-exception v1

    const-string v1, "set ContinueReadData Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_27
    :try_start_28
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->l(I)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_26

    goto/16 :goto_1

    :catch_26
    move-exception v1

    const-string v1, "set OneshotRecognitionBacksil Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_28
    :try_start_29
    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/br;->e(Z)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_27

    goto/16 :goto_1

    :catch_27
    move-exception v1

    const-string v1, "set ASR_FOURMIC Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_29
    :try_start_2a
    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/br;->f(Z)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_28

    goto/16 :goto_1

    :catch_28
    move-exception v1

    const-string v1, "set ASR_FOURMIC_ISDEBUG Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_2a
    :try_start_2b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bg;->s(I)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_29

    goto/16 :goto_1

    :catch_29
    move-exception v1

    const-string v1, "set ASR_FOURMIC_CHANGE_CHANNAL Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_2b
    :try_start_2c
    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/br;->g(Z)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_2a

    goto/16 :goto_1

    :catch_2a
    move-exception v1

    const-string v1, "set ASR_FORMIC_CLOSE_4MICALGORITHM Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_2c
    :try_start_2d
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->e(Z)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_2b

    goto/16 :goto_1

    :catch_2b
    move-exception v1

    const-string v1, "set setRecognizeFrontVADEnable Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_2d
    :try_start_2e
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->y(I)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_2c

    goto/16 :goto_1

    :catch_2c
    move-exception v1

    const-string v1, "set wakeup buffer length error!"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_2e
    :try_start_2f
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->G(I)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_2d

    goto/16 :goto_1

    :catch_2d
    move-exception v1

    const-string v1, "set WUW_WAKEUP_THRESHOLD Error"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_2f
    :try_start_30
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->z(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_2e

    goto/16 :goto_1

    :catch_2e
    move-exception v1

    const-string v1, "set ASR_OPT_SGN_SETTING Error"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_30
    :try_start_31
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->A(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_2f

    goto/16 :goto_1

    :catch_2f
    move-exception v1

    const-string v1, "set ASR_OPT_SERVICE_PARAMETER Error"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_31
    :try_start_32
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->x(I)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_30

    goto/16 :goto_1

    :catch_30
    move-exception v1

    const-string v1, "set ASR_OPT_RECORDING_PAC_SIZE Error"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_32
    :try_start_33
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->D(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_31

    goto/16 :goto_1

    :catch_31
    move-exception v1

    const-string v1, "set ASR_OPT_FILTERURL Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_33
    :try_start_34
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->E(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_32

    goto/16 :goto_1

    :catch_32
    move-exception v1

    const-string v1, "set ASR_OPT_SUB_SERVICE_PARAM Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_34
    :try_start_35
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->i(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_33

    goto/16 :goto_1

    :catch_33
    move-exception v1

    const-string v1, "set ASR_OPT_IGNORE_RESULT_TAG Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_35
    :try_start_36
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->k(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_34

    goto/16 :goto_1

    :catch_34
    move-exception v1

    const-string v1, "set ASR_OPT_ADDITIONAL_SERVICE Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_36
    :try_start_37
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/util/List;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->b(Ljava/util/List;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_35

    goto/16 :goto_1

    :catch_35
    move-exception v1

    const-string v1, "set ASR_OPT_SET_ONESHOT_WAKEUPWORD Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_37
    :try_start_38
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->x(Z)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_36

    goto/16 :goto_1

    :catch_36
    move-exception v1

    const-string v1, "set ASR_OPT_CONTINUE_RECOGNIZE Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_38
    :try_start_39
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->l(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_37

    goto/16 :goto_1

    :catch_37
    move-exception v1

    const-string v1, "set ASR_OPT_SET_POST_PROCESS_PARAMS Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_39
    :try_start_3a
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/unisound/sdk/bg;->ap:I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_38

    goto/16 :goto_1

    :catch_38
    move-exception v1

    const-string v1, "set ASR_OPT_MAX_ONLINE_WAKEUPWORDS_NUM Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_3a
    :try_start_3b
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->q(I)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_39

    goto/16 :goto_1

    :catch_39
    move-exception v1

    const-string v1, "set ASR_FOURMIC_OUT_SET_4MICWAKEUPFLAG Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_3b
    :try_start_3c
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->s(I)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_3a

    goto/16 :goto_1

    :catch_3a
    move-exception v1

    const-string v1, "set ASR_FOURMIC_OUT_SET_4MICUTTERANCETIME Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_3c
    :try_start_3d
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->u(I)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_3b

    goto/16 :goto_1

    :catch_3b
    move-exception v1

    const-string v1, "set ASR_FOURMIC_OUT_SET_4MICDELAYTIME Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_3d
    :try_start_3e
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->q(Z)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_3c

    goto/16 :goto_1

    :catch_3c
    move-exception v1

    const-string v1, "set ASR_FOURMIC_OUT_SET_4MICWAKEUPSTATUS Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_3e
    :try_start_3f
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->r(Z)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_3d

    goto/16 :goto_1

    :catch_3d
    move-exception v1

    const-string v1, "set ASR_FOURMIC_OUT_SET_4MICUTTERANCETIMESTATUS Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_3f
    :try_start_40
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->s(Z)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_3e

    goto/16 :goto_1

    :catch_3e
    move-exception v1

    const-string v1, "set ASR_FOURMIC_OUT_SET_4MICDELAYTIMESTATUS Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_40
    :try_start_41
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_4

    :goto_3
    iput v1, p0, Lcom/unisound/sdk/bg;->G:I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_3f

    goto/16 :goto_1

    :catch_3f
    move-exception v1

    const-string v1, "set ASR_OPT_INIT_MODE Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    if-le v3, v4, :cond_6

    move v1, v2

    goto :goto_3

    :sswitch_41
    :try_start_42
    iget-object v1, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/ab;->a(I)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_40

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :catch_40
    move-exception v1

    const-string v1, "set ASR_OPT_SET_COMPILE_MAX_PRONUNCIATION Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_42
    :try_start_43
    iget-object v1, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/ab;->a(Z)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "set ASR_OPT_SET_OVER_MAX_PRONUNCIATION_INSERT Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_41

    goto/16 :goto_1

    :catch_41
    move-exception v1

    const-string v1, "set ASR_OPT_SET_OVER_MAX_PRONUNCIATION_INSERT Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_43
    :try_start_44
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bg;->l(Z)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "set ASR_FOURMIC_USE_ASR_AS_VAD Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_43

    :cond_5
    :goto_4
    :sswitch_44
    :try_start_45
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->H(I)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_42

    goto/16 :goto_1

    :catch_42
    move-exception v1

    const-string v1, "set ASR_OPT_WUW_NET0_THRESHOLD Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_43
    move-exception v1

    const-string v1, "set ASR_FOURMIC_USE_ASR_AS_VAD Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_4

    :sswitch_45
    :try_start_46
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->I(I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_44

    goto/16 :goto_1

    :catch_44
    move-exception v1

    const-string v1, "set ASR_OPT_WUW_NET1_THRESHOLD Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_46
    :try_start_47
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->J(I)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_45

    goto/16 :goto_1

    :catch_45
    move-exception v1

    const-string v1, "set ASR_OPT_WUW_NET2_THRESHOLD Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_47
    :try_start_48
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->K(I)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_46

    goto/16 :goto_1

    :catch_46
    move-exception v1

    const-string v1, "set ASR_OPT_WUW_ACTIVE_NET Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_48
    :try_start_49
    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/br;->d(Z)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_47

    goto/16 :goto_1

    :catch_47
    move-exception v1

    const-string v1, "set ASR_OPT_RECOGNIZE_VAD_ENABLE Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_49
    :try_start_4a
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->H(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_48

    goto/16 :goto_1

    :catch_48
    move-exception v1

    const-string v1, "set ASR_OPT_USER_ID Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_4a
    :try_start_4b
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/unisound/common/y;->r:Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_49

    goto/16 :goto_1

    :catch_49
    move-exception v1

    const-string v1, "set DEBUG_SAVE_OFFLINEASR_SESSION_PCM Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_4b
    :try_start_4c
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->S(Z)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_4a

    goto/16 :goto_1

    :catch_4a
    move-exception v1

    const-string v1, "set ASR_OPT_MAXWELL_ENABLE Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_4c
    :try_start_4d
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->I(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_4b

    goto/16 :goto_1

    :catch_4b
    move-exception v1

    const-string v1, "set ASR_OPT_RET_TYPE Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_4d
    :try_start_4e
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->z(Z)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_4c

    goto/16 :goto_1

    :catch_4c
    move-exception v1

    const-string v1, "set ASR_OPT_PRINT_NET_ENGINE_LOG Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_4e
    :try_start_4f
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bg;->f(Z)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_4d

    goto/16 :goto_1

    :catch_4d
    move-exception v1

    const-string v1, "set ASR_OPT_USE_PATIAL_NLU Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_4f
    :try_start_50
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->y(Z)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_4e

    goto/16 :goto_1

    :catch_4e
    move-exception v1

    const-string v1, "set ASR_OPT_RETURN_ORIGIN_FORMAT Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_50
    :try_start_51
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bg;->n(I)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_4f

    goto/16 :goto_1

    :catch_4f
    move-exception v1

    const-string v1, "set ASR_OPT_APPEND_LENGTH Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_51
    :try_start_52
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->E(Z)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_50

    goto/16 :goto_1

    :catch_50
    move-exception v1

    const-string v1, "set ASR_OPT_ADVANCE_INIT_COMPILER Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_52
    :try_start_53
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->g(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_51

    goto/16 :goto_1

    :catch_51
    move-exception v1

    const-string v1, "set ASR_OPT_AUDIO_FORMAT Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_53
    :try_start_54
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->A(Z)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_52

    goto/16 :goto_1

    :catch_52
    move-exception v1

    const-string v1, "set ASR_OPT_SAVE_SESSION_PCM_ENABLE Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_54
    :try_start_55
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->h(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_53

    goto/16 :goto_1

    :catch_53
    move-exception v1

    const-string v1, "set ASR_OPT_SAVE_SESSION_PCM_DIR Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_55
    :try_start_56
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->a(Z)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_54

    goto/16 :goto_1

    :catch_54
    move-exception v1

    const-string v1, "set ASR_OPT_RECORDING_WAV Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_56
    :try_start_57
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->T(Z)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_55

    goto/16 :goto_1

    :catch_55
    move-exception v1

    const-string v1, "set ASR_OPT_PUNCTUATED Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_57
    :try_start_58
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->V(Z)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_56

    goto/16 :goto_1

    :catch_56
    move-exception v1

    const-string v1, "set ASR_OPT_OPEN_FULL_DUPLEX Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_58
    :try_start_59
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->U(Z)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_57

    goto/16 :goto_1

    :catch_57
    move-exception v1

    const-string v1, "set ASR_OPT_OPEN_FULL_DUPLEX Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_59
    :try_start_5a
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->L(I)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_58

    goto/16 :goto_1

    :catch_58
    move-exception v1

    const-string v1, "set ASR_OPT_MAX_WAKEUP_END Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_5a
    :try_start_5b
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->F(Z)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_59

    goto/16 :goto_1

    :catch_59
    move-exception v1

    const-string v1, "set ASR_OPT_INHIBIT_FRONT_WAKEUP Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_5b
    :try_start_5c
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->G(Z)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_5a

    goto/16 :goto_1

    :catch_5a
    move-exception v1

    const-string v1, "set ASR_OPT_INHIBIT_BACK_WAKEUP Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_5c
    :try_start_5d
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->M(I)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_5b

    goto/16 :goto_1

    :catch_5b
    move-exception v1

    const-string v1, "set ASR_OPT_RK_THREAD_NUM Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_5d
    :try_start_5e
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->H(Z)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5e} :catch_5c

    goto/16 :goto_1

    :catch_5c
    move-exception v1

    const-string v1, "set ASR_OPT_LOCAL_RESULT_CONTAINS_UTTERANCETIME Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_5e
    :try_start_5f
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->B(Z)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_5f} :catch_5d

    goto/16 :goto_1

    :catch_5d
    move-exception v1

    const-string v1, "set ASR_OPT_VAD_AFFECT_ASR Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_5f
    :try_start_60
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->N(I)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_5e

    goto/16 :goto_1

    :catch_5e
    move-exception v1

    const-string v1, "set ASR_OPT_INPUT_SAMPLE_RATE Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_60
    :try_start_61
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->C(Z)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_61} :catch_5f

    goto/16 :goto_1

    :catch_5f
    move-exception v1

    const-string v1, "set ASR_OPT_FOURMIC_PCM_TEST Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_61
    :try_start_62
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/common/s;->i(Z)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_62} :catch_60

    goto/16 :goto_1

    :catch_60
    move-exception v1

    const-string v1, "set ASR_FOURMIC_IS_RK_PLATFORM Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_62
    :try_start_63
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/common/s;->j(Z)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_63} :catch_61

    goto/16 :goto_1

    :catch_61
    move-exception v1

    const-string v1, "set ASR_FOURMIC_IS_RK_SINGALCHANEL Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_63
    :try_start_64
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->R(I)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_64} :catch_62

    goto/16 :goto_1

    :catch_62
    move-exception v1

    const-string v1, "set ASR_OPT_REQ_NLU_LENGTH Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_64
    :try_start_65
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->R(Z)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_65} :catch_63

    goto/16 :goto_1

    :catch_63
    move-exception v1

    const-string v1, "set ASR_BEST_RESULT_RETURN Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_65
    :try_start_66
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->S(I)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_66} :catch_64

    goto/16 :goto_1

    :catch_64
    move-exception v1

    const-string v1, "set ASR_FALSE_ALARM Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_66
    :try_start_67
    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/unisound/sdk/w;->T(I)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_67} :catch_65

    goto/16 :goto_0

    :catch_65
    move-exception v1

    const-string v1, "set ASR_DOMAINS_PENALTY Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v1, v3

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_1
        0x3eb -> :sswitch_4
        0x3ec -> :sswitch_5
        0x3ef -> :sswitch_7
        0x3f0 -> :sswitch_3
        0x3f1 -> :sswitch_6
        0x3f6 -> :sswitch_8
        0x3f9 -> :sswitch_38
        0x3fa -> :sswitch_36
        0x3fb -> :sswitch_35
        0x3fc -> :sswitch_c
        0x3fd -> :sswitch_d
        0x400 -> :sswitch_12
        0x401 -> :sswitch_13
        0x406 -> :sswitch_f
        0x407 -> :sswitch_10
        0x408 -> :sswitch_11
        0x409 -> :sswitch_e
        0x414 -> :sswitch_2
        0x424 -> :sswitch_9
        0x425 -> :sswitch_a
        0x42d -> :sswitch_0
        0x42e -> :sswitch_14
        0x42f -> :sswitch_15
        0x430 -> :sswitch_16
        0x431 -> :sswitch_17
        0x432 -> :sswitch_18
        0x433 -> :sswitch_19
        0x434 -> :sswitch_1a
        0x437 -> :sswitch_2c
        0x438 -> :sswitch_31
        0x439 -> :sswitch_1b
        0x43a -> :sswitch_1c
        0x43b -> :sswitch_1d
        0x43c -> :sswitch_1e
        0x43d -> :sswitch_1f
        0x43f -> :sswitch_20
        0x441 -> :sswitch_21
        0x442 -> :sswitch_25
        0x443 -> :sswitch_2e
        0x444 -> :sswitch_34
        0x445 -> :sswitch_37
        0x446 -> :sswitch_39
        0x447 -> :sswitch_22
        0x448 -> :sswitch_32
        0x449 -> :sswitch_33
        0x44a -> :sswitch_30
        0x44b -> :sswitch_2d
        0x44c -> :sswitch_63
        0x4b0 -> :sswitch_64
        0x4b3 -> :sswitch_65
        0x4b4 -> :sswitch_66
        0xc4e -> :sswitch_b
        0x1770 -> :sswitch_23
        0x1771 -> :sswitch_24
        0x2328 -> :sswitch_26
        0x2329 -> :sswitch_27
        0x2711 -> :sswitch_2f
        0x2712 -> :sswitch_40
        0x2713 -> :sswitch_41
        0x2714 -> :sswitch_42
        0x2717 -> :sswitch_44
        0x2718 -> :sswitch_45
        0x2719 -> :sswitch_46
        0x271a -> :sswitch_47
        0x271b -> :sswitch_25
        0x271c -> :sswitch_0
        0x271d -> :sswitch_48
        0x271e -> :sswitch_49
        0x2723 -> :sswitch_4f
        0x2725 -> :sswitch_4e
        0x2726 -> :sswitch_50
        0x2727 -> :sswitch_51
        0x272e -> :sswitch_52
        0x272f -> :sswitch_53
        0x2730 -> :sswitch_54
        0x2731 -> :sswitch_55
        0x2732 -> :sswitch_56
        0x2733 -> :sswitch_58
        0x2734 -> :sswitch_57
        0x2735 -> :sswitch_59
        0x2736 -> :sswitch_5a
        0x2737 -> :sswitch_5b
        0x2738 -> :sswitch_5d
        0x2739 -> :sswitch_5e
        0x273a -> :sswitch_5f
        0x273b -> :sswitch_5c
        0x274c -> :sswitch_4b
        0x274d -> :sswitch_4c
        0x274e -> :sswitch_4d
        0x2774 -> :sswitch_2b
        0x2775 -> :sswitch_3a
        0x2776 -> :sswitch_3b
        0x2777 -> :sswitch_3c
        0x2778 -> :sswitch_3d
        0x2779 -> :sswitch_3e
        0x277a -> :sswitch_3f
        0x277b -> :sswitch_61
        0x277c -> :sswitch_62
        0x27d0 -> :sswitch_60
        0x27d1 -> :sswitch_43
        0x27d2 -> :sswitch_2a
        0x27d6 -> :sswitch_29
        0x27d7 -> :sswitch_28
        0x133c707 -> :sswitch_4a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected setWakeupWord(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->L()I

    move-result v1

    if-eqz v1, :cond_1

    const v0, -0xfa01

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/unisound/sdk/bg;->S()I

    move-result v1

    if-eqz v1, :cond_2

    const v0, -0xfa02

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/unisound/sdk/bg;->p:Lcom/unisound/sdk/cw;

    invoke-virtual {v1, p1}, Lcom/unisound/sdk/cw;->b(Ljava/util/List;)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->p:Lcom/unisound/sdk/cw;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/cw;->a(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->p:Lcom/unisound/sdk/cw;

    invoke-virtual {v1}, Lcom/unisound/sdk/cw;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->p:Lcom/unisound/sdk/cw;

    invoke-virtual {v0}, Lcom/unisound/sdk/cw;->a()Ljava/lang/String;

    move-result-object v6

    const-string v1, "wakeup"

    const-string v2, "wakeup"

    iget-object v0, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    const-string v3, "wakeup"

    invoke-virtual {v0, v3}, Lcom/unisound/sdk/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->p:Lcom/unisound/sdk/cw;

    invoke-virtual {v0}, Lcom/unisound/sdk/cw;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/unisound/sdk/bg;->p:Lcom/unisound/sdk/cw;

    invoke-virtual {v0}, Lcom/unisound/sdk/cw;->d()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/unisound/sdk/bg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->p:Lcom/unisound/sdk/cw;

    invoke-virtual {v0, v7}, Lcom/unisound/sdk/cw;->a(Z)V

    move v0, v7

    goto :goto_0
.end method

.method protected setWakeupWord(Ljava/util/Map;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/w;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "SpeechUnderstanderInterface: setWakeupWord"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/bg;->setWakeupWord(Ljava/util/List;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "SpeechUnderstanderInterface: setWakeupWord error"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected start()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    iget-object v0, v0, Lcom/unisound/sdk/ab;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/bg;->start(Ljava/lang/String;)V

    return-void
.end method

.method protected start(Ljava/lang/String;)V
    .locals 8

    const v7, -0xfa01

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "USC"

    aput-object v1, v0, v4

    const-string v1, "start recognition tag is "

    aput-object v1, v0, v5

    aput-object p1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->C()V

    if-nez p1, :cond_0

    const v0, -0xf82c

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bg;->q(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    if-eq v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->N:Z

    if-nez v0, :cond_1

    const v0, -0xf82d

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bg;->q(I)V

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/unisound/sdk/bg;->as:Z

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, v4}, Lcom/unisound/sdk/w;->O(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/unisound/c/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/w;->F(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0}, Lcom/unisound/sdk/br;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->q()I

    :cond_2
    invoke-direct {p0, v5}, Lcom/unisound/sdk/bg;->h(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0}, Lcom/unisound/sdk/br;->p()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bg;->i(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0}, Lcom/unisound/sdk/br;->q()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bg;->k(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->y()I

    move-result v0

    if-le v0, v5, :cond_4

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->Y()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/bg;->e(I)I

    :cond_4
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->Y()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->getFixEngineVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V3."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aC()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/bg;->g(I)I

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aL()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/bg;->b(Z)I

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aM()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/bg;->c(Z)I

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0, v6}, Lcom/unisound/sdk/ao;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/unisound/sdk/bg;->e:Lcom/unisound/sdk/m;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/unisound/sdk/bg;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, v6}, Lcom/unisound/sdk/m;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_8
    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->L:Z

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    const/16 v1, 0x514

    invoke-static {v7}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aD()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/bg;->h(I)I

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aE()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/bg;->i(I)I

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aF()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/bg;->j(I)I

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aG()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/bg;->k(I)I

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/unisound/sdk/bg;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/unisound/common/v;->a()V

    iput-boolean v4, p0, Lcom/unisound/sdk/bg;->au:Z

    iput-boolean v4, p0, Lcom/unisound/sdk/bg;->av:Z

    invoke-static {}, Lcom/unisound/common/y;->a()V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->X()I

    move-result v0

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->v()I

    move-result v1

    if-eq v0, v1, :cond_b

    const/16 v0, 0x3f3

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->X()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/unisound/sdk/bg;->setOption(ILjava/lang/Object;)V

    :cond_b
    const-string v0, "oneshot:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, v5}, Lcom/unisound/sdk/w;->j(Z)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, v5

    :goto_2
    const-string v0, "wakeup:netasr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0, v5}, Lcom/unisound/sdk/br;->h(Z)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, v4

    :cond_c
    iput-object p1, p0, Lcom/unisound/sdk/bg;->I:Ljava/lang/String;

    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->A()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1, v5}, Lcom/unisound/sdk/w;->O(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v1}, Lcom/unisound/sdk/br;->i()I

    move-result v1

    if-eq v1, v3, :cond_d

    iput v4, p0, Lcom/unisound/sdk/bg;->F:I

    :cond_d
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v2}, Lcom/unisound/sdk/br;->m()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->M(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->Y()I

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->aA()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->F(I)V

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/unisound/sdk/bg;->f(I)I

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1, v5}, Lcom/unisound/sdk/w;->h(Z)V

    :goto_3
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v2}, Lcom/unisound/sdk/br;->n()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->w(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->H:Lcom/unisound/sdk/aw;

    invoke-virtual {v1}, Lcom/unisound/sdk/aw;->a()V

    const-string v1, ""

    iput-object v1, p0, Lcom/unisound/sdk/bg;->E:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/unisound/sdk/bg;->C:Z

    iput-boolean v4, p0, Lcom/unisound/sdk/bg;->D:Z

    iput-object v6, p0, Lcom/unisound/sdk/bg;->B:Lcom/unisound/sdk/y;

    iget v1, p0, Lcom/unisound/sdk/bg;->F:I

    packed-switch v1, :pswitch_data_0

    iput-boolean v5, p0, Lcom/unisound/sdk/bg;->C:Z

    iget-object v1, p0, Lcom/unisound/sdk/bg;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v1, v5}, Lcom/unisound/sdk/m;->c(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->e:Lcom/unisound/sdk/m;

    iget-boolean v2, p0, Lcom/unisound/sdk/bg;->M:Z

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/m;->d(Z)V

    :goto_4
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->A()Z

    move-result v1

    if-eqz v1, :cond_e

    iput v0, p0, Lcom/unisound/sdk/bg;->F:I

    :cond_e
    invoke-super {p0, p1}, Lcom/unisound/sdk/o;->start(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, v4}, Lcom/unisound/sdk/w;->j(Z)V

    goto/16 :goto_2

    :cond_10
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1, v5}, Lcom/unisound/sdk/w;->h(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->aA()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->F(I)V

    goto :goto_3

    :cond_11
    iget-object v1, p0, Lcom/unisound/sdk/bg;->J:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v1}, Lcom/unisound/sdk/br;->r()Z

    move-result v1

    if-nez v1, :cond_12

    iput v3, p0, Lcom/unisound/sdk/bg;->F:I

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v2}, Lcom/unisound/sdk/br;->m()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->M(Z)V

    :goto_5
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->Y()I

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->aA()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->F(I)V

    const/16 v1, 0x12c

    invoke-virtual {p0, v1}, Lcom/unisound/sdk/bg;->f(I)I

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1, v5}, Lcom/unisound/sdk/w;->h(Z)V

    goto/16 :goto_3

    :cond_12
    iput v4, p0, Lcom/unisound/sdk/bg;->F:I

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v2}, Lcom/unisound/sdk/br;->n()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->M(Z)V

    goto :goto_5

    :cond_13
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1, v5}, Lcom/unisound/sdk/w;->h(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->aA()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->F(I)V

    goto/16 :goto_3

    :cond_14
    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v1}, Lcom/unisound/sdk/br;->i()I

    move-result v1

    iput v1, p0, Lcom/unisound/sdk/bg;->F:I

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->k()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->d(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v2}, Lcom/unisound/sdk/br;->n()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->M(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1, v4}, Lcom/unisound/sdk/w;->h(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->ay()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->F(I)V

    goto/16 :goto_3

    :pswitch_0
    iput-boolean v5, p0, Lcom/unisound/sdk/bg;->D:Z

    iget-object v1, p0, Lcom/unisound/sdk/bg;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v1, v4}, Lcom/unisound/sdk/m;->c(Z)V

    new-instance v1, Lcom/unisound/sdk/y;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v3, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-direct {v1, v2, v3}, Lcom/unisound/sdk/y;-><init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/au;)V

    iput-object v1, p0, Lcom/unisound/sdk/bg;->B:Lcom/unisound/sdk/y;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->B:Lcom/unisound/sdk/y;

    iget-object v3, p0, Lcom/unisound/sdk/bg;->ar:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v3, v6}, Lcom/unisound/sdk/ao;->a(Lcom/unisound/sdk/z;ZLjava/lang/String;Lcom/unisound/sdk/aa;)V

    goto/16 :goto_4

    :pswitch_1
    new-instance v1, Lcom/unisound/sdk/y;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v3, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-direct {v1, v2, v3}, Lcom/unisound/sdk/y;-><init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/au;)V

    iput-object v1, p0, Lcom/unisound/sdk/bg;->B:Lcom/unisound/sdk/y;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v1, v5}, Lcom/unisound/sdk/m;->c(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->e:Lcom/unisound/sdk/m;

    iget-boolean v2, p0, Lcom/unisound/sdk/bg;->M:Z

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/m;->d(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->B:Lcom/unisound/sdk/y;

    iget-object v3, p0, Lcom/unisound/sdk/bg;->ar:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v3, v6}, Lcom/unisound/sdk/ao;->a(Lcom/unisound/sdk/z;ZLjava/lang/String;Lcom/unisound/sdk/aa;)V

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected stop()V
    .locals 1

    invoke-super {p0}, Lcom/unisound/sdk/o;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bg;->B:Lcom/unisound/sdk/y;

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0}, Lcom/unisound/sdk/ao;->d()V

    return-void
.end method

.method protected u()I
    .locals 1

    invoke-super {p0}, Lcom/unisound/sdk/o;->u()I

    move-result v0

    return v0
.end method

.method protected unloadGrammar(Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->L()I

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0xfa01

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/ab;->h(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected uploadUserData(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/ao;->a(Ljava/util/Map;)V

    return-void
.end method

.method protected v()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/unisound/sdk/o;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected w()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/unisound/sdk/o;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected x()I
    .locals 1

    invoke-super {p0}, Lcom/unisound/sdk/o;->x()I

    move-result v0

    return v0
.end method

.method protected y()I
    .locals 1

    invoke-super {p0}, Lcom/unisound/sdk/o;->y()I

    move-result v0

    return v0
.end method

.method protected z()I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget v2, p0, Lcom/unisound/sdk/bg;->G:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/unisound/sdk/bg;->G:I

    if-ne v2, v5, :cond_1

    :cond_0
    iget v2, p0, Lcom/unisound/sdk/bg;->F:I

    if-eq v2, v5, :cond_3

    :cond_1
    iget v2, p0, Lcom/unisound/sdk/bg;->F:I

    if-eq v2, v5, :cond_2

    iget-object v2, p0, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/unisound/sdk/bg;->p(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iput-boolean v4, p0, Lcom/unisound/sdk/bg;->N:Z

    :cond_2
    :goto_0
    const-string v2, "normal"

    iget-object v3, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v3, v2}, Lcom/unisound/sdk/w;->G(Ljava/lang/String;)V

    :cond_3
    iget-boolean v2, p0, Lcom/unisound/sdk/bg;->L:Z

    if-nez v2, :cond_9

    iget v2, p0, Lcom/unisound/sdk/bg;->G:I

    if-eq v2, v1, :cond_4

    iget v1, p0, Lcom/unisound/sdk/bg;->G:I

    if-ne v1, v4, :cond_5

    :cond_4
    iget v1, p0, Lcom/unisound/sdk/bg;->F:I

    if-eq v1, v4, :cond_8

    :cond_5
    iput-boolean v4, p0, Lcom/unisound/sdk/bg;->L:Z

    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->r()V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->aJ()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bg;->g(Z)I

    move-result v1

    iput-boolean v4, p0, Lcom/unisound/sdk/bg;->M:Z

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "SpeechUnderstanderInterface : loadResult = "

    aput-object v3, v2, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v2}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    move v0, v1

    :cond_6
    :goto_1
    return v0

    :cond_7
    const v2, -0xf82d

    invoke-direct {p0, v2}, Lcom/unisound/sdk/bg;->q(I)V

    goto :goto_0

    :cond_8
    iput-boolean v4, p0, Lcom/unisound/sdk/bg;->L:Z

    iget-object v1, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v2, 0x469

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_1
.end method
