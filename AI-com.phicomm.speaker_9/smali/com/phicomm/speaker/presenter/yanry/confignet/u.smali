.class public Lcom/phicomm/speaker/presenter/yanry/confignet/u;
.super Ljava/lang/Object;
.source "ConfigByBlePresenter.java"

# interfaces
.implements Lcom/phicomm/speaker/b/e;


# instance fields
.field private a:Lcom/phicomm/speaker/model/confignet/a;

.field private b:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

.field private c:Lcom/phicomm/speaker/b/f;

.field private d:Lcom/phicomm/speaker/b/h;

.field private e:B

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lcom/phicomm/speaker/model/common/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u$1;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->h:Lcom/phicomm/speaker/model/common/f;

    const/4 v0, -0x1

    .line 88
    iput-byte v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->e:B

    .line 89
    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a:Lcom/phicomm/speaker/model/confignet/a;

    .line 297
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a:Lcom/phicomm/speaker/model/confignet/a;

    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->b()Lcom/phicomm/speaker/PhApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/confignet/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/confignet/u;B)B
    .locals 0

    .line 33
    iput-byte p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->e:B

    return p1
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->g:I

    return p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/confignet/u;Lcom/phicomm/speaker/constants/yanry/ConnectionState;)Lcom/phicomm/speaker/constants/yanry/ConnectionState;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->b:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    .line 435
    iput p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->g:I

    const-string v0, "phase=%s: %s."

    const/4 v1, 0x2

    .line 436
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/confignet/u;ILjava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/confignet/u;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 308
    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->h:Lcom/phicomm/speaker/model/common/f;

    new-instance p2, Lcom/phicomm/speaker/presenter/yanry/confignet/v;

    invoke-direct {p2, p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/v;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)V

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V

    return-void
.end method

.method private a(Ljava/util/UUID;Ljava/lang/String;Lcom/phicomm/speaker/b/h;)V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->b:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    if-nez v0, :cond_0

    const-string p1, "refresh fail on unknown connection state."

    const/4 p2, 0x0

    .line 374
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    invoke-interface {p3}, Lcom/phicomm/speaker/b/h;->e()V

    goto :goto_0

    .line 377
    :cond_0
    iput-object p3, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d:Lcom/phicomm/speaker/b/h;

    .line 378
    iget-object p3, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->h:Lcom/phicomm/speaker/model/common/f;

    const-wide/16 v0, 0x7530

    invoke-virtual {p3, v0, v1}, Lcom/phicomm/speaker/model/common/f;->a(J)V

    .line 379
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->c(Ljava/util/UUID;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/model/confignet/a;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a:Lcom/phicomm/speaker/model/confignet/a;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/f;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->c:Lcom/phicomm/speaker/b/f;

    return-object p0
.end method

.method private c(Ljava/util/UUID;Ljava/lang/String;)V
    .locals 2

    .line 384
    sget-object v0, Lcom/phicomm/speaker/presenter/yanry/confignet/u$3;->a:[I

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->b:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    invoke-virtual {v1}, Lcom/phicomm/speaker/constants/yanry/ConnectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 395
    :pswitch_0
    const-class v0, Lcom/phicomm/speaker/model/common/d;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/model/common/d;

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/confignet/w;

    invoke-direct {v1, p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/confignet/w;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/u;Ljava/util/UUID;Ljava/lang/String;)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v1, p1, p2}, Lcom/phicomm/speaker/model/common/d;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 390
    :pswitch_1
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a:Lcom/phicomm/speaker/model/confignet/a;

    invoke-virtual {p1}, Lcom/phicomm/speaker/model/confignet/a;->c()V

    goto :goto_0

    .line 386
    :pswitch_2
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a:Lcom/phicomm/speaker/model/confignet/a;

    sget-object v1, Lcom/phicomm/speaker/constants/yanry/a;->a:Ljava/util/UUID;

    invoke-virtual {v0, v1, p1, p2}, Lcom/phicomm/speaker/model/confignet/a;->a(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/b/h;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d:Lcom/phicomm/speaker/b/h;

    return-object p0
.end method

.method static synthetic e(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)B
    .locals 0

    .line 33
    iget-byte p0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->e:B

    return p0
.end method

.method static synthetic f(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/model/common/f;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->h:Lcom/phicomm/speaker/model/common/f;

    return-object p0
.end method

.method static synthetic g(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Lcom/phicomm/speaker/constants/yanry/ConnectionState;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->b:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    return-object p0
.end method

.method static synthetic h(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->f:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/b/f;)V
    .locals 2

    const-string v0, "connect"

    const/4 v1, 0x1

    .line 336
    invoke-direct {p0, v1, v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a(ILjava/lang/String;)V

    .line 337
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->c:Lcom/phicomm/speaker/b/f;

    .line 338
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a:Lcom/phicomm/speaker/model/confignet/a;

    invoke-virtual {p1}, Lcom/phicomm/speaker/model/confignet/a;->c()V

    .line 339
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->h:Lcom/phicomm/speaker/model/common/f;

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, v0, v1}, Lcom/phicomm/speaker/model/common/f;->a(J)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/b/h;)V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->h:Lcom/phicomm/speaker/model/common/f;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const-string v1, "get wifi list"

    .line 350
    invoke-direct {p0, v0, v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a(ILjava/lang/String;)V

    .line 351
    sget-object v0, Lcom/phicomm/speaker/constants/yanry/a;->b:Ljava/util/UUID;

    const-class v1, Lcom/phicomm/speaker/presenter/yanry/confignet/af;

    invoke-static {v1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/presenter/yanry/confignet/af;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/presenter/yanry/confignet/af;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a(Ljava/util/UUID;Ljava/lang/String;Lcom/phicomm/speaker/b/h;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "stop listening: %s."

    const/4 v1, 0x1

    .line 414
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->c:Lcom/phicomm/speaker/b/f;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 416
    iput-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->c:Lcom/phicomm/speaker/b/f;

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d:Lcom/phicomm/speaker/b/h;

    if-ne p1, v0, :cond_1

    .line 419
    iput-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d:Lcom/phicomm/speaker/b/h;

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/phicomm/speaker/b/h;)V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->h:Lcom/phicomm/speaker/model/common/f;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const-string v1, "config wifi"

    .line 366
    invoke-direct {p0, v0, v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a(ILjava/lang/String;)V

    .line 367
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->f:Ljava/lang/String;

    .line 368
    sget-object p1, Lcom/phicomm/speaker/constants/yanry/a;->c:Ljava/util/UUID;

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->f:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a(Ljava/util/UUID;Ljava/lang/String;Lcom/phicomm/speaker/b/h;)V

    :cond_0
    return-void
.end method

.method final synthetic a(Ljava/util/UUID;Ljava/lang/String;)V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->h:Lcom/phicomm/speaker/model/common/f;

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/confignet/x;

    invoke-direct {v1, p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/confignet/x;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/u;Ljava/util/UUID;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V

    return-void
.end method

.method public a()Z
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->b:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    sget-object v1, Lcom/phicomm/speaker/constants/yanry/ConnectionState;->Connected:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->h:Lcom/phicomm/speaker/model/common/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V

    return-void
.end method

.method public b(Lcom/phicomm/speaker/b/h;)V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->h:Lcom/phicomm/speaker/model/common/f;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const-string v1, "load more wifi"

    .line 358
    invoke-direct {p0, v0, v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a(ILjava/lang/String;)V

    .line 359
    sget-object v0, Lcom/phicomm/speaker/constants/yanry/a;->b:Ljava/util/UUID;

    const-class v1, Lcom/phicomm/speaker/presenter/yanry/confignet/af;

    invoke-static {v1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/presenter/yanry/confignet/af;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/presenter/yanry/confignet/af;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a(Ljava/util/UUID;Ljava/lang/String;Lcom/phicomm/speaker/b/h;)V

    :cond_0
    return-void
.end method

.method final synthetic b(Ljava/util/UUID;Ljava/lang/String;)Z
    .locals 0

    .line 397
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->c(Ljava/util/UUID;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 4

    const-string v0, "release."

    const/4 v1, 0x0

    .line 425
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->b:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    sget-object v1, Lcom/phicomm/speaker/constants/yanry/ConnectionState;->Connected:Lcom/phicomm/speaker/constants/yanry/ConnectionState;

    if-ne v0, v1, :cond_0

    .line 428
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a:Lcom/phicomm/speaker/model/confignet/a;

    sget-object v1, Lcom/phicomm/speaker/constants/yanry/a;->a:Ljava/util/UUID;

    sget-object v2, Lcom/phicomm/speaker/constants/yanry/a;->e:Ljava/util/UUID;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/phicomm/speaker/model/confignet/a;->a(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a:Lcom/phicomm/speaker/model/confignet/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/confignet/a;->f()V

    :goto_0
    return-void
.end method

.method public d()Lcom/phicomm/speaker/constants/yanry/BluetoothState;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a:Lcom/phicomm/speaker/model/confignet/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/confignet/a;->a()Lcom/phicomm/speaker/constants/yanry/BluetoothState;

    move-result-object v0

    return-object v0
.end method

.method final synthetic e()Z
    .locals 3

    .line 311
    iget v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "request fail on connection loss."

    const/4 v2, 0x0

    .line 320
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d:Lcom/phicomm/speaker/b/h;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d:Lcom/phicomm/speaker/b/h;

    invoke-interface {v0}, Lcom/phicomm/speaker/b/h;->e()V

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->c:Lcom/phicomm/speaker/b/f;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->c:Lcom/phicomm/speaker/b/f;

    invoke-interface {v0}, Lcom/phicomm/speaker/b/f;->e()V

    :cond_1
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
