.class public Lcom/unisound/sdk/o;
.super Ljava/lang/Object;


# static fields
.field public static final OPT_SET_FIX_RESULT_NLU:I = 0x5

.field public static final OPT_SET_FIX_RESULT_NLU_CONFIGPATH:I = 0x6

.field public static final SET_USER_DATA_ERROR:I = -0x64

.field public static final SET_USER_DATA_OK:I = 0x0

.field public static final SET_USER_DATA_WARNING:I = -0xc8


# instance fields
.field protected a:Lcom/unisound/sdk/l;

.field protected b:Lcom/unisound/sdk/w;

.field protected c:Lcom/unisound/sdk/y;

.field protected d:Lcom/unisound/sdk/aa;

.field protected e:Lcom/unisound/sdk/m;

.field protected f:Lcom/unisound/sdk/ab;

.field protected g:Lcom/unisound/common/ar;

.field protected h:Lcom/unisound/sdk/n;

.field protected i:Lcom/unisound/sdk/a;

.field protected j:Lcom/unisound/sdk/cs;

.field protected k:Lcom/unisound/sdk/av;

.field protected l:Landroid/content/Context;

.field protected m:F

.field public mLooper:Landroid/os/Looper;

.field public mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

.field protected n:Landroid/os/HandlerThread;

.field private o:Z

.field private p:Z

.field private q:Lcom/unisound/common/g;

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Lcom/unisound/client/IAudioSource;

.field private u:Z

.field private v:Lcom/unisound/sdk/t;

.field private w:Lcom/unisound/common/d;

.field private x:Lcom/unisound/sdk/aj;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/unisound/sdk/o;->o:Z

    iput-boolean v5, p0, Lcom/unisound/sdk/o;->p:Z

    new-instance v0, Lcom/unisound/sdk/l;

    invoke-direct {v0}, Lcom/unisound/sdk/l;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/l;

    iput-object v4, p0, Lcom/unisound/sdk/o;->c:Lcom/unisound/sdk/y;

    iput-object v4, p0, Lcom/unisound/sdk/o;->d:Lcom/unisound/sdk/aa;

    new-instance v0, Lcom/unisound/common/g;

    invoke-direct {v0}, Lcom/unisound/common/g;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/o;->q:Lcom/unisound/common/g;

    new-instance v0, Lcom/unisound/sdk/ab;

    invoke-direct {v0}, Lcom/unisound/sdk/ab;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    new-instance v0, Lcom/unisound/sdk/n;

    invoke-direct {v0}, Lcom/unisound/sdk/n;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/o;->h:Lcom/unisound/sdk/n;

    new-instance v0, Lcom/unisound/sdk/a;

    invoke-direct {v0}, Lcom/unisound/sdk/a;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/o;->i:Lcom/unisound/sdk/a;

    new-instance v0, Lcom/unisound/sdk/cs;

    invoke-direct {v0}, Lcom/unisound/sdk/cs;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/o;->j:Lcom/unisound/sdk/cs;

    new-instance v0, Lcom/unisound/sdk/av;

    invoke-direct {v0}, Lcom/unisound/sdk/av;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/o;->k:Lcom/unisound/sdk/av;

    iput-boolean v3, p0, Lcom/unisound/sdk/o;->r:Z

    const/high16 v0, -0x3f000000    # -8.0f

    iput v0, p0, Lcom/unisound/sdk/o;->m:F

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/o;->s:Ljava/lang/String;

    iput-object v4, p0, Lcom/unisound/sdk/o;->t:Lcom/unisound/client/IAudioSource;

    iput-boolean v3, p0, Lcom/unisound/sdk/o;->u:Z

    new-instance v0, Lcom/unisound/sdk/q;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/q;-><init>(Lcom/unisound/sdk/o;)V

    iput-object v0, p0, Lcom/unisound/sdk/o;->w:Lcom/unisound/common/d;

    new-instance v0, Lcom/unisound/sdk/r;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/r;-><init>(Lcom/unisound/sdk/o;)V

    iput-object v0, p0, Lcom/unisound/sdk/o;->x:Lcom/unisound/sdk/aj;

    new-instance v0, Lcom/unisound/sdk/w;

    invoke-direct {v0, p1}, Lcom/unisound/sdk/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ht_NetAndFix"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/sdk/o;->n:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/unisound/sdk/o;->n:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/unisound/sdk/o;->n:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/o;->mLooper:Landroid/os/Looper;

    new-instance v0, Lcom/unisound/sdk/m;

    iget-object v1, p0, Lcom/unisound/sdk/o;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1, p1}, Lcom/unisound/sdk/m;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    iget-object v0, p0, Lcom/unisound/sdk/o;->i:Lcom/unisound/sdk/a;

    iget-object v1, p0, Lcom/unisound/sdk/o;->w:Lcom/unisound/common/d;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/a;->a(Lcom/unisound/common/d;)V

    iput-object p1, p0, Lcom/unisound/sdk/o;->l:Landroid/content/Context;

    new-instance v0, Lcom/unisound/sdk/br;

    invoke-direct {v0}, Lcom/unisound/sdk/br;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/o;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/YunZhiSheng/asrfix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/ab;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/YunZhiSheng/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/l;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->q:Lcom/unisound/common/g;

    invoke-virtual {v0, p1}, Lcom/unisound/common/g;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, v3}, Lcom/unisound/sdk/w;->f(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    const/16 v1, 0xbb8

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/unisound/sdk/w;->a(II)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/w;->o(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/m;->a(Lcom/unisound/sdk/w;)V

    new-instance v0, Lcom/unisound/sdk/t;

    invoke-direct {v0, p0, v4}, Lcom/unisound/sdk/t;-><init>(Lcom/unisound/sdk/o;Lcom/unisound/sdk/p;)V

    iput-object v0, p0, Lcom/unisound/sdk/o;->v:Lcom/unisound/sdk/t;

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    iget-object v1, p0, Lcom/unisound/sdk/o;->v:Lcom/unisound/sdk/t;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/m;->a(Lcom/unisound/sdk/ar;)V

    sput v5, Lcom/unisound/sdk/ab;->m:I

    new-instance v0, Lcom/unisound/sdk/p;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/p;-><init>(Lcom/unisound/sdk/o;)V

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/o;->a(Lcom/unisound/common/ah;)V

    return-void
.end method

.method protected static b(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/unisound/sdk/ab;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/unisound/sdk/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    iget-object v1, p0, Lcom/unisound/sdk/o;->l:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/ab;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0x64

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/unisound/sdk/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected a()Lcom/unisound/sdk/as;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/sdk/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)V
    .locals 0

    return-void
.end method

.method protected a(II)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/sdk/w;->a(II)V

    return-void
.end method

.method protected a(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->g:Lcom/unisound/common/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/o;->g:Lcom/unisound/common/ar;

    invoke-interface {v0, p1, p2, p3}, Lcom/unisound/common/ar;->a(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected a(Lcn/yunzhisheng/asr/VAD;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->h:Lcom/unisound/sdk/n;

    invoke-virtual {v0}, Lcom/unisound/sdk/n;->c()V

    return-void
.end method

.method protected a(Lcom/unisound/common/ah;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->k:Lcom/unisound/sdk/av;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/av;->a(Lcom/unisound/common/ah;)V

    return-void
.end method

.method protected a(Lcom/unisound/common/b;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->i:Lcom/unisound/sdk/a;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/a;->a(Lcom/unisound/common/b;)V

    return-void
.end method

.method protected a(Lcom/unisound/sdk/v;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->h:Lcom/unisound/sdk/n;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/n;->a(Lcom/unisound/sdk/e;)V

    return-void
.end method

.method protected a(Ljava/lang/String;ZII)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/String;ZIJJII)V
    .locals 0

    return-void
.end method

.method protected a(Z[BII)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/unisound/common/h;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected a(Landroid/os/Message;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected a(Ljava/lang/String;Z)Z
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unisound/sdk/o;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/YunZhiSheng/asrfix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/ab;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    iget-object v1, p0, Lcom/unisound/sdk/o;->l:Landroid/content/Context;

    const-string v2, "ml"

    invoke-virtual {v0, v1, v2}, Lcom/unisound/sdk/ab;->a(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    iget-object v1, p0, Lcom/unisound/sdk/o;->l:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/unisound/sdk/ab;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "USCFixRecognizer.initByModelDir init data fail!"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/YunZhiSheng/asrfix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected a(Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/unisound/sdk/o;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    iget-object v1, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    iget-object v1, v1, Lcom/unisound/sdk/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/unisound/sdk/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Z)I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/m;->e(Z)I

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 2

    new-instance v0, Lcom/unisound/sdk/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unisound/sdk/t;-><init>(Lcom/unisound/sdk/o;Lcom/unisound/sdk/p;)V

    iput-object v0, p0, Lcom/unisound/sdk/o;->v:Lcom/unisound/sdk/t;

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    iget-object v1, p0, Lcom/unisound/sdk/o;->x:Lcom/unisound/sdk/aj;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/m;->a(Lcom/unisound/sdk/aj;)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    iget-object v1, p0, Lcom/unisound/sdk/o;->v:Lcom/unisound/sdk/t;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/m;->a(Lcom/unisound/sdk/ar;)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/m;->a(Lcom/unisound/sdk/w;)V

    return-void
.end method

.method protected b(I)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/m;->a(Z)V

    :cond_0
    return-void
.end method

.method protected b(II)V
    .locals 0

    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    iget-object v1, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    iget-object v1, v1, Lcom/unisound/sdk/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/unisound/sdk/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/unisound/common/h;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected c(Z)I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/m;->f(Z)I

    move-result v0

    return v0
.end method

.method protected c(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->h:Lcom/unisound/sdk/n;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/n;->a(I)V

    return-void
.end method

.method protected c(II)V
    .locals 0

    return-void
.end method

.method protected c()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->r()Z

    move-result v0

    return v0
.end method

.method protected cancel()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unisound/sdk/o;->v:Lcom/unisound/sdk/t;

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/m;->a(Lcom/unisound/sdk/ar;)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/m;->a(Z)V

    return-void
.end method

.method protected d(I)V
    .locals 0

    return-void
.end method

.method protected d()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->q()Z

    move-result v0

    return v0
.end method

.method protected e(I)I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/m;->c(I)I

    move-result v0

    return v0
.end method

.method protected e()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v0}, Lcom/unisound/sdk/ab;->c()Z

    move-result v0

    return v0
.end method

.method protected f(I)I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/m;->d(I)I

    move-result v0

    return v0
.end method

.method protected f()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->g()V

    :cond_0
    return-void
.end method

.method protected g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected g(I)I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/m;->e(I)I

    move-result v0

    return v0
.end method

.method protected getFixEngineVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcn/yunzhisheng/asrfix/JniAsrFix;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOption(I)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x41f

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->y()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x420

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x3f2

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->u()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x3f3

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v0, 0x3f7

    if-ne v0, p1, :cond_4

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->P()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/16 v0, 0x3f8

    if-ne v0, p1, :cond_5

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->Q()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/unisound/common/an;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected h(I)I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/m;->f(I)I

    move-result v0

    return v0
.end method

.method protected h()V
    .locals 0

    return-void
.end method

.method protected i(I)I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/m;->g(I)I

    move-result v0

    return v0
.end method

.method protected i()V
    .locals 0

    return-void
.end method

.method protected j(I)I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/m;->h(I)I

    move-result v0

    return v0
.end method

.method protected j()V
    .locals 0

    return-void
.end method

.method protected k(I)I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/m;->i(I)I

    move-result v0

    return v0
.end method

.method protected k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected l()V
    .locals 0

    return-void
.end method

.method protected m()V
    .locals 0

    return-void
.end method

.method protected n()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/o;->q:Lcom/unisound/common/g;

    invoke-virtual {v0}, Lcom/unisound/common/g;->a()Z

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/o;->h:Lcom/unisound/sdk/n;

    invoke-virtual {v0}, Lcom/unisound/sdk/n;->b()V

    return-void
.end method

.method protected o()V
    .locals 0

    return-void
.end method

.method protected p()V
    .locals 0

    return-void
.end method

.method public postRecordingStartStatus()V
    .locals 0

    return-void
.end method

.method protected q()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v0}, Lcom/unisound/sdk/ab;->f()V

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->p()V

    return-void
.end method

.method protected r()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "FixRecognizerInterFace : createJniAsrFix"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    iget-object v1, p0, Lcom/unisound/sdk/o;->l:Landroid/content/Context;

    const-string v2, "ml"

    invoke-virtual {v0, v1, v2}, Lcom/unisound/sdk/ab;->a(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->s()V

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    new-instance v1, Lcom/unisound/sdk/s;

    invoke-direct {v1, p0}, Lcom/unisound/sdk/s;-><init>(Lcom/unisound/sdk/o;)V

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/m;->a(Lcom/unisound/sdk/u;)V

    return-void
.end method

.method protected s()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->t()I

    move-result v0

    return v0
.end method

.method protected setAudioSource(Lcom/unisound/client/IAudioSource;)I
    .locals 2

    iput-object p1, p0, Lcom/unisound/sdk/o;->t:Lcom/unisound/client/IAudioSource;

    iget-object v0, p0, Lcom/unisound/sdk/o;->t:Lcom/unisound/client/IAudioSource;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisound/common/e;

    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-direct {v0, v1}, Lcom/unisound/common/e;-><init>(Lcn/yunzhisheng/asr/a;)V

    iput-object v0, p0, Lcom/unisound/sdk/o;->t:Lcom/unisound/client/IAudioSource;

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected setOption(ILjava/lang/Object;)V
    .locals 4

    const/16 v1, 0x41b

    if-ne v1, p1, :cond_1

    :try_start_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/l;

    iput-boolean v1, v2, Lcom/unisound/sdk/l;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v1, "set asr_result_filter Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x41d

    if-ne v1, p1, :cond_2

    :try_start_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/unisound/sdk/o;->p:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "set asr_recording_enabled Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x41e

    if-ne v1, p1, :cond_3

    :try_start_2
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/unisound/common/y;->k:Z

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/unisound/c/a;->b(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v1, "set asr_print_log Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x427

    if-ne v1, p1, :cond_4

    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/unisound/common/y;->m:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    const-string v1, "set asr_print_log Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x41f

    if-eq v1, p1, :cond_0

    const/16 v1, 0x422

    if-ne v1, p1, :cond_5

    :try_start_4
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    move-exception v1

    const-string v1, "set asr_save_recording_data Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/16 v1, 0x423

    if-ne v1, p1, :cond_6

    :try_start_5
    iget-object v1, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/l;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/unisound/sdk/l;->c:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    :catch_5
    move-exception v1

    const-string v1, "set asr_result_json Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/16 v1, 0x3f2

    if-ne v1, p1, :cond_7

    :try_start_6
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->d(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v1

    const-string v1, "set asr_vad_timeout_frontsil Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x3f3

    if-ne v1, p1, :cond_8

    :try_start_7
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->u()I

    move-result v2

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/unisound/sdk/o;->a(II)V

    iget-object v2, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/unisound/sdk/w;->m(I)V

    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->e(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v1

    const-string v1, "set asr_vad_timeout_backsil Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x5

    if-ne v1, p1, :cond_9

    :try_start_8
    iget-object v1, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/l;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/unisound/sdk/l;->f:Z

    iget-object v1, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/l;

    iget-boolean v1, v1, Lcom/unisound/sdk/l;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/l;

    iget-object v1, v1, Lcom/unisound/sdk/l;->h:Lcn/yunzhisheng/nlu/OfflineNlu;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/l;

    new-instance v2, Lcn/yunzhisheng/nlu/OfflineNlu;

    invoke-direct {v2}, Lcn/yunzhisheng/nlu/OfflineNlu;-><init>()V

    iput-object v2, v1, Lcom/unisound/sdk/l;->h:Lcn/yunzhisheng/nlu/OfflineNlu;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v1

    const-string v1, "set asr_fix_result_nlu Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const/4 v1, 0x6

    if-ne v1, p1, :cond_a

    :try_start_9
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lcom/unisound/sdk/o;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/l;

    check-cast p2, Ljava/lang/String;

    iput-object p2, v1, Lcom/unisound/sdk/l;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/l;

    iget-object v1, v1, Lcom/unisound/sdk/l;->h:Lcn/yunzhisheng/nlu/OfflineNlu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unisound/sdk/o;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/l;

    iget-object v1, v1, Lcom/unisound/sdk/l;->h:Lcn/yunzhisheng/nlu/OfflineNlu;

    iget-object v2, p0, Lcom/unisound/sdk/o;->s:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcn/yunzhisheng/nlu/OfflineNlu;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_0

    :catch_9
    move-exception v1

    const-string v1, "set asr_fix_result_nlu_configpath Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x426

    if-ne v1, p1, :cond_b

    :try_start_a
    iget-object v2, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/unisound/sdk/w;->D(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/m;->a(Ljava/lang/Boolean;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception v1

    const-string v1, "set asr_print_engine_log Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x1388

    if-ne v1, p1, :cond_c

    :try_start_b
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->c(Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto/16 :goto_0

    :catch_b
    move-exception v1

    const-string v1, "set setFarFeildEnabled Error. 5000 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x1389

    if-ne v1, p1, :cond_d

    :try_start_c
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->y:Lcn/yunzhisheng/asr/c;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/c;->a(F)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto/16 :goto_0

    :catch_c
    move-exception v1

    const-string v1, "set min back energy Error. 5001 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x138a

    if-ne v1, p1, :cond_e

    :try_start_d
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->z:Lcn/yunzhisheng/asr/c;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/c;->a(F)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    goto/16 :goto_0

    :catch_d
    move-exception v1

    const-string v1, "set min back energy higher TH Error. 5002 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x138b

    if-ne v1, p1, :cond_f

    :try_start_e
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->A:Lcn/yunzhisheng/asr/c;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/c;->a(F)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    goto/16 :goto_0

    :catch_e
    move-exception v1

    const-string v1, "set pitch threshold Error. 5003 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x138c

    if-ne v1, p1, :cond_10

    :try_start_f
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->B:Lcn/yunzhisheng/asr/d;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/d;->a(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    goto/16 :goto_0

    :catch_f
    move-exception v1

    const-string v1, "set pitch persist length for start usage Error. 5004 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x138d

    if-ne v1, p1, :cond_11

    :try_start_10
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->C:Lcn/yunzhisheng/asr/d;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/d;->a(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    goto/16 :goto_0

    :catch_10
    move-exception v1

    const-string v1, "set pitch drop length for end usage Error. 5005 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x138e

    if-ne v1, p1, :cond_12

    :try_start_11
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->D:Lcn/yunzhisheng/asr/c;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/c;->a(F)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    goto/16 :goto_0

    :catch_11
    move-exception v1

    const-string v1, "set high freq energy vs low freq energy Error. 5006 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x138f

    if-ne v1, p1, :cond_13

    :try_start_12
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->E:Lcn/yunzhisheng/asr/d;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/d;->a(I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    goto/16 :goto_0

    :catch_12
    move-exception v1

    const-string v1, "set min signal length for speech Error. 5007 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x1390

    if-ne v1, p1, :cond_14

    :try_start_13
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->F:Lcn/yunzhisheng/asr/d;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/d;->a(I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    goto/16 :goto_0

    :catch_13
    move-exception v1

    const-string v1, "set max silence length Error. 5008 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x1391

    if-ne v1, p1, :cond_15

    :try_start_14
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->G:Lcn/yunzhisheng/asr/c;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/c;->a(F)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_14

    goto/16 :goto_0

    :catch_14
    move-exception v1

    const-string v1, "set max single point max in spectral Error. 5009 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x1392

    if-ne v1, p1, :cond_16

    :try_start_15
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->H:Lcn/yunzhisheng/asr/c;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/c;->a(F)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_15

    goto/16 :goto_0

    :catch_15
    move-exception v1

    const-string v1, "set gloable noise to signal value threshold Error. 5010 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x1393

    if-ne v1, p1, :cond_17

    :try_start_16
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->I:Lcn/yunzhisheng/asr/c;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/c;->a(F)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    goto/16 :goto_0

    :catch_16
    move-exception v1

    const-string v1, "set gloable noise to signal value threshold for vowel part Error. 5011 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0x1394

    if-ne v1, p1, :cond_18

    :try_start_17
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->J:Lcn/yunzhisheng/asr/c;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/c;->a(F)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_17

    goto/16 :goto_0

    :catch_17
    move-exception v1

    const-string v1, "set voice freq domain prob Th Error. 5012 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0x1395

    if-ne v1, p1, :cond_19

    :try_start_18
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->K:Lcn/yunzhisheng/asr/d;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/d;->a(I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_18

    goto/16 :goto_0

    :catch_18
    move-exception v1

    const-string v1, "set use pitch or peak Error. 5013 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0x1396

    if-ne v1, p1, :cond_1a

    :try_start_19
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->L:Lcn/yunzhisheng/asr/d;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/d;->a(I)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_19

    goto/16 :goto_0

    :catch_19
    move-exception v1

    const-string v1, "set noise to y ratio, start point in freq domain Error. 5014 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0x1399

    if-ne v1, p1, :cond_1b

    :try_start_1a
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->M:Lcn/yunzhisheng/asr/d;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/d;->a(I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1a

    goto/16 :goto_0

    :catch_1a
    move-exception v1

    const-string v1, "set PITCHLASTTH Error. 5017 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0x139d

    if-ne v1, p1, :cond_1c

    :try_start_1b
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->n(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1b

    goto/16 :goto_0

    :catch_1b
    move-exception v1

    const-string v1, "set activate info Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0x3f8

    if-ne v1, p1, :cond_1d

    :try_start_1c
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->b(F)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1c

    goto/16 :goto_0

    :catch_1c
    move-exception v1

    const-string v1, "set vad musicth info Error!"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    const/16 v1, 0x3f7

    if-ne v1, p1, :cond_1e

    :try_start_1d
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->m(Z)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1d

    goto/16 :goto_0

    :catch_1d
    move-exception v1

    const-string v1, "set vad detectMusic Error!"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    const v1, 0x1330435

    if-ne v1, p1, :cond_0

    :try_start_1e
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/unisound/common/y;->l:Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1e

    goto/16 :goto_0

    :catch_1e
    move-exception v1

    const-string v1, "set activate info Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected start()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    iget-object v0, v0, Lcom/unisound/sdk/ab;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/o;->start(Ljava/lang/String;)V

    return-void
.end method

.method protected start(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/unisound/sdk/o;->b()V

    iput-object v0, p0, Lcom/unisound/sdk/o;->c:Lcom/unisound/sdk/y;

    iput-object v0, p0, Lcom/unisound/sdk/o;->d:Lcom/unisound/sdk/aa;

    iget-boolean v0, p0, Lcom/unisound/sdk/o;->p:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/unisound/sdk/ax;->n()V

    iget-object v0, p0, Lcom/unisound/sdk/o;->t:Lcom/unisound/client/IAudioSource;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisound/common/e;

    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-direct {v0, v1}, Lcom/unisound/common/e;-><init>(Lcn/yunzhisheng/asr/a;)V

    iput-object v0, p0, Lcom/unisound/sdk/o;->t:Lcom/unisound/client/IAudioSource;

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "FixRecognizerInterface recognizer start"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->g([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    new-instance v1, Lcom/unisound/sdk/ax;

    iget-object v2, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v3, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    iget-object v4, p0, Lcom/unisound/sdk/o;->t:Lcom/unisound/client/IAudioSource;

    invoke-direct {v1, v2, v3, v4}, Lcom/unisound/sdk/ax;-><init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/au;Lcom/unisound/client/IAudioSource;)V

    new-instance v2, Lcom/unisound/sdk/aa;

    iget-object v3, p0, Lcom/unisound/sdk/o;->l:Landroid/content/Context;

    iget-object v4, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v5, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-direct {v2, v3, v4, v5}, Lcom/unisound/sdk/aa;-><init>(Landroid/content/Context;Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/au;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/unisound/sdk/m;->a(Ljava/lang/String;Lcom/unisound/sdk/z;Lcom/unisound/sdk/aa;)V

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/common/j;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/w;->b(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/j;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unisound/sdk/o;->r:Z

    :cond_2
    return-void
.end method

.method protected stop()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/o;->c:Lcom/unisound/sdk/y;

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->b()V

    iget-boolean v0, p0, Lcom/unisound/sdk/o;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->g()V

    :cond_0
    return-void
.end method

.method protected t()Ljava/util/List;
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

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->u()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected u()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->v()I

    move-result v0

    return v0
.end method

.method protected v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected x()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->y()I

    move-result v0

    return v0
.end method

.method protected y()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->z()I

    move-result v0

    return v0
.end method
